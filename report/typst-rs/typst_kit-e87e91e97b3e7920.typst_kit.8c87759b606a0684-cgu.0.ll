Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3956
inline.NumDeleted: 1750
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbGiR87yI9G2_9tiny_http4util10sequential16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBG_18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit:bb.a
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.t
  %i.db = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.bb, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc25.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i: ; preds = %.noexc25.i, %bb.t
  %.sroa.0.0.i.i.i2.i.i.i.i.i = phi ptr [ %i.db, %.noexc25.i ], [ %i.bb, %bb.t ] ; 4 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1352
  %i.de = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc26.i:                                       ; preds = %bb.u
  store ptr %i.de, ptr %i.z, align 8, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1352
  store ptr %i.ad, ptr %i.x, align 8, !noalias !1352
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1348
  store ptr %i.ae, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1348
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %i.de)
          to label %bb.x unwind label %bb.v, !noalias !1352

bb.v:                                             ; preds = %.noexc26.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1354)
  call void @llvm.experimental.noalias.scope.decl(metadata !1355)
  call void @llvm.experimental.noalias.scope.decl(metadata !1356)
  %i.dg = load ptr, ptr %i.z, align 8, !alias.scope !1357, !noalias !1352, !nonnull !17, !noundef !17
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !1358
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.w, label %.body.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #48
          to label %.body.i unwind label %bb.z, !noalias !1352

bb.x:                                             ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1352
  call void @llvm.experimental.noalias.scope.decl(metadata !1359)
  call void @llvm.experimental.noalias.scope.decl(metadata !1360)
  call void @llvm.experimental.noalias.scope.decl(metadata !1361)
  %i.dj = load ptr, ptr %i.z, align 8, !alias.scope !1362, !noalias !1352, !nonnull !17, !noundef !17
  %i.dk = atomicrmw sub ptr %i.dj, i64 1 release, align 8, !noalias !1363
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1352
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.z:                                             ; preds = %bb.af, %bb.w
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !1352
  unreachable

bb.aa:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1352
  store ptr %i.dd, ptr %i.y, align 8, !noalias !1352
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store atomic i64 0, ptr %i.dn release, align 8, !noalias !1352
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store atomic ptr null, ptr %i.do release, align 8, !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1352
  store ptr %i.ad, ptr %i.w, align 8, !noalias !1352
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i, align 8, !noalias !1348
  store ptr %i.ae, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1348
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr nonnull %i.dd)
          to label %bb.ab unwind label %bb.ae, !noalias !1352

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1352
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1352
  %i.dp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352, !noundef !17 ; 3 uses
  store ptr %i.dp, ptr %i.v, align 8, !noalias !1352
  store ptr %i.dd, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1352
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = atomicrmw sub ptr %i.dp, i64 1 release, align 8, !noalias !1364
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #48
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1352
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1352
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = atomicrmw sub ptr %i.dd, i64 1 release, align 8, !noalias !1365
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #48
          to label %.body.i unwind label %bb.z, !noalias !1352

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %.noexc25.i
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.aa) #50
          to label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !1345

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1352
  br label %bb.f

.split.i.i.i:                                     ; preds = %.noexc24.i
  %i.dw = extractvalue { i64, i32 } %i.cw, 1      ; 2 uses
  %i.dx = icmp ult i32 %i.dw, 1000000000
  call void @llvm.assume(i1 %i.dx)
  %.not20.i.i.i = icmp samesign ult i32 %i.dw, %i.cn
  br i1 %.not20.i.i.i, label %bb.t, label %bb.ah

bb.ag:                                            ; preds = %.noexc24.i
  %.not19.i.i.i = icmp slt i64 %i.cx, %i.cv
  br i1 %.not19.i.i.i, label %bb.t, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %.split.i.i.i
  store i8 0, ptr %i.af, align 8, !alias.scope !1347, !noalias !1346
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  store i8 1, ptr %i.af, align 8, !alias.scope !1347, !noalias !1346
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, i64 40, i1 false), !noalias !1346
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i.i.i, i64 12, i1 false), !noalias !1346
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.4.0.copyload5.i.sink.i.i = phi i32 [ %.sroa.4.0.copyload5.i.i.i, %bb.aj ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ak, %bb.ah
  %i.dy = phi i32 [ 2, %bb.ah ], [ %.sroa.4.0.copyload5.i.sink.i.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1348
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1346
  br label %bb.ef

bb.al:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1366)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1346
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 -1, ptr %i.dz, align 8, !noalias !1367
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1367
  %i.ea = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.eb = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.ec = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 8 ; 3 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload.i, i64 128
  %.sroa.423.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.sroa.7.0..sroa_idx.i1.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ee = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i2.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i3.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i4.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i5.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !1367
  br label %bb.am

bb.am:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1368)
  %i.eg = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1369
  %i.eh = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1369
  br label %bb.an

