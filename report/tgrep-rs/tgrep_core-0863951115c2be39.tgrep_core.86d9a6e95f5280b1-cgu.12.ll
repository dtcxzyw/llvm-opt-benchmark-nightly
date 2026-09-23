Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tgrep-rs/original/tgrep_core-0863951115c2be39.tgrep_core.86d9a6e95f5280b1-cgu.12?download=true
inline.NumInlined: 1036
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENCINvNvNtB1W_8plumbing24bridge_producer_consumer6helperINtNtB1Y_5range12IterProducerjEINtNtB1W_10filter_map17FilterMapConsumerINtB1S_15CollectConsumerB2T_ENCNvMNtB3w_6hybridNtB6U_11HybridIndex13full_snapshot0EEs_0E0B1P_ENtB5_3Job7executeB3w_:bb.a
bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1653
  %.sroa.0.0.copyload42 = load ptr, ptr %i.c, align 8
  %.sroa.9.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx43, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.14.0.copyload = load i64, ptr %.sroa.14.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.n, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.n, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.0.053 = phi ptr [ %i.q, %bb.i ], [ %.sroa.0.0.copyload42, %bb.h ] ; 2 uses
  %.sroa.9.04450 = phi ptr [ %i.r, %bb.i ], [ %.sroa.9.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.0 = phi i64 [ undef, %bb.i ], [ %.sroa.14.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1654)
  %i.t = load i64, ptr %i.s, align 8, !range !16, !alias.scope !1654, !noundef !5
  switch i64 %i.t, label %bb.k [
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit
    i64 1, label %bb.q
  ]

bb.k:                                             ; preds = %bb.j
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val.i = load ptr, ptr %i.u, align 8, !alias.scope !1654 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1.i = load ptr, ptr %i.v, align 8, !alias.scope !1654, !nonnull !5, !align !15, !noundef !5 ; 5 uses
  %i.w = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !1654 ; 2 uses
  %.not.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.w(ptr noundef nonnull %.val.i)
          to label %bb.m unwind label %bb.o, !noalias !1654

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.y = load i64, ptr %i.x, align 8, !range !12, !invariant.load !5, !noalias !1654 ; 2 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aa = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !range !17, !invariant.load !5, !noalias !1654
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.y, i64 noundef range(i64 1, 536870913) %i.ab) #29, !noalias !1654
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit

bb.o:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !12, !invariant.load !5, !noalias !1654 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %.body, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !range !17, !invariant.load !5, !noalias !1654
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i, i64 noundef range(i64 1, 0) %i.ae, i64 noundef range(i64 1, 536870913) %i.ah) #29, !noalias !1654
  br label %.body

bb.q:                                             ; preds = %bb.j
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 72
  invoke void @_RNvXs2_NtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumerINtB5_13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ai)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.o, %bb.p, %bb.r
  %eh.lpad-body = phi { ptr, i32 } [ %i.aj, %bb.r ], [ %i.ac, %bb.p ], [ %i.ac, %bb.o ]
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.053, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.04450, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8
  br label %.body39

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit: ; preds = %bb.n, %bb.m, %bb.j, %bb.q
  store i64 %.sroa.04.0, ptr %i.s, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %.sroa.0.053, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.8.0..sroa_idx8 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %.sroa.9.04450, ptr %.sroa.8.0..sroa_idx8, align 8
  %.sroa.9.0..sroa_idx10 = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx10, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.am = load i8, ptr %i.al, align 8, !range !6, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1                ; 3 uses
  br i1 %i.an, label %bb.t, label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit
  %i.ao = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !5, !noundef !5
  br label %bb.u

bb.t:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultTmINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEEEB31_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.aq = load ptr, ptr %i.ak, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5
  %i.as = atomicrmw add ptr %i.ar, i64 1 monotonic, align 8
  %i.at = icmp slt i64 %i.as, 0
  br i1 %i.at, label %bb.w, label %bb.v

bb.u:                                             ; preds = %bb.v, %bb.s
  %.pn.i = phi ptr [ %i.az, %bb.v ], [ %i.ap, %bb.s ]
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.av = load i64, ptr %i.au, align 8, !noundef !5
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ax = atomicrmw xchg ptr %i.aw, i64 3 acq_rel, align 8
  %i.ay = icmp eq i64 %i.ax, 2
  br i1 %i.ay, label %bb.y, label %bb.x

