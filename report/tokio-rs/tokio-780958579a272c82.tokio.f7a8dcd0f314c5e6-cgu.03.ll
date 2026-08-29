Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokio-rs/original/tokio-780958579a272c82.tokio.f7a8dcd0f314c5e6-cgu.03?download=true
inline.NumInlined: 433
inline.NumDeleted: 200
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool12BlockingPoolEBJ_:bb.a
          to label %common.resume unwind label %bb.m

bb.j:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit3
  tail call void @llvm.experimental.noalias.scope.decl(metadata !574)
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !577, !noundef !8 ; 2 uses
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !578
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.l, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_.exit

bb.l:                                             ; preds = %bb.k
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_.exit

bb.m:                                             ; preds = %bb.i
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit, %bb.g, %bb.h, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.g ], [ %i.k, %bb.i ], [ %i.k, %bb.h ], [ %.pn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_.exit: ; preds = %bb.j, %bb.k, %bb.l
  ret void

bb.n:                                             ; preds = %bb.c, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool7SpawnerEBJ_.exit
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown8ReceiverEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  invoke void @_RNvXs2_NtNtCslghKHtsL3a4_5tokio4sync7oneshotINtB5_8ReceiveruENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.e unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !583)
  %i.b = load ptr, ptr %0, align 8, !alias.scope !586, !noundef !8 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = atomicrmw sub ptr %i.b, i64 1 release, align 8, !noalias !589
  %i.e = icmp eq i64 %i.d, 1
  br i1 %i.e, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i unwind label %bb.h

bb.e:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !594)
  %i.f = load ptr, ptr %0, align 8, !alias.scope !597, !noundef !8 ; 2 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = atomicrmw sub ptr %i.f, i64 1 release, align 8, !noalias !598
  %i.i = icmp eq i64 %i.h, 1
  br i1 %i.i, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_.exit

bb.g:                                             ; preds = %bb.f
  fence acquire
  tail call void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #28
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_.exit

bb.h:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEEEEB1C_.exit.i: ; preds = %bb.d, %bb.c, %bb.b
  resume { ptr, i32 } %i.a

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_.exit: ; preds = %bb.e, %bb.f, %bb.g
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB14_7Spawner12spawn_thread0uEB1a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef range(i64 0, 2) %2, i64 %3, i1 noundef zeroext %4, ptr noundef %5, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [48 x i8], align 8                ; 8 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 9 uses
  %i.h = alloca [8 x i8], align 8                 ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 10 uses
  %i.j = alloca [8 x i8], align 8                 ; 11 uses
  %i.k = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %5, ptr %i.k, align 8
  %i.l = trunc nuw i64 %2 to i1
  br i1 %i.l, label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = load atomic i64, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8 ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 14)
          to label %.noexc unwind label %bb.r

.noexc:                                           ; preds = %bb.c
  %i.o = load i64, ptr %i.c, align 8, !range !11, !noundef !8
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.q, label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.p = add i64 %i.m, -1
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit

bb.e:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !603)
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !603, !nonnull !8, !noundef !8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !603, !noundef !8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !603
  invoke void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.t)
          to label %bb.g unwind label %bb.f, !noalias !603

bb.f:                                             ; preds = %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #29
          to label %.body34.thread unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.v = load i64, ptr %i.a, align 8, !range !7, !noalias !603, !noundef !8
  %i.w = trunc nuw i64 %i.v to i1
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  br label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !603, !nonnull !8, !noundef !8 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !603, !noundef !8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !603
  switch i64 %i.aa, label %thread-pre-split.i.i.i [
    i64 0, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i64 1, label %bb.j
  ]

bb.j:                                             ; preds = %bb.i
  %i.ab = load i8, ptr %i.y, align 1, !alias.scope !606, !noalias !609, !noundef !8 ; 2 uses
  switch i8 %i.ab, label %bb.k [
    i8 43, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
    i8 45, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  ]

thread-pre-split.i.i.i:                           ; preds = %bb.i
  %.pr.i.i.i = load i8, ptr %i.y, align 1, !alias.scope !606, !noalias !609
  br label %bb.k

bb.k:                                             ; preds = %thread-pre-split.i.i.i, %bb.j
  %i.ac = phi i8 [ %.pr.i.i.i, %thread-pre-split.i.i.i ], [ %i.ab, %bb.j ]
  %cond.i.i.i = icmp eq i8 %i.ac, 43              ; 2 uses
  %i.ad = sext i1 %cond.i.i.i to i64
  %.sroa.15.0.i.i.i = add nsw i64 %i.aa, %i.ad    ; 4 uses
  %.sroa.0.0.idx.i.i.i = zext i1 %cond.i.i.i to i64
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 %.sroa.0.0.idx.i.i.i ; 2 uses
  %i.ae = icmp samesign ult i64 %.sroa.15.0.i.i.i, 17
  br i1 %i.ae, label %.preheader.i.i.i, label %.preheader56.i.i.i.preheader