bb.an:                                            ; preds = %.backedge.i.i.i.i, %bb.am
  %.sroa.0.043.i.i.i.i = phi i32 [ 0, %bb.am ], [ %.sroa.0.043.be.i.i.i.i, %.backedge.i.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i.i = phi ptr [ %i.eh, %bb.am ], [ %i.es, %.backedge.i.i.i.i ] ; 8 uses
  %.sroa.07.0.i.i.i.i = phi i64 [ %i.eg, %bb.am ], [ %i.er, %.backedge.i.i.i.i ] ; 5 uses
  %i.ei = lshr i64 %.sroa.07.0.i.i.i.i, 1         ; 2 uses
  %i.ej = and i64 %i.ei, 31                       ; 6 uses
  %i.ek = icmp eq i64 %i.ej, 31
  br i1 %i.ek, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  %i.el = icmp ult i32 %.sroa.0.043.i.i.i.i, 7
  br i1 %i.el, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i, label %.backedge.sink.split.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i: ; preds = %bb.ao
  %.not.i.i.i20.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i.i.i20.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.preheader

.lr.ph.i.i.i23.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i
  %i.em = mul nuw i32 %.sroa.0.043.i.i.i.i, %.sroa.0.043.i.i.i.i ; 2 uses
  %xtraiter183 = and i32 %i.em, 7                 ; 3 uses
  %i.en = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.en, label %.lr.ph.i.i.i23.i.i.epil.preheader, label %.lr.ph.i.i.i23.i.i.preheader.new

.lr.ph.i.i.i23.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i23.i.i.preheader
  %unroll_iter187 = and i32 %i.em, 56
  br label %.lr.ph.i.i.i23.i.i

.lr.ph.i.i.i23.i.i:                               ; preds = %.lr.ph.i.i.i23.i.i, %.lr.ph.i.i.i23.i.i.preheader.new
  %niter188 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.preheader.new ], [ %niter188.next.7, %.lr.ph.i.i.i23.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter188.next.7 = add i32 %niter188, 8         ; 2 uses
  %niter188.ncmp.7 = icmp eq i32 %niter188.next.7, %unroll_iter187
  br i1 %niter188.ncmp.7, label %.backedge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eo = add i64 %.sroa.07.0.i.i.i.i, 2          ; 2 uses
  %i.ep = and i64 %.sroa.07.0.i.i.i.i, 1
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.aq, label %bb.at

.backedge.sink.split.i.i.i.i:                     ; preds = %bb.av, %bb.ao
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

.backedge.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i23.i.i
  %lcmp.mod185.not = icmp eq i32 %xtraiter183, 0
  br i1 %lcmp.mod185.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil.preheader

.lr.ph.i.i.i23.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.preheader
  %lcmp.mod186 = icmp ne i32 %xtraiter183, 0
  call void @llvm.assume(i1 %lcmp.mod186)
  br label %.lr.ph.i.i.i23.i.i.epil

.lr.ph.i.i.i23.i.i.epil:                          ; preds = %.lr.ph.i.i.i23.i.i.epil, %.lr.ph.i.i.i23.i.i.epil.preheader
  %epil.iter184 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.epil.preheader ], [ %epil.iter184.next, %.lr.ph.i.i.i23.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter184.next = add i32 %epil.iter184, 1   ; 2 uses
  %epil.iter184.cmp.not = icmp eq i32 %epil.iter184.next, %xtraiter183
  br i1 %epil.iter184.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil, !llvm.loop !1205

.backedge.i.i.i.i.loopexit155.unr-lcssa:          ; preds = %.lr.ph.i23.i.i.i.i
  %lcmp.mod179.not = icmp eq i32 %xtraiter177, 0
  br i1 %lcmp.mod179.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit155.unr-lcssa, %.lr.ph.i23.i.i.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter177, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i23.i.i.i.i.epil

.lr.ph.i23.i.i.i.i.epil:                          ; preds = %.lr.ph.i23.i.i.i.i.epil, %.lr.ph.i23.i.i.i.i.epil.preheader
  %epil.iter178 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.epil.preheader ], [ %epil.iter178.next, %.lr.ph.i23.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter178.next = add i32 %epil.iter178, 1   ; 2 uses
  %epil.iter178.cmp.not = icmp eq i32 %epil.iter178.next, %xtraiter177
  br i1 %epil.iter178.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil, !llvm.loop !1206

.backedge.i.i.i.i.loopexit156.unr-lcssa:          ; preds = %.lr.ph.i33.i.i.i.i
  %lcmp.mod173.not = icmp eq i32 %xtraiter171, 0
  br i1 %lcmp.mod173.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit156.unr-lcssa, %.lr.ph.i33.i.i.i.i.preheader
  %lcmp.mod174 = icmp ne i32 %xtraiter171, 0
  call void @llvm.assume(i1 %lcmp.mod174)
  br label %.lr.ph.i33.i.i.i.i.epil

.lr.ph.i33.i.i.i.i.epil:                          ; preds = %.lr.ph.i33.i.i.i.i.epil, %.lr.ph.i33.i.i.i.i.epil.preheader
  %epil.iter172 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.epil.preheader ], [ %epil.iter172.next, %.lr.ph.i33.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter172.next = add i32 %epil.iter172, 1   ; 2 uses
  %epil.iter172.cmp.not = icmp eq i32 %epil.iter172.next, %xtraiter171
  br i1 %epil.iter172.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil, !llvm.loop !1207

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.loopexit156.unr-lcssa, %.lr.ph.i33.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit155.unr-lcssa, %.lr.ph.i23.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i, %.backedge.sink.split.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i
  %i.er = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1369
  %i.es = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1369
  %.sroa.0.043.be.i.i.i.i = add i32 %.sroa.0.043.i.i.i.i, 1
  br label %bb.an

bb.aq:                                            ; preds = %bb.ap
  fence seq_cst
  %i.et = load atomic i64, ptr %i.ed monotonic, align 8, !noalias !1369 ; 3 uses
  %i.eu = lshr i64 %i.et, 1
  %i.ev = icmp eq i64 %i.ei, %i.eu
  br i1 %i.ev, label %bb.as, label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %.not.unshifted.i.i.i.i = xor i64 %i.et, %.sroa.07.0.i.i.i.i
  %.not.i.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i.i, 63
  %1 = zext i1 %.not.i.i.i.i to i64
  %spec.select.i.i.i.i = or disjoint i64 %i.eo, %1
  br label %bb.at

bb.as:                                            ; preds = %bb.aq
  %i.ew = and i64 %i.et, 1
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i

bb.at:                                            ; preds = %bb.ar, %bb.ap
  %.sroa.01.0.i.i6.i.i = phi i64 [ %i.eo, %bb.ap ], [ %spec.select.i.i.i.i, %bb.ar ] ; 2 uses
  %i.ey = icmp eq ptr %.sroa.012.0.i.i.i.i, null
  br i1 %i.ey, label %bb.av, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.ez = cmpxchg weak ptr %.sroa.5.0.copyload.i, i64 %.sroa.07.0.i.i.i.i, i64 %.sroa.01.0.i.i6.i.i seq_cst acquire, align 8, !noalias !1369
  %.sroa.18.0.in.i.i.i7.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i7.i.i, label %bb.aw, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i

bb.av:                                            ; preds = %bb.at
  %i.fa = icmp ult i32 %.sroa.0.043.i.i.i.i, 7
  br i1 %i.fa, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i, label %.backedge.sink.split.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i: ; preds = %bb.av
  %.not.i20.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i20.i.i.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.preheader

.lr.ph.i23.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i
  %i.fb = mul nuw i32 %.sroa.0.043.i.i.i.i, %.sroa.0.043.i.i.i.i ; 2 uses
  %xtraiter177 = and i32 %i.fb, 7                 ; 3 uses
  %i.fc = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.fc, label %.lr.ph.i23.i.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.i.preheader.new

.lr.ph.i23.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i23.i.i.i.i.preheader
  %unroll_iter181 = and i32 %i.fb, 56
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i, %.lr.ph.i23.i.i.i.i.preheader.new
  %niter182 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.preheader.new ], [ %niter182.next.7, %.lr.ph.i23.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter182.next.7 = add i32 %niter182, 8         ; 2 uses
  %niter182.ncmp.7 = icmp eq i32 %niter182.next.7, %unroll_iter181
  br i1 %niter182.ncmp.7, label %.backedge.i.i.i.i.loopexit155.unr-lcssa, label %.lr.ph.i23.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i: ; preds = %bb.au
  %..i.i.i.i8.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i.i, i32 6) ; 2 uses
  %i.fd = mul nuw nsw i32 %..i.i.i.i8.i.i, %..i.i.i.i8.i.i ; 2 uses
  %.not.i30.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i30.i.i.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.preheader

.lr.ph.i33.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i
  %xtraiter171 = and i32 %i.fd, 5                 ; 3 uses
  %i.fe = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.fe, label %.lr.ph.i33.i.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.i.preheader.new

