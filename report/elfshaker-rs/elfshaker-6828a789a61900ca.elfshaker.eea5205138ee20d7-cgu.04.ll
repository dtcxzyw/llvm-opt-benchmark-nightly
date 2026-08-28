Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/elfshaker-rs/original/elfshaker-6828a789a61900ca.elfshaker.eea5205138ee20d7-cgu.04?download=true
inline.NumInlined: 415
inline.NumDeleted: 207
begin_hunk_0_@_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB6_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtB14_4SinkECskuiImRAV2ip_9elfshaker:bb.a
  %i.c = alloca [8192 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 8192, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i8 0, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %.outer

.outer:                                           ; preds = %bb.d, %bb.a
  %i.h = phi ptr [ %.pre, %bb.d ], [ %i.c, %bb.a ]
  %.sroa.02.0.ph = phi i64 [ %i.af, %bb.d ], [ 0, %bb.a ] ; 2 uses
  %i.i = call noundef ptr @_RNvXs3_NtNtCs1xwejQucwHj_5alloc2io4utilINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB7_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtB7_4read4Read8read_bufCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.h, ptr noundef nonnull %i.b) ; 2 uses
  %.not33 = icmp eq ptr %i.i, null
  br i1 %.not33, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.outer, %bb.i
  %i.j = phi ptr [ %i.am, %bb.i ], [ %i.i, %.outer ] ; 7 uses
  %i.k = ptrtoint ptr %i.j to i64                 ; 4 uses
  %i.l = and i64 %i.k, 3
  switch i64 %i.l, label %default.unreachable [
    i64 2, label %bb.b
    i64 3, label %.split22
    i64 0, label %.split23
    i64 1, label %.split
  ], !prof !60

default.unreachable:                              ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.m = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCs3oUPovFnLWP_4core2io5error12os_functions16get_os_functions()
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.b
  %i.n = lshr i64 %i.k, 32
  %i.o = trunc nuw i64 %i.n to i32
  %i.p = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !9, !noundef !9
  %i.r = invoke noundef zeroext i1 %i.q(i32 noundef %i.o)
          to label %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit unwind label %bb.k, !inline_history !135

.split22:                                         ; preds = %.lr.ph
  %i.s = lshr i64 %i.k, 32
  %i.t = icmp ult ptr %i.j, inttoptr (i64 188978561024 to ptr) ; 2 uses
  %switch.idx.cast.i.i.i = trunc i64 %i.s to i8
  %spec.select.i.i.i = select i1 %i.t, i8 %switch.idx.cast.i.i.i, i8 -1 ; 2 uses
  %i.u = icmp ne i8 %spec.select.i.i.i, -1
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp eq i8 %spec.select.i.i.i, 35
  br i1 %i.v, label %bb.g, label %bb.f

.split23:                                         ; preds = %.lr.ph
  %i.w = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !136, !noundef !9
  %i.y = icmp eq i8 %i.x, 35
  br i1 %i.y, label %.thread25, label %bb.f

.split:                                           ; preds = %.lr.ph
  %i.z = getelementptr i8, ptr %i.j, i64 31
  %i.aa = load i8, ptr %i.z, align 8, !range !136, !noundef !9
  %i.ab = icmp eq i8 %i.aa, 35
  br i1 %i.ab, label %bb.h, label %bb.f

._crit_edge:                                      ; preds = %bb.i, %.outer
  %i.ac = load i64, ptr %i.e, align 8, !noundef !9 ; 2 uses
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.c, label %bb.d

bb.c:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ae = inttoptr i64 %.sroa.02.0.ph to ptr
  br label %bb.e

bb.d:                                             ; preds = %._crit_edge
  %i.af = add i64 %i.ac, %.sroa.02.0.ph
  store i64 0, ptr %i.e, align 8
  %.pre = load ptr, ptr %i.b, align 8
  br label %.outer

bb.e:                                             ; preds = %bb.f, %bb.c
  %.sroa.4.0 = phi ptr [ %i.j, %bb.f ], [ %i.ae, %bb.c ]
  %.sroa.0.0 = phi i64 [ 1, %bb.f ], [ 0, %bb.c ]
  %i.ag = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.ah = insertvalue { i64, ptr } %i.ag, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.ah

_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit: ; preds = %.noexc
  br i1 %i.r, label %.thread25, label %bb.f

bb.f:                                             ; preds = %.split23, %.split22, %.split, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

.thread25:                                        ; preds = %.split23, %_RNvMs1_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_5Error14is_interrupted.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %bb.i

bb.g:                                             ; preds = %.split22
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ai = and i64 %i.k, 1095216660480
  %i.aj = icmp ne i64 %i.ai, 1095216660480
  call void @llvm.assume(i1 %i.t)
  call void @llvm.assume(i1 %i.aj)
  br label %bb.i