.preheader.i.i.i:                                 ; preds = %bb.k
  %.not5366.i.i.i = icmp eq i64 %.sroa.15.0.i.i.i, 0
  br i1 %.not5366.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

.preheader56.i.i.i:                               ; preds = %bb.l
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i89, i64 1
  %i.ag = add nsw i64 %.sroa.15.1.i.i.i88, -1     ; 2 uses
  %.not52.i.not.i.i = icmp eq i64 %i.ag, 0
  br i1 %.not52.i.not.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i.preheader

.preheader56.i.i.i.preheader:                     ; preds = %bb.k, %.preheader56.i.i.i
  %.sroa.0.1.i.i.i89 = phi ptr [ %i.af, %.preheader56.i.i.i ], [ %.sroa.0.0.i.i.i, %bb.k ] ; 2 uses
  %.sroa.15.1.i.i.i88 = phi i64 [ %i.ag, %.preheader56.i.i.i ], [ %.sroa.15.0.i.i.i, %bb.k ]
  %.sroa.042.0.i.i.i87 = phi i64 [ %i.am, %.preheader56.i.i.i ], [ 0, %bb.k ]
  %7 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i.i.i87, i64 10) ; 2 uses
  %8 = extractvalue { i64, i1 } %7, 1
  br i1 %8, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.l, !prof !149

bb.l:                                             ; preds = %.preheader56.i.i.i.preheader
  %9 = extractvalue { i64, i1 } %7, 0             ; 2 uses
  %i.ah = load i8, ptr %.sroa.0.1.i.i.i89, align 1, !alias.scope !606, !noalias !609, !noundef !8
  %i.ai = zext i8 %i.ah to i32
  %i.aj = add nsw i32 %i.ai, -48                  ; 2 uses
  %i.ak = icmp ugt i32 %i.aj, 9
  %i.al = zext nneg i32 %i.aj to i64
  %i.am = add i64 %9, %i.al                       ; 3 uses
  %i.an = icmp ult i64 %i.am, %9
  %or.cond.i.i = select i1 %i.ak, i1 true, i1 %i.an, !prof !611
  br i1 %or.cond.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.preheader56.i.i.i, !prof !611

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.m
  %.sroa.0.269.i.i.i = phi ptr [ %i.au, %bb.m ], [ %.sroa.0.0.i.i.i, %.preheader.i.i.i ] ; 2 uses
  %.sroa.15.268.i.i.i = phi i64 [ %i.at, %bb.m ], [ %.sroa.15.0.i.i.i, %.preheader.i.i.i ]
  %.sroa.042.267.i.i.i = phi i64 [ %i.aw, %bb.m ], [ 0, %.preheader.i.i.i ]
  %i.ao = load i8, ptr %.sroa.0.269.i.i.i, align 1, !alias.scope !606, !noalias !609, !noundef !8
  %i.ap = zext i8 %i.ao to i32
  %i.aq = add nsw i32 %i.ap, -48                  ; 2 uses
  %i.ar = icmp ugt i32 %i.aq, 9
  br i1 %i.ar, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i
  %i.as = mul i64 %.sroa.042.267.i.i.i, 10
  %i.at = add nsw i64 %.sroa.15.268.i.i.i, -1     ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i.i.i, i64 1
  %i.av = zext nneg i32 %i.aq to i64
  %i.aw = add i64 %i.as, %i.av                    ; 2 uses
  %.not53.i.i.i = icmp eq i64 %i.at, 0
  br i1 %.not53.i.i.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i, label %.lr.ph.i.i.i

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i: ; preds = %bb.l, %.preheader56.i.i.i.preheader, %.preheader56.i.i.i, %bb.m, %.lr.ph.i.i.i, %.preheader.i.i.i, %bb.j, %bb.j, %bb.i, %bb.h
  %.sroa.0.1.i.i = phi i64 [ 2097152, %bb.h ], [ 0, %.preheader.i.i.i ], [ 2097152, %bb.j ], [ 2097152, %bb.i ], [ 2097152, %bb.j ], [ %i.aw, %bb.m ], [ 2097152, %.lr.ph.i.i.i ], [ 2097152, %bb.l ], [ 2097152, %.preheader56.i.i.i.preheader ], [ %i.am, %.preheader56.i.i.i ]
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i unwind label %bb.n

bb.n:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.body34.thread unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.p:                                             ; preds = %bb.f
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.i.i
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %.noexc36 unwind label %bb.r

.noexc36:                                         ; preds = %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.q

bb.q:                                             ; preds = %.noexc36, %.noexc
  %.sroa.0.0.i = phi i64 [ %.sroa.0.1.i.i, %.noexc36 ], [ 2097152, %.noexc ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ba = add i64 %.sroa.0.0.i, 1
  store atomic i64 %i.ba, ptr @_RNvNCNvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_unchecked03MIN monotonic, align 8
  br label %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit

.body34:                                          ; preds = %.thread, %bb.w, %bb.r
  %.sroa.016.0 = phi i8 [ %.sroa.016.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.016.2, %.thread ]
  %.sroa.017.0 = phi i8 [ %.sroa.017.2, %bb.w ], [ %.sroa.017.1, %bb.r ], [ %.sroa.017.2, %.thread ] ; 2 uses
  %.sroa.018.0 = phi i1 [ false, %bb.w ], [ %.sroa.018.1, %bb.r ], [ false, %.thread ] ; 2 uses
  %.pn27 = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.bc, %bb.r ], [ %.pn.pn, %.thread ] ; 2 uses
  %i.bb = trunc nuw i8 %.sroa.016.0 to i1
  br i1 %i.bb, label %.body34.thread, label %bb.bb

