Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.02?download=true
inline.NumInlined: 788
inline.NumDeleted: 326
begin_hunk_0_@_RINvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB6_16ConnectionCommonNtNtNtB8_6client11client_conn20ClientConnectionDataE11complete_ioNtNtNtCsaKJjC64KgbL_3std3net3tcp9TcpStreamECsi17nFaBu4HY_10ech_client:bb.a
  %i.as = getelementptr i8, ptr %.sroa.0.5, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.as) ]
  %i.at = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !alias.scope !84
  store i8 3, ptr %i.j, align 8, !alias.scope !84
  call void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i123: ; preds = %bb.e, %bb.d, %bb.c, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

.lr.ph:                                           ; preds = %.backedge, %bb.l
  %.sroa.021.1505 = phi i64 [ %i.bp, %bb.l ], [ %.sroa.021.0, %.backedge ] ; 3 uses
  %i.au = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %_RNvMs0_NtCs7ZUl82OSlxp_6rustls4connINtB5_16ConnectionCommonNtNtNtB7_6client11client_conn20ClientConnectionDataE9write_tlsCsi17nFaBu4HY_10ech_client.exit unwind label %.thread236.loopexit.split-lp.loopexit ; 2 uses

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134: ; preds = %bb.l, %bb.b, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit
  %.sroa.021.1328 = phi i64 [ %.sroa.021.1505, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ %.sroa.021.0, %bb.b ], [ %i.bp, %bb.l ] ; 8 uses
  %.sroa.0.5 = phi ptr [ %i.ax, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit ], [ null, %bb.b ], [ null, %bb.l ] ; 17 uses
  %i.av = icmp ne i64 %.sroa.021.1328, 0          ; 2 uses
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
          to label %.noexc129 unwind label %bb.co

.noexc129:                                        ; preds = %bb.g
  %i.bc = lshr i64 %i.ay, 32
  %i.bd = trunc nuw i64 %i.bc to i32
  %i.be = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !6, !noundef !6
  %i.bg = invoke noundef i8 %i.bf(i32 noundef %i.bd)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit unwind label %bb.co, !inline_history !58

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
  %i.bp = add i64 %.sroa.021.1505, %i.ay          ; 2 uses
  %.val90 = load i64, ptr %i.p, align 8, !noundef !6
  %.not314 = icmp eq i64 %.val90, 0
  br i1 %.not314, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134, label %.lr.ph

bb.m:                                             ; preds = %bb.k
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.033.0, ptr %i.bq, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1505, ptr %i.br, align 8
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
  store i64 %.sroa.021.1328, ptr %i.bv, align 8
  store i64 0, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.p:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit134
  %i.bw = load i64, ptr %i.q, align 8, !alias.scope !85, !noundef !6
  %i.bx = icmp ne i64 %i.bw, 0
  %i.by = load i8, ptr %i.r, align 1, !range !5, !alias.scope !85
  %i.bz = trunc nuw i8 %i.by to i1
  %or.cond.i135 = select i1 %i.bx, i1 true, i1 %i.bz
  br i1 %or.cond.i135, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ca = load i8, ptr %i.n, align 2, !range !5, !alias.scope !85, !noundef !6
  %i.cb = trunc nuw i8 %i.ca to i1
  br i1 %i.cb, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, label %bb.r

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread: ; preds = %bb.q
  %.not68702.a = icmp eq ptr %.sroa.0.5, null
  br label %.preheader

bb.r:                                             ; preds = %bb.q
  %i.cc = load i64, ptr %i.p, align 8, !alias.scope !85, !noundef !6
  %i.cd = icmp eq i64 %i.cc, 0
  br label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137: ; preds = %bb.r, %bb.p
  %.sroa.0.0.i136 = phi i1 [ %i.cd, %bb.r ], [ false, %bb.p ]
  %.not68 = icmp eq ptr %.sroa.0.5, null          ; 2 uses
  %brmerge = or i1 %.not68, %.sroa.0.0.i136
  br i1 %brmerge, label %.preheader, label %bb.s