bb.v:                                             ; preds = %bb.t
  %i.az = load ptr, ptr %i.aq, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.az, ptr %i.d, align 8
  br label %bb.u

bb.w:                                             ; preds = %bb.t
  call void @llvm.trap()
  unreachable

bb.x:                                             ; preds = %bb.y, %bb.u
  br i1 %i.an, label %bb.aa, label %bb.af

bb.y:                                             ; preds = %bb.u
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.av)
          to label %bb.x unwind label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.ba = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.an, label %bb.ac, label %.body39

bb.aa:                                            ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1655)
  call void @llvm.experimental.noalias.scope.decl(metadata !1656)
  %i.bb = load ptr, ptr %i.d, align 8, !alias.scope !1657, !nonnull !5, !noundef !5
  %i.bc = atomicrmw sub ptr %i.bb, i64 1 release, align 8, !noalias !1657
  %i.bd = icmp eq i64 %i.bc, 1
  br i1 %i.bd, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %bb.aa
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %bb.af unwind label %bb.f

bb.ac:                                            ; preds = %bb.z
  call void @llvm.experimental.noalias.scope.decl(metadata !1658)
  call void @llvm.experimental.noalias.scope.decl(metadata !1659)
  %i.be = load ptr, ptr %i.d, align 8, !alias.scope !1660, !nonnull !5, !noundef !5
  %i.bf = atomicrmw sub ptr %i.be, i64 1 release, align 8, !noalias !1660
  %i.bg = icmp eq i64 %i.bf, 1
  br i1 %i.bg, label %bb.ad, label %.body39

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %.body39 unwind label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.af:                                            ; preds = %bb.aa, %bb.x, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.ag:                                            ; preds = %.body39
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body39
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEIB1R_IB2U_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB4q_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB4o_3map11MapConsumerINtNtB4o_5unzip13UnzipConsumerNtB71_5UnzipNtNtB4o_6extend15ListVecConsumerB7E_ENCNvB3p_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB3r_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.5.sroa.8.0.copyload = load ptr, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.8.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.d = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1681, !noundef !5
  %i.e = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !1681, !noundef !5
  %i.f = sub i64 %i.d, %i.e
  %i.g = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !1681, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.i = load i64, ptr %i.h, align 8, !noalias !1681, !noundef !5
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerB3j_ENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB3Z_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.b, i64 noundef %i.f, i1 noundef zeroext true, i64 noundef %i.g, i64 noundef %i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.7.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.8.0.copyload)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  %i.l = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.k)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.r, %bb.k ], [ %i.n, %bb.f ], [ %i.ak, %bb.x ], [ %i.ak, %bb.w ], [ %i.ak, %bb.t ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  %1 = load <4 x ptr>, ptr %i.b, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.17.0.copyload = load i64, ptr %.sroa.17.0..sroa_idx, align 8
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.18.0.copyload = load ptr, ptr %.sroa.18.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.o = extractvalue { ptr, ptr } %i.l, 0        ; 2 uses
  %i.p = extractvalue { ptr, ptr } %i.l, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.p) ]
  %2 = insertelement <4 x ptr> <ptr poison, ptr poison, ptr undef, ptr undef>, ptr %i.o, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %i.p, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.9.sroa.6.0 = phi i64 [ undef, %bb.i ], [ %.sroa.17.0.copyload, %bb.h ] ; 2 uses
  %.sroa.9.sroa.7.0 = phi ptr [ undef, %bb.i ], [ %.sroa.18.0.copyload, %bb.h ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %4 = phi <4 x ptr> [ %3, %bb.i ], [ %1, %bb.h ] ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecyEEIB1m_IB2p_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB2W_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.q)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  %5 = extractelement <4 x ptr> %4, i64 0
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.s = extractelement <4 x ptr> %4, i64 1
  store ptr %i.s, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.t = extractelement <4 x ptr> %4, i64 2
  store ptr %i.t, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %6 = extractelement <4 x ptr> %4, i64 3
  store ptr %6, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.9.sroa.6.0, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.9.sroa.7.0, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.q, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <4 x ptr> %4, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.9.sroa.6.0, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %.sroa.9.sroa.7.0, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.w = load i8, ptr %i.v, align 8, !range !6, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1                  ; 3 uses
  br i1 %i.x, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = load ptr, ptr %i.u, align 8, !nonnull !5, !align !15, !noundef !5
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = load ptr, ptr %i.u, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5
  %i.ac = atomicrmw add ptr %i.ab, i64 1 monotonic, align 8
  %i.ad = icmp slt i64 %i.ac, 0
  br i1 %i.ad, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.aj, %bb.p ], [ %i.z, %bb.m ]
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ah = atomicrmw xchg ptr %i.ag, i64 3 acq_rel, align 8
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.aj = load ptr, ptr %i.aa, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.aj, ptr %i.c, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.x, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.af)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ak = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.x, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1682)
  call void @llvm.experimental.noalias.scope.decl(metadata !1683)
  %i.al = load ptr, ptr %i.c, align 8, !alias.scope !1684, !nonnull !5, !noundef !5
  %i.am = atomicrmw sub ptr %i.al, i64 1 release, align 8, !noalias !1684
  %i.an = icmp eq i64 %i.am, 1
  br i1 %i.an, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1685)
  call void @llvm.experimental.noalias.scope.decl(metadata !1686)
  %i.ao = load ptr, ptr %i.c, align 8, !alias.scope !1687, !nonnull !5, !noundef !5
  %i.ap = atomicrmw sub ptr %i.ao, i64 1 release, align 8, !noalias !1687
  %i.aq = icmp eq i64 %i.ap, 1
  br i1 %i.aq, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #27
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.aa:                                            ; preds = %.body
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1X_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB3k_8plumbing24bridge_producer_consumer6helperINtNtB3m_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB3k_3map11MapConsumerINtNtB3k_5unzip13UnzipConsumerNtB7x_5UnzipNtNtB3k_6extend15ListVecConsumerINtB3g_15CollectConsumerB4h_EENCNvB4j_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4l_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.18.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  store i64 %.sroa.5.sroa.7.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1708, !noundef !5
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !1708, !noundef !5
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !1708, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !1708, !noundef !5
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipNtNtB6_6extend15ListVecConsumerINtNtNtB6_7collect8consumer15CollectConsumerNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4y_23batch_sizes_and_charges0EEB4A_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.o, %bb.f ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.t ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1708
  %1 = load <4 x ptr>, ptr %i.c, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load <2 x i64>, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %2 = insertelement <4 x ptr> <ptr poison, ptr poison, ptr undef, ptr undef>, ptr %i.q, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %i.r, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = phi <2 x i64> [ undef, %bb.i ], [ %i.p, %bb.h ] ; 3 uses
  %4 = phi <4 x ptr> [ %3, %bb.i ], [ %1, %bb.h ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB1s_3vec3VecyEEINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB3Q_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = extractelement <4 x ptr> %4, i64 0
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = extractelement <4 x ptr> %4, i64 1
  store ptr %i.v, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = extractelement <4 x ptr> %4, i64 2
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = extractelement <4 x ptr> %4, i64 3
  store ptr %6, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = extractelement <2 x i64> %i.s, i64 0
  store i64 %i.x, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = extractelement <2 x i64> %i.s, i64 1
  store i64 %i.y, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x ptr> %4, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.s, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1                ; 3 uses
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ao, %bb.p ], [ %i.ae, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = atomicrmw xchg ptr %i.al, i64 3 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ao, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.ac, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ak)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ac, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1709)
  call void @llvm.experimental.noalias.scope.decl(metadata !1710)
  %i.aq = load ptr, ptr %i.d, align 8, !alias.scope !1711, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1711
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1712)
  call void @llvm.experimental.noalias.scope.decl(metadata !1713)
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !1714, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1714
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1R_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB6h_5UnzipINtB1T_15CollectConsumeryEIB6V_B31_EENCNvB33_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB35_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.18.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.18.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 40, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  store i64 %.sroa.5.sroa.7.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1735, !noundef !5
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !1735, !noundef !5
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !1735, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !1735, !noundef !5
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryEIB3k_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEENCNvB4a_23batch_sizes_and_charges0EEB4c_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.o, %bb.f ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.t ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1735
  %1 = load <4 x ptr>, ptr %i.c, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load <2 x i64>, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %2 = insertelement <4 x ptr> <ptr poison, ptr poison, ptr undef, ptr undef>, ptr %i.q, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %i.r, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = phi <2 x i64> [ undef, %bb.i ], [ %i.p, %bb.h ] ; 3 uses
  %4 = phi <4 x ptr> [ %3, %bb.i ], [ %1, %bb.h ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEIB1m_NtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEB2A_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %5 = extractelement <4 x ptr> %4, i64 0
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.v = extractelement <4 x ptr> %4, i64 1
  store ptr %i.v, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.w = extractelement <4 x ptr> %4, i64 2
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %6 = extractelement <4 x ptr> %4, i64 3
  store ptr %6, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.x = extractelement <2 x i64> %i.s, i64 0
  store i64 %i.x, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.y = extractelement <2 x i64> %i.s, i64 1
  store i64 %i.y, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 96
  store <4 x ptr> %4, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store <2 x i64> %i.s, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1                ; 3 uses
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ao, %bb.p ], [ %i.ae, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.am = atomicrmw xchg ptr %i.al, i64 3 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ao, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.ac, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ak)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ac, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1736)
  call void @llvm.experimental.noalias.scope.decl(metadata !1737)
  %i.aq = load ptr, ptr %i.d, align 8, !alias.scope !1738, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1738
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1739)
  call void @llvm.experimental.noalias.scope.decl(metadata !1740)
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !1741, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1741
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_bTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB33_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEENCINvNvNtB1X_8plumbing24bridge_producer_consumer6helperINtNtB1Z_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB1X_3map11MapConsumerINtNtB1X_5unzip13UnzipConsumerNtB7x_5UnzipINtB1T_15CollectConsumeryENtNtB1X_6extend15ListVecConsumerENCNvB4i_23batch_sizes_and_charges0EEs_0E0B1P_ENtB5_3Job7executeB4k_(ptr noundef %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.sroa.0.0.copyload = load i64, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.sroa.18.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1762
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.18.sroa.7.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.7.sroa.4.0..sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx.sroa_idx, i64 24, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  store i64 %.sroa.5.sroa.7.sroa.0.0.copyload, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.e = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1762, !noundef !5
  %i.f = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !1762, !noundef !5
  %i.g = sub i64 %i.e, %i.f
  %i.h = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !1762, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noalias !1762, !noundef !5
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_5slice12IterProducerNtNtCs5Xr050g3D4S_3std4path7PathBufEINtNtB6_3map11MapConsumerINtNtB6_5unzip13UnzipConsumerNtB2H_5UnzipINtNtNtB6_7collect8consumer15CollectConsumeryENtNtB6_6extend15ListVecConsumerENCNvNtCsbzNSmZPCnTx_10tgrep_core7builder23batch_sizes_and_charges0EEB4F_(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, i64 noundef %i.g, i1 noundef zeroext true, i64 noundef %i.h, i64 noundef %i.j, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.h unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          catch ptr null
  %i.l = extractvalue { ptr, i32 } %i.k, 0
  %i.m = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.l)
          to label %bb.i unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
          to label %bb.g unwind label %bb.f

.body:                                            ; preds = %bb.t, %bb.w, %bb.x, %bb.f, %bb.k
  %.pn = phi { ptr, i32 } [ %i.u, %bb.k ], [ %i.o, %bb.f ], [ %i.ap, %bb.x ], [ %i.ap, %bb.w ], [ %i.ap, %bb.t ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.aa

bb.f:                                             ; preds = %bb.v, %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1762
  %1 = load <4 x ptr>, ptr %i.c, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.p = load <2 x i64>, ptr %.sroa.17.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.i:                                             ; preds = %bb.c
  %i.q = extractvalue { ptr, ptr } %i.m, 0        ; 2 uses
  %i.r = extractvalue { ptr, ptr } %i.m, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.q) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.r) ]
  %2 = insertelement <4 x ptr> <ptr poison, ptr poison, ptr undef, ptr undef>, ptr %i.q, i64 0
  %3 = insertelement <4 x ptr> %2, ptr %i.r, i64 1
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.04.0 = phi i64 [ 2, %bb.i ], [ 1, %bb.h ] ; 2 uses
  %i.s = phi <2 x i64> [ undef, %bb.i ], [ %i.p, %bb.h ] ; 3 uses
  %4 = phi <4 x ptr> [ %3, %bb.i ], [ %1, %bb.h ] ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultTINtNtNtNtCsjFxWRWgRcyr_5rayon4iter7collect8consumer13CollectResultyEINtNtNtCsgCecv3eZDcN_5alloc11collections11linked_list10LinkedListINtNtB2y_3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core7builder11BatchChargeEEEEEB3P_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.t)
          to label %bb.l unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  %5 = extractelement <4 x ptr> %4, i64 0
  store ptr %5, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.v = extractelement <4 x ptr> %4, i64 1
  store ptr %i.v, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.w = extractelement <4 x ptr> %4, i64 2
  store ptr %i.w, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %6 = extractelement <4 x ptr> %4, i64 3
  store ptr %6, ptr %.sroa.9.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.x = extractelement <2 x i64> %i.s, i64 0
  store i64 %i.x, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.y = extractelement <2 x i64> %i.s, i64 1
  store i64 %i.y, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx.sroa_idx, align 8
  br label %.body