bb.r:                                             ; preds = %bb.aw, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i, %bb.c, %bb.s, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit
  %.sroa.017.1 = phi i8 [ 0, %bb.aw ], [ 1, %bb.s ], [ 1, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit ], [ 1, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i ], [ 1, %bb.c ] ; 2 uses
  %.sroa.018.1 = phi i1 [ false, %bb.aw ], [ false, %bb.s ], [ true, %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit ], [ true, %_RNCNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB18_7Spawner12spawn_thread0uE00B1e_.exit.i ], [ true, %bb.c ]
  %i.bc = landingpad { ptr, i32 }
          cleanup
  br label %.body34

_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit: ; preds = %bb.q, %bb.d, %bb.a
  %.sroa.02.0 = phi i64 [ %3, %bb.a ], [ %.sroa.0.0.i, %bb.q ], [ %i.p, %bb.d ]
  %i.bd = invoke noundef i64 @_RNvMNtNtCsaL1QbXo9JQH_3std6thread2idNtB2_8ThreadId3new()
          to label %bb.s unwind label %bb.r

bb.s:                                             ; preds = %_RNCINvNtNtCsaL1QbXo9JQH_3std6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB16_7Spawner12spawn_thread0uE0B1c_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.be = invoke noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef %i.bd, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1)
          to label %bb.t unwind label %bb.r

bb.t:                                             ; preds = %bb.s
  store ptr %i.be, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  br i1 %4, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.j)
          to label %bb.y unwind label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store ptr null, ptr %i.bf, align 8
  store i64 0, ptr %i.i, align 8
  %.sroa.4.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx20, align 8
  %.sroa.521.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i64 0, ptr %.sroa.521.0..sroa_idx, align 8
  br label %bb.y

.thread:                                          ; preds = %bb.ax, %.body29.thread, %bb.ac, %bb.ba, %bb.x
  %.sroa.016.2 = phi i8 [ 1, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.sroa.017.2 = phi i8 [ 0, %bb.ba ], [ 0, %bb.ac ], [ 1, %bb.x ], [ 0, %.body29.thread ], [ 0, %bb.ax ] ; 2 uses
  %.pn.pn = phi { ptr, i32 } [ %i.bo, %bb.ba ], [ %i.bq, %bb.ac ], [ %i.bj, %bb.x ], [ %eh.lpad-body3058, %.body29.thread ], [ %eh.lpad-body3058, %bb.ax ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !612)
  call void @llvm.experimental.noalias.scope.decl(metadata !615)
  call void @llvm.experimental.noalias.scope.decl(metadata !618)
  call void @llvm.experimental.noalias.scope.decl(metadata !621)
  %i.bg = load ptr, ptr %i.j, align 8, !alias.scope !624, !nonnull !8, !noundef !8
  %i.bh = atomicrmw sub ptr %i.bg, i64 1 release, align 8, !noalias !624
  %i.bi = icmp eq i64 %i.bh, 1
  br i1 %i.bi, label %bb.w, label %.body34

bb.w:                                             ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.j) #28
          to label %.body34 unwind label %bb.az

bb.x:                                             ; preds = %bb.u
  %i.bj = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.y:                                             ; preds = %bb.u, %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 1, ptr %i.d, align 8
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.bk, align 8
  %i.bl = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %5, ptr %i.bl, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !625
  %i.bm = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 48, i64 noundef range(i64 8, 129) 8) #14, !noalias !625 ; 6 uses
  %i.bn = icmp eq ptr %i.bm, null
  br i1 %i.bn, label %bb.z, label %bb.ad, !prof !149

bb.z:                                             ; preds = %bb.y
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #30
          to label %.noexc38 unwind label %bb.aa

.noexc38:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEEECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.d) #29
          to label %bb.ba unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.ac:                                            ; preds = %bb.au
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ad:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bm, ptr noundef nonnull align 8 dereferenceable(48) %i.d, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.bm, ptr %i.h, align 8
  %i.br = atomicrmw add ptr %i.bm, i64 1 monotonic, align 8
  %i.bs = icmp slt i64 %i.br, 0
  br i1 %i.bs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.g, ptr noundef nonnull align 8 dereferenceable(32) %6, i64 32, i1 false)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bt, ptr noundef nonnull align 8 dereferenceable(32) %i.i, i64 32, i1 false)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.bm, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %i.bw = load ptr, ptr %i.bv, align 8, !noundef !8 ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.ah, label %bb.ag

bb.af:                                            ; preds = %bb.ad
  call void @llvm.trap()
  unreachable