.preheader:                                       ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %.not68704 = phi i1 [ %.not68702.a, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137.thread ], [ %.not68, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137 ]
  %i.ce = trunc nuw i8 %.sroa.0.0 to i1
  br i1 %i.ce, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph506.preheader

.lr.ph506.preheader:                              ; preds = %.preheader
  %i.cf = load i64, ptr %i.q, align 8, !alias.scope !86, !noundef !6
  %i.cg = icmp ne i64 %i.cf, 0
  %i.ch = load i8, ptr %i.r, align 1, !range !5, !alias.scope !86
  %i.ci = trunc nuw i8 %i.ch to i1
  %or.cond.i139975 = select i1 %i.cg, i1 true, i1 %i.ci
  br i1 %or.cond.i139975, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph976

bb.s:                                             ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit137
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread309, label %bb.t

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194.thread309: ; preds = %bb.s
  store i64 %.sroa.033.0, ptr %i.cj, align 8
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1328, ptr %i.ck, align 8
  store i64 0, ptr %0, align 8
  br label %bb.c

bb.t:                                             ; preds = %bb.s
  store ptr %.sroa.0.5, ptr %i.cj, align 8
  store i64 1, ptr %0, align 8
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr null)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit125

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161: ; preds = %.lr.ph976, %bb.u, %.lr.ph506, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151, %.lr.ph506.preheader, %.preheader, %bb.ae, %bb.x
  %.sroa.0196.2 = phi ptr [ null, %bb.x ], [ null, %bb.ae ], [ null, %.preheader ], [ null, %.lr.ph506.preheader ], [ %.sroa.5.0.i277, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ null, %bb.u ], [ null, %.lr.ph976 ], [ null, %.lr.ph506 ] ; 13 uses
  %.sroa.033.1 = phi i64 [ %.sroa.033.0, %bb.x ], [ %i.dp, %bb.ae ], [ %.sroa.033.0, %.preheader ], [ %.sroa.033.0, %.lr.ph506.preheader ], [ %.sroa.033.0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ %.sroa.033.0, %.lr.ph506 ], [ %.sroa.033.0, %bb.u ], [ %.sroa.033.0, %.lr.ph976 ] ; 6 uses
  %.sroa.0.1 = phi i8 [ 1, %bb.x ], [ %spec.select, %bb.ae ], [ 1, %.preheader ], [ 0, %.lr.ph506.preheader ], [ 0, %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 ], [ 1, %bb.u ], [ 0, %.lr.ph976 ], [ 0, %.lr.ph506 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  invoke void @_RNvMs8_NtCs7ZUl82OSlxp_6rustls4connINtB5_14ConnectionCoreNtNtNtB7_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(1056) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.y)
          to label %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit unwind label %.loopexit.split-lp

.lr.ph976:                                        ; preds = %.lr.ph506.preheader, %.lr.ph506
  %i.cl = load i8, ptr %i.n, align 2, !range !5, !alias.scope !86, !noundef !6
  %i.cm = trunc nuw i8 %i.cl to i1
  %i.cn = load i64, ptr %i.p, align 8
  %i.co = icmp eq i64 %i.cn, 0
  %or.cond = select i1 %i.cm, i1 true, i1 %i.co
  br i1 %or.cond, label %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread: ; preds = %.lr.ph976
  %i.cp = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer7is_full(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t)
          to label %.noexc143 unwind label %bb.af

.noexc143:                                        ; preds = %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread
  br i1 %i.cp, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc143
  %i.cq = load i8, ptr %i.r, align 1, !range !5, !alias.scope !87, !noundef !6
  %i.cr = trunc nuw i8 %i.cq to i1
  br i1 %i.cr, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %bb.w

bb.v:                                             ; preds = %.noexc143
  %i.cs = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newReECsaKJjC64KgbL_3std(i8 noundef 42, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 30) #18
          to label %.thread274 unwind label %bb.af ; 2 uses

.thread274:                                       ; preds = %bb.v
  %3 = ptrtoint ptr %i.cs to i64
  br label %bb.z