bb.l:                                             ; preds = %bb.j
  store i64 %.sroa.04.0, ptr %i.t, align 8
  %.sroa.6.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 80
  store <4 x ptr> %4, ptr %.sroa.6.0..sroa_idx6, align 8
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 112
  store <2 x i64> %i.s, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx10.sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.ab = load i8, ptr %i.aa, align 8, !range !6, !noundef !5
  %i.ac = trunc nuw i8 %i.ab to i1                ; 3 uses
  br i1 %i.ac, label %bb.n, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ad = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !5, !noundef !5
  br label %bb.o

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.af = load ptr, ptr %i.z, align 8, !nonnull !5, !align !15, !noundef !5 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ah = atomicrmw add ptr %i.ag, i64 1 monotonic, align 8
  %i.ai = icmp slt i64 %i.ah, 0
  br i1 %i.ai, label %bb.q, label %bb.p

bb.o:                                             ; preds = %bb.p, %bb.m
  %.pn.i = phi ptr [ %i.ao, %bb.p ], [ %i.ae, %bb.m ]
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.am = atomicrmw xchg ptr %i.al, i64 3 acq_rel, align 8
  %i.an = icmp eq i64 %i.am, 2
  br i1 %i.an, label %bb.s, label %bb.r

bb.p:                                             ; preds = %bb.n
  %i.ao = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5 ; 2 uses
  store ptr %i.ao, ptr %i.d, align 8
  br label %bb.o