bb.ag:                                            ; preds = %bb.ae
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 16
  invoke void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8 %i.bx)
          to label %bb.ah unwind label %bb.ay

bb.ah:                                            ; preds = %bb.ag, %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %i.g, i64 72, i1 false)
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !628
  %i.by = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 72, i64 noundef range(i64 8, 129) 8) #14, !noalias !628 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_owned11split_owned:bb.a
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtNtCslghKHtsL3a4_5tokio3net4unix11split_owned7reunite(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noundef nonnull %1, ptr noundef nonnull %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.8 = alloca [16 x i8], align 8            ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %1, ptr %i.d, align 8
  %i.e = icmp eq ptr %1, %2
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = zext i1 %3 to i8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 2, ptr %0, align 8
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %2, ptr %i.c, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 0, ptr %i.h, align 8
  %i.i = atomicrmw sub ptr %2, i64 1 release, align 8, !noalias !959
  %i.j = icmp eq i64 %i.i, 1
  br i1 %i.j, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #28
          to label %bb.f unwind label %bb.l

bb.e:                                             ; preds = %bb.k, %bb.b
  ret void

bb.f:                                             ; preds = %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  %i.k = load ptr, ptr %i.d, align 8, !nonnull !8, !noundef !8 ; 6 uses
  %i.l = cmpxchg ptr %i.k, i64 1, i64 0 monotonic monotonic, align 8, !noalias !966
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.l, 1
  br i1 %.sroa.18.0.in.i.i, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i: ; preds = %bb.f
  fence acquire
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.0.0.copyload = load i64, ptr %i.m, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !966
  store ptr %i.k, ptr %i.b, align 8, !noalias !966
  call void @_RNvXsO_NtCs1xwejQucwHj_5alloc4syncINtB5_4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBP_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !966
  %i.n = icmp eq i64 %.sroa.0.0.copyload, 2
  br i1 %i.n, label %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread, label %bb.k, !prof !936

_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread: ; preds = %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i
  %.sroa.6.021 = phi ptr [ %.sroa.6.0.copyload, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i ], [ %i.k, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !969
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.021) ]
  store ptr %.sroa.6.021, ptr %i.a, align 8, !noalias !969
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @49, i64 noundef 40, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @27, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #30
          to label %bb.i unwind label %bb.g, !noalias !969

bb.g:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !973)
  call void @llvm.experimental.noalias.scope.decl(metadata !976)
  %i.p = load ptr, ptr %i.a, align 8, !alias.scope !979, !noalias !969, !nonnull !8, !noundef !8
  %i.q = atomicrmw sub ptr %i.p, i64 1 release, align 8, !noalias !980
  %i.r = icmp eq i64 %i.q, 1
  br i1 %i.r, label %bb.h, label %.body.thread

bb.h:                                             ; preds = %bb.g
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #28
          to label %.body.thread unwind label %bb.j, !noalias !969

bb.i:                                             ; preds = %_RNvMsf_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE10try_unwrapBO_.exit.thread
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27, !noalias !969
  unreachable

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamEEB1i_.exit.i
  %.sroa.5.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.4.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.6.0.copyload, ptr %.sroa.4.0..sroa_idx12, align 8
  br label %bb.e

.body.thread:                                     ; preds = %bb.l, %bb.m, %bb.h, %bb.g
  %eh.lpad-body16 = phi { ptr, i32 } [ %i.t, %bb.l ], [ %i.o, %bb.h ], [ %i.o, %bb.g ], [ %i.t, %bb.m ]
  resume { ptr, i32 } %eh.lpad-body16

bb.l:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !981)
  call void @llvm.experimental.noalias.scope.decl(metadata !984)
  %i.u = load ptr, ptr %i.d, align 8, !alias.scope !987, !nonnull !8, !noundef !8
  %i.v = atomicrmw sub ptr %i.u, i64 1 release, align 8, !noalias !987
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.m, label %.body.thread

bb.m:                                             ; preds = %bb.l
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #28
          to label %.body.thread unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i64 1, 0) i64 @_RNvNtNtNtCslghKHtsL3a4_5tokio4loom3std3sys8num_cpus() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [32 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 20)
  %i.g = load i64, ptr %i.f, align 8, !range !7, !noundef !8
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !11, !noundef !8
  %.not14 = icmp eq i64 %i.j, -1
  br i1 %.not14, label %bb.p, label %bb.o, !prof !148

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.o = load i64, ptr %i.n, align 8, !noundef !8 ; 2 uses
  switch i64 %i.o, label %thread-pre-split.i [
    i64 0, label %.loopexit
    i64 1, label %bb.d
  ]

bb.d:                                             ; preds = %bb.c
  %i.p = load i8, ptr %i.m, align 1, !alias.scope !988, !noalias !991, !noundef !8 ; 2 uses
  switch i8 %i.p, label %bb.e [
    i8 43, label %.loopexit
    i8 45, label %.loopexit
  ]

