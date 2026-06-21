inline.NumInlined: 1538
inline.NumDeleted: 677
begin_hunk_0_@_RNvXs2_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core5error5Error6source:bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !noundef !9
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !9, !align !51, !noundef !9
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.a, %bb.c, %bb.b
  %.sroa.4.0 = phi ptr [ %i.f, %bb.c ], [ @36, %bb.b ], [ undef, %bb.a ], [ undef, %bb.a ]
  %.sroa.0.0 = phi ptr [ %i.d, %bb.c ], [ %i.b, %bb.b ], [ null, %bb.a ], [ null, %bb.a ]
  %i.g = insertvalue { ptr, ptr } poison, ptr %.sroa.0.0, 0
  %i.h = insertvalue { ptr, ptr } %i.g, ptr %.sroa.4.0, 1
  ret { ptr, ptr } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write, inaccessiblemem: write) uwtable
define hidden void @_RNvXs3_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterhEBW_EINtB5_7ZipImplBW_BW_E3newCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) initializes((0, 48)) %0, ptr noundef nonnull %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4) unnamed_addr #11 personality ptr @rust_eh_personality {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %2) ]
  %i.a = ptrtoint ptr %2 to i64
  %i.b = ptrtoint ptr %1 to i64
  %i.c = sub nuw i64 %i.a, %i.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %4) ]
  %i.d = ptrtoint ptr %4 to i64
  %i.e = ptrtoint ptr %3 to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.f, i64 %i.c)
  store ptr %1, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %3, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.0.0.i, ptr %i.k, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs4_NtNtNtCsVcNsP0WZIc_22aws_smithy_runtime_api6client12interceptors5errorNtB5_16InterceptorErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @69, i64 noundef 16, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @66, ptr noalias noundef nonnull readonly captures(address, read_provenance) @71, i64 noundef 16, ptr noundef nonnull %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @67, ptr noalias noundef nonnull readonly captures(address, read_provenance) @57, i64 noundef 6, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @68)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCs2DiVQAxFeQE_16aws_smithy_types11byte_stream5errorNtB5_5ErrorNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsbvkFyIu7lgC_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 5, ptr noalias noundef nonnull readonly captures(address, read_provenance) @70, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @72)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextCs9rVkZwOUgsI_13deltalake_aws(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 6 uses
  %i.g = load atomic ptr, ptr %i.f acquire, align 8 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !9, !noundef !9
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.n = load atomic ptr, ptr %i.m acquire, align 8
  %.not.i = icmp eq ptr %i.n, %i.l
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.p = load i64, ptr %i.o, align 8, !noundef !9
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.d ], [ 0, %bb.a ]
  %i.q = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %i.s = load ptr, ptr %2, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  tail call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.r, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.e

bb.e:                                             ; preds = %bb.t, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.w = phi ptr [ %i.q, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.pre, %bb.t ] ; 3 uses
  %.sroa.010.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.010.1, %bb.t ] ; 2 uses
  %.sroa.08.0 = phi i64 [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE28atomic_load_head_and_len_allCs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.08.1, %bb.t ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 56 ; 3 uses
  %i.z = load ptr, ptr %i.y, align 8, !noundef !9 ; 3 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 56
  %i.ab = load atomic ptr, ptr %i.aa acquire, align 8 ; 5 uses
  %i.ac = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  %i.ae = icmp eq ptr %i.z, %i.ad
  br i1 %i.ae, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.af = icmp eq ptr %i.ab, null
  br i1 %i.af, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.07.0.i = phi ptr [ %i.ai, %bb.h ], [ %i.ab, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.ab, %bb.h ], [ %i.z, %bb.e ] ; 7 uses
  %i.ag = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.ag, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.f
  store ptr %i.ab, ptr %i.y, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ab, i64 56
  %i.ai = load atomic ptr, ptr %i.ah acquire, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.aj = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  %i.al = icmp eq ptr %i.ak, %.sroa.01.0.i
  br i1 %i.al, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.am = load ptr, ptr %i.x, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 16 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 72
  store atomic ptr null, ptr %i.ao monotonic, align 8
  %i.ap = atomicrmw xchg ptr %i.aj, ptr %i.an acq_rel, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 56
  store atomic ptr %i.an, ptr %i.aq release, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 56
  %i.as = load atomic ptr, ptr %i.ar acquire, align 8 ; 2 uses
  %i.at = icmp eq ptr %i.as, null
  br i1 %i.at, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.g ], [ %i.as, %bb.j ]
  store ptr %.sroa.07.0.sink.i, ptr %i.y, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8 ; 2 uses
  %i.av = load ptr, ptr %i.au, align 8, !noundef !9
  %.not = icmp eq ptr %i.av, null
  br i1 %.not, label %bb.r, label %bb.n

