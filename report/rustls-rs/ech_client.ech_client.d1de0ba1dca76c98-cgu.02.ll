Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.02?download=true
inline.NumInlined: 788
inline.NumDeleted: 326
begin_hunk_0_@_RINvMNtNtCs5MfxasYgTEl_11hickory_net3tcp17tcp_client_streamINtB3_15TcpClientStreamINtNtNtB7_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEE3newNtNtB1n_13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client:bb.a
  br i1 %i.f, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexINtNtNtCskruEhpekJ3V_5tokio4task8join_set7JoinSetuEEE9drop_slowCs9RFwvXNxPyg_16hickory_resolver(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  %.sroa.6.96..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.6, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %.sroa.6.96..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.7.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i64 %3, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 %4, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(36) %.sroa.6, i64 36, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %5, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.91.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 0, ptr %.sroa.91.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  ret void

bb.e:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtCs5MfxasYgTEl_11hickory_net7runtime13tokio_runtime20TokioRuntimeProviderECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b, %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(1056) %1, ptr noalias nofree noundef align 4 dereferenceable(4) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 4 uses
  %i.j = alloca [16 x i8], align 8                ; 4 uses
  %i.k = alloca [64 x i8], align 8                ; 4 uses
  %i.l = alloca [64 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 822 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 823 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 827 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 1024 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 856
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 828
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 968
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  br label %.backedge

.thread236.loopexit:                              ; preds = %bb.v, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, %bb.w
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread236.loopexit.split-lp.loopexit:            ; preds = %.lr.ph
  %lpad.loopexit316 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread236.loopexit.split-lp.loopexit.split-lp:   ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161
  %lpad.loopexit.split-lp317 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  %.sroa.033.0 = phi i64 [ 0, %bb.a ], [ %.sroa.033.1, %.backedge.backedge ] ; 12 uses
  %.sroa.021.0 = phi i64 [ 0, %bb.a ], [ %.sroa.021.1324, %.backedge.backedge ] ; 3 uses
  %.sroa.0.0 = phi i8 [ 0, %bb.a ], [ %.sroa.0.1, %.backedge.backedge ]
  %.val86 = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val87 = load i8, ptr %i.o, align 1
  %i.ad = trunc nuw i8 %.val86 to i1
  %i.ae = trunc nuw i8 %.val87 to i1
  %i.af = select i1 %i.ad, i1 %i.ae, i1 false     ; 4 uses
  %.val91 = load i64, ptr %i.p, align 8, !noundef !6
  %.not309 = icmp eq i64 %.val91, 0
  br i1 %.not309, label %bb.b, label %.lr.ph

bb.b:                                             ; preds = %.backedge
  %i.ag = load i64, ptr %i.q, align 8, !alias.scope !84, !noundef !6
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = load i8, ptr %i.r, align 1, !range !5, !alias.scope !84
  %i.aj = trunc nuw i8 %i.ai to i1
  %or.cond.i = select i1 %i.ah, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %.thread257, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134

.split.thread.loopexit:                           ; preds = %bb.bj
  %lpad.loopexit319 = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.split.thread.loopexit.split-lp:                  ; preds = %bb.cn
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.split.thread

.thread257:                                       ; preds = %bb.b
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.0, ptr %i.al, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194: ; preds = %bb.o, %bb.al, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191, %bb.ck, %bb.bd
  %i.am = icmp eq ptr %.sroa.0.5, null
  br i1 %i.am, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125, label %bb.c

bb.c:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread305, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.an = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ao = and i64 %i.an, 3
  switch i64 %i.ao, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123
    i64 3, label %bb.d
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123
    i64 1, label %bb.e
  ], !prof !7

default.unreachable:                              ; preds = %bb.cd, %bb.bz, %bb.bk, %bb.bh, %bb.f, %bb.am, %bb.ag, %bb.z, %bb.cl, %bb.cg, %bb.bs, %bb.aw, %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.ap = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.aq = and i64 %i.an, 1095216660480
  %i.ar = icmp ne i64 %i.aq, 1095216660480
  call void @llvm.assume(i1 %i.ap)
  call void @llvm.assume(i1 %i.ar)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123

bb.e:                                             ; preds = %bb.c
  %i.as = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !85
  store i8 3, ptr %i.j, align 8, !alias.scope !85
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

.lr.ph:                                           ; preds = %.backedge, %bb.l
  %.sroa.021.1501 = phi i64 [ %i.bp, %bb.l ], [ %.sroa.021.0, %.backedge ] ; 3 uses
  %i.au = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCsi17nFaBu4HY_10ech_client.exit unwind label %.thread236.loopexit.split-lp.loopexit ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134: ; preds = %bb.l, %bb.b, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.021.1324 = phi i64 [ %.sroa.021.1501, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.021.0, %bb.b ], [ %i.bp, %bb.l ] ; 8 uses
  %.sroa.0.5 = phi ptr [ %i.ax, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.b ], [ null, %bb.l ] ; 20 uses
  %i.av = icmp ne i64 %.sroa.021.1324, 0          ; 2 uses
  %or.cond15.not.not = and i1 %i.af, %i.av
  br i1 %or.cond15.not.not, label %bb.o, label %bb.p

_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCsi17nFaBu4HY_10ech_client.exit: ; preds = %.lr.ph
  %i.aw = extractvalue { i64, ptr } %i.au, 0
  %i.ax = extractvalue { i64, ptr } %i.au, 1      ; 9 uses
  %i.ay = ptrtoint ptr %i.ax to i64               ; 4 uses
  %i.az = trunc nuw i64 %i.aw to i1
  br i1 %i.az, label %bb.f, label %bb.k

bb.f:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ax) ]
  %i.ba = and i64 %i.ay, 3
  switch i64 %i.ba, label %default.unreachable [
    i64 2, label %bb.g
    i64 3, label %bb.h
    i64 0, label %bb.i
    i64 1, label %bb.j
  ], !prof !7