bb.h:                                             ; preds = %.split
  %i.ak = getelementptr i8, ptr %i.j, i64 -1      ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ak) ]
  store ptr %i.ak, ptr %i.g, align 8, !alias.scope !272
  store i8 3, ptr %i.a, align 8, !alias.scope !272
  call void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %.thread25
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.al = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9
  %i.am = call noundef ptr @_RNvXs3_NtNtCs1xwejQucwHj_5alloc2io4utilINtNtNtCs3oUPovFnLWP_4core2io4util4TakeQINtNtNtCsfwHX9XeyMnn_4zstd6stream4read7DecoderINtNtNtB7_8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtB7_4read4Read8read_bufCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %i.al, ptr noundef nonnull %i.b) ; 2 uses
  %.not = icmp eq ptr %i.am, null
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.j:                                             ; preds = %bb.k
  resume { ptr, i32 } %lpad.thr_comm

bb.k:                                             ; preds = %.noexc, %bb.b
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECskuiImRAV2ip_9elfshaker(ptr nonnull %i.j) #19
          to label %bb.j unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RINvNtNtNtCs1xwejQucwHj_5alloc2io4copy7generic17stack_buffer_copyQRShNtNtCsaL1QbXo9JQH_3std2fs4FileECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 4 dereferenceable(4) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8192 x i8], align 1              ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.val = load ptr, ptr %0, align 8, !nonnull !9, !align !108, !noundef !9 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 8 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !275)
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !275, !noundef !9 ; 3 uses
  %..i.i.i14 = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 8192) ; 5 uses
  %i.d = load ptr, ptr %.val, align 8, !alias.scope !275, !nonnull !9, !noundef !9 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 %..i.i.i14
  %i.f = sub nuw nsw i64 %i.c, %..i.i.i14
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i14, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i14, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !275
  store ptr %i.e, ptr %.val, align 8, !alias.scope !275, !captures !278
  store i64 %i.f, ptr %i.b, align 8, !alias.scope !275
  %i.g = icmp eq i64 %i.c, 0
  br i1 %i.g, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = add i64 %..i.i.i16, %.sroa.02.015        ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !279)
  %i.i = load i64, ptr %i.b, align 8, !alias.scope !279, !noundef !9 ; 3 uses
  %..i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.i, i64 8192) ; 5 uses
  %i.j = load ptr, ptr %.val, align 8, !alias.scope !279, !nonnull !9, !noundef !9 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 %..i.i.i
  %i.l = sub nuw nsw i64 %i.i, %..i.i.i
  call void @_RINvNtCs3oUPovFnLWP_4core5slice20copy_from_slice_implINtNtNtB4_3mem12maybe_uninit11MaybeUninithEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull %i.a, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.j, i64 noundef range(i64 0, -9223372036854775808) %..i.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @33), !noalias !279
  store ptr %i.k, ptr %.val, align 8, !alias.scope !279, !captures !278
  store i64 %i.l, ptr %i.b, align 8, !alias.scope !279
  %i.m = icmp eq i64 %i.i, 0
  br i1 %i.m, label %._crit_edge.loopexit, label %.lr.ph

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.n = inttoptr i64 %i.h to ptr
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %..i.i.i16 = phi i64 [ %..i.i.i, %bb.b ], [ %..i.i.i14, %bb.a ] ; 2 uses
  %.sroa.02.015 = phi i64 [ %i.h, %bb.b ], [ 0, %bb.a ]
  %i.o = call noundef ptr @_RNvYNtNtCsaL1QbXo9JQH_3std2fs4FileNtNtNtCs3oUPovFnLWP_4core2io5write5Write9write_allCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 4 dereferenceable(4) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef %..i.i.i16) ; 2 uses
  %.not = icmp eq ptr %i.o, null
  br i1 %.not, label %bb.b, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a, %._crit_edge.loopexit
  %.sroa.4.0 = phi ptr [ %i.n, %._crit_edge.loopexit ], [ null, %bb.a ], [ %i.o, %.lr.ph ]
  %.sroa.0.0 = phi i64 [ 0, %._crit_edge.loopexit ], [ 0, %bb.a ], [ 1, %.lr.ph ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.p = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.q = insertvalue { i64, ptr } %i.p, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs1_NtCskuiImRAV2ip_9elfshaker9entrypoolINtB9_9EntryPoolpENtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeINtB3_14VisitEntryPoolAhj14_ENtB13_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2M_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2O_6config13DefaultConfigEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [20 x i8], align 8                ; 8 uses
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0 = alloca [9 x i8], align 8 ; 11 uses
  %.sroa.7.sroa.8.sroa.18 = alloca [9 x i8], align 1 ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 20)
  %i.g = load i64, ptr %i.c, align 8, !range !67, !noundef !9
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !281, !noundef !9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.p, align 8
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.q, 0
  %i.t = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCskt5MLIAl8nl_9hashbrown3mapINtB4_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE24with_capacity_and_hasherCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %2, i64 noundef %i.s, i64 noundef %i.t)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.not.i.i158 = icmp eq i64 %2, 0
  br i1 %.not.i.i158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sroa.2.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.2.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.2.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.sroa_idx.sroa_idx262 = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.228.0159 = phi i64 [ %2, %.lr.ph ], [ %i.x, %bb.s ]
  %i.x = add nsw i64 %.sroa.228.0159, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !282
  invoke void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyINtNtB2O_5impls12ArrayVisitorAhj14_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1) #18
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %i.y = load i8, ptr %i.a, align 8, !range !289, !noalias !282, !noundef !9 ; 2 uses
  %.not18.i.i = icmp eq i8 %i.y, -1
  %3 = load <8 x i8>, ptr %i.v, align 1, !noalias !282 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !282 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !noalias !282 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !282 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 4, !noalias !282 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload = load i64, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !282 ; 2 uses
  br i1 %.not18.i.i, label %bb.q, label %bb.k