bb.q:                                             ; preds = %bb.n
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.s, %bb.o
  br i1 %i.ac, label %bb.u, label %bb.z

bb.s:                                             ; preds = %bb.o
  %.sroa.0.0.i = getelementptr inbounds nuw i8, ptr %.pn.i, i64 128
  invoke void @_RNvMs4_NtCs8sO4Nh65sHq_10rayon_core8registryNtB5_8Registry26notify_worker_latch_is_set(ptr noundef nonnull align 128 %.sroa.0.0.i, i64 noundef %i.ak)
          to label %bb.r unwind label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ap = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  br i1 %i.ac, label %bb.w, label %.body

bb.u:                                             ; preds = %bb.r
  call void @llvm.experimental.noalias.scope.decl(metadata !1763)
  call void @llvm.experimental.noalias.scope.decl(metadata !1764)
  %i.aq = load ptr, ptr %i.d, align 8, !alias.scope !1765, !nonnull !5, !noundef !5
  %i.ar = atomicrmw sub ptr %i.aq, i64 1 release, align 8, !noalias !1765
  %i.as = icmp eq i64 %i.ar, 1
  br i1 %i.as, label %bb.v, label %bb.z

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %bb.z unwind label %bb.f

bb.w:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !1766)
  call void @llvm.experimental.noalias.scope.decl(metadata !1767)
  %i.at = load ptr, ptr %i.d, align 8, !alias.scope !1768, !nonnull !5, !noundef !5
  %i.au = atomicrmw sub ptr %i.at, i64 1 release, align 8, !noalias !1768
  %i.av = icmp eq i64 %i.au, 1
  br i1 %i.av, label %bb.x, label %.body

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArcNtNtCs8sO4Nh65sHq_10rayon_core8registry8RegistryE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d) #27
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