bb.w:                                             ; preds = %bb.u
  %i.ct = load i64, ptr %i.v, align 8, !alias.scope !87, !noundef !6 ; 2 uses
  %i.cu = icmp ult i64 %i.ct, 230584300921369396
  call void @llvm.assume(i1 %i.cu)
  %i.cv = icmp ne i64 %i.ct, 0
  %i.cw = invoke { i64, ptr } @_RNvMs3_NtNtNtCs7ZUl82OSlxp_6rustls4msgs8deframer7buffersNtB5_17DeframerVecBuffer4read(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) @2, i1 noundef zeroext %i.cv)
          to label %.noexc145 unwind label %bb.af

.noexc145:                                        ; preds = %bb.w
  %.fr315 = freeze { i64, ptr } %i.cw             ; 2 uses
  %i.cx = extractvalue { i64, ptr } %.fr315, 0
  %i.cy = extractvalue { i64, ptr } %.fr315, 1    ; 3 uses
  %i.cz = trunc nuw i64 %i.cx to i1               ; 2 uses
  %i.da = icmp ne ptr %i.cy, null                 ; 2 uses
  %or.cond.not.i = or i1 %i.da, %i.cz
  br i1 %or.cond.not.i, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.noexc145
  store i8 1, ptr %i.x, align 4, !alias.scope !87
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

bb.y:                                             ; preds = %.noexc145
  %4 = ptrtoint ptr %i.cy to i64                  ; 2 uses
  br i1 %i.cz, label %bb.z, label %bb.ae

bb.z:                                             ; preds = %.thread274, %bb.y
  %5 = phi i64 [ %3, %.thread274 ], [ %4, %bb.y ] ; 6 uses
  %.sroa.5.0.i277 = phi ptr [ %i.cs, %.thread274 ], [ %i.cy, %bb.y ] ; 12 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.i277) ]
  %i.db = and i64 %5, 3                           ; 3 uses
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %bb.aa
    i64 3, label %bb.ab
    i64 0, label %bb.ac
    i64 1, label %bb.ad
  ], !prof !7

bb.aa:                                            ; preds = %bb.z
  %i.dc = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc149 unwind label %bb.ap

.noexc149:                                        ; preds = %bb.aa
  %i.dd = lshr i64 %5, 32
  %i.de = trunc nuw i64 %i.dd to i32
  %i.df = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !nonnull !6, !noundef !6
  %i.dh = invoke noundef i8 %i.dg(i32 noundef %i.de)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151 unwind label %bb.ap, !inline_history !58

bb.ab:                                            ; preds = %bb.z
  %i.di = lshr i64 %5, 32
  %i.dj = icmp ult ptr %.sroa.5.0.i277, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i147 = trunc i64 %i.di to i8 ; 2 uses
  %i.dk = icmp ne i8 %switch.idx.cast.i.i.i147, -1
  call void @llvm.assume(i1 %i.dj)
  call void @llvm.assume(i1 %i.dk)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ac:                                            ; preds = %bb.z
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i277, i64 16
  %i.dm = load i8, ptr %i.dl, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ad:                                            ; preds = %bb.z
  %i.dn = getelementptr i8, ptr %.sroa.5.0.i277, i64 31
  %i.do = load i8, ptr %i.dn, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151

bb.ae:                                            ; preds = %bb.y
  %.not699 = xor i1 %i.da, true
  %i.dp = add i64 %.sroa.033.0, %4
  %spec.select = zext i1 %.not699 to i8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161

bb.af:                                            ; preds = %bb.w, %_RNvMNtCs7ZUl82OSlxp_6rustls12common_stateNtB2_11CommonState10wants_read.exit141.thread, %bb.v, %bb.ao
  %lpad.thr_comm.split-lp288 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151: ; preds = %bb.ad, %bb.ac, %bb.ab, %.noexc149
  %.sroa.0.0.i146 = phi i8 [ %i.do, %bb.ad ], [ %switch.idx.cast.i.i.i147, %bb.ab ], [ %i.dm, %bb.ac ], [ %i.dh, %.noexc149 ]
  %i.dq = icmp eq i8 %.sroa.0.0.i146, 13
  br i1 %i.dq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %bb.ag