bb.i:                                             ; preds = %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #19
          to label %common.resume unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.aa = load i8, ptr %.sroa.514.0..sroa_idx.i.i, align 1, !noalias !290
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 8
  store i8 %i.aa, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.8..sroa_idx, align 8, !noalias !290
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.8..sroa.514.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.624.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.8..sroa.514.0..sroa_idx.i.i.sroa_idx, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  store i64 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, align 8, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.sroa.523.sroa.14.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.523.sroa.14.0..sroa.523.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, i64 9, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.y, ptr %i.ab, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <8 x i8> %3, ptr %.sroa.422.0..sroa_idx, align 1
  %.sroa.523.sroa.10.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.10.0..sroa.523.0..sroa_idx.sroa_idx, align 1
  %.sroa.523.sroa.11.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.11.0..sroa.523.0..sroa_idx.sroa_idx, align 2
  %.sroa.523.sroa.12.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.12.0..sroa.523.0..sroa_idx.sroa_idx, align 1
  %.sroa.523.sroa.13.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.13.0..sroa.523.0..sroa_idx.sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.ac, %bb.l ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit: ; preds = %bb.m
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
  br label %bb.t

bb.q:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !282
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, align 8, !noalias !290
  store i64 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.sroa_idx.sroa_idx262, align 1, !noalias !290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <8 x i8> %3, ptr %i.d, align 8
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.9.0..sroa_idx, align 8
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.10.0..sroa_idx, align 1
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.11.0..sroa_idx, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.2.sroa.12.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, i64 9, i1 false)
  %i.ag = invoke noundef i32 @_RINvMNtCskuiImRAV2ip_9elfshaker9entrypoolINtB3_9EntryPoolAhj14_E13get_or_insertBT_EB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %bb.s unwind label %bb.r       ; 0 uses

._crit_edge:                                      ; preds = %bb.s, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.h

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs1_NtCskuiImRAV2ip_9elfshaker9entrypoolINtB9_9EntryPoolpENtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeINtB3_14VisitEntryPoolAhj14_ENtB13_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2M_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEENtNtB2O_6config13DefaultConfigEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [20 x i8], align 8                ; 8 uses
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0 = alloca [9 x i8], align 8 ; 11 uses
  %.sroa.7.sroa.8.sroa.18 = alloca [9 x i8], align 1 ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 20)
  %i.g = load i64, ptr %i.c, align 8, !range !67, !noundef !9
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !281, !noundef !9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.p, align 8
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecAhj14_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.q, 0
  %i.t = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCskt5MLIAl8nl_9hashbrown3mapINtB4_7HashMapAhj14_mNtNtNtCsaL1QbXo9JQH_3std4hash6random11RandomStateE24with_capacity_and_hasherCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %2, i64 noundef %i.s, i64 noundef %i.t)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.not.i.i158 = icmp eq i64 %2, 0
  br i1 %.not.i.i158, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 9
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 13
  %.sroa.2.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.2.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 9
  %.sroa.2.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 10
  %.sroa.2.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 11
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.sroa_idx.sroa_idx262 = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 1
  br label %bb.h