bb.g:                                             ; preds = %bb.f
  %i.bb = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc129 unwind label %4

.noexc129:                                        ; preds = %bb.g
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %4, !inline_history !58

bb.h:                                             ; preds = %bb.f
  %i.bh = lshr i64 %i.ay, 32
  %i.bi = icmp ult ptr %i.ax, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i = trunc i64 %i.bh to i8  ; 2 uses
  %i.bj = icmp ne i8 %switch.idx.cast.i.i.i, -1
  call void @llvm.assume(i1 %i.bi)
  call void @llvm.assume(i1 %i.bj)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.i:                                             ; preds = %bb.f
  %i.bk = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bl = load i8, ptr %i.bk, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.j:                                             ; preds = %bb.f
  %i.bm = getelementptr i8, ptr %i.ax, i64 31
  %i.bn = load i8, ptr %i.bm, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit

bb.k:                                             ; preds = %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCsi17nFaBu4HY_10ech_client.exit
  %i.bo = icmp eq ptr %i.ax, null
  br i1 %i.bo, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bp = add i64 %.sroa.021.1501, %i.ay          ; 2 uses
  %.val90 = load i64, ptr %i.p, align 8, !noundef !6
  %.not310 = icmp eq i64 %.val90, 0
  br i1 %.not310, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1501, ptr %i.br, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread: ; preds = %bb.m, %bb.n
  %storemerge = phi i64 [ 0, %bb.m ], [ 1, %bb.n ]
  store i64 %storemerge, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit: ; preds = %bb.j, %bb.i, %bb.h, %.noexc129
  %.sroa.0.0.i127 = phi i8 [ %i.bn, %bb.j ], [ %switch.idx.cast.i.i.i, %bb.h ], [ %i.bl, %bb.i ], [ %i.bg, %.noexc129 ]
  %i.bs = icmp eq i8 %.sroa.0.0.i127, 13
  br i1 %i.bs, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134, label %bb.n

bb.n:                                             ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ax, ptr %i.bt, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread

bb.o:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.bv, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134
  %i.bw = load i64, ptr %i.q, align 8, !alias.scope !86, !noundef !6
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = load i8, ptr %i.r, align 1, !range !5, !alias.scope !86
  %i.bz = trunc nuw i8 %i.by to i1
  %or.cond.i135 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond.i135, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.n, align 2, !range !5, !alias.scope !86, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, label %bb.r

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread: ; preds = %bb.q
  %.not68698 = icmp eq ptr %.sroa.0.5, null
  br label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.p, align 8, !alias.scope !86, !noundef !6
  %i.cd = icmp eq i64 %i.cc, 0
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137: ; preds = %bb.r, %bb.p
  %.sroa.0.0.i136 = phi i1 [ %i.cd, %bb.r ], [ false, %bb.p ]
  %.not68 = icmp eq ptr %.sroa.0.5, null          ; 2 uses
  %brmerge = or i1 %.not68, %.sroa.0.0.i136
  br i1 %brmerge, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %.not68700 = phi i1 [ %.not68698, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread ], [ %.not68, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137 ]
  %i.ce = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.ce, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph502.preheader

.lr.ph502.preheader:                              ; preds = %.preheader
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !87, !noundef !6
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = load i8, ptr %i.r, align 1, !range !5, !alias.scope !87
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.i139971 = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i139971, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph972