bb.l:                                             ; preds = %bb.f
  %i.aw = load atomic ptr, ptr %i.f monotonic, align 8
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %bb.aj, label %bb.ak

bb.m:                                             ; preds = %bb.i, %bb.j
  %i.ay = load ptr, ptr %i.s, align 8, !nonnull !9, !align !51, !noundef !9
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !9, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !noundef !9
  call void %i.ba(ptr noundef %i.bc)
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.af

bb.n:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.experimental.noalias.scope.decl(metadata !2350)
  %i.bd = load ptr, ptr %i.f, align 8, !alias.scope !2350, !noundef !9 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 48
  %i.bf = load i64, ptr %i.be, align 8, !noalias !2350, !noundef !9
  %i.bg = add i64 %i.bf, -1
  %i.bh = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %.sroa.01.0.i), !noalias !2350
  %i.bi = sub nsw i64 0, %i.bh
  %i.bj = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 %i.bi ; 4 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 48 ; 2 uses
  %i.bl = load atomic ptr, ptr %i.bk monotonic, align 8, !noalias !2350 ; 5 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bj, i64 56 ; 2 uses
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !2350, !noundef !9 ; 4 uses
  %i.bo = load ptr, ptr %1, align 8, !alias.scope !2350, !nonnull !9, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %i.bq = load ptr, ptr %i.bp, align 8, !noalias !2350, !nonnull !9, !noundef !9
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store atomic ptr %i.br, ptr %i.bk monotonic, align 8, !noalias !2350
  store ptr null, ptr %i.bm, align 8, !noalias !2350
  %i.bs = icmp eq ptr %i.bl, null
  br i1 %i.bs, label %.thread4.i, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bl, i64 40
  store ptr %i.bn, ptr %i.bt, align 8, !noalias !2350
  %i.bu = icmp eq ptr %i.bn, null
  br i1 %i.bu, label %bb.p, label %.thread.i

.thread4.i:                                       ; preds = %bb.n
  %i.bv = icmp eq ptr %i.bn, null
  br i1 %i.bv, label %.thread5.i, label %.thread.i

.thread5.i:                                       ; preds = %.thread4.i
  store ptr null, ptr %i.f, align 8, !alias.scope !2350
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit

.thread.i:                                        ; preds = %.thread4.i, %bb.o
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  store atomic ptr %i.bl, ptr %i.bw monotonic, align 8, !noalias !2350
  br label %bb.q

bb.p:                                             ; preds = %bb.o
  store ptr %i.bl, ptr %i.f, align 8, !alias.scope !2350
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %.thread.i
  %i.bx = phi ptr [ %i.bd, %.thread.i ], [ %i.bl, %bb.p ]
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  store i64 %i.bg, ptr %i.by, align 8, !noalias !2350
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.thread5.i, %bb.q
  store ptr %i.bj, ptr %i.d, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bj, i64 80
  %i.ca = atomicrmw xchg ptr %i.bz, i8 0 seq_cst, align 1
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %bb.u, label %bb.x, !prof !26

bb.r:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.cc = call noundef i64 @_RINvNtCs6Po7BT7Nknu_5alloc4sync11data_offsetINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB4_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %.sroa.01.0.i)
  %i.cd = sub nsw i64 0, %i.cc
  %i.ce = getelementptr inbounds i8, ptr %.sroa.01.0.i, i64 %i.cd ; 2 uses
  store ptr %i.ce, ptr %i.e, align 8
  %i.cf = atomicrmw sub ptr %i.ce, i64 1 release, align 8, !noalias !2353
  %i.cg = icmp eq i64 %i.cf, 1
  br i1 %i.cg, label %bb.s, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit

bb.s:                                             ; preds = %bb.r
  fence acquire
  call void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e) #36
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %bb.r, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.t

bb.t:                                             ; preds = %bb.ae, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.010.1 = phi i64 [ %i.cr, %bb.ae ], [ %.sroa.010.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %.sroa.08.1 = phi i64 [ %i.cl, %bb.ae ], [ %.sroa.08.0, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtBL_5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEEECs9rVkZwOUgsI_13deltalake_aws.exit ]
  %.pre = load ptr, ptr %1, align 8
  br label %bb.e

bb.u:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 22, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @76) #32
          to label %bb.v unwind label %bb.ah

bb.v:                                             ; preds = %bb.u
  unreachable

bb.w:                                             ; preds = %bb.x
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %i.ci)
          to label %.thread unwind label %bb.ag