.lr.ph.i33.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i33.i.i.i.i.preheader
  %unroll_iter175 = and i32 %i.fd, 56
  br label %.lr.ph.i33.i.i.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph.i33.i.i.i.i, %.lr.ph.i33.i.i.i.i.preheader.new
  %niter176 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.preheader.new ], [ %niter176.next.7, %.lr.ph.i33.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter176.next.7 = add i32 %niter176, 8         ; 2 uses
  %niter176.ncmp.7 = icmp eq i32 %niter176.next.7, %unroll_iter175
  br i1 %niter176.ncmp.7, label %.backedge.i.i.i.i.loopexit156.unr-lcssa, label %.lr.ph.i33.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ff = icmp eq i64 %i.ej, 30
  br i1 %i.ff, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 1984 ; 2 uses
  %i.fh = load atomic ptr, ptr %i.fg acquire, align 8, !noalias !1369 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %bb.ax, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi i32 [ %i.fm, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.ax ] ; 6 uses
  %i.fj = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 7
  br i1 %i.fj, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i37.i.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i.i
  %.not.i.i.i.i10.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i
  %i.fk = mul nuw i32 %.sroa.0.02.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i ; 2 uses
  %xtraiter189 = and i32 %i.fk, 7                 ; 3 uses
  %i.fl = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 3
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter193 = and i32 %i.fk, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter194 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter194.next.7, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %niter194.next.7 = add i32 %niter194, 8         ; 2 uses
  %niter194.ncmp.7 = icmp eq i32 %niter194.next.7, %unroll_iter193
  br i1 %niter194.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod191.not = icmp eq i32 %xtraiter189, 0
  br i1 %lcmp.mod191.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod192 = icmp ne i32 %xtraiter189, 0
  call void @llvm.assume(i1 %lcmp.mod192)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter190 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter190.next, %.lr.ph.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1369
  %epil.iter190.next = add i32 %epil.iter190, 1   ; 2 uses
  %epil.iter190.cmp.not = icmp eq i32 %epil.iter190.next, %xtraiter189
  br i1 %epil.iter190.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !1208

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, %bb.ay
  %i.fm = add i32 %.sroa.0.02.i.i.i.i.i, 1
  %i.fn = load atomic ptr, ptr %i.fg acquire, align 8, !noalias !1369 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.ax
  %.lcssa.i.i.i.i.i = phi ptr [ %i.fh, %bb.ax ], [ %i.fn, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ] ; 2 uses
  %i.fp = and i64 %.sroa.01.0.i.i6.i.i, -2
  %2 = add i64 %i.fp, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i, i64 1984
  %i.fr = load atomic ptr, ptr %i.fq monotonic, align 8, !noalias !1369
  %3 = icmp ne ptr %i.fr, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.ec release, align 8, !noalias !1369
  store atomic i64 %spec.select17.i.i.i.i, ptr %.sroa.5.0.copyload.i release, align 8, !noalias !1369
  br label %bb.az

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.as
  %i.fs = load i32, ptr %i.dz, align 8, !range !46, !noalias !1367, !noundef !17 ; 2 uses
  %.not.i11.i.i = icmp eq i32 %i.fs, -1
  br i1 %.not.i11.i.i, label %bb.bj, label %bb.bi

bb.az:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.aw
  store ptr %.sroa.012.0.i.i.i.i, ptr %i.ea, align 8, !alias.scope !1368, !noalias !1367
  store i64 %i.ej, ptr %i.eb, align 8, !alias.scope !1368, !noalias !1367
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %i.ej ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56 ; 3 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8, !noalias !1370
  %i.fw = and i64 %i.fv, 1
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i.i6.i.i.i:                                ; preds = %bb.az, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i
  %.sroa.0.02.i.i7.i.i.i = phi i32 [ %i.gb, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i ], [ 0, %bb.az ] ; 6 uses
  %i.fy = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 7
  br i1 %i.fy, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i6.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i
  %.not.i.i.i11.i.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.preheader

.lr.ph.i.i.i14.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i
  %i.fz = mul nuw i32 %.sroa.0.02.i.i7.i.i.i, %.sroa.0.02.i.i7.i.i.i ; 2 uses
  %xtraiter195 = and i32 %i.fz, 7                 ; 3 uses
  %i.ga = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 3
  br i1 %i.ga, label %.lr.ph.i.i.i14.i.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.i.preheader.new

.lr.ph.i.i.i14.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i14.i.i.i.preheader
  %unroll_iter199 = and i32 %i.fz, 56
  br label %.lr.ph.i.i.i14.i.i.i

.lr.ph.i.i.i14.i.i.i:                             ; preds = %.lr.ph.i.i.i14.i.i.i, %.lr.ph.i.i.i14.i.i.i.preheader.new
  %niter200 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.preheader.new ], [ %niter200.next.7, %.lr.ph.i.i.i14.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  call void @llvm.x86.sse2.pause(), !noalias !1370
  %niter200.next.7 = add i32 %niter200, 8         ; 2 uses
  %niter200.ncmp.7 = icmp eq i32 %niter200.next.7, %unroll_iter199
  br i1 %niter200.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i.i
  %lcmp.mod197.not = icmp eq i32 %xtraiter195, 0
  br i1 %lcmp.mod197.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.preheader
  %lcmp.mod198 = icmp ne i32 %xtraiter195, 0
  call void @llvm.assume(i1 %lcmp.mod198)
  br label %.lr.ph.i.i.i14.i.i.i.epil

.lr.ph.i.i.i14.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i14.i.i.i.epil, %.lr.ph.i.i.i14.i.i.i.epil.preheader
  %epil.iter196 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.epil.preheader ], [ %epil.iter196.next, %.lr.ph.i.i.i14.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1370
  %epil.iter196.next = add i32 %epil.iter196, 1   ; 2 uses
  %epil.iter196.cmp.not = icmp eq i32 %epil.iter196.next, %xtraiter195
  br i1 %epil.iter196.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil, !llvm.loop !1211

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, %bb.ba
  %i.gb = add i32 %.sroa.0.02.i.i7.i.i.i, 1
  %i.gc = load atomic i64, ptr %i.fu acquire, align 8, !noalias !1370
  %i.gd = and i64 %i.gc, 1
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ft, i64 40, i1 false), !noalias !1367
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %.sroa.429.0.copyload.i.i.i = load i32, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !noalias !1370 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !1367
  %i.gf = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 31
  br i1 %i.gg, label %.lr.ph.i1.i.i.i.i, label %bb.be

.lr.ph.i1.i.i.i.i:                                ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.bd
  %.sroa.0.03.i.i4.i.i.i = phi i64 [ %i.gp, %bb.bd ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56 ; 2 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8, !noalias !1370
  %i.gk = and i64 %i.gj, 2
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.bb, label %.lr.ph.i1.i.i.i.i.1

bb.bb:                                            ; preds = %.lr.ph.i1.i.i.i.i
  %i.gm = atomicrmw or ptr %i.gi, i64 4 acq_rel, align 8, !noalias !1370
  %i.gn = and i64 %i.gm, 2
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %.lr.ph.i1.i.i.i.i.1

.lr.ph.i1.i.i.i.i.1:                              ; preds = %bb.bb, %.lr.ph.i1.i.i.i.i
  %i.gp = add nuw nsw i64 %.sroa.0.03.i.i4.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 120 ; 2 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8, !noalias !1370
  %i.gt = and i64 %i.gs, 2
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i1.i.i.i.i.1
  %i.gv = atomicrmw or ptr %i.gr, i64 4 acq_rel, align 8, !noalias !1370
  %i.gw = and i64 %i.gv, 2
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i1.i.i.i.i.1
  %exitcond.not.i.i5.i.i.i.1 = icmp eq i64 %i.gp, 30
  br i1 %exitcond.not.i.i5.i.i.i.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, label %.lr.ph.i1.i.i.i.i

bb.be:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.gy = atomicrmw or ptr %i.fu, i64 2 acq_rel, align 8, !noalias !1370
  %i.gz = and i64 %i.gy, 4
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bf

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i: ; preds = %bb.bh, %bb.bd, %bb.bf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i.i, i64 noundef 1992, i64 noundef 8) #42, !noalias !1370
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hb = icmp samesign ult i64 %i.ej, 29
  br i1 %i.hb, label %.lr.ph.i3.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %bb.bf, %bb.bh
  %.sroa.0.03.i4.i.i.i.i = phi i64 [ %i.hc, %bb.bh ], [ %i.gf, %bb.bf ] ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.0.03.i4.i.i.i.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i4.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56 ; 2 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8, !noalias !1370
  %i.hg = and i64 %i.hf, 2
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i3.i.i.i.i
  %i.hi = atomicrmw or ptr %i.he, i64 4 acq_rel, align 8, !noalias !1370
  %i.hj = and i64 %i.hi, 2
  %i.hk = icmp eq i64 %i.hj, 0
  br i1 %i.hk, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bh

bb.bh:                                            ; preds = %bb.bg, %.lr.ph.i3.i.i.i.i
  %exitcond.not.i5.i.i.i.i = icmp eq i64 %i.hc, 30
  br i1 %exitcond.not.i5.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, label %.lr.ph.i3.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.bg, %bb.bb, %bb.bc, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, %bb.be
  %i.hl = icmp eq i32 %.sroa.429.0.copyload.i.i.i, 2
  br i1 %i.hl, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i, label %bb.by