bb.ag:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit151
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %bb.ah
    i64 3, label %bb.ai
    i64 0, label %bb.aj
    i64 1, label %bb.ak
  ], !prof !7

bb.ah:                                            ; preds = %bb.ag
  %i.dr = invoke noundef nonnull align 8 ptr @_RNvNtNtNtCsj6eKBz9Db1c_4core2io5error12os_functions16get_os_functions()
          to label %.noexc155 unwind label %bb.ap

.noexc155:                                        ; preds = %bb.ah
  %i.ds = lshr i64 %5, 32
  %i.dt = trunc nuw i64 %i.ds to i32
  %i.du = getelementptr inbounds nuw i8, ptr %i.dr, i64 8
  %i.dv = load ptr, ptr %i.du, align 8, !nonnull !6, !noundef !6
  %i.dw = invoke noundef i8 %i.dv(i32 noundef %i.dt)
          to label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157 unwind label %bb.ap, !inline_history !58

bb.ai:                                            ; preds = %bb.ag
  %i.dx = lshr i64 %5, 32
  %i.dy = icmp ult ptr %.sroa.5.0.i277, inttoptr (i64 188978561024 to ptr)
  %switch.idx.cast.i.i.i153 = trunc i64 %i.dx to i8 ; 2 uses
  %i.dz = icmp ne i8 %switch.idx.cast.i.i.i153, -1
  call void @llvm.assume(i1 %i.dy)
  call void @llvm.assume(i1 %i.dz)
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.aj:                                            ; preds = %bb.ag
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.5.0.i277, i64 16
  %i.eb = load i8, ptr %i.ea, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

bb.ak:                                            ; preds = %bb.ag
  %i.ec = getelementptr i8, ptr %.sroa.5.0.i277, i64 31
  %i.ed = load i8, ptr %i.ec, align 8, !range !8, !noundef !6
  br label %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157

_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157: ; preds = %bb.ak, %bb.aj, %bb.ai, %.noexc155
  %.sroa.0.0.i152 = phi i8 [ %i.ed, %bb.ak ], [ %switch.idx.cast.i.i.i153, %bb.ai ], [ %i.eb, %bb.aj ], [ %i.dw, %.noexc155 ]
  %i.ee = icmp eq i8 %.sroa.0.0.i152, 35
  br i1 %i.ee, label %bb.am, label %bb.al

bb.al:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0.i277, ptr %i.ef, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.am:                                            ; preds = %_RNvMs1_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_5Error4kind.exit157
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %.lr.ph506
    i64 3, label %bb.an
    i64 0, label %.lr.ph506
    i64 1, label %bb.ao
  ], !prof !7

bb.an:                                            ; preds = %bb.am
  %i.eg = icmp ult ptr %.sroa.5.0.i277, inttoptr (i64 188978561024 to ptr)
  %i.eh = and i64 %5, 1095216660480
  %i.ei = icmp ne i64 %i.eh, 1095216660480
  call void @llvm.assume(i1 %i.eg)
  call void @llvm.assume(i1 %i.ei)
  br label %.lr.ph506

bb.ao:                                            ; preds = %bb.am
  %i.ej = getelementptr i8, ptr %.sroa.5.0.i277, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ej) ]
  store ptr %i.ej, ptr %i.w, align 8, !alias.scope !88
  store i8 3, ptr %i.i, align 8, !alias.scope !88
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.w)
          to label %.lr.ph506 unwind label %bb.af

.lr.ph506:                                        ; preds = %bb.an, %bb.am, %bb.am, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ek = load i64, ptr %i.q, align 8, !alias.scope !86, !noundef !6
  %i.el = icmp ne i64 %i.ek, 0
  %i.em = load i8, ptr %i.r, align 1, !range !5, !alias.scope !86
  %i.en = trunc nuw i8 %i.em to i1
  %or.cond.i139 = select i1 %i.el, i1 true, i1 %i.en
  br i1 %or.cond.i139, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, label %.lr.ph976