bb.z:                                             ; preds = %bb.u, %bb.r, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.aa:                                            ; preds = %.body
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit: ; preds = %.body
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs2_NtCs8sO4Nh65sHq_10rayon_core3jobINtB5_8StackJobNtNtB7_5latch9SpinLatchNCINvNvNtB7_4join12join_context6call_buNCINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB21_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB1Z_8for_each15ForEachConsumerNCNvMNtB4d_6hybridNtB5F_11HybridIndex13full_snapshots0_0EEs_0E0uENtB5_3Job7executeB4d_(ptr nofree noundef captures(none) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [8 x i8], align 8                 ; 7 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.5.sroa.0.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.sroa.4.0.copyload = load ptr, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.5.sroa.5.0.copyload = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.5.sroa.6.0.copyload = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.5.sroa.7.0.copyload = load ptr, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  store ptr null, ptr %0, align 8
  %.not = icmp eq ptr %.sroa.0.0.copyload, null
  br i1 %.not, label %bb.e, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.7.0.copyload) ]
  %i.c = load i64, ptr %.sroa.0.0.copyload, align 8, !noalias !1787, !noundef !5
  %i.d = load i64, ptr %.sroa.5.sroa.0.0.copyload, align 8, !noalias !1787, !noundef !5
  %i.e = sub i64 %i.c, %i.d
  %i.f = load i64, ptr %.sroa.5.sroa.4.0.copyload, align 8, !noalias !1787, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.5.sroa.4.0.copyload, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noalias !1787, !noundef !5
  invoke void @_RINvNvNtNtCsjFxWRWgRcyr_5rayon4iter8plumbing24bridge_producer_consumer6helperINtNtB8_3vec13DrainProducerTRmQINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtCsbzNSmZPCnTx_10tgrep_core6ondisk12PostingEntryEEEINtNtB6_8for_each15ForEachConsumerNCNvMNtB2j_6hybridNtB3K_11HybridIndex13full_snapshots0_0EEB2j_(i64 noundef %i.e, i1 noundef zeroext true, i64 noundef %i.f, i64 noundef %i.h, ptr noalias nofree noundef nonnull align 8 %.sroa.5.sroa.5.0.copyload, i64 noundef %.sroa.5.sroa.6.0.copyload, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.5.sroa.7.0.copyload)
          to label %__rust_try.exit unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  %i.k = invoke { ptr, ptr } @_RNvNvNtCs5Xr050g3D4S_3std9panicking12catch_unwind7cleanup(ptr noundef %i.j)
          to label %bb.h unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() #30
  unreachable