thread-pre-split.i:                               ; preds = %bb.c
  %.pr.i = load i8, ptr %i.m, align 1, !alias.scope !988, !noalias !991
  br label %bb.e

bb.e:                                             ; preds = %thread-pre-split.i, %bb.d
  %i.q = phi i8 [ %.pr.i, %thread-pre-split.i ], [ %i.p, %bb.d ]
  %cond.i = icmp eq i8 %i.q, 43                   ; 2 uses
  %i.r = sext i1 %cond.i to i64
  %.sroa.15.0.i = add nsw i64 %i.o, %i.r          ; 4 uses
  %.sroa.0.0.idx.i = zext i1 %cond.i to i64
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %i.m, i64 %.sroa.0.0.idx.i ; 2 uses
  %i.s = icmp samesign ult i64 %.sroa.15.0.i, 17
  br i1 %i.s, label %.preheader.i, label %.preheader56.i.preheader

.preheader.i:                                     ; preds = %bb.e
  %.not5366.i = icmp eq i64 %.sroa.15.0.i, 0
  br i1 %.not5366.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %.lr.ph.i

.preheader56.i:                                   ; preds = %bb.h
  %.not52.i = icmp eq i64 %i.u, 0
  br i1 %.not52.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.preheader56.i.preheader

.preheader56.i.preheader:                         ; preds = %bb.e, %.preheader56.i
  %.sroa.0.1.i56 = phi ptr [ %i.t, %.preheader56.i ], [ %.sroa.0.0.i, %bb.e ] ; 2 uses
  %.sroa.15.1.i55 = phi i64 [ %i.u, %.preheader56.i ], [ %.sroa.15.0.i, %bb.e ]
  %.sroa.042.0.i54 = phi i64 [ %i.ac, %.preheader56.i ], [ 0, %bb.e ]
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i56, i64 1
  %i.u = add nsw i64 %.sroa.15.1.i55, -1          ; 2 uses
  %0 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.042.0.i54, i64 10) ; 2 uses
  %1 = extractvalue { i64, i1 } %0, 0             ; 2 uses
  %2 = extractvalue { i64, i1 } %0, 1
  %i.v = load i8, ptr %.sroa.0.1.i56, align 1, !alias.scope !988, !noalias !991, !noundef !8 ; 2 uses
  br i1 %2, label %bb.g, label %bb.f, !prof !149

bb.f:                                             ; preds = %.preheader56.i.preheader
  %i.w = zext i8 %i.v to i32
  %i.x = add nsw i32 %i.w, -48                    ; 2 uses
  %i.y = icmp ult i32 %i.x, 10
  br i1 %i.y, label %bb.h, label %.loopexit

bb.g:                                             ; preds = %.preheader56.i.preheader
  %i.z = add i8 %i.v, -48
  %i.aa = icmp ult i8 %i.z, 10
  %spec.select = select i1 %i.aa, i8 2, i8 1
  br label %.loopexit

bb.h:                                             ; preds = %bb.f
  %i.ab = zext nneg i32 %i.x to i64
  %i.ac = add i64 %1, %i.ab                       ; 3 uses
  %i.ad = icmp ult i64 %i.ac, %1
  br i1 %i.ad, label %.loopexit, label %.preheader56.i, !prof !149

.lr.ph.i:                                         ; preds = %.preheader.i, %bb.i
  %.sroa.0.269.i = phi ptr [ %i.ak, %bb.i ], [ %.sroa.0.0.i, %.preheader.i ] ; 2 uses
  %.sroa.15.268.i = phi i64 [ %i.aj, %bb.i ], [ %.sroa.15.0.i, %.preheader.i ]
  %.sroa.042.267.i = phi i64 [ %i.am, %bb.i ], [ 0, %.preheader.i ]
  %i.ae = load i8, ptr %.sroa.0.269.i, align 1, !alias.scope !988, !noalias !991, !noundef !8
  %i.af = zext i8 %i.ae to i32
  %i.ag = add nsw i32 %i.af, -48                  ; 2 uses
  %i.ah = icmp ult i32 %i.ag, 10
  br i1 %i.ah, label %bb.i, label %.loopexit

bb.i:                                             ; preds = %.lr.ph.i
  %i.ai = mul i64 %.sroa.042.267.i, 10
  %i.aj = add nsw i64 %.sroa.15.268.i, -1         ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.269.i, i64 1
  %i.al = zext nneg i32 %i.ag to i64
  %i.am = add i64 %i.ai, %i.al                    ; 2 uses
  %.not53.i = icmp eq i64 %i.aj, 0
  br i1 %.not53.i, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit, label %.lr.ph.i

bb.j:                                             ; preds = %.loopexit, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread
  %i.an = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #29
          to label %common.resume unwind label %bb.n