bb.s:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread305, label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread305: ; preds = %bb.s
  store i64 %.sroa.033.0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.ck, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0.5, ptr %i.cj, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr null)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161: ; preds = %.lr.ph972, %bb.u, %.lr.ph502, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151, %.lr.ph502.preheader, %.preheader, %bb.ae, %bb.x
  %.sroa.0196.2 = phi ptr [ null, %bb.x ], [ null, %bb.ae ], [ null, %.preheader ], [ null, %.lr.ph502.preheader ], [ %.sroa.5.0.i276, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ null, %bb.u ], [ null, %.lr.ph972 ], [ null, %.lr.ph502 ] ; 14 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.x ], [ %i.ds, %bb.ae ], [ %.sroa.033.0, %.preheader ], [ %.sroa.033.0, %.lr.ph502.preheader ], [ %.sroa.033.0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ %.sroa.033.0, %.lr.ph502 ], [ %.sroa.033.0, %bb.u ], [ %.sroa.033.0, %.lr.ph972 ] ; 6 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.x ], [ %spec.select, %bb.ae ], [ 1, %.preheader ], [ 0, %.lr.ph502.preheader ], [ 0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ 1, %bb.u ], [ 0, %.lr.ph972 ], [ 0, %.lr.ph502 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit unwind label %.thread236.loopexit.split-lp.loopexit.split-lp

.lr.ph972:                                        ; preds = %.lr.ph502.preheader, %.lr.ph502
  %i.cl = load i8, ptr %i.n, align 2, !range !5, !alias.scope !87, !noundef !6
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i64, ptr %i.p, align 8
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread: ; preds = %.lr.ph972
  %i.cp = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %.noexc143 unwind label %.thread236.loopexit

.noexc143:                                        ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc143
  %i.cq = load i8, ptr %i.r, align 1, !range !5, !alias.scope !88, !noalias !89, !noundef !6
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %bb.w

bb.v:                                             ; preds = %.noexc143
  %i.cs = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 30) #18
          to label %.thread273 unwind label %.thread236.loopexit ; 2 uses

.thread273:                                       ; preds = %bb.v
  %i.ct = ptrtoint ptr %i.cs to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.cu = load i64, ptr %i.v, align 8, !alias.scope !88, !noalias !89, !noundef !6 ; 2 uses
  %i.cv = icmp ult i64 %i.cu, 230584300921369396
  call void @llvm.assume(i1 %i.cv)
  %i.cw = icmp ne i64 %i.cu, 0
  %i.cx = invoke { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) @2, i1 noundef zeroext %i.cw)
          to label %.noexc145 unwind label %.thread236.loopexit

.noexc145:                                        ; preds = %bb.w
  %.fr311 = freeze { i64, ptr } %i.cx             ; 2 uses
  %i.cy = extractvalue { i64, ptr } %.fr311, 0
  %i.cz = extractvalue { i64, ptr } %.fr311, 1    ; 3 uses
  %i.da = trunc nuw i64 %i.cy to i1               ; 2 uses
  %i.db = icmp ne ptr %i.cz, null                 ; 2 uses
  %or.cond.not.i = or i1 %i.db, %i.da
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc145
  store i8 1, ptr %i.x, align 4, !alias.scope !88, !noalias !89
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

bb.y:                                             ; preds = %.noexc145
  %i.dc = ptrtoint ptr %i.cz to i64               ; 2 uses
  br i1 %i.da, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.thread273, %bb.y
  %i.dd = phi i64 [ %i.ct, %.thread273 ], [ %i.dc, %bb.y ] ; 6 uses
  %.sroa.5.0.i276 = phi ptr [ %i.cs, %.thread273 ], [ %i.cz, %bb.y ] ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i276) ]
  %i.de = and i64 %i.dd, 3                        ; 3 uses
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 0, label %bb.ac
    i64 1, label %bb.ad
  ], !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.df = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc149 unwind label %3

.noexc149:                                        ; preds = %bb.aa
  %i.dg = lshr i64 %i.dd, 32
  %i.dh = trunc nuw i64 %i.dg to i32
  %i.di = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !nonnull !6, !noundef !6
  %i.dk = invoke noundef i8 %i.dj(i32 noundef %i.dh)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 unwind label %3, !inline_history !58

bb.ab:                                            ; preds = %bb.z
  %i.dl = lshr i64 %i.dd, 32
  %i.dm = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i147 = trunc i64 %i.dl to i8 ; 2 uses
  %i.dn = icmp ne i8 %switch.idx.cast.i.i.i147, -1
  call void @llvm.assume(i1 %i.dm)
  call void @llvm.assume(i1 %i.dn)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ac:                                            ; preds = %bb.z
  %i.do = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i276, i64 16
  %i.dp = load i8, ptr %i.do, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ad:                                            ; preds = %bb.z
  %i.dq = getelementptr i8, ptr %.sroa.5.0.i276, i64 31
  %i.dr = load i8, ptr %i.dq, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ae:                                            ; preds = %bb.y
  %.not695 = xor i1 %i.db, true
  %i.ds = add i64 %.sroa.033.0, %i.dc
  %spec.select = zext i1 %.not695 to i8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

bb.af:                                            ; preds = %bb.ao
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151: ; preds = %bb.ad, %bb.ac, %bb.ab, %.noexc149
  %.sroa.0.0.i146 = phi i8 [ %i.dr, %bb.ad ], [ %switch.idx.cast.i.i.i147, %bb.ab ], [ %i.dp, %bb.ac ], [ %i.dk, %.noexc149 ]
  %i.du = icmp eq i8 %.sroa.0.0.i146, 13
  br i1 %i.du, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.dv = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc155 unwind label %3

.noexc155:                                        ; preds = %bb.ah
  %i.dw = lshr i64 %i.dd, 32
  %i.dx = trunc nuw i64 %i.dw to i32
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dv, i64 8
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !6, !noundef !6
  %i.ea = invoke noundef i8 %i.dz(i32 noundef %i.dx)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157 unwind label %3, !inline_history !58