bb.bi:                                            ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.hm = load i64, ptr %i.u, align 8, !noalias !1367, !noundef !17 ; 2 uses
  %i.hn = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc33.i:                                       ; preds = %bb.bi
  %i.ho = extractvalue { i64, i32 } %i.hn, 0      ; 2 uses
  %i.hp = icmp eq i64 %i.ho, %i.hm
  br i1 %i.hp, label %.split.i17.i.i, label %bb.bw

bb.bj:                                            ; preds = %bb.bw, %.split.i17.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1371
  store ptr %i.t, ptr %i.s, align 8, !noalias !1367
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !1367
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i1.i.i, align 8, !noalias !1367
  %i.hq = load i8, ptr %i.ef, align 8, !range !18, !noalias !1372, !noundef !17
  %i.hr = icmp eq i8 %i.hq, 1
  br i1 %i.hr, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i: ; preds = %bb.bj
  %i.hs = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.ee, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

.noexc34.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i: ; preds = %.noexc34.i, %bb.bj
  %.sroa.0.0.i.i.i2.i.i.i14.i.i = phi ptr [ %i.hs, %.noexc34.i ], [ %i.ee, %bb.bj ] ; 4 uses
  %i.hu = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1371, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1371
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i18.i.i.i, label %bb.bk, label %bb.bq, !prof !23

bb.bk:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1371
  %i.hv = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !1345 ; 2 uses

end_hunk_0
begin_hunk_1_@_RNCNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtBa_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerE00Csc4241EHy6Do_9typst_kit:bb.a
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !4185
  unreachable

bb.i:                                             ; preds = %bb.o, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs_NtCsbGiR87yI9G2_9tiny_http6clientNtB4_16ClientConnectionNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.m)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.m) #46
          to label %.thread unwind label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.ah = load i64, ptr %i.l, align 8, !range !44, !noundef !17
  %.not7 = icmp eq i64 %i.ah, 2
  br i1 %.not7, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.k, ptr noundef nonnull align 8 dereferenceable(176) %i.l, i64 176, i1 false)
  invoke fastcc void @_RNvMNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queueINtB2_13MessagesQueueNtB6_7MessageE4pushCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.y, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.k)
          to label %bb.o unwind label %bb.j

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.n

bb.n:                                             ; preds = %bb.ab, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %bb.c

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.i

bb.p:                                             ; preds = %bb.z, %bb.w, %bb.ct, %bb.cs, %.body34, %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.q:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.ac, ptr noundef nonnull align 128 dereferenceable(512) %i.j, i64 512, i1 false), !noalias !4185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4185
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(192) %i.r, ptr noundef nonnull align 8 dereferenceable(192) %i.s, i64 192, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 384
  %i.al = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ac, i64 128
  %.sroa.4.0..sroa_idx.i3.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx.i4.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.aq = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i.i5.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i6.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i.i7.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i8.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %bb.r

bb.r:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  invoke void @_RNvXs_NtCsbGiR87yI9G2_9tiny_http6clientNtB4_16ClientConnectionNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.r)
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

.body34:                                          ; preds = %.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit, %.loopexit.split-lp.loopexit, %bb.cg, %bb.ch, %bb.cp, %bb.cq, %bb.ac, %bb.cs
  %.pn = phi { ptr, i32 } [ %i.az, %bb.ac ], [ %i.mp, %bb.cs ], [ %i.mk, %bb.cp ], [ %i.mk, %bb.cq ], [ %i.lw, %bb.ch ], [ %i.lw, %bb.cg ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit76, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit79, %.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit81, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit84, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r) #46
          to label %bb.w unwind label %bb.p

.loopexit:                                        ; preds = %.backedge.sink.split.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit:                      ; preds = %bb.au
  %lpad.loopexit76 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit:    ; preds = %bb.as
  %lpad.loopexit79 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.co, %bb.cj, %bb.cf, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i15.i, %bb.cd
  %lpad.loopexit81 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit: ; preds = %bb.r, %bb.ae
  %lpad.loopexit84 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.s:                                             ; preds = %bb.r
  %i.as = load i64, ptr %i.q, align 8, !range !44, !noundef !17
  %.not8 = icmp eq i64 %i.as, 2
  br i1 %.not8, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.n, ptr noundef nonnull align 8 dereferenceable(176) %i.q, i64 176, i1 false)
  %i.at = load ptr, ptr %i.aj, align 8, !nonnull !17, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.av = atomicrmw add ptr %i.ak, i64 1 monotonic, align 8
  %i.aw = icmp slt i64 %i.av, 0
  br i1 %i.aw, label %bb.u, label %bb.ad, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #45
          to label %.noexc25 unwind label %bb.cs

.noexc25:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %.body34
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body34 ], [ %i.ax, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #46
          to label %bb.z unwind label %bb.p

bb.x:                                             ; preds = %bb.v
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.y:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac)
          to label %bb.ab unwind label %bb.aa

bb.z:                                             ; preds = %bb.w, %bb.aa
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.w ], [ %i.ay, %bb.aa ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #46
          to label %.thread unwind label %bb.p

bb.aa:                                            ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac)
  br label %bb.n

bb.ac:                                            ; preds = %bb.ad
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ad:                                            ; preds = %bb.t
  invoke void @_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request18with_notify_sender(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.n, i64 noundef 1, ptr noundef nonnull %i.ac)
          to label %bb.ae unwind label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 8 dereferenceable(176) %i.o, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queueINtB2_13MessagesQueueNtB6_7MessageE4pushCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.p)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.ag

bb.ag:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.af
  call void @llvm.experimental.noalias.scope.decl(metadata !4187)
  %i.ba = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4187
  %i.bb = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4187
  br label %bb.ah

bb.ah:                                            ; preds = %.backedge.i.i.i, %bb.ag
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.ag ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.bb, %bb.ag ], [ %i.bm, %.backedge.i.i.i ] ; 35 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.ba, %bb.ag ], [ %i.bl, %.backedge.i.i.i ] ; 5 uses
  %i.bc = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.bd = and i64 %i.bc, 31                       ; 6 uses
  %i.be = icmp eq i64 %i.bd, 31
  br i1 %i.be, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  %i.bf = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.bf, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i: ; preds = %bb.ai
  %.not.i.i.i25.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i25.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.preheader

.lr.ph.i.i.i28.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bg = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter155 = and i32 %i.bg, 7                 ; 3 uses
  %i.bh = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bh, label %.lr.ph.i.i.i28.i.epil.preheader, label %.lr.ph.i.i.i28.i.preheader.new