bb.g:                                             ; preds = %bb.i, %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.d, %bb.i
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn, %bb.i ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %.lr.ph, %bb.s
  %.sroa.228.0159 = phi i64 [ %2, %.lr.ph ], [ %i.x, %bb.s ]
  %i.x = add nsw i64 %.sroa.228.0159, -1          ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !291
  invoke void @_RINvXsh_NtCs974quTetXso_9rmp_serde6decodeQINtB6_12DeserializerINtB6_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEENtNtCs6LlcditsbhK_5serde2de12Deserializer15deserialize_anyINtNtB2n_5impls12ArrayVisitorAhj14_EECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1) #18
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  %i.y = load i8, ptr %i.a, align 8, !range !289, !noalias !291, !noundef !9 ; 2 uses
  %.not18.i.i = icmp eq i8 %i.y, -1
  %3 = load <8 x i8>, ptr %i.v, align 1, !noalias !291 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !291 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 2, !noalias !291 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !291 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload = load i8, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 4, !noalias !291 ; 2 uses
  %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload = load i64, ptr %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.sroa.6.0..sroa.6.i.i.sroa.6.0..sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx.sroa_idx, align 1, !noalias !291 ; 2 uses
  br i1 %.not18.i.i, label %bb.q, label %bb.k

bb.i:                                             ; preds = %bb.r, %bb.j
  %.pn = phi { ptr, i32 } [ %i.ah, %bb.r ], [ %i.z, %bb.j ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #19
          to label %common.resume unwind label %bb.g

bb.j:                                             ; preds = %bb.h
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.k:                                             ; preds = %.noexc
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 21
  %i.aa = load i8, ptr %.sroa.514.0..sroa_idx.i.i, align 1, !noalias !298
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 8
  store i8 %i.aa, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.8..sroa_idx, align 8, !noalias !298
  %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.8..sroa.514.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 22
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(10) %.sroa.624.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(10) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.9.8..sroa.514.0..sroa_idx.i.i.sroa_idx, i64 10, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  store i64 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, align 8, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.sroa.523.sroa.14.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.523.sroa.14.0..sroa.523.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, i64 9, i1 false)
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.y, ptr %i.ab, align 8
  %.sroa.422.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store <8 x i8> %3, ptr %.sroa.422.0..sroa_idx, align 1
  %.sroa.523.sroa.10.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.10.0..sroa.523.0..sroa_idx.sroa_idx, align 1
  %.sroa.523.sroa.11.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.11.0..sroa.523.0..sroa_idx.sroa_idx, align 2
  %.sroa.523.sroa.12.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.12.0..sroa.523.0..sroa_idx.sroa_idx, align 1
  %.sroa.523.sroa.13.0..sroa.523.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.523.sroa.13.0..sroa.523.0..sroa_idx.sroa_idx, align 4
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body.i unwind label %bb.n

bb.m:                                             ; preds = %bb.k
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecAhj14_ENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.o, %bb.l
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ae, %bb.o ], [ %i.ac, %bb.l ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %common.resume unwind label %bb.p

bb.p:                                             ; preds = %.body.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit: ; preds = %bb.m
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTAhj14_mEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
  br label %bb.t

bb.q:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !291
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, align 8, !noalias !298
  store i64 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.0.copyload, ptr %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0.1.sroa_idx.sroa_idx262, align 1, !noalias !298
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, ptr noundef nonnull align 8 dereferenceable(9) %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0, i64 9, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store <8 x i8> %3, ptr %i.d, align 8
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.9.0..sroa_idx, align 8
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.10.0..sroa_idx, align 1
  store i8 %.sroa.6.i.i.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.6.sroa.0.0.copyload, ptr %.sroa.2.sroa.11.0..sroa_idx, align 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.2.sroa.12.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(9) %.sroa.7.sroa.8.sroa.18, i64 9, i1 false)
  %i.ag = invoke noundef i32 @_RINvMNtCskuiImRAV2ip_9elfshaker9entrypoolINtB3_9EntryPoolAhj14_E13get_or_insertBT_EB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(20) %i.d)
          to label %bb.s unwind label %bb.r       ; 0 uses

._crit_edge:                                      ; preds = %bb.s, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.s:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.sroa.8.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.13.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.7.sroa.0)
  %.not.i.i = icmp eq i64 %i.x, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.h