bb.ai:                                            ; preds = %bb.ag
  %i.eb = lshr i64 %i.dd, 32
  %i.ec = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i153 = trunc i64 %i.eb to i8 ; 2 uses
  %i.ed = icmp ne i8 %switch.idx.cast.i.i.i153, -1
  call void @llvm.assume(i1 %i.ec)
  call void @llvm.assume(i1 %i.ed)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.aj:                                            ; preds = %bb.ag
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i276, i64 16
  %i.ef = load i8, ptr %i.ee, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.ak:                                            ; preds = %bb.ag
  %i.eg = getelementptr i8, ptr %.sroa.5.0.i276, i64 31
  %i.eh = load i8, ptr %i.eg, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc155
  %.sroa.0.0.i152 = phi i8 [ %i.eh, %bb.ak ], [ %switch.idx.cast.i.i.i153, %bb.ai ], [ %i.ef, %bb.aj ], [ %i.ea, %.noexc155 ]
  %i.ei = icmp eq i8 %.sroa.0.0.i152, 35
  br i1 %i.ei, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  %i.ej = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i276, ptr %i.ej, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.am:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  switch i64 %i.de, label %default.unreachable [
    i64 2, label %.lr.ph502
    i64 3, label %bb.an
    i64 0, label %.lr.ph502
    i64 1, label %bb.ao
  ], !prof !7

bb.an:                                            ; preds = %bb.am
  %i.ek = icmp ult ptr %.sroa.5.0.i276, inttoptr (i64 188978561024 to ptr)
  %i.el = and i64 %i.dd, 1095216660480
  %i.em = icmp ne i64 %i.el, 1095216660480
  call void @llvm.assume(i1 %i.ek)
  call void @llvm.assume(i1 %i.em)
  br label %.lr.ph502

bb.ao:                                            ; preds = %bb.am
  %i.en = getelementptr i8, ptr %.sroa.5.0.i276, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.en) ]
  store ptr %i.en, ptr %i.w, align 8, !alias.scope !90
  store i8 3, ptr %i.i, align 8, !alias.scope !90
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.lr.ph502 unwind label %bb.af

.lr.ph502:                                        ; preds = %bb.an, %bb.am, %bb.am, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.eo = load i64, ptr %i.q, align 8, !alias.scope !87, !noundef !6
  %i.ep = icmp ne i64 %i.eo, 0
  %i.eq = load i8, ptr %i.r, align 1, !range !5, !alias.scope !87
  %i.er = trunc nuw i8 %i.eq to i1
  %or.cond.i139 = select i1 %i.ep, i1 true, i1 %i.er
  br i1 %or.cond.i139, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph972

3:                                                ; preds = %.noexc155, %.noexc149, %bb.aa, %bb.ah
  %lpad.thr_comm287 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %.sroa.5.0.i276) #20
          to label %.thread unwind label %bb.ap

bb.ap:                                            ; preds = %bb.au, %bb.as, %.thread, %.split.thread, %3, %bb.cc, %bb.cj, %4, %bb.az
  %i.es = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161
  %i.et = load i8, ptr %i.m, align 8, !range !9, !noundef !6
  %.not = icmp eq i8 %i.et, -1
  br i1 %.not, label %bb.ba, label %bb.aq

bb.aq:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.eu = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.at unwind label %bb.az     ; 2 uses

bb.ar:                                            ; preds = %bb.ay
  %i.ev = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(i64 %i.ew, ptr %i.ex) #20
          to label %.thread unwind label %bb.ap

bb.at:                                            ; preds = %bb.aq
  %i.ew = extractvalue { i64, ptr } %i.eu, 0      ; 2 uses
  %i.ex = extractvalue { i64, ptr } %i.eu, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.ey = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr null) #20
          to label %bb.as unwind label %bb.ap

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ey, ptr %i.fa, align 8
  store i64 1, ptr %0, align 8
  %i.fb = icmp eq i64 %i.ew, 0
  br i1 %i.fb, label %bb.ck, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ex) ]
  %i.fc = ptrtoint ptr %i.ex to i64               ; 2 uses
  %i.fd = and i64 %i.fc, 3
  switch i64 %i.fd, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169
    i64 3, label %bb.ax
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169
    i64 1, label %bb.ay
  ], !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.fe = icmp ult ptr %i.ex, inttoptr (i64 188978561024 to ptr)
  %i.ff = and i64 %i.fc, 1095216660480
  %i.fg = icmp ne i64 %i.ff, 1095216660480
  call void @llvm.assume(i1 %i.fe)
  call void @llvm.assume(i1 %i.fg)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169

bb.ay:                                            ; preds = %bb.aw
  %i.fh = getelementptr i8, ptr %i.ex, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fh) ]
  %i.fi = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.fh, ptr %i.fi, align 8, !alias.scope !91
  store i8 3, ptr %i.h, align 8, !alias.scope !91
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fi)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169 unwind label %bb.ar

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ck

bb.az:                                            ; preds = %bb.aq
  %i.fj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l) #20
          to label %.thread unwind label %bb.ap