.lr.ph.i.i.i28.i.preheader.new:                   ; preds = %.lr.ph.i.i.i28.i.preheader
  %unroll_iter159 = and i32 %i.bg, 56
  br label %.lr.ph.i.i.i28.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i.i.i28.i, %.lr.ph.i.i.i28.i.preheader.new
  %niter160 = phi i32 [ 0, %.lr.ph.i.i.i28.i.preheader.new ], [ %niter160.next.7, %.lr.ph.i.i.i28.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter160.next.7 = add i32 %niter160, 8         ; 2 uses
  %niter160.ncmp.7 = icmp eq i32 %niter160.next.7, %unroll_iter159
  br i1 %niter160.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i28.i

bb.aj:                                            ; preds = %bb.ah
  %i.bi = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.bj = and i64 %.sroa.07.0.i.i.i, 1
  %i.bk = icmp eq i64 %i.bj, 0
  br i1 %i.bk, label %bb.ak, label %bb.an

.backedge.sink.split.i.i.i:                       ; preds = %bb.ap, %bb.ai
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i unwind label %.loopexit

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i28.i
  %lcmp.mod157.not = icmp eq i32 %xtraiter155, 0
  br i1 %lcmp.mod157.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil.preheader

.lr.ph.i.i.i28.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.preheader
  %lcmp.mod158 = icmp ne i32 %xtraiter155, 0
  call void @llvm.assume(i1 %lcmp.mod158)
  br label %.lr.ph.i.i.i28.i.epil

.lr.ph.i.i.i28.i.epil:                            ; preds = %.lr.ph.i.i.i28.i.epil, %.lr.ph.i.i.i28.i.epil.preheader
  %epil.iter156 = phi i32 [ 0, %.lr.ph.i.i.i28.i.epil.preheader ], [ %epil.iter156.next, %.lr.ph.i.i.i28.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter156.next = add i32 %epil.iter156, 1   ; 2 uses
  %epil.iter156.cmp.not = icmp eq i32 %epil.iter156.next, %xtraiter155
  br i1 %epil.iter156.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil, !llvm.loop !4146

.backedge.i.i.i.loopexit138.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod151.not = icmp eq i32 %xtraiter149, 0
  br i1 %lcmp.mod151.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit138.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod152 = icmp ne i32 %xtraiter149, 0
  call void @llvm.assume(i1 %lcmp.mod152)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter150 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter150.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter150.next = add i32 %epil.iter150, 1   ; 2 uses
  %epil.iter150.cmp.not = icmp eq i32 %epil.iter150.next, %xtraiter149
  br i1 %epil.iter150.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !4147

.backedge.i.i.i.loopexit139.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit139.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod148 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod148)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !4148

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit139.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit138.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.epil, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bl = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4187
  %i.bm = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4187
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.ah

bb.ak:                                            ; preds = %bb.aj
  fence seq_cst
  %i.bn = load atomic i64, ptr %i.ap monotonic, align 128, !noalias !4187 ; 3 uses
  %i.bo = lshr i64 %i.bn, 1
  %i.bp = icmp eq i64 %i.bc, %i.bo
  br i1 %i.bp, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %.not.unshifted.i.i.i = xor i64 %i.bn, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %1 = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.bi, %1
  br label %bb.an

bb.am:                                            ; preds = %bb.ak
  %i.bq = and i64 %i.bn, 1
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

bb.an:                                            ; preds = %bb.al, %bb.aj
  %.sroa.01.0.i.i9.i = phi i64 [ %i.bi, %bb.aj ], [ %spec.select.i.i.i, %bb.al ] ; 2 uses
  %i.bs = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.bs, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.bt = cmpxchg weak ptr %i.ac, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i9.i seq_cst acquire, align 8, !noalias !4187
  %.sroa.18.0.in.i.i.i10.i = extractvalue { i64, i1 } %i.bt, 1
  br i1 %.sroa.18.0.in.i.i.i10.i, label %bb.aq, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.bu = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.bu, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ap
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i
  %i.bv = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter149 = and i32 %i.bv, 7                 ; 3 uses
  %i.bw = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bw, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter153 = and i32 %i.bv, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter154 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter154.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter154.next.7 = add i32 %niter154, 8         ; 2 uses
  %niter154.ncmp.7 = icmp eq i32 %niter154.next.7, %unroll_iter153
  br i1 %niter154.ncmp.7, label %.backedge.i.i.i.loopexit138.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.ao
  %..i.i.i.i11.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %i.bx = mul nuw nsw i32 %..i.i.i.i11.i, %..i.i.i.i11.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter = and i32 %i.bx, 5                    ; 3 uses
  %i.by = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.by, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter = and i32 %i.bx, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.i.i.loopexit139.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.aq:                                            ; preds = %bb.ao
  %i.bz = icmp eq i64 %i.bd, 30
  br i1 %i.bz, label %bb.ar, label %bb.at

bb.ar:                                            ; preds = %bb.aq
  %i.ca = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4187 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  br i1 %i.cb, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.ar, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.cf, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.ar ] ; 6 uses
  %i.cc = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.cc, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.as

bb.as:                                            ; preds = %.lr.ph.i37.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i13.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i13.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.cd = mul nuw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter161 = and i32 %i.cd, 7                 ; 3 uses
  %i.ce = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.ce, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter165 = and i32 %i.cd, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter166 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter166.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %niter166.next.7 = add i32 %niter166, 8         ; 2 uses
  %niter166.ncmp.7 = icmp eq i32 %niter166.next.7, %unroll_iter165
  br i1 %niter166.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod163.not = icmp eq i32 %xtraiter161, 0
  br i1 %lcmp.mod163.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod164 = icmp ne i32 %xtraiter161, 0
  call void @llvm.assume(i1 %lcmp.mod164)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter162 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter162.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4187
  %epil.iter162.next = add i32 %epil.iter162, 1   ; 2 uses
  %epil.iter162.cmp.not = icmp eq i32 %epil.iter162.next, %xtraiter161
  br i1 %epil.iter162.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !4149

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.as, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.cf = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.cg = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4187 ; 2 uses
  %i.ch = icmp eq ptr %i.cg, null
  br i1 %i.ch, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.ar
  %.lcssa.i.i.i.i = phi ptr [ %i.ca, %bb.ar ], [ %i.cg, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.ci = and i64 %.sroa.01.0.i.i9.i, -2
  %2 = add i64 %i.ci, 2
  %i.cj = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !4187
  %3 = icmp ne ptr %i.cj, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.ao release, align 8, !noalias !4187
  store atomic i64 %spec.select17.i.i.i, ptr %i.ac release, align 128, !noalias !4187
  br label %bb.at

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.am
  %i.ck = load i32, ptr %i.al, align 8, !range !46, !noundef !17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.ck, -1
  br i1 %.not.i14.i, label %bb.ce, label %bb.cd

bb.at:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.aq
  store ptr %.sroa.012.0.i.i.i, ptr %i.am, align 8, !alias.scope !4187
  store i64 %i.bd, ptr %i.an, align 8, !alias.scope !4187
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8 ; 4 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.cl, i64 %i.bd ; 3 uses
  %i.cn = load atomic i64, ptr %i.cm acquire, align 8
  %i.co = and i64 %i.cn, 1
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.at, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.ct, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.at ] ; 6 uses
  %i.cq = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.cq, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.au

bb.au:                                            ; preds = %.lr.ph.i.i6.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i unwind label %.loopexit.split-lp.loopexit

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.cr = mul nuw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter167 = and i32 %i.cr, 7                 ; 3 uses
  %i.cs = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.cs, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter171 = and i32 %i.cr, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter172 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter172.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter172.next.7 = add i32 %niter172, 8         ; 2 uses
  %niter172.ncmp.7 = icmp eq i32 %niter172.next.7, %unroll_iter171
  br i1 %niter172.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod169.not = icmp eq i32 %xtraiter167, 0
  br i1 %lcmp.mod169.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod170 = icmp ne i32 %xtraiter167, 0
  call void @llvm.assume(i1 %lcmp.mod170)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter168 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter168.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter168.next = add i32 %epil.iter168, 1   ; 2 uses
  %epil.iter168.cmp.not = icmp eq i32 %epil.iter168.next, %xtraiter167
  br i1 %epil.iter168.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !4150

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %bb.au, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.ct = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.cu = load atomic i64, ptr %i.cm acquire, align 8
  %i.cv = and i64 %i.cu, 1
  %i.cw = icmp eq i64 %i.cv, 0
  br i1 %i.cw, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.at
  %i.cx = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %i.cy = icmp eq i64 %i.cx, 31
  br i1 %i.cy, label %.preheader.preheader.i.i.i, label %bb.bz

.preheader.preheader.i.i.i:                       ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.cz = load atomic i64, ptr %i.cl acquire, align 8
  %i.da = and i64 %i.cz, 2
  %i.db = icmp eq i64 %i.da, 0
  br i1 %i.db, label %bb.av, label %.preheader.1.i.i.i