bb.ap:                                            ; preds = %.noexc155, %.noexc149, %bb.aa, %bb.ah
  %lpad.thr_comm287 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client(ptr nonnull %.sroa.5.0.i277) #20
          to label %.thread unwind label %bb.aq

bb.aq:                                            ; preds = %bb.au, %bb.as, %.thread, %.split.thread, %bb.ap, %bb.cc, %bb.cj, %bb.co, %bb.az
  %i.eo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #19
  unreachable

_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161
  %i.ep = load i8, ptr %i.m, align 8, !range !9, !noundef !6
  %.not = icmp eq i8 %i.ep, -1
  br i1 %.not, label %bb.ba, label %bb.ar

bb.ar:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.l, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.eq = invoke { i64, ptr } @_RNvMs_NtCs7ZUl82OSlxp_6rustls6vecbufNtB4_14ChunkVecBuffer8write_to(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.s, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) @0)
          to label %bb.at unwind label %bb.az     ; 2 uses

.loopexit.split-lp:                               ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit161, %bb.ay
  %lpad.loopexit.split-lp986 = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.as:                                            ; preds = %bb.au
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultjNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(i64 %i.er, ptr %i.es) #20
          to label %.thread unwind label %bb.aq

bb.at:                                            ; preds = %bb.ar
  %i.er = extractvalue { i64, ptr } %i.eq, 0      ; 2 uses
  %i.es = extractvalue { i64, ptr } %i.eq, 1      ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %i.m, i64 64, i1 false)
  %i.et = invoke noundef nonnull ptr @_RINvMNtNtCs4wP2HXfJTCR_5alloc2io5errorNtNtNtCsj6eKBz9Db1c_4core2io5error5Error3newNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(i8 noundef 21, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.k)
          to label %bb.av unwind label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.eu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client(ptr null) #20
          to label %bb.as unwind label %bb.aq

bb.av:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ev = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.et, ptr %i.ev, align 8
  store i64 1, ptr %0, align 8
  %i.ew = icmp eq i64 %i.er, 0
  br i1 %i.ew, label %bb.ck, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.es) ]
  %i.ex = ptrtoint ptr %i.es to i64               ; 2 uses
  %i.ey = and i64 %i.ex, 3
  switch i64 %i.ey, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169
    i64 3, label %bb.ax
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169
    i64 1, label %bb.ay
  ], !prof !7

bb.ax:                                            ; preds = %bb.aw
  %i.ez = icmp ult ptr %i.es, inttoptr (i64 188978561024 to ptr)
  %i.fa = and i64 %i.ex, 1095216660480
  %i.fb = icmp ne i64 %i.fa, 1095216660480
  call void @llvm.assume(i1 %i.ez)
  call void @llvm.assume(i1 %i.fb)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169

bb.ay:                                            ; preds = %bb.aw
  %i.fc = getelementptr i8, ptr %i.es, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fc) ]
  %i.fd = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.fc, ptr %i.fd, align 8, !alias.scope !89
  store i8 3, ptr %i.h, align 8, !alias.scope !89
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.fd)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169 unwind label %.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i169: ; preds = %bb.ay, %bb.ax, %bb.aw, %bb.aw
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.ck

bb.az:                                            ; preds = %bb.ar
  %i.fe = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs7ZUl82OSlxp_6rustls5error5ErrorECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(64) %i.l) #20
          to label %.thread unwind label %bb.aq

bb.ba:                                            ; preds = %_RNvMs_NtCs7ZUl82OSlxp_6rustls4connINtB4_16ConnectionCommonNtNtNtB6_6client11client_conn20ClientConnectionDataE19process_new_packetsCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %.val89 = load i64, ptr %i.p, align 8, !noundef !6
  %i.ff = icmp ne i64 %.val89, 0                  ; 2 uses
  %.not71 = icmp eq ptr %.sroa.0196.2, null       ; 2 uses
  %brmerge3 = or i1 %.not71, %i.ff
  br i1 %brmerge3, label %bb.bb, label %bb.bc