bb.ba:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val89 = load i64, ptr %i.p, align 8, !noundef !6
  %i.fk = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0196.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.fk
  br i1 %brmerge3, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.af, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.fl = icmp eq i64 %.sroa.033.1, 0
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.fl, label %bb.bd, label %.thread299

.thread299:                                       ; preds = %bb.bc
  store i64 %.sroa.033.1, ptr %i.fm, align 8
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.fn, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  store ptr %.sroa.0196.2, ptr %i.fm, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.be:                                            ; preds = %bb.bf, %bb.bb
  %i.fo = call { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECsi17nFaBu4HY_10ech_client(ptr noundef %.sroa.0.5, ptr noundef %.sroa.0196.2) ; 2 uses
  %i.fp = extractvalue { ptr, ptr } %i.fo, 0      ; 9 uses
  %i.fq = extractvalue { ptr, ptr } %i.fo, 1      ; 12 uses
  %.val = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val83 = load i8, ptr %i.o, align 1
  %i.fr = trunc nuw i8 %.val to i1
  %i.fs = trunc nuw i8 %.val83 to i1
  %i.ft = select i1 %i.fr, i1 %i.fs, i1 false
  %.sroa.0.0.i180 = xor i1 %i.ft, true            ; 2 uses
  %or.cond7 = select i1 %i.af, i1 true, i1 %.sroa.0.0.i180
  br i1 %or.cond7, label %bb.bn, label %bb.bo

bb.bf:                                            ; preds = %bb.bb
  %.val84 = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val85 = load i8, ptr %i.o, align 1
  %i.fu = trunc nuw i8 %.val84 to i1
  %i.fv = trunc nuw i8 %.val85 to i1
  %i.fw = select i1 %i.fu, i1 %i.fv, i1 false
  %brmerge315.demorgan = and i1 %i.fk, %i.fw
  br i1 %brmerge315.demorgan, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fx = ptrtoint ptr %.sroa.0196.2 to i64       ; 2 uses
  %i.fy = and i64 %i.fx, 3
  switch i64 %i.fy, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173
    i64 3, label %bb.bi
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173
    i64 1, label %bb.bj
  ], !prof !7

bb.bi:                                            ; preds = %bb.bh
  %i.fz = icmp ult ptr %.sroa.0196.2, inttoptr (i64 188978561024 to ptr)
  %i.ga = and i64 %i.fx, 1095216660480
  %i.gb = icmp ne i64 %i.ga, 1095216660480
  call void @llvm.assume(i1 %i.fz)
  call void @llvm.assume(i1 %i.gb)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173

bb.bj:                                            ; preds = %bb.bh
  %i.gc = getelementptr i8, ptr %.sroa.0196.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gc) ]
  store ptr %i.gc, ptr %i.z, align 8, !alias.scope !92
  store i8 3, ptr %i.g, align 8, !alias.scope !92
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173 unwind label %.split.thread.loopexit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173, %bb.bg
  br i1 %.not68700, label %.backedge.backedge, label %bb.bk

bb.bk:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.gd = ptrtoint ptr %.sroa.0.5 to i64          ; 2 uses
  %i.ge = and i64 %i.gd, 3
  switch i64 %i.ge, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i177
    i64 3, label %bb.bl
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i177
    i64 1, label %bb.bm
  ], !prof !7

bb.bl:                                            ; preds = %bb.bk
  %i.gf = icmp ult ptr %.sroa.0.5, inttoptr (i64 188978561024 to ptr)
  %i.gg = and i64 %i.gd, 1095216660480
  %i.gh = icmp ne i64 %i.gg, 1095216660480
  call void @llvm.assume(i1 %i.gf)
  call void @llvm.assume(i1 %i.gh)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i177

bb.bm:                                            ; preds = %bb.bk
  %i.gi = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gi) ]
  store ptr %i.gi, ptr %i.aa, align 8, !alias.scope !93
  store i8 3, ptr %i.f, align 8, !alias.scope !93
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aa)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i177

end_hunk_0
begin_hunk_1_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECsi17nFaBu4HY_10ech_client:bb.a
    i64 3, label %bb.bt
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit182
    i64 1, label %bb.bu
  ], !prof !7

bb.bt:                                            ; preds = %bb.bs
  %i.gr = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.gs = and i64 %i.gp, 1095216660480
  %i.gt = icmp ne i64 %i.gs, 1095216660480
  call void @llvm.assume(i1 %i.gr)
  call void @llvm.assume(i1 %i.gt)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit182

bb.bu:                                            ; preds = %bb.bs
  %i.gu = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.gu) ]
  %i.gv = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.gu, ptr %i.gv, align 8, !alias.scope !94
  store i8 3, ptr %i.e, align 8, !alias.scope !94
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.gv)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit182

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit182: ; preds = %bb.bs, %bb.bs, %bb.bt, %bb.bu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

bb.bv:                                            ; preds = %bb.bq
  %i.gw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.1, ptr %i.gw, align 8
  %i.gx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1324, ptr %i.gx, align 8
  br label %bb.bp