bb.x:                                             ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE6unlinkCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.ci = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 81 ; 2 uses
  store atomic i8 0, ptr %i.cj monotonic, align 1
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @77, ptr %i.b, align 8
  store ptr %i.ck, ptr %i.t, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr %i.b, ptr %i.u, align 8
  store ptr null, ptr %i.v, align 8
  invoke void @_RNvXs2_NtNtCs8CRAYtH5WmW_12futures_util6stream15futures_orderedINtB5_12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1o_6future6future6Futurep6OutputINtNtB1o_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB1o_6marker4SendEL_EEEB2p_4pollCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.au, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.a)
          to label %bb.y unwind label %bb.w

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cl = add i64 %.sroa.08.0, 1                  ; 2 uses
  %i.cm = load i64, ptr %i.c, align 8, !range !69, !noundef !9
  %i.cn = icmp eq i64 %i.cm, -9223372036854775789
  br i1 %i.cn, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.c, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE12release_taskCs9rVkZwOUgsI_13deltalake_aws(ptr noundef nonnull %i.ci)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit31

bb.aa:                                            ; preds = %bb.y
  %i.co = load atomic i8, ptr %i.cj monotonic, align 1
  %i.cp = icmp ne i8 %i.co, 0
  %i.cq = zext i1 %i.cp to i64
  %i.cr = add nuw nsw i64 %.sroa.010.0, %i.cq     ; 2 uses
  %i.cs = atomicrmw xchg ptr %i.f, ptr %i.ck acq_rel, align 8 ; 5 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %.critedge.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.cu = load ptr, ptr %i.bp, align 8, !nonnull !9, !noundef !9
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cu, i64 16
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cs, i64 32
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ac, %bb.ab
  %i.cx = load atomic ptr, ptr %i.cw acquire, align 8
  %.not.i32 = icmp eq ptr %i.cx, %i.cv
  br i1 %.not.i32, label %bb.ac, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cs, i64 48
  %i.cz = load i64, ptr %i.cy, align 8, !noundef !9
  %i.da = add i64 %i.cz, 1
  %i.db = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store i64 %i.da, ptr %i.db, align 8
  %i.dc = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store atomic ptr %i.cs, ptr %i.dc release, align 8
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cs, i64 40
  store ptr %i.ck, ptr %i.dd, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs9rVkZwOUgsI_13deltalake_aws.exit

.critedge.i:                                      ; preds = %bb.aa
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 64
  store i64 1, ptr %i.de, align 8
  %i.df = getelementptr inbounds nuw i8, ptr %i.ci, i64 48
  store atomic ptr null, ptr %i.df release, align 8
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs9rVkZwOUgsI_13deltalake_aws.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.critedge.i, %bb.ad
  %i.dg = icmp ugt i64 %i.cr, 1
  %i.dh = icmp eq i64 %i.cl, %.sroa.0.0.i
  %or.cond = select i1 %i.dg, i1 true, i1 %i.dh
  br i1 %or.cond, label %.thread63, label %bb.ae

bb.ae:                                            ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs9rVkZwOUgsI_13deltalake_aws.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.t

.thread63:                                        ; preds = %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB27_6future6future6Futurep6OutputINtNtB27_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB27_6marker4SendEL_EEEE4linkCs9rVkZwOUgsI_13deltalake_aws.exit
  %i.di = load ptr, ptr %i.s, align 8, !nonnull !9, !align !51, !noundef !9
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !nonnull !9, !noundef !9
  %i.dl = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.dm = load ptr, ptr %i.dl, align 8, !noundef !9
  call void %i.dk(ptr noundef %i.dm)
  store i64 -9223372036854775788, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit31

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit31: ; preds = %bb.z, %.thread63
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.af

bb.af:                                            ; preds = %bb.m, %bb.ak, %bb.aj, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtBP_16FuturesUnorderedpENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next4BombINtNtBR_15futures_ordered12OrderWrapperINtNtB4_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB4_6future6future6Futurep6OutputINtNtB4_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB4_6marker4SendEL_EEEEECs9rVkZwOUgsI_13deltalake_aws.exit31
  ret void

bb.ag:                                            ; preds = %bb.ai, %bb.w
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #34
  unreachable

.thread:                                          ; preds = %bb.ah, %bb.ai, %bb.w
  %.pn2551 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp, %bb.ah ], [ %i.ch, %bb.w ], [ %lpad.thr_comm.split-lp, %bb.ai ]
  resume { ptr, i32 } %.pn2551

bb.ah:                                            ; preds = %bb.u
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2358)
  call void @llvm.experimental.noalias.scope.decl(metadata !2361)
  %i.do = load ptr, ptr %i.d, align 8, !alias.scope !2364, !nonnull !9, !noundef !9
  %i.dp = atomicrmw sub ptr %i.do, i64 1 release, align 8, !noalias !2364
  %i.dq = icmp eq i64 %i.dp, 1
  br i1 %i.dq, label %bb.ai, label %.thread