bb.t:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolAhj14_EEBG_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXs1_NtCskuiImRAV2ip_9elfshaker9entrypoolINtB9_9EntryPoolpENtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeINtB3_14VisitEntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtB13_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB3o_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtB2k_2fs4FileEENtNtB3q_6config13DefaultConfigEEBb_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [48 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.7.sroa.8 = alloca [16 x i8], align 8     ; 4 uses
  %.sroa.12 = alloca [16 x i8], align 8           ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %2, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.g = load i64, ptr %i.c, align 8, !range !67, !noundef !9
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.j = load i64, ptr %i.i, align 8, !range !281, !noundef !9 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.h, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.k, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.j, i64 %i.l) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.m = load ptr, ptr %i.k, align 8, !nonnull !9, !noundef !9
  %i.n = icmp ule i64 %2, %i.j
  tail call void @llvm.assume(i1 %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store i64 %i.j, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 0, ptr %i.p, align 8
  %i.q = invoke { i64, i64 } @_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @11)
          to label %bb.e unwind label %bb.d       ; 2 uses

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.e) #19
          to label %common.resume unwind label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = extractvalue { i64, i64 } %i.q, 0
  %i.t = extractvalue { i64, i64 } %i.q, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs_NtCskt5MLIAl8nl_9hashbrown3mapINtB4_7HashMapNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmNtNtNtBS_4hash6random11RandomStateE24with_capacity_and_hasherCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.b, i64 noundef %2, i64 noundef %i.s, i64 noundef %i.t)
          to label %bb.f unwind label %bb.d

bb.f:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.f, i64 24 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.u, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.h

bb.g:                                             ; preds = %bb.u, %.body, %bb.d
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body.i, %bb.d, %.body
  %common.resume.op = phi { ptr, i32 } [ %i.r, %bb.d ], [ %.pn, %.body ], [ %eh.lpad-body.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit, %bb.f
  %.sroa.2.0 = phi i64 [ %2, %bb.f ], [ %.sroa.2.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !299
  %.not.i.i = icmp eq i64 %.sroa.2.0, 0
  br i1 %.not.i.i, label %bb.r, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.x = add nsw i64 %.sroa.2.0, -1
  invoke void @_RINvXst_NtNtCs6LlcditsbhK_5serde2de5implsNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringNtB8_11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1U_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBJ_2fs4FileEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.i
  %i.y = load i8, ptr %i.a, align 8, !range !289, !noalias !303, !noundef !9 ; 2 uses
  %.not13.i.i = icmp eq i8 %i.y, -1
  br i1 %.not13.i.i, label %bb.j, label %bb.l

bb.j:                                             ; preds = %.noexc
  %.sroa.8.8.copyload = load i64, ptr %i.v, align 8, !noalias !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.8..sroa_idx, i64 16, i1 false), !noalias !307
  br label %bb.r

.body:                                            ; preds = %bb.w, %bb.k, %bb.u
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.u ], [ %i.z, %bb.k ], [ %i.ah, %bb.w ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_(ptr noalias nofree noundef align 8 dereferenceable(72) %i.f) #19
          to label %common.resume unwind label %bb.g

bb.k:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECskuiImRAV2ip_9elfshaker.exit.i, %bb.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.l:                                             ; preds = %.noexc
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i.i, i64 7, i1 false)
  %.sroa.8.1.copyload = load i64, ptr %i.v, align 8, !noalias !307
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12.8..sroa_idx, i64 16, i1 false), !noalias !307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.sroa.623.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.623.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, i64 16, i1 false)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.y, ptr %i.aa, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.8.1.copyload, ptr %.sroa.522.0..sroa_idx, align 8
  store i64 -1, ptr %0, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %.body.i unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.p, %bb.m
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.ad, %bb.p ], [ %i.ab, %bb.m ]
  invoke void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
          to label %common.resume unwind label %bb.q

bb.q:                                             ; preds = %.body.i
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCskuiImRAV2ip_9elfshaker9entrypool9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringEEBG_.exit: ; preds = %bb.n
  call void @_RNvXsg_NtCskt5MLIAl8nl_9hashbrown3rawINtB5_8RawTableTNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringmEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.u)
  br label %bb.y

bb.r:                                             ; preds = %bb.j, %bb.h
  %.sroa.2.1.ph = phi i64 [ 0, %bb.h ], [ %i.x, %bb.j ]
  %.sroa.8.0.ph = phi i64 [ -1, %bb.h ], [ %.sroa.8.8.copyload, %bb.j ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !299
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.12, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12)
  %.not25 = icmp eq i64 %.sroa.8.0.ph, -1
  br i1 %.not25, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 %.sroa.8.0.ph, ptr %i.d, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.8, i64 16, i1 false)
  %i.af = invoke noundef i32 @_RINvMNtCskuiImRAV2ip_9elfshaker9entrypoolINtB3_9EntryPoolNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringE13get_or_insertBT_EB5_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d)
          to label %bb.v unwind label %bb.u       ; 0 uses

bb.t:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.f, i64 72, i1 false)
  br label %bb.y

bb.u:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsaL1QbXo9JQH_3std3ffi6os_str8OsStringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %.body unwind label %bb.g

bb.v:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VechENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std3sys6os_str5bytes3BufECskuiImRAV2ip_9elfshaker.exit.i unwind label %bb.w