bb.bw:                                            ; preds = %bb.bq
  %i.gy = trunc nuw i8 %.sroa.0.1 to i1
  %or.cond10 = select i1 %i.gy, i1 %.sroa.0.0.i180, i1 false
  br i1 %or.cond10, label %bb.by, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  br i1 %i.gj, label %bb.bz, label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.bx, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i177, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176
  br label %.backedge

bb.by:                                            ; preds = %bb.bw
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 158913789955 to ptr), ptr %i.gz, align 8
  br label %bb.bp

bb.bz:                                            ; preds = %bb.bx
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ha = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.hb = and i64 %i.ha, 3
  switch i64 %i.hb, label %default.unreachable [
    i64 2, label %bb.cd
    i64 3, label %bb.ca
    i64 0, label %bb.cd
    i64 1, label %bb.cb
  ], !prof !7

bb.ca:                                            ; preds = %bb.bz
  %i.hc = icmp ult ptr %i.fp, inttoptr (i64 188978561024 to ptr)
  %i.hd = and i64 %i.ha, 1095216660480
  %i.he = icmp ne i64 %i.hd, 1095216660480
  call void @llvm.assume(i1 %i.hc)
  call void @llvm.assume(i1 %i.he)
  br label %bb.cd

bb.cb:                                            ; preds = %bb.bz
  %i.hf = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hf) ]
  store ptr %i.hf, ptr %i.ab, align 8, !alias.scope !95
  store i8 3, ptr %i.d, align 8, !alias.scope !95
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.cd unwind label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.hg = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.fq) #20
          to label %.thread245 unwind label %bb.ap

bb.cd:                                            ; preds = %bb.ca, %bb.bz, %bb.bz, %bb.cb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  %i.hh = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.hi = and i64 %i.hh, 3
  switch i64 %i.hi, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187
    i64 3, label %bb.ce
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187
    i64 1, label %bb.cf
  ], !prof !7

bb.ce:                                            ; preds = %bb.cd
  %i.hj = icmp ult ptr %i.fq, inttoptr (i64 188978561024 to ptr)
  %i.hk = and i64 %i.hh, 1095216660480
  %i.hl = icmp ne i64 %i.hk, 1095216660480
  call void @llvm.assume(i1 %i.hj)
  call void @llvm.assume(i1 %i.hl)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187

bb.cf:                                            ; preds = %bb.cd
  %i.hm = getelementptr i8, ptr %i.fq, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hm) ]
  store ptr %i.hm, ptr %i.ac, align 8, !alias.scope !96
  store i8 3, ptr %i.c, align 8, !alias.scope !96
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ac)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit187: ; preds = %bb.cd, %bb.cd, %bb.ce, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.backedge.backedge

.thread245:                                       ; preds = %.split.thread, %bb.cc, %bb.cj
  %.pn80.pn = phi { ptr, i32 } [ %.pn80250, %.split.thread ], [ %i.hg, %bb.cc ], [ %i.hu, %bb.cj ]
  resume { ptr, i32 } %.pn80.pn

bb.cg:                                            ; preds = %bb.bp
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.hn = ptrtoint ptr %i.fp to i64               ; 2 uses
  %i.ho = and i64 %i.hn, 3
  switch i64 %i.ho, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit190
    i64 3, label %bb.ch
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit190
    i64 1, label %bb.ci
  ], !prof !7

bb.ch:                                            ; preds = %bb.cg
  %i.hp = icmp ult ptr %i.fp, inttoptr (i64 188978561024 to ptr)
  %i.hq = and i64 %i.hn, 1095216660480
  %i.hr = icmp ne i64 %i.hq, 1095216660480
  call void @llvm.assume(i1 %i.hp)
  call void @llvm.assume(i1 %i.hr)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit190

bb.ci:                                            ; preds = %bb.cg
  %i.hs = getelementptr i8, ptr %i.fp, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.hs) ]
  %i.ht = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.hs, ptr %i.ht, align 8, !alias.scope !97
  store i8 3, ptr %i.b, align 8, !alias.scope !97
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ht)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit190 unwind label %bb.cj

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit190: ; preds = %bb.ci, %bb.cg, %bb.cg, %bb.ch
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.bs

bb.cj:                                            ; preds = %bb.ci
  %i.hu = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fq) ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.fq) #20
          to label %.thread245 unwind label %bb.ap

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125: ; preds = %bb.t, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread, %bb.bp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit182, %.thread257, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123
  ret void

bb.ck:                                            ; preds = %bb.av, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.hv = icmp eq ptr %.sroa.0196.2, null
  br i1 %i.hv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194, label %bb.cl

bb.cl:                                            ; preds = %.thread299, %bb.ck
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.hw = ptrtoint ptr %.sroa.0196.2 to i64       ; 2 uses
  %i.hx = and i64 %i.hw, 3
  switch i64 %i.hx, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191
    i64 3, label %bb.cm
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191
    i64 1, label %bb.cn
  ], !prof !7

bb.cm:                                            ; preds = %bb.cl
  %i.hy = icmp ult ptr %.sroa.0196.2, inttoptr (i64 188978561024 to ptr)
  %i.hz = and i64 %i.hw, 1095216660480
  %i.ia = icmp ne i64 %i.hz, 1095216660480
  call void @llvm.assume(i1 %i.hy)
  call void @llvm.assume(i1 %i.ia)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191