.loopexit:                                        ; preds = %bb.f, %bb.h, %.lr.ph.i, %bb.g, %bb.c, %bb.d, %bb.d
  %.sroa.4.0.ph = phi i8 [ 1, %bb.d ], [ %spec.select, %bb.g ], [ 1, %bb.d ], [ 0, %bb.c ], [ 1, %.lr.ph.i ], [ 1, %bb.f ], [ 2, %bb.h ]
  invoke fastcc void @_RNCNvNtNtNtCslghKHtsL3a4_5tokio4loom3std3sys8num_cpus0B9_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, i8 noundef %.sroa.4.0.ph)
          to label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23.unreachable unwind label %bb.j

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit: ; preds = %.preheader56.i, %bb.i
  %.sroa.0.0 = phi i64 [ %i.am, %bb.i ], [ %i.ac, %.preheader56.i ] ; 2 uses
  %.not = icmp eq i64 %.sroa.0.0, 0
  br i1 %.not, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread, label %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23, !prof !936

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread: ; preds = %.preheader.i, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @20, ptr %i.d, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.48.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @52, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @53) #30
          to label %bb.m unwind label %bb.j

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23.unreachable: ; preds = %.loopexit
  unreachable

_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit unwind label %bb.k

bb.k:                                             ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.t, %bb.k
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.k ], [ %i.bd, %bb.t ], [ %i.an, %bb.j ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit: ; preds = %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread23
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.m:                                             ; preds = %bb.o, %_RNvMsv_NtCs3oUPovFnLWP_4core3numj27from_ascii_bytes_radix_impl.exit.thread
  unreachable

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECslghKHtsL3a4_5tokio.exit ], [ 1, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i ], [ %i.av, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret i64 %.sroa.0.1

bb.n:                                             ; preds = %bb.t, %bb.j
  %i.aq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

bb.o:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @20, ptr %i.b, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio, ptr %.sroa.44.0..sroa_idx, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.ar, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt, ptr %.sroa.412.0..sroa_idx, align 8
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull @54, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #30
          to label %bb.m unwind label %bb.t

bb.p:                                             ; preds = %bb.b
  %i.as = call { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() ; 2 uses
  %i.at = extractvalue { i64, ptr } %i.as, 0
  %i.au = extractvalue { i64, ptr } %i.as, 1      ; 4 uses
  %i.av = ptrtoint ptr %i.au to i64               ; 3 uses
  %i.aw = trunc nuw i64 %i.at to i1
  br i1 %i.aw, label %bb.q, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.au) ]
  %i.ax = and i64 %i.av, 3
  switch i64 %i.ax, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 3, label %bb.r
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i
    i64 1, label %bb.s
  ], !prof !56

default.unreachable:                              ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.ay = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr)
  %i.az = and i64 %i.av, 1095216660480
  %i.ba = icmp ne i64 %i.az, 1095216660480
  call void @llvm.assume(i1 %i.ay)
  call void @llvm.assume(i1 %i.ba)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

bb.s:                                             ; preds = %bb.q
  %i.bb = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bb) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.bb, ptr %i.bc, align 8, !alias.scope !993
  store i8 3, ptr %i.a, align 8, !alias.scope !993
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bc)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultINtNtNtB4_3num7nonzero7NonZerojENtNtNtB4_2io5error5ErrorEECslghKHtsL3a4_5tokio.exit.i: ; preds = %bb.s, %bb.r, %bb.q, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultINtNtNtB5_3num7nonzero7NonZerojENtNtNtB5_2io5error5ErrorE6map_orjNvMse_BL_BI_3getECslghKHtsL3a4_5tokio.exit

bb.t:                                             ; preds = %bb.o
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #29
          to label %common.resume unwind label %bb.n
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking8shutdown7channel() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio4sync7oneshot7channeluEB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @56) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.e, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.d, ptr %i.g, align 8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #14, !noalias !996
  %i.h = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef range(i64 24, 257) 24, i64 noundef range(i64 8, 129) 8) #14, !noalias !996 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.b, label %bb.e, !prof !149

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #30
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync8ArcInnerINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot6SenderuEEEB1l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #29
          to label %.body unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #27
  unreachable