bb.w:                                             ; preds = %bb.v
end_hunk_0
begin_hunk_1_@_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBL_6string6StringENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2O_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB2Q_6config13DefaultConfigEECskuiImRAV2ip_9elfshaker:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !354, !noalias !357, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.n, align 8, !alias.scope !354, !noalias !357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !345
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.thread21, label %bb.d

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtBL_6string6StringENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB2O_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderRShEENtNtB2Q_6config13DefaultConfigEECskuiImRAV2ip_9elfshaker(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.11 = alloca [16 x i8], align 8           ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 43690) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 24)
  %i.e = load i64, ptr %i.b, align 8, !range !67, !noundef !9
  %i.f = trunc nuw i64 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = load i64, ptr %i.g, align 8, !range !281, !noundef !9 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.f, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.j = load i64, ptr %i.i, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.k = load ptr, ptr %i.i, align 8, !nonnull !9, !noundef !9
  %i.l = icmp samesign ule i64 %..i, %i.h
  tail call void @llvm.assume(i1 %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.h, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.k, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  store i64 0, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  %.not.i.i27 = icmp eq i64 %2, 0
  br i1 %.not.i.i27, label %.thread21, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %.sroa.11.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.3.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.d

.thread21:                                        ; preds = %bb.n, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  br label %.loopexit

bb.d:                                             ; preds = %.lr.ph, %bb.n
  %.sroa.2.028 = phi i64 [ %2, %.lr.ph ], [ %i.p, %bb.n ]
  %i.p = add i64 %.sroa.2.028, -1                 ; 2 uses
  invoke void @_RINvXs6_NtNtCs6LlcditsbhK_5serde2de5implsNtNtCs1xwejQucwHj_5alloc6string6StringNtB8_11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1O_10ReadReaderINtNtNtNtBH_2io8buffered9bufreader9BufReaderRShEEEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.q = load i8, ptr %i.a, align 8, !range !289, !noalias !363, !noundef !9 ; 2 uses
  %.not13.i.i = icmp eq i8 %i.q, -1
  br i1 %.not13.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.l, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.x, %bb.l ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %common.resume unwind label %bb.p

bb.f:                                             ; preds = %.noexc
  %.sroa.410.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.410.0..sroa_idx.i.i, i64 7, i1 false)
  %.sroa.8.1.copyload = load i64, ptr %i.o, align 8, !noalias !367
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, i64 16, i1 false), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  store i8 %i.q, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.8.1.copyload, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %.body, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
  br label %bb.o

bb.i:                                             ; preds = %.noexc
  %.sroa.8.8.copyload = load i64, ptr %i.o, align 8, !noalias !367 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.8..sroa_idx, i64 16, i1 false), !noalias !367
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !359
  %.not11 = icmp eq i64 %.sroa.8.8.copyload, -1
  br i1 %.not11, label %.loopexit, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 %.sroa.8.8.copyload, ptr %i.c, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx6, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11, i64 16, i1 false)
  %i.u = load i64, ptr %i.n, align 8, !alias.scope !368, !noalias !371, !noundef !9 ; 3 uses
  %i.v = load i64, ptr %i.d, align 8, !range !33, !alias.scope !368, !noalias !371, !noundef !9
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.k, label %bb.n

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringE8grow_oneCsaL1QbXo9JQH_3std(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %bb.n unwind label %bb.l, !noalias !371

bb.l:                                             ; preds = %bb.k
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCs1xwejQucwHj_5alloc6string6StringECskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #19
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

.loopexit:                                        ; preds = %bb.i, %.thread21
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.z, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.o

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.aa = load ptr, ptr %i.m, align 8, !alias.scope !368, !noalias !371, !nonnull !9, !noundef !9
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.aa, i64 %i.u
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.ac = add i64 %i.u, 1
  store i64 %i.ac, ptr %i.n, align 8, !alias.scope !368, !noalias !371
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !359
  %.not.i.i = icmp eq i64 %i.p, 0
  br i1 %.not.i.i, label %.thread21, label %bb.d

bb.o:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtBG_6string6StringEECskuiImRAV2ip_9elfshaker.exit, %.loopexit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.p:                                             ; preds = %.body
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB3f_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB3h_6config13DefaultConfigEEB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 87381) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
  %i.d = load i64, ptr %i.b, align 8, !range !67, !noundef !9
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !281, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.k = icmp samesign ule i64 %..i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  %.not.i.i24 = icmp eq i64 %2, 0
  br i1 %.not.i.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.sroa.11.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.210.025 = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.k ]
  %i.o = add i64 %.sroa.210.025, -1               ; 2 uses
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs_1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1U_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEEEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 8, !range !289, !noalias !377, !noundef !9 ; 2 uses
  %.not19.i.i = icmp eq i8 %i.p, -1
  br i1 %.not19.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %.noexc
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.sroa.10.sroa.0.0.copyload32 = load i32, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !381
  %.sroa.11.sroa.10.sroa.10.0..sroa.515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.11.sroa.10.sroa.10.0..sroa.515.0..sroa_idx.i.i.sroa_idx, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i, i64 3, i1 false)
  %.sroa.8.1.copyload = load i32, ptr %i.n, align 4, !noalias !381
  %.sroa.11.1..sroa.414.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %.sroa.11.1..sroa.414.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  store i8 %i.p, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.8.1.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.11.sroa.10.sroa.0.0.copyload32, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  %.sroa.11.sroa.0.0.copyload28 = load i64, ptr %i.n, align 4, !noalias !381
  %.sroa.11.sroa.10.sroa.0.0.copyload33 = load i32, ptr %.sroa.11.sroa.10.0..sroa_idx, align 4, !noalias !381
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !382, !noalias !385, !noundef !9 ; 3 uses
  %i.v = load i64, ptr %i.c, align 8, !range !33, !alias.scope !382, !noalias !385, !noundef !9
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.k unwind label %bb.e