bb.cn:                                            ; preds = %bb.cl
  %i.ib = getelementptr i8, ptr %.sroa.0196.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ib) ]
  %i.ic = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.ib, ptr %i.ic, align 8, !alias.scope !98
  store i8 3, ptr %i.a, align 8, !alias.scope !98
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ic)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191 unwind label %.split.thread.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i191: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

4:                                                ; preds = %.noexc129, %bb.g
  %5 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %i.ax) #20
          to label %.thread unwind label %bb.ap

.thread:                                          ; preds = %.thread236.loopexit, %.thread236.loopexit.split-lp.loopexit.split-lp, %.thread236.loopexit.split-lp.loopexit, %bb.as, %bb.ar, %bb.af, %4, %3, %bb.az
  %.pn77.pn226 = phi { ptr, i32 } [ %i.fj, %bb.az ], [ %i.ez, %bb.as ], [ %5, %4 ], [ %i.dt, %bb.af ], [ %lpad.thr_comm287, %3 ], [ %i.ev, %bb.ar ], [ %lpad.loopexit, %.thread236.loopexit ], [ %lpad.loopexit316, %.thread236.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp317, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0.0216225 = phi ptr [ %.sroa.0.5, %bb.az ], [ %.sroa.0.5, %bb.as ], [ null, %4 ], [ %.sroa.0.5, %bb.af ], [ %.sroa.0.5, %3 ], [ %.sroa.0.5, %bb.ar ], [ %.sroa.0.5, %.thread236.loopexit ], [ null, %.thread236.loopexit.split-lp.loopexit ], [ %.sroa.0.5, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  %.sroa.0196.0224 = phi ptr [ %.sroa.0196.2, %bb.az ], [ %.sroa.0196.2, %bb.as ], [ null, %4 ], [ null, %bb.af ], [ null, %3 ], [ %.sroa.0196.2, %bb.ar ], [ null, %.thread236.loopexit ], [ null, %.thread236.loopexit.split-lp.loopexit ], [ %.sroa.0196.2, %.thread236.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr %.sroa.0196.0224) #20
          to label %.split.thread unwind label %bb.ap

.split.thread:                                    ; preds = %.split.thread.loopexit, %.split.thread.loopexit.split-lp, %.thread
  %.pn80250 = phi { ptr, i32 } [ %.pn77.pn226, %.thread ], [ %lpad.loopexit319, %.split.thread.loopexit ], [ %lpad.loopexit.split-lp, %.split.thread.loopexit.split-lp ]
  %.sroa.0.2218249 = phi ptr [ %.sroa.0.0216225, %.thread ], [ %.sroa.0.5, %.split.thread.loopexit ], [ %.sroa.0.5, %.split.thread.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr %.sroa.0.2218249) #20
          to label %.thread245 unwind label %bb.ap
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCs5MfxasYgTEl_11hickory_net3tls30tls_client_connect_with_futureINtNtNtB4_7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([3632 x i8]) align 8 captures(none) dereferenceable(3632) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %1, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(32) %2, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 4                ; 4 uses
  %.sroa.01 = alloca [176 x i8], align 8          ; 5 uses
  %i.b = alloca [136 x i8], align 8               ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %4, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.a, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  invoke void @_RNvMs4_NtCs5MfxasYgTEl_11hickory_net4xferNtB5_18BufDnsStreamHandle3new(ptr noalias nofree noundef nonnull sret([136 x i8]) align 8 captures(address) dereferenceable(136) %i.b, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(32) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  %i.e = atomicrmw sub ptr %4, i64 1 release, align 8, !noalias !103
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.c, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsi17nFaBu4HY_10ech_client.exit

bb.c:                                             ; preds = %bb.b
  fence acquire
  invoke void @_RNvMsn_NtCs4wP2HXfJTCR_5alloc4syncINtB5_3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c) #18
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsi17nFaBu4HY_10ech_client.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 3576
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.g, ptr noundef nonnull align 8 dereferenceable(56) %i.b, i64 56, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.01.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.01.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(80) %i.h, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 355
  %i.j = load i8, ptr %i.i, align 1, !range !5, !noundef !6
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %.sroa.01.112..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 112
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.112..sroa_idx, ptr noundef nonnull align 4 dereferenceable(32) %2, i64 32, i1 false)
  %.sroa.01.144..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.01, i64 144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.01.144..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %3, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %.sroa.01, i64 176, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr %4, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i8 %i.j, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.74.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1776
  store i8 0, ptr %.sroa.74.0..sroa_idx, align 8
  %.sroa.97.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3568
  store i8 0, ptr %.sroa.97.0..sroa_idx, align 8
  ret void

bb.e:                                             ; preds = %bb.c, %bb.f, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsi17nFaBu4HY_10ech_client.exit
  %i.k = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.b, %bb.c
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCseO5Jl7W60Eg_16rustls_pki_types11server_name10ServerNameECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %3) #20
          to label %bb.f unwind label %bb.e