bb.e:                                             ; preds = %bb.a
  invoke void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @54) #32
          to label %bb.g unwind label %bb.f

.body23:                                          ; preds = %bb.v, %bb.y, %bb.z, %bb.f, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.m, %bb.f ], [ %i.av, %bb.z ], [ %i.av, %bb.y ], [ %i.av, %bb.v ]
  invoke void @_RNvXNtCs8sO4Nh65sHq_10rayon_core6unwindNtB2_12AbortIfPanicNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull %i.a)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8sO4Nh65sHq_10rayon_core6unwind12AbortIfPanicECsbzNSmZPCnTx_10tgrep_core.exit unwind label %bb.ac

bb.f:                                             ; preds = %bb.x, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body23

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.c
  %i.n = extractvalue { ptr, ptr } %i.k, 0
  %i.o = extractvalue { ptr, ptr } %i.k, 1
  br label %__rust_try.exit

__rust_try.exit:                                  ; preds = %bb.b, %bb.h
  %.sroa.7.0 = phi ptr [ %i.o, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.6.0 = phi ptr [ %i.n, %bb.h ], [ undef, %bb.b ] ; 2 uses
  %.sroa.04.0 = phi i64 [ 2, %bb.h ], [ 1, %bb.b ] ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1788)
  %i.q = load i64, ptr %i.p, align 8, !range !16, !alias.scope !1788, !noundef !5
  %switch.i = icmp samesign ult i64 %i.q, 2
  br i1 %switch.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.i

bb.i:                                             ; preds = %__rust_try.exit
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %.val.i = load ptr, ptr %i.r, align 8, !alias.scope !1788 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %.val1.i = load ptr, ptr %i.s, align 8, !alias.scope !1788, !nonnull !5, !align !15, !noundef !5 ; 5 uses
  %i.t = load ptr, ptr %.val1.i, align 8, !invariant.load !5, !noalias !1788 ; 2 uses
  %.not.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  invoke void %i.t(ptr noundef nonnull %.val.i)
          to label %bb.k unwind label %bb.m, !noalias !1788

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !12, !invariant.load !5, !noalias !1788 ; 2 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCs8sO4Nh65sHq_10rayon_core3job9JobResultuEECsbzNSmZPCnTx_10tgrep_core.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %.val1.i, i64 16
  %i.y = load i64, ptr %i.x, align 8, !range !17, !invariant.load !5, !noalias !1788
end_hunk_0