._crit_edge:                                      ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !373
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.y = load ptr, ptr %i.l, align 8, !alias.scope !382, !noalias !385, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store i64 %.sroa.11.sroa.0.0.copyload28, ptr %i.z, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sroa.11.sroa.10.sroa.0.0.copyload33, ptr %.sroa.434.0..sroa_idx, align 4
  %i.aa = add i64 %i.u, 1
  store i64 %i.aa, ptr %i.m, align 8, !alias.scope !382, !noalias !385
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !373
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB3f_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderRShEENtNtB3h_6config13DefaultConfigEEB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 13 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 87381) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 4, i64 noundef 12)
  %i.d = load i64, ptr %i.b, align 8, !range !67, !noundef !9
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !281, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.k = icmp samesign ule i64 %..i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  %.not.i.i24 = icmp eq i64 %2, 0
  br i1 %.not.i.i24, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 4 ; 2 uses
  %.sroa.11.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.210.025 = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.k ]
  %i.o = add i64 %.sroa.210.025, -1               ; 2 uses
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs_1__NtB5_10FileHandleNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1U_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEEEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 8, !range !289, !noalias !391, !noundef !9 ; 2 uses
  %.not19.i.i = icmp eq i8 %i.p, -1
  br i1 %.not19.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %.noexc
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.515.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.11.sroa.10.sroa.0.0.copyload32 = load i32, ptr %.sroa.515.0..sroa_idx.i.i, align 8, !noalias !395
  %.sroa.11.sroa.10.sroa.10.0..sroa.515.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.11.sroa.10.sroa.10.0..sroa.515.0..sroa_idx.i.i.sroa_idx, i64 12, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(3) %.sroa.414.0..sroa_idx.i.i, i64 3, i1 false)
  %.sroa.8.1.copyload = load i32, ptr %i.n, align 4, !noalias !395
  %.sroa.11.1..sroa.414.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.r = load i64, ptr %.sroa.11.1..sroa.414.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  store i8 %i.p, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sroa.8.1.copyload, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.r, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.11.sroa.10.sroa.0.0.copyload32, ptr %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  %.sroa.11.sroa.0.0.copyload28 = load i64, ptr %i.n, align 4, !noalias !395
  %.sroa.11.sroa.10.sroa.0.0.copyload33 = load i32, ptr %.sroa.11.sroa.10.0..sroa_idx, align 4, !noalias !395
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %i.u = load i64, ptr %i.m, align 8, !alias.scope !396, !noalias !399, !noundef !9 ; 3 uses
  %i.v = load i64, ptr %i.c, align 8, !range !33, !alias.scope !396, !noalias !399, !noundef !9
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.k unwind label %bb.e

._crit_edge:                                      ; preds = %bb.k, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !387
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.y = load ptr, ptr %i.l, align 8, !alias.scope !396, !noalias !399, !nonnull !9, !noundef !9
  %i.z = getelementptr inbounds nuw [12 x i8], ptr %i.y, i64 %i.u ; 2 uses
  store i64 %.sroa.11.sroa.0.0.copyload28, ptr %i.z, align 4
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  store i32 %.sroa.11.sroa.10.sroa.0.0.copyload33, ptr %.sroa.434.0..sroa_idx, align 4
  %i.aa = add i64 %i.u, 1
  store i64 %i.aa, ptr %i.m, align 8, !alias.scope !396, !noalias !399
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !387
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx10FileHandleEEB1c_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB3j_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEENtNtB3l_6config13DefaultConfigEEB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(88) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 65536) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.d = load i64, ptr %i.b, align 8, !range !67, !noundef !9
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !281, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.k = icmp samesign ule i64 %..i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %.not.i.i30 = icmp eq i64 %2, 0
  br i1 %.not.i.i30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.2.031 = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.k ]
  %i.o = add i64 %.sroa.2.031, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !401
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs7_1__NtB5_14ObjectMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1Z_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtCsaL1QbXo9JQH_3std2fs4FileEEEEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 8, !range !289, !noalias !401, !noundef !9 ; 2 uses
  %.not32.i.i = icmp eq i8 %i.p, -1
  br i1 %.not32.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1c_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.c) #19
          to label %common.resume unwind label %bb.m