bb.f:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtNtCs7ZUl82OSlxp_6rustls6client11client_conn12ClientConfigEECsi17nFaBu4HY_10ech_client.exit
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs5MfxasYgTEl_11hickory_net7runtime8iocompat17AsyncIoTokioAsStdNtNtNtNtCskruEhpekJ3V_5tokio3net3tcp6stream9TcpStreamEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(32) %1) #20
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_senduINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtB4_5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [184 x i8], align 8               ; 7 uses
  %i.i = load i64, ptr %0, align 8, !range !10, !noundef !6
  %.not = icmp eq i64 %i.i, -2
  br i1 %.not, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.h, ptr noundef nonnull align 8 dereferenceable(184) %0, i64 184, i1 false)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 176
  %i.k = load i8, ptr %i.j, align 8, !range !5, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  %i.m = load atomic i64, ptr @_RNvNtCsjpgBhlqJ253_12tracing_core8metadata9MAX_LEVEL monotonic, align 8 ; 2 uses
  br i1 %i.l, label %bb.l, label %bb.d

bb.c:                                             ; preds = %bb.r, %bb.o, %bb.n, %bb.j, %bb.g, %bb.f
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(184) %i.h)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit39 unwind label %bb.t

bb.d:                                             ; preds = %bb.b
  %i.o = icmp ult i64 %i.m, 4
  br i1 %i.o, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split

bb.e:                                             ; preds = %bb.d
  %i.p = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_sends_10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.p, label %bb.f [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split
    i8 1, label %bb.g
    i8 2, label %bb.g
  ], !prof !11

bb.f:                                             ; preds = %bb.e
  %i.q = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_sends_10___CALLSITE)
          to label %bb.h unwind label %bb.c       ; 2 uses

bb.g:                                             ; preds = %bb.e, %bb.e, %bb.h
  %.sroa.015.0 = phi i8 [ %i.q, %bb.h ], [ %i.p, %bb.e ], [ %i.p, %bb.e ]
  %i.r = load ptr, ptr @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_sends_10___CALLSITE, align 8, !nonnull !6, !align !12, !noundef !6
  %i.s = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.r, i8 noundef %.sroa.015.0)
          to label %bb.i unwind label %bb.c

bb.h:                                             ; preds = %bb.f
  %i.t = icmp eq i8 %i.q, 0
  br i1 %i.t, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split, label %bb.g

bb.i:                                             ; preds = %bb.g
  br i1 %i.s, label %bb.j, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split

bb.j:                                             ; preds = %bb.i
  %i.u = load ptr, ptr @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_sends_10___CALLSITE, align 8, !nonnull !6, !align !12, !noundef !6 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.h, ptr %i.c, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs8_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_12TrySendErrorINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEENtNtB16_3fmt5Debug3fmtCsi17nFaBu4HY_10ech_client, ptr %.sroa.426.0..sroa_idx, align 8
  store ptr @3, ptr %i.d, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.c, ptr %i.w, align 8
  store ptr %i.d, ptr %i.e, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @4, ptr %i.x, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 1, ptr %i.a, align 8
  %.sroa.017.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.e, ptr %.sroa.017.sroa.4.0..sroa_idx, align 8
  %.sroa.017.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 1, ptr %.sroa.017.sroa.5.0..sroa_idx, align 8
  %.sroa.418.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.v, ptr %.sroa.418.0..sroa_idx, align 8
  invoke void @_RNvMNtCsjpgBhlqJ253_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.u, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a)
          to label %bb.k unwind label %bb.c

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split

bb.l:                                             ; preds = %bb.b
  %i.y = icmp ult i64 %i.m, 2
  br i1 %i.y, label %bb.m, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split

bb.m:                                             ; preds = %bb.l
  %i.z = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_send10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.z, label %bb.n [
    i8 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split
    i8 1, label %bb.o
    i8 2, label %bb.o
  ], !prof !11

bb.n:                                             ; preds = %bb.m
  %i.aa = invoke noundef i8 @_RNvMNtCsjpgBhlqJ253_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8 @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_send10___CALLSITE)
          to label %bb.p unwind label %bb.c       ; 2 uses

bb.o:                                             ; preds = %bb.m, %bb.m, %bb.p
  %.sroa.06.0 = phi i8 [ %i.aa, %bb.p ], [ %i.z, %bb.m ], [ %i.z, %bb.m ]
  %i.ab = load ptr, ptr @_RNvNvNtCs5MfxasYgTEl_11hickory_net4xfer11ignore_send10___CALLSITE, align 8, !nonnull !6, !align !12, !noundef !6
  %i.ac = invoke noundef zeroext i1 @_RNvNtCsiIyHGM5EznH_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %i.ab, i8 noundef %.sroa.06.0)
          to label %bb.q unwind label %bb.c

bb.p:                                             ; preds = %bb.n
  %i.ad = icmp eq i8 %i.aa, 0
  br i1 %i.ad, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split, label %bb.o

bb.q:                                             ; preds = %bb.o
  br i1 %i.ac, label %bb.r, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsdaVh6l1oWST_15futures_channel4mpsc12TrySendErrorIBC_NtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEEEECsi17nFaBu4HY_10ech_client.exit.sink.split
end_hunk_1