.body:                                            ; preds = %bb.c
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot8ReceiveruEEBI_(ptr noalias nofree noundef align 8 dereferenceable(8) %i.b) #29
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = insertvalue { ptr, ptr } poison, ptr %i.h, 0
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new
declare noundef nonnull ptr @_RNvMs_NtNtCsaL1QbXo9JQH_3std6thread6threadNtB4_6Thread3new(i64 noundef range(i64 1, 0), ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9spawnhook15run_spawn_hooks(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29increment_num_running_threads(ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread3new(i64 noundef, ptr noalias noundef nonnull align 8) unnamed_addr #0

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #17

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtRDNtNtB8_5error5ErrorNtNtB8_6marker4SendNtBS_4SyncEL_NtB6_7Display3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCs3oUPovFnLWP_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold minsize nonlazybind optsize uwtable
declare { ptr, ptr } @_RNvNvNtCsaL1QbXo9JQH_3std9panicking12catch_unwind7cleanup(ptr noundef) unnamed_addr #18

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking19panic_cannot_unwind() unnamed_addr #11

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXs6_NtNtNtCslghKHtsL3a4_5tokio4sync4task12atomic_wakerRNtNtNtCs3oUPovFnLWP_4core4task4wake5WakerNtB5_8WakerRef10into_waker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std3env6var_osReECslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core3str8converts9from_utf8(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNCNCINvNtNtB6_6thread9lifecycle15spawn_uncheckedNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB23_7Spawner12spawn_thread0uEs_000uEB29_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RINvNtNtCsaL1QbXo9JQH_3std3sys9backtrace28___rust_begin_short_backtraceNCNvMs4_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB1f_7Spawner12spawn_thread0uEB1l_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32)) unnamed_addr #19

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtNtCs3oUPovFnLWP_4core9panicking11panic_const34panic_const_async_fn_resumed_panic(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RNvXs6_NtNtCslghKHtsL3a4_5tokio4task4coopINtB5_4CoopNCINvNtNtB9_4sync5watch12changed_impluE0ENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollB9_(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCs3oUPovFnLWP_4core3fmtReNtB6_7Display3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtNtCs3oUPovFnLWP_4core3num5errorNtB5_13ParseIntErrorNtNtB9_3fmt7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs_NtNtCsaL1QbXo9JQH_3std4sync6poisonINtB4_11PoisonErrorINtNtB4_5mutex10MutexGuardINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB8_6thread2id8ThreadIdEEENtNtB1q_3fmt5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtBO_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMNtNtCslghKHtsL3a4_5tokio6signal12reusable_boxINtB3_17ReusableBoxFutureINtNtNtB7_4sync5watch8ReceiveruEE3setNCNvB5_11make_future0EB7_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(160)) unnamed_addr #0

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() unnamed_addr #20

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf13with_capacity(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs8_NtNtCslghKHtsL3a4_5tokio4sync5mutexINtB5_5MutexNtNtNtB9_2fs4file5InnerE3newB9_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(none) dereferenceable(88), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtCslghKHtsL3a4_5tokio7runtime9schedulerNtB5_6Handle8shutdown(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs1_NtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4poolNtB5_12BlockingPool8shutdown(ptr noalias nofree noundef align 8 dereferenceable(16), i64, i32 noundef range(i32 -1, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder16new_multi_thread(ptr dead_on_unwind noalias nofree noundef writable sret([240 x i8]) align 8 captures(address) dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime7builderNtB2_7Builder5build(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80), ptr noalias nofree noundef align 8 dereferenceable(240)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle5enter(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtCslghKHtsL3a4_5tokio7runtime6handleNtB2_6Handle7metrics(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i1 noundef zeroext, i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef range(i64 0, -9223372036854775807), i64) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB9_7runtime2io12scheduled_io11ScheduledIoEE6removeB9_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB9_7runtime2io12scheduled_io11ScheduledIoEE10push_frontB9_(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCs1xwejQucwHj_5alloc2io5errorNtNtNtCs3oUPovFnLWP_4core2io5error5Error3newReECsaL1QbXo9JQH_3std(i8 noundef range(i8 0, 44), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMs2_NtNtCslghKHtsL3a4_5tokio4util11linked_listINtB5_10LinkedListINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtNtNtB9_7runtime2io12scheduled_io11ScheduledIoEE8pop_backB9_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtBb_6thread2id8ThreadIdEE4lockCslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blocking25try_enter_blocking_region() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvMs2_NtNtCslghKHtsL3a4_5tokio7runtime4parkNtB6_16CachedParkThread8block_onQINtNtNtBa_4sync7oneshot8ReceiveruEEBa_(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef range(i8 0, 3) i8 @_RINvMNtNtNtCslghKHtsL3a4_5tokio7runtime7context8blockingNtB3_19BlockingRegionGuard16block_on_timeoutQINtNtNtB9_4sync7oneshot8ReceiveruEEB9_(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef align 8 dereferenceable(8), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #9

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef range(i64 1, -9223372036854775807)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream8try_read(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9poll_peek(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream10local_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream17try_read_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream8try_read(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull, i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9peer_addr(ptr dead_on_unwind noalias nofree noundef writable sret([120 x i8]) align 8 captures(none) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std3sys6thread4unixNtB5_6Thread4join(i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream18try_write_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream9try_write(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream18try_write_vectored(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream9try_write(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs4_NtNtNtCslghKHtsL3a4_5tokio7runtime4task4joinINtB5_10JoinHandleTNtNtNtBb_2fs4file9OperationNtNtNtBb_2io8blocking3BufEENtNtNtCs3oUPovFnLWP_4core6future6future6Future4pollBb_(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs2_NtNtNtCslghKHtsL3a4_5tokio7runtime4task5errorNtNtNtCs3oUPovFnLWP_4core2io5error5ErrorINtNtBU_7convert4FromNtB5_9JoinErrorE4from(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvMs8_NtNtB8_2fs4fileNtB1c_5Inner19spawn_blocking_read0TNtB1c_9OperationNtNtNtB8_2io8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtB7_4sync3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoEE8grow_oneB1b_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtCsaL1QbXo9JQH_3std3env3varReECslghKHtsL3a4_5tokio(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare { i64, ptr } @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions21available_parallelism() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs7_NtNtCsaL1QbXo9JQH_3std3ffi6os_strNtB5_8OsStringNtNtCs3oUPovFnLWP_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, ptr } @_RINvNtNtCslghKHtsL3a4_5tokio4sync7oneshot7channeluEB6_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvMNtCs3oUPovFnLWP_4core5sliceSh11starts_withCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvYNtNtNtNtCsaL1QbXo9JQH_3std3sys5stdio4unix6StderrNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef nonnull, ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #0

; Function Attrs: cold noreturn nonlazybind uwtable
declare void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() unnamed_addr #6

; Function Attrs: nonlazybind uwtable
declare void @_RNvMNtNtCsaL1QbXo9JQH_3std6thread6scopedNtB2_9ScopeData29decrement_num_running_threads(ptr noundef nonnull align 8, i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf12discard_read(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool14spawn_blockingNCNvXs0_NtNtB8_2fs4fileNtB1c_4FileNtNtNtB8_2io10async_seek9AsyncSeek10start_seek0TNtB1c_9OperationNtNtB1G_8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf9copy_from(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool24spawn_mandatory_blockingNCNvXs1_NtNtB8_2fs4fileNtB1m_4FileNtNtNtB8_2io11async_write10AsyncWrite10poll_write0TNtB1m_9OperationNtNtB1Q_8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RNvMs5_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf14copy_from_bufs(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RINvNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool24spawn_mandatory_blockingNCNvXs1_NtNtB8_2fs4fileNtB1m_4FileNtNtNtB8_2io11async_write10AsyncWrite19poll_write_vectored0TNtB1m_9OperationNtNtB1Q_8blocking3BufEEB8_(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(56)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream14poll_read_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream14poll_read_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter12debug_struct(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsW_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileENtNtCs3oUPovFnLWP_4core3fmt5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct5field(ptr noalias nofree noundef align 8 dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs2_NtNtCs3oUPovFnLWP_4core3fmt8buildersNtB5_11DebugStruct6finish(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream12shutdown_std(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden noundef ptr @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB2_10UnixStream12shutdown_std(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream15poll_write_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMNtNtNtCslghKHtsL3a4_5tokio3net3tcp6streamNtB2_9TcpStream24poll_write_vectored_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream15poll_write_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden { i64, ptr } @_RNvMs2_NtNtNtCslghKHtsL3a4_5tokio3net4unix6streamNtB5_10UnixStream24poll_write_vectored_priv(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 576460752303423488)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef i32 @close(i32 noundef) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCs3oUPovFnLWP_4core3fmtRuNtB6_5Debug3fmtCslghKHtsL3a4_5tokio(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCs3oUPovFnLWP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef align 8 dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDG0_INtNtNtCs3oUPovFnLWP_4core3ops8function2FnTRL1_INtNtNtCslghKHtsL3a4_5tokio7runtime10task_hooks8TaskMetaL0_EEEp6OutputuNtNtBR_6marker4SendNtB2G_4SyncEL_E9drop_slowB1C_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputNtNtB7_6string6StringNtNtBO_6marker4SendNtB1U_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcDINtNtNtCs3oUPovFnLWP_4core3ops8function2FnuEp6OutputuNtNtBO_6marker4SendNtB1A_4SyncEL_E9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCsaL1QbXo9JQH_3std6thread9lifecycle6PacketuEE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync5watch6ShareduEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot5InneruEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtNtCslghKHtsL3a4_5tokio4sync7oneshot6SenderuEE9drop_slowBN_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCsaL1QbXo9JQH_3std2fs4FileE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6scoped9ScopeDataE9drop_slowCslghKHtsL3a4_5tokio(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread6thread5InnerNtNtBM_5alloc6SystemE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsaL1QbXo9JQH_3std6thread9spawnhook9SpawnHookE9drop_slowBM_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net3tcp6stream9TcpStreamE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio3net4unix6stream10UnixStreamE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime2io12scheduled_io11ScheduledIoE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime8blocking4pool5InnerE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #19

; Function Attrs: nonlazybind uwtable
declare noundef i64 @_RNvMs0_NtNtCslghKHtsL3a4_5tokio2io8blockingNtB5_3Buf7copy_to(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvNtNtNtCslghKHtsL3a4_5tokio7runtime7context7current15try_set_current(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler14current_threadNtB2_13CurrentThread8shutdown(ptr noalias nofree noundef align 8 dereferenceable(40), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCslghKHtsL3a4_5tokio7runtime9scheduler12multi_threadNtB2_11MultiThread8shutdown(ptr noalias nofree noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #24

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCs3oUPovFnLWP_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #25

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #26

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { cold inlinehint noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress norecurse nounwind nonlazybind willreturn uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress norecurse nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #13 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { nounwind }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #18 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #19 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCsjHpjAFo4bi0_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #25 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #26 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #27 = { cold noreturn nounwind }
attributes #28 = { noinline }
end_hunk_2