bb.av:                                            ; preds = %.preheader.preheader.i.i.i
  %i.dc = atomicrmw or ptr %i.cl, i64 4 acq_rel, align 8
  %i.dd = and i64 %i.dc, 2
  %i.de = icmp eq i64 %i.dd, 0
  br i1 %i.de, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.av, %.preheader.preheader.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 16 ; 2 uses
  %i.dg = load atomic i64, ptr %i.df acquire, align 8
  %i.dh = and i64 %i.dg, 2
  %i.di = icmp eq i64 %i.dh, 0
  br i1 %i.di, label %bb.aw, label %.preheader.2.i.i.i

bb.aw:                                            ; preds = %.preheader.1.i.i.i
  %i.dj = atomicrmw or ptr %i.df, i64 4 acq_rel, align 8
  %i.dk = and i64 %i.dj, 2
  %i.dl = icmp eq i64 %i.dk, 0
  br i1 %i.dl, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.2.i.i.i

.preheader.2.i.i.i:                               ; preds = %bb.aw, %.preheader.1.i.i.i
  %i.dm = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 24 ; 2 uses
  %i.dn = load atomic i64, ptr %i.dm acquire, align 8
  %i.do = and i64 %i.dn, 2
  %i.dp = icmp eq i64 %i.do, 0
  br i1 %i.dp, label %bb.ax, label %.preheader.3.i.i.i

bb.ax:                                            ; preds = %.preheader.2.i.i.i
  %i.dq = atomicrmw or ptr %i.dm, i64 4 acq_rel, align 8
  %i.dr = and i64 %i.dq, 2
  %i.ds = icmp eq i64 %i.dr, 0
  br i1 %i.ds, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.3.i.i.i

.preheader.3.i.i.i:                               ; preds = %bb.ax, %.preheader.2.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 32 ; 2 uses
  %i.du = load atomic i64, ptr %i.dt acquire, align 8
  %i.dv = and i64 %i.du, 2
  %i.dw = icmp eq i64 %i.dv, 0
  br i1 %i.dw, label %bb.ay, label %.preheader.4.i.i.i

bb.ay:                                            ; preds = %.preheader.3.i.i.i
  %i.dx = atomicrmw or ptr %i.dt, i64 4 acq_rel, align 8
  %i.dy = and i64 %i.dx, 2
  %i.dz = icmp eq i64 %i.dy, 0
  br i1 %i.dz, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.4.i.i.i

.preheader.4.i.i.i:                               ; preds = %bb.ay, %.preheader.3.i.i.i
  %i.ea = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 40 ; 2 uses
  %i.eb = load atomic i64, ptr %i.ea acquire, align 8
  %i.ec = and i64 %i.eb, 2
  %i.ed = icmp eq i64 %i.ec, 0
  br i1 %i.ed, label %bb.az, label %.preheader.5.i.i.i

bb.az:                                            ; preds = %.preheader.4.i.i.i
  %i.ee = atomicrmw or ptr %i.ea, i64 4 acq_rel, align 8
  %i.ef = and i64 %i.ee, 2
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.5.i.i.i

.preheader.5.i.i.i:                               ; preds = %bb.az, %.preheader.4.i.i.i
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 48 ; 2 uses
  %i.ei = load atomic i64, ptr %i.eh acquire, align 8
  %i.ej = and i64 %i.ei, 2
  %i.ek = icmp eq i64 %i.ej, 0
  br i1 %i.ek, label %bb.ba, label %.preheader.6.i.i.i

bb.ba:                                            ; preds = %.preheader.5.i.i.i
  %i.el = atomicrmw or ptr %i.eh, i64 4 acq_rel, align 8
  %i.em = and i64 %i.el, 2
  %i.en = icmp eq i64 %i.em, 0
  br i1 %i.en, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.6.i.i.i

.preheader.6.i.i.i:                               ; preds = %bb.ba, %.preheader.5.i.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 56 ; 2 uses
  %i.ep = load atomic i64, ptr %i.eo acquire, align 8
  %i.eq = and i64 %i.ep, 2
  %i.er = icmp eq i64 %i.eq, 0
  br i1 %i.er, label %bb.bb, label %.preheader.7.i.i.i

bb.bb:                                            ; preds = %.preheader.6.i.i.i
  %i.es = atomicrmw or ptr %i.eo, i64 4 acq_rel, align 8
  %i.et = and i64 %i.es, 2
  %i.eu = icmp eq i64 %i.et, 0
  br i1 %i.eu, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.7.i.i.i

.preheader.7.i.i.i:                               ; preds = %bb.bb, %.preheader.6.i.i.i
  %i.ev = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 64 ; 2 uses
  %i.ew = load atomic i64, ptr %i.ev acquire, align 8
  %i.ex = and i64 %i.ew, 2
  %i.ey = icmp eq i64 %i.ex, 0
  br i1 %i.ey, label %bb.bc, label %.preheader.8.i.i.i

bb.bc:                                            ; preds = %.preheader.7.i.i.i
  %i.ez = atomicrmw or ptr %i.ev, i64 4 acq_rel, align 8
  %i.fa = and i64 %i.ez, 2
  %i.fb = icmp eq i64 %i.fa, 0
  br i1 %i.fb, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.8.i.i.i

.preheader.8.i.i.i:                               ; preds = %bb.bc, %.preheader.7.i.i.i
  %i.fc = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 72 ; 2 uses
  %i.fd = load atomic i64, ptr %i.fc acquire, align 8
  %i.fe = and i64 %i.fd, 2
  %i.ff = icmp eq i64 %i.fe, 0
  br i1 %i.ff, label %bb.bd, label %.preheader.9.i.i.i

bb.bd:                                            ; preds = %.preheader.8.i.i.i
  %i.fg = atomicrmw or ptr %i.fc, i64 4 acq_rel, align 8
  %i.fh = and i64 %i.fg, 2
  %i.fi = icmp eq i64 %i.fh, 0
  br i1 %i.fi, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.9.i.i.i

end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !6411
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48, !noalias !6411
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !6411
  %.not.i.i.not = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6412
  store ptr %0, ptr %i.a, align 8, !noalias !6412
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !6412
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #45
          to label %bb.g unwind label %bb.f, !noalias !6413

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #46
          to label %common.resume unwind label %bb.h, !noalias !6413

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47, !noalias !6413
  unreachable

common.resume:                                    ; preds = %.body, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.n, %bb.f ], [ %i.z, %.body ]
  resume { ptr, i32 } %common.resume.op

_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit
  %i.p = trunc nuw i8 %.sroa.01.0.i.i to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.q = atomicrmw add ptr %.0.val, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.n, label %bb.i

bb.i:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %1, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr null, ptr %i.u, align 8
  store ptr %.0.val, ptr %i.b, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6414, !noalias !6415, !noundef !17 ; 4 uses
  %i.x = load i64, ptr %i.s, align 8, !range !21, !alias.scope !6414, !noalias !6415, !noundef !17
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE8grow_oneCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.o unwind label %bb.k, !noalias !6415

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw sub ptr %.0.val, i64 1 release, align 8, !noalias !6416
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #48
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit(ptr nonnull %0, i8 %.sroa.01.0.i.i) #46
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6414, !noalias !6415, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !6414, !noalias !6415
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ah = icmp slt i64 %i.w, 384307168202282325
  tail call void @llvm.assume(i1 %i.ah)
  %i.ai = icmp eq i64 %i.ag, 0
  br i1 %i.ai, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !17 ; 2 uses
  %i.al = icmp ult i64 %i.ak, 384307168202282326
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.ak, 0
  %i.an = zext i1 %i.am to i8
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.0.0 = phi i8 [ %i.an, %bb.p ], [ 0, %bb.o ]
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 56
  store atomic i8 %.sroa.0.0, ptr %i.ao seq_cst, align 8
  br i1 %i.p, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ap = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.aq = and i64 %i.ap, 9223372036854775807
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.s, !prof !16