bb.f:                                             ; preds = %.noexc
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.423.0..sroa_idx.i.i, i64 7, i1 false)
  %.sroa.726.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.726.0.copyload.i.i = load i64, ptr %.sroa.726.0..sroa_idx.i.i, align 8, !noalias !401
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load <2 x i64>, ptr %i.n, align 8, !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !401
  store i8 %i.p, ptr %0, align 8
  store <2 x i64> %i.r, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.726.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx, align 8
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1c_.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.s, %bb.g ], [ %i.q, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1c_.exit: ; preds = %bb.f
  call void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c)
  br label %bb.l

bb.i:                                             ; preds = %.noexc
  %i.u = load <2 x i64>, ptr %i.n, align 8, !noalias !401
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !401
  %i.v = load i64, ptr %i.m, align 8, !alias.scope !408, !noundef !9 ; 3 uses
  %i.w = load i64, ptr %i.c, align 8, !range !33, !alias.scope !408, !noundef !9
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #18
          to label %bb.k unwind label %bb.e

._crit_edge:                                      ; preds = %bb.k, %bb.c
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  store i8 -1, ptr %0, align 8
  br label %bb.l

bb.k:                                             ; preds = %bb.i, %bb.j
  %i.z = load ptr, ptr %i.l, align 8, !alias.scope !408, !nonnull !9, !noundef !9
  %i.aa = getelementptr inbounds nuw [16 x i8], ptr %i.z, i64 %i.v
  store <2 x i64> %i.u, ptr %i.aa, align 8
  %i.ab = add i64 %i.v, 1
  store i64 %i.ab, ptr %i.m, align 8, !alias.scope !408
  %.not.i.i = icmp eq i64 %i.o, 0
  br i1 %.not.i.i, label %._crit_edge, label %bb.d

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataEEB1c_.exit, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.m:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #20
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNvXsh_NtNtCs6LlcditsbhK_5serde2de5implsINtNtCs1xwejQucwHj_5alloc3vec3VecpENtBb_11Deserialize11deserializeINtB3_10VecVisitorNtNtCskuiImRAV2ip_9elfshaker7packidx14ObjectMetadataENtBb_7Visitor9visit_seqINtNtCs974quTetXso_9rmp_serde6decode9SeqAccessINtB3j_10ReadReaderINtNtNtNtBL_2io8buffered9bufreader9BufReaderRShEENtNtB3l_6config13DefaultConfigEEB26_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(96) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 12 uses
  %..i = tail call noundef i64 @llvm.umin.i64(i64 %2, i64 65536) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskuiImRAV2ip_9elfshaker(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %..i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
  %i.d = load i64, ptr %i.b, align 8, !range !67, !noundef !9
  %i.e = trunc nuw i64 %i.d to i1
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load i64, ptr %i.f, align 8, !range !281, !noundef !9 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.e, label %bb.b, label %bb.c, !prof !27

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef %i.g, i64 %i.i) #22
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %i.h, align 8, !nonnull !9, !noundef !9
  %i.k = icmp samesign ule i64 %..i, %i.g
  tail call void @llvm.assume(i1 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 %i.g, ptr %i.c, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.m, align 8
  %.not.i.i30 = icmp eq i64 %2, 0
  br i1 %.not.i.i30, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.2.031 = phi i64 [ %2, %.lr.ph ], [ %i.o, %bb.k ]
  %i.o = add i64 %.sroa.2.031, -1                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !411
  invoke void @_RINvXNvNtCskuiImRAV2ip_9elfshaker7packidxs7_1__NtB5_14ObjectMetadataNtNtCs6LlcditsbhK_5serde2de11Deserialize11deserializeQINtNtCs974quTetXso_9rmp_serde6decode12DeserializerINtB1Z_10ReadReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderRShEEEEB7_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %1)
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  %i.p = load i8, ptr %i.a, align 8, !range !289, !noalias !411, !noundef !9 ; 2 uses
  %.not32.i.i = icmp eq i8 %i.p, -1
  br i1 %.not32.i.i, label %bb.i, label %bb.f

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
end_hunk_1