bb.ai:                                            ; preds = %bb.ah
  fence acquire
  invoke void @_RNvMsn_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtBN_15futures_ordered12OrderWrapperINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtB7_5boxed3BoxDNtNtNtB2z_6future6future6Futurep6OutputINtNtB2z_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesNtCsjyY8HP3IvQ6_12object_store5ErrorENtNtB2z_6marker4SendEL_EEEEE9drop_slowB4V_(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #36
          to label %.thread unwind label %bb.ag

bb.aj:                                            ; preds = %bb.l
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 16
  store i8 1, ptr %i.dr, align 8
  store i64 -9223372036854775789, ptr %0, align 8
  br label %bb.af

bb.ak:                                            ; preds = %bb.l
  store i64 -9223372036854775788, ptr %0, align 8
  br label %bb.af
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EENtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_nextB2d_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 9 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.h = load atomic ptr, ptr %i.g acquire, align 8 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 152
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %i.o = load atomic ptr, ptr %i.n acquire, align 8
  %.not.i = icmp eq ptr %i.o, %i.m
  br i1 %.not.i, label %bb.c, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 168
  %i.q = load i64, ptr %i.p, align 8, !noundef !9
  br label %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit

_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit: ; preds = %bb.a, %bb.d
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.d ], [ 0, %bb.a ]
  %i.r = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.t = load ptr, ptr %2, align 8, !nonnull !9, !align !51, !noundef !9 ; 5 uses
  tail call void @_RNvMNtNtNtCs7cL0Iqqqcdm_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8 %i.s, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t)
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %.outer

.outer:                                           ; preds = %bb.ah, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit
  %.sroa.010.0.ph = phi i64 [ %i.cx, %bb.ah ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit ]
  %.sroa.08.0.ph = phi i64 [ %i.co, %bb.ah ], [ 0, %_RNvMs4_NtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unorderedINtB5_16FuturesUnorderedINtNtB7_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EE28atomic_load_head_and_len_allB2d_.exit ]
  br label %bb.e

bb.e:                                             ; preds = %.outer, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcINtNtNtNtCs8CRAYtH5WmW_12futures_util6stream17futures_unordered4task4TaskINtNtB1l_15futures_ordered12OrderWrapperNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtCsjyY8HP3IvQ6_12object_store11ObjectStore13delete_stream00EEEEB3e_.exit
  %i.y = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.y, i64 56 ; 3 uses
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !9 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 176
  %i.ad = load atomic ptr, ptr %i.ac acquire, align 8 ; 5 uses
  %i.ae = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %i.ag = icmp eq ptr %i.ab, %i.af
  br i1 %i.ag, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ah = icmp eq ptr %i.ad, null
  br i1 %i.ah, label %bb.l, label %bb.h

bb.g:                                             ; preds = %bb.h, %bb.e
  %.sroa.07.0.i = phi ptr [ %i.ak, %bb.h ], [ %i.ad, %bb.e ] ; 2 uses
  %.sroa.01.0.i = phi ptr [ %i.ad, %bb.h ], [ %i.ab, %bb.e ] ; 8 uses
  %i.ai = icmp eq ptr %.sroa.07.0.i, null
  br i1 %i.ai, label %bb.i, label %bb.k

bb.h:                                             ; preds = %bb.f
  store ptr %i.ad, ptr %i.aa, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ad, i64 176
  %i.ak = load atomic ptr, ptr %i.aj acquire, align 8
  br label %bb.g

bb.i:                                             ; preds = %bb.g
  %i.al = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 2 uses
  %i.am = load atomic ptr, ptr %i.al acquire, align 8
  %i.an = icmp eq ptr %i.am, %.sroa.01.0.i
  br i1 %i.an, label %bb.j, label %bb.m

bb.j:                                             ; preds = %bb.i
  %i.ao = load ptr, ptr %i.z, align 8, !nonnull !9, !noundef !9 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ao, i64 192
  store atomic ptr null, ptr %i.aq monotonic, align 8
  %i.ar = atomicrmw xchg ptr %i.al, ptr %i.ap acq_rel, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 176
  store atomic ptr %i.ap, ptr %i.as release, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 176
  %i.au = load atomic ptr, ptr %i.at acquire, align 8 ; 2 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.g, %bb.j
  %.sroa.07.0.sink.i = phi ptr [ %.sroa.07.0.i, %bb.g ], [ %i.au, %bb.j ]
  store ptr %.sroa.07.0.sink.i, ptr %i.aa, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !range !24, !noundef !9
  %i.ay = trunc nuw i64 %i.ax to i1
  br i1 %i.ay, label %bb.n, label %bb.r

bb.l:                                             ; preds = %bb.f
  %i.az = load atomic ptr, ptr %i.g monotonic, align 8
  %i.ba = icmp eq ptr %i.az, null
end_hunk_0