bb.s:                                             ; preds = %bb.r
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #48
  br i1 %i.as, label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  store atomic i8 1, ptr %i.k monotonic, align 4
  br label %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i

_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %i.at = atomicrmw xchg ptr %0, i32 0 release, align 4
  %i.au = icmp eq i32 %i.at, 2
  br i1 %i.au, label %bb.u, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit, !prof !23

bb.u:                                             ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i
  tail call void @_RNvMNtNtNtNtCsaL1QbXo9JQH_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %0)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit.exit: ; preds = %_RNvMNtNtCsaL1QbXo9JQH_3std4sync6poisonNtB2_4Flag4done.exit.i.i, %bb.u
  ret void

bb.v:                                             ; preds = %.body
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #47
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvCsc4241EHy6Do_9typst_kit(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noundef nonnull align 128 %1, i64 %2, i32 noundef range(i32 -1, 1000000000) %3) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.427 = alloca [48 x i8], align 8          ; 2 uses
  %i.g = alloca [40 x i8], align 8                ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  store i64 %2, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store i32 %3, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.n = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBa_7Context4with7CONTEXT0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.59.0..sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.5.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.g, i8 0, i64 40, i1 false)
  br label %bb.b

bb.b:                                             ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !6460)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !6460
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6460
  br label %bb.c

bb.c:                                             ; preds = %.backedge.i, %bb.b
  %.sroa.0.043.i = phi i32 [ 0, %bb.b ], [ %.sroa.0.043.be.i, %.backedge.i ] ; 14 uses
  %.sroa.012.0.i = phi ptr [ %i.q, %bb.b ], [ %i.ab, %.backedge.i ] ; 8 uses
  %.sroa.07.0.i = phi i64 [ %i.p, %bb.b ], [ %i.aa, %.backedge.i ] ; 5 uses
  %i.r = lshr i64 %.sroa.07.0.i, 1                ; 2 uses
  %i.s = and i64 %i.r, 31                         ; 6 uses
  %i.t = icmp eq i64 %i.s, 31
  br i1 %i.t, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.u = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.u, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i, label %.backedge.sink.split.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i: ; preds = %bb.d
  %.not.i.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i.i, label %.backedge.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.v = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter107 = and i32 %i.v, 7                  ; 3 uses
  %i.w = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.w, label %.lr.ph.i.i.epil.preheader, label %.lr.ph.i.i.preheader.new