bb.bb:                                            ; preds = %bb.ba
  br i1 %i.af, label %bb.be, label %bb.bf

bb.bc:                                            ; preds = %bb.ba
  %i.fg = icmp eq i64 %.sroa.033.1, 0
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  br i1 %i.fg, label %bb.bd, label %.thread303

.thread303:                                       ; preds = %bb.bc
  store i64 %.sroa.033.1, ptr %i.fh, align 8
  %i.fi = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.021.1328, ptr %i.fi, align 8
  store i64 0, ptr %0, align 8
  br label %bb.cl

bb.bd:                                            ; preds = %bb.bc
  store ptr %.sroa.0196.2, ptr %i.fh, align 8
  store i64 1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit194

bb.be:                                            ; preds = %bb.bf, %bb.bb
  %i.fj = call { ptr, ptr } @_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionNtNtNtB5_2io5error5ErrorE3zipBI_ECsi17nFaBu4HY_10ech_client(ptr noundef %.sroa.0.5, ptr noundef %.sroa.0196.2) ; 2 uses
  %i.fk = extractvalue { ptr, ptr } %i.fj, 0      ; 9 uses
  %i.fl = extractvalue { ptr, ptr } %i.fj, 1      ; 12 uses
  %.val = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val83 = load i8, ptr %i.o, align 1
  %i.fm = trunc nuw i8 %.val to i1
  %i.fn = trunc nuw i8 %.val83 to i1
  %i.fo = select i1 %i.fm, i1 %i.fn, i1 false
  %.sroa.0.0.i180 = xor i1 %i.fo, true            ; 2 uses
  %or.cond7 = select i1 %i.af, i1 true, i1 %.sroa.0.0.i180
  br i1 %or.cond7, label %bb.bn, label %bb.bo

bb.bf:                                            ; preds = %bb.bb
  %.val84 = load i8, ptr %i.n, align 2, !range !5, !noundef !6
  %.val85 = load i8, ptr %i.o, align 1
  %i.fp = trunc nuw i8 %.val84 to i1
  %i.fq = trunc nuw i8 %.val85 to i1
  %i.fr = select i1 %i.fp, i1 %i.fq, i1 false
  %brmerge319.demorgan = and i1 %i.ff, %i.fr
  br i1 %brmerge319.demorgan, label %bb.bg, label %bb.be

bb.bg:                                            ; preds = %bb.bf
  br i1 %.not71, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.fs = ptrtoint ptr %.sroa.0196.2 to i64       ; 2 uses
  %i.ft = and i64 %i.fs, 3
  switch i64 %i.ft, label %default.unreachable [
    i64 2, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173
    i64 3, label %bb.bi
    i64 0, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173
    i64 1, label %bb.bj
  ], !prof !7

bb.bi:                                            ; preds = %bb.bh
  %i.fu = icmp ult ptr %.sroa.0196.2, inttoptr (i64 188978561024 to ptr)
  %i.fv = and i64 %i.fs, 1095216660480
  %i.fw = icmp ne i64 %i.fv, 1095216660480
  call void @llvm.assume(i1 %i.fu)
  call void @llvm.assume(i1 %i.fw)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173

bb.bj:                                            ; preds = %bb.bh
  %i.fx = getelementptr i8, ptr %.sroa.0196.2, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.fx) ]
  store ptr %i.fx, ptr %i.z, align 8, !alias.scope !90
  store i8 3, ptr %i.g, align 8, !alias.scope !90
  invoke void @_RNvXsd_NtNtCsj6eKBz9Db1c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173 unwind label %.split.thread.loopexit.split-lp.loopexit.split-lp

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173: ; preds = %bb.bj, %bb.bi, %bb.bh, %bb.bh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_2io5error5ErrorEECsi17nFaBu4HY_10ech_client.exit176: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsi17nFaBu4HY_10ech_client.exit.i173, %bb.bg
end_hunk_0