.lr.ph.i.i.preheader.new:                         ; preds = %.lr.ph.i.i.preheader
  %unroll_iter111 = and i32 %i.v, 56
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i, %.lr.ph.i.i.preheader.new
  %niter112 = phi i32 [ 0, %.lr.ph.i.i.preheader.new ], [ %niter112.next.7, %.lr.ph.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6460
  br label %.backedge.i

.backedge.i.loopexit.unr-lcssa:                   ; preds = %.lr.ph.i.i
  %lcmp.mod109.not = icmp eq i32 %xtraiter107, 0
  br i1 %lcmp.mod109.not, label %.backedge.i, label %.lr.ph.i.i.epil.preheader

.lr.ph.i.i.epil.preheader:                        ; preds = %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.preheader
  %lcmp.mod110 = icmp ne i32 %xtraiter107, 0
  call void @llvm.assume(i1 %lcmp.mod110)
  br label %.lr.ph.i.i.epil

.lr.ph.i.i.epil:                                  ; preds = %.lr.ph.i.i.epil, %.lr.ph.i.i.epil.preheader
  %epil.iter108 = phi i32 [ 0, %.lr.ph.i.i.epil.preheader ], [ %epil.iter108.next, %.lr.ph.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !6419

.backedge.i.loopexit92.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !6420

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i33.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i33.i.epil.preheader

.lr.ph.i33.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i33.i.epil

.lr.ph.i33.i.epil:                                ; preds = %.lr.ph.i33.i.epil, %.lr.ph.i33.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i33.i.epil, !llvm.loop !6421

.backedge.i:                                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.epil, %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !6460
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6460
  %.sroa.0.043.be.i = add i32 %.sroa.0.043.i, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !6460 ; 3 uses
  %i.ad = lshr i64 %i.ac, 1
  %i.ae = icmp eq i64 %i.r, %i.ad
  br i1 %i.ae, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not.unshifted.i = xor i64 %i.ac, %.sroa.07.0.i
  %.not.i = icmp ugt i64 %.not.unshifted.i, 63
  %4 = zext i1 %.not.i to i64
  %spec.select.i = or disjoint i64 %i.x, %4
  br label %bb.i

bb.h:                                             ; preds = %bb.f
  %i.af = and i64 %i.ac, 1
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread

bb.i:                                             ; preds = %bb.g, %bb.e
  %.sroa.01.0.i = phi i64 [ %i.x, %bb.e ], [ %spec.select.i, %bb.g ] ; 2 uses
  %i.ah = icmp eq ptr %.sroa.012.0.i, null
  br i1 %i.ah, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ai = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !6460
  %.sroa.18.0.in.i.i = extractvalue { i64, i1 } %i.ai, 1
  br i1 %.sroa.18.0.in.i.i, label %bb.l, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i

bb.k:                                             ; preds = %bb.i
  %i.aj = icmp ult i32 %.sroa.0.043.i, 7
  br i1 %i.aj, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i, label %.backedge.sink.split.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i: ; preds = %bb.k
  %.not.i20.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i20.i, label %.backedge.i, label %.lr.ph.i23.i.preheader

.lr.ph.i23.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i
  %i.ak = mul nuw i32 %.sroa.0.043.i, %.sroa.0.043.i ; 2 uses
  %xtraiter101 = and i32 %i.ak, 7                 ; 3 uses
  %i.al = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.al, label %.lr.ph.i23.i.epil.preheader, label %.lr.ph.i23.i.preheader.new

.lr.ph.i23.i.preheader.new:                       ; preds = %.lr.ph.i23.i.preheader
  %unroll_iter105 = and i32 %i.ak, 56
  br label %.lr.ph.i23.i

.lr.ph.i23.i:                                     ; preds = %.lr.ph.i23.i, %.lr.ph.i23.i.preheader.new
  %niter106 = phi i32 [ 0, %.lr.ph.i23.i.preheader.new ], [ %niter106.next.7, %.lr.ph.i23.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter106.next.7 = add i32 %niter106, 8         ; 2 uses
  %niter106.ncmp.7 = icmp eq i32 %niter106.next.7, %unroll_iter105
  br i1 %niter106.ncmp.7, label %.backedge.i.loopexit92.unr-lcssa, label %.lr.ph.i23.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i: ; preds = %bb.j
  %..i.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i, i32 6) ; 2 uses
  %i.am = mul nuw nsw i32 %..i.i.i, %..i.i.i      ; 2 uses
  %.not.i30.i = icmp eq i32 %.sroa.0.043.i, 0
  br i1 %.not.i30.i, label %.backedge.i, label %.lr.ph.i33.i.preheader

.lr.ph.i33.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i
  %xtraiter = and i32 %i.am, 5                    ; 3 uses
  %i.an = icmp ult i32 %.sroa.0.043.i, 3
  br i1 %i.an, label %.lr.ph.i33.i.epil.preheader, label %.lr.ph.i33.i.preheader.new

.lr.ph.i33.i.preheader.new:                       ; preds = %.lr.ph.i33.i.preheader
  %unroll_iter = and i32 %i.am, 56
  br label %.lr.ph.i33.i

.lr.ph.i33.i:                                     ; preds = %.lr.ph.i33.i, %.lr.ph.i33.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i33.i

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.s, 30
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8, !noalias !6460 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i37.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.as, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i37.i
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6460
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i: ; preds = %.lr.ph.i37.i
  %.not.i.i.i = icmp eq i32 %.sroa.0.02.i.i, 0
  br i1 %.not.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.preheader

.lr.ph.i.i.i.preheader:                           ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i
  %i.at = mul nuw i32 %.sroa.0.02.i.i, %.sroa.0.02.i.i ; 2 uses
  %xtraiter113 = and i32 %i.at, 7                 ; 3 uses
  %i.au = icmp ult i32 %.sroa.0.02.i.i, 3
  br i1 %i.au, label %.lr.ph.i.i.i.epil.preheader, label %.lr.ph.i.i.i.preheader.new

.lr.ph.i.i.i.preheader.new:                       ; preds = %.lr.ph.i.i.i.preheader
  %unroll_iter117 = and i32 %i.at, 56
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %.lr.ph.i.i.i.preheader.new
  %niter118 = phi i32 [ 0, %.lr.ph.i.i.i.preheader.new ], [ %niter118.next.7, %.lr.ph.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %niter118.next.7 = add i32 %niter118, 8         ; 2 uses
  %niter118.ncmp.7 = icmp eq i32 %niter118.next.7, %unroll_iter117
  br i1 %niter118.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i
  %lcmp.mod115.not = icmp eq i32 %xtraiter113, 0
  br i1 %lcmp.mod115.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil.preheader

.lr.ph.i.i.i.epil.preheader:                      ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.preheader
  %lcmp.mod116 = icmp ne i32 %xtraiter113, 0
  call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.epil

.lr.ph.i.i.i.epil:                                ; preds = %.lr.ph.i.i.i.epil, %.lr.ph.i.i.i.epil.preheader
  %epil.iter114 = phi i32 [ 0, %.lr.ph.i.i.i.epil.preheader ], [ %epil.iter114.next, %.lr.ph.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6460
  %epil.iter114.next = add i32 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i32 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6422

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.av = add i32 %.sroa.0.02.i.i, 1
  %i.aw = load atomic ptr, ptr %i.ap acquire, align 8, !noalias !6460 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.aw, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.ay = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.ba = load atomic ptr, ptr %i.az monotonic, align 8, !noalias !6460
  %6 = icmp ne ptr %i.ba, null
  %7 = zext i1 %6 to i64
  %spec.select17.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !6460
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !6460
  br label %bb.o

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.h
  %i.bb = load i32, ptr %i.i, align 8, !range !46, !noundef !17 ; 2 uses
  %.not = icmp eq i32 %i.bb, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !6460
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !6460
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 3 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8, !noalias !6461
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bk, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bh = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bh, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6461
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10: ; preds = %.lr.ph.i.i6
  %.not.i.i.i11 = icmp eq i32 %.sroa.0.02.i.i7, 0
  br i1 %.not.i.i.i11, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.preheader

.lr.ph.i.i.i14.preheader:                         ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10
  %i.bi = mul nuw i32 %.sroa.0.02.i.i7, %.sroa.0.02.i.i7 ; 2 uses
  %xtraiter119 = and i32 %i.bi, 7                 ; 3 uses
  %i.bj = icmp ult i32 %.sroa.0.02.i.i7, 3
  br i1 %i.bj, label %.lr.ph.i.i.i14.epil.preheader, label %.lr.ph.i.i.i14.preheader.new

.lr.ph.i.i.i14.preheader.new:                     ; preds = %.lr.ph.i.i.i14.preheader
  %unroll_iter123 = and i32 %i.bi, 56
  br label %.lr.ph.i.i.i14

.lr.ph.i.i.i14:                                   ; preds = %.lr.ph.i.i.i14, %.lr.ph.i.i.i14.preheader.new
  %niter124 = phi i32 [ 0, %.lr.ph.i.i.i14.preheader.new ], [ %niter124.next.7, %.lr.ph.i.i.i14 ]
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  call void @llvm.x86.sse2.pause(), !noalias !6461
  %niter124.next.7 = add i32 %niter124, 8         ; 2 uses
  %niter124.ncmp.7 = icmp eq i32 %niter124.next.7, %unroll_iter123
  br i1 %niter124.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, label %.lr.ph.i.i.i14

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14
  %lcmp.mod121.not = icmp eq i32 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil.preheader

.lr.ph.i.i.i14.epil.preheader:                    ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.preheader
  %lcmp.mod122 = icmp ne i32 %xtraiter119, 0
  call void @llvm.assume(i1 %lcmp.mod122)
  br label %.lr.ph.i.i.i14.epil

.lr.ph.i.i.i14.epil:                              ; preds = %.lr.ph.i.i.i14.epil, %.lr.ph.i.i.i14.epil.preheader
  %epil.iter120 = phi i32 [ 0, %.lr.ph.i.i.i14.epil.preheader ], [ %epil.iter120.next, %.lr.ph.i.i.i14.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6461
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !6425

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bk = add i32 %.sroa.0.02.i.i7, 1
  %i.bl = load atomic i64, ptr %i.bd acquire, align 8, !noalias !6461
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bc, align 8, !noalias !6461 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427.0..sroa_idx, i64 48, i1 false)
  %i.bo = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 31
  br i1 %i.bp, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.by, %bb.s ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !6461
  %i.bt = and i64 %i.bs, 2
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bv = atomicrmw or ptr %i.br, i64 4 acq_rel, align 8, !noalias !6461
  %i.bw = and i64 %i.bv, 2
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.by = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !6461
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !noalias !6461
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.by, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i
  %i.ch = atomicrmw or ptr %i.bd, i64 2 acq_rel, align 8, !noalias !6461
  %i.ci = and i64 %i.ch, 4
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.u

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #42, !noalias !6461
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp samesign ult i64 %i.s, 29
  br i1 %i.ck, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cl, %bb.w ], [ %i.bo, %bb.u ] ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8, !noalias !6461
  %i.cp = and i64 %i.co, 2
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cr = atomicrmw or ptr %i.cn, i64 4 acq_rel, align 8, !noalias !6461
  %i.cs = and i64 %i.cr, 2
  %i.ct = icmp eq i64 %i.cs, 0
  br i1 %i.ct, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.w

bb.w:                                             ; preds = %bb.v, %.lr.ph.i3.i
  %exitcond.not.i5.i = icmp eq i64 %i.cl, 30
  br i1 %exitcond.not.i5.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i, label %.lr.ph.i3.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.v, %bb.q, %bb.r, %bb.t, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i
  %i.cu = icmp eq i64 %.sroa.026.0.copyload, -2
  br i1 %i.cu, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit.thread, label %bb.ao

bb.x:                                             ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit
  %i.cv = load i64, ptr %i.h, align 8, !noundef !17 ; 2 uses
  %i.cw = call { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now() ; 2 uses
  %i.cx = extractvalue { i64, i32 } %i.cw, 0      ; 2 uses
  %i.cy = icmp eq i64 %i.cx, %i.cv
  br i1 %i.cy, label %.split, label %bb.al

bb.y:                                             ; preds = %.split, %bb.al, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6462
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cz = load i8, ptr %i.o, align 8, !range !18, !noalias !6463, !noundef !17
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.y
  %i.db = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !6462 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.db, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6462, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6462
  %.not.i.i.i18 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !23

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6462
  %i.de = call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !6462 ; 2 uses
  store ptr %i.de, ptr %i.e, align 8, !noalias !6462
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6462
  store ptr %i.g, ptr %i.c, align 8, !noalias !6462
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.de)
          to label %bb.ac unwind label %bb.aa, !noalias !6462

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
end_hunk_2
