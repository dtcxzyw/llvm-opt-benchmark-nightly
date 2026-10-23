Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_kit-e87e91e97b3e7920.typst_kit.8c87759b606a0684-cgu.0?download=true
inline.NumInlined: 3957
inline.NumDeleted: 1749
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 63
loop-unroll.NumUnrolled: 76
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsbGiR87yI9G2_9tiny_http4util10sequential16SequentialReaderINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtBG_18refined_tcp_stream16RefinedTcpStreamEEECsc4241EHy6Do_9typst_kit:bb.a
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i: ; preds = %bb.t
  %i.db = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.bb, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc25.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304 ; 2 uses

.noexc25.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i: ; preds = %.noexc25.i, %bb.t
  %.sroa.0.0.i.i.i2.i.i.i.i.i = phi ptr [ %i.db, %.noexc25.i ], [ %i.bb, %bb.t ] ; 4 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1311, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1311
  %.not.i.i.i.i.i.i = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i.i.i.i, label %bb.u, label %bb.aa, !prof !23

bb.u:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !1311
  %i.de = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc26.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304 ; 2 uses

.noexc26.i:                                       ; preds = %bb.u
  store ptr %i.de, ptr %i.z, align 8, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !1311
  store ptr %i.ad, ptr %i.x, align 8, !noalias !1311
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.5.0..sroa_idx5.i.i.i.i.i.i, align 8, !noalias !1307
  store ptr %i.ae, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1307
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.x, ptr nonnull %i.de)
          to label %bb.x unwind label %bb.v, !noalias !1311

bb.v:                                             ; preds = %.noexc26.i
  %i.df = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.dg = load ptr, ptr %i.z, align 8, !alias.scope !1316, !noalias !1311, !nonnull !17, !noundef !17
  %i.dh = atomicrmw add ptr %i.dg, i64 -1 release, align 8, !noalias !1317
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.w, label %.body.i

bb.w:                                             ; preds = %bb.v
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #46
          to label %.body.i unwind label %bb.z, !noalias !1311

bb.x:                                             ; preds = %.noexc26.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !1311
  call void @llvm.experimental.noalias.scope.decl(metadata !1318)
  call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  %i.dj = load ptr, ptr %i.z, align 8, !alias.scope !1321, !noalias !1311, !nonnull !17, !noundef !17
  %i.dk = atomicrmw add ptr %i.dj, i64 -1 release, align 8, !noalias !1322
  %i.dl = icmp eq i64 %i.dk, 1
  br i1 %i.dl, label %bb.y, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i

bb.y:                                             ; preds = %bb.x
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.z) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z), !noalias !1311
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.z:                                             ; preds = %bb.af, %bb.w
  %i.dm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !1311
  unreachable

bb.aa:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !1311
  store ptr %i.dd, ptr %i.y, align 8, !noalias !1311
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dd, i64 24
  store atomic i64 0, ptr %i.dn release, align 8, !noalias !1311
  %i.do = getelementptr inbounds nuw i8, ptr %i.dd, i64 32
  store atomic ptr null, ptr %i.do release, align 8, !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !1311
  store ptr %i.ad, ptr %i.w, align 8, !noalias !1311
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.59.0..sroa_idx10.i.i.i.i.i.i, align 8, !noalias !1307
  store ptr %i.ae, ptr %.sroa.7.8..sroa.59.0..sroa_idx10.i.i.i.sroa_idx.i.i.i, align 8, !noalias !1307
  invoke fastcc void @_RNCNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB6_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.w, ptr nonnull %i.dd)
          to label %bb.ab unwind label %bb.ae, !noalias !1311

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !1311
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !1311
  %i.dp = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1311, !noundef !17 ; 3 uses
  store ptr %i.dp, ptr %i.v, align 8, !noalias !1311
  store ptr %i.dd, ptr %.sroa.0.0.i.i.i2.i.i.i.i.i, align 8, !noalias !1311
  %i.dq = icmp eq ptr %i.dp, null
  br i1 %i.dq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.dr = atomicrmw add ptr %i.dp, i64 -1 release, align 8, !noalias !1323
  %i.ds = icmp eq i64 %i.dr, 1
  br i1 %i.ds, label %bb.ad, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i

bb.ad:                                            ; preds = %bb.ac
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.v) #46
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i: ; preds = %bb.ad, %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !1311
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !1311
  br label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.ae:                                            ; preds = %bb.aa
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.du = atomicrmw add ptr %i.dd, i64 -1 release, align 8, !noalias !1324
  %i.dv = icmp eq i64 %i.du, 1
  br i1 %i.dv, label %bb.af, label %.body.i

bb.af:                                            ; preds = %bb.ae
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.y) #46
          to label %.body.i unwind label %bb.z, !noalias !1311

_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %.noexc25.i
  invoke fastcc void @_RNCINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB5_7Context4withNCNvMs_NtB7_5arrayINtB1a_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs0_0Csc4241EHy6Do_9typst_kit(ptr nonnull %i.aa) #48
          to label %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs_NtB5_5arrayINtB18_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs_NtB1S_5arrayINtB31_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextEECsc4241EHy6Do_9typst_kit.exit.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context7ContextECsc4241EHy6Do_9typst_kit.exit19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !1311
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
  store i8 0, ptr %i.af, align 8, !alias.scope !1306, !noalias !1305
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

bb.ai:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i
  store i8 1, ptr %i.af, align 8, !alias.scope !1306, !noalias !1305
  br label %bb.ak

bb.aj:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.af, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.0.i.i.i, i64 40, i1 false), !noalias !1305
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.af, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.6.i.i.i, i64 12, i1 false), !noalias !1305
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.sroa.4.0.copyload5.i.sink.i.i = phi i32 [ %.sroa.4.0.copyload5.i.i.i, %bb.aj ], [ 2, %bb.ai ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5arrayINtB4_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.ak, %bb.ah
  %i.dy = phi i32 [ 2, %bb.ah ], [ %.sroa.4.0.copyload5.i.sink.i.i, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !1307
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !1305
  br label %bb.ee

bb.al:                                            ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1325)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.028.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.530.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1305
  %i.dz = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store i32 -1, ptr %i.dz, align 8, !noalias !1326
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1326
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
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.t, i8 0, i64 40, i1 false), !noalias !1326
  br label %bb.am

bb.am:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.al
  call void @llvm.experimental.noalias.scope.decl(metadata !1327)
  %i.eg = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1328
  %i.eh = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1328
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
  %xtraiter251 = and i32 %i.em, 7                 ; 3 uses
  %i.en = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.en, label %.lr.ph.i.i.i23.i.i.epil.preheader, label %.lr.ph.i.i.i23.i.i.preheader.new

.lr.ph.i.i.i23.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i23.i.i.preheader
  %unroll_iter255 = and i32 %i.em, 56
  br label %.lr.ph.i.i.i23.i.i

.lr.ph.i.i.i23.i.i:                               ; preds = %.lr.ph.i.i.i23.i.i, %.lr.ph.i.i.i23.i.i.preheader.new
  %niter256 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.preheader.new ], [ %niter256.next.7, %.lr.ph.i.i.i23.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %niter256.next.7 = add i32 %niter256, 8         ; 2 uses
  %niter256.ncmp.7 = icmp eq i32 %niter256.next.7, %unroll_iter255
  br i1 %niter256.ncmp.7, label %.backedge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i23.i.i

bb.ap:                                            ; preds = %bb.an
  %i.eo = add i64 %.sroa.07.0.i.i.i.i, 2          ; 2 uses
  %i.ep = and i64 %.sroa.07.0.i.i.i.i, 1
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.aq, label %bb.at

.backedge.sink.split.i.i.i.i:                     ; preds = %bb.av, %bb.ao
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

.backedge.i.i.i.i.loopexit.unr-lcssa:             ; preds = %.lr.ph.i.i.i23.i.i
  %lcmp.mod253.not = icmp eq i32 %xtraiter251, 0
  br i1 %lcmp.mod253.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil.preheader

.lr.ph.i.i.i23.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.preheader
  %lcmp.mod254 = icmp ne i32 %xtraiter251, 0
  call void @llvm.assume(i1 %lcmp.mod254)
  br label %.lr.ph.i.i.i23.i.i.epil

.lr.ph.i.i.i23.i.i.epil:                          ; preds = %.lr.ph.i.i.i23.i.i.epil, %.lr.ph.i.i.i23.i.i.epil.preheader
  %epil.iter252 = phi i32 [ 0, %.lr.ph.i.i.i23.i.i.epil.preheader ], [ %epil.iter252.next, %.lr.ph.i.i.i23.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %epil.iter252.next = add i32 %epil.iter252, 1   ; 2 uses
  %epil.iter252.cmp.not = icmp eq i32 %epil.iter252.next, %xtraiter251
  br i1 %epil.iter252.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i.i.i23.i.i.epil, !llvm.loop !1164

.backedge.i.i.i.i.loopexit214.unr-lcssa:          ; preds = %.lr.ph.i23.i.i.i.i
  %lcmp.mod247.not = icmp eq i32 %xtraiter245, 0
  br i1 %lcmp.mod247.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit214.unr-lcssa, %.lr.ph.i23.i.i.i.i.preheader
  %lcmp.mod248 = icmp ne i32 %xtraiter245, 0
  call void @llvm.assume(i1 %lcmp.mod248)
  br label %.lr.ph.i23.i.i.i.i.epil

.lr.ph.i23.i.i.i.i.epil:                          ; preds = %.lr.ph.i23.i.i.i.i.epil, %.lr.ph.i23.i.i.i.i.epil.preheader
  %epil.iter246 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.epil.preheader ], [ %epil.iter246.next, %.lr.ph.i23.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %epil.iter246.next = add i32 %epil.iter246, 1   ; 2 uses
  %epil.iter246.cmp.not = icmp eq i32 %epil.iter246.next, %xtraiter245
  br i1 %epil.iter246.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i23.i.i.i.i.epil, !llvm.loop !1165

.backedge.i.i.i.i.loopexit215.unr-lcssa:          ; preds = %.lr.ph.i33.i.i.i.i
  %lcmp.mod241.not = icmp eq i32 %xtraiter239, 0
  br i1 %lcmp.mod241.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.i.epil.preheader:                ; preds = %.backedge.i.i.i.i.loopexit215.unr-lcssa, %.lr.ph.i33.i.i.i.i.preheader
  %lcmp.mod242 = icmp ne i32 %xtraiter239, 0
  call void @llvm.assume(i1 %lcmp.mod242)
  br label %.lr.ph.i33.i.i.i.i.epil

.lr.ph.i33.i.i.i.i.epil:                          ; preds = %.lr.ph.i33.i.i.i.i.epil, %.lr.ph.i33.i.i.i.i.epil.preheader
  %epil.iter240 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.epil.preheader ], [ %epil.iter240.next, %.lr.ph.i33.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %epil.iter240.next = add i32 %epil.iter240, 1   ; 2 uses
  %epil.iter240.cmp.not = icmp eq i32 %epil.iter240.next, %xtraiter239
  br i1 %epil.iter240.cmp.not, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.epil, !llvm.loop !1166

.backedge.i.i.i.i:                                ; preds = %.backedge.i.i.i.i.loopexit215.unr-lcssa, %.lr.ph.i33.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit214.unr-lcssa, %.lr.ph.i23.i.i.i.i.epil, %.backedge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i23.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i.i, %.backedge.sink.split.i.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i19.i.i
  %i.er = load atomic i64, ptr %.sroa.5.0.copyload.i acquire, align 8, !noalias !1328
  %i.es = load atomic ptr, ptr %i.ec acquire, align 8, !noalias !1328
  %.sroa.0.043.be.i.i.i.i = add i32 %.sroa.0.043.i.i.i.i, 1
  br label %bb.an

bb.aq:                                            ; preds = %bb.ap
  fence seq_cst
  %i.et = load atomic i64, ptr %i.ed monotonic, align 8, !noalias !1328 ; 3 uses
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
  %i.ez = cmpxchg weak ptr %.sroa.5.0.copyload.i, i64 %.sroa.07.0.i.i.i.i, i64 %.sroa.01.0.i.i6.i.i seq_cst acquire, align 8, !noalias !1328
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
  %xtraiter245 = and i32 %i.fb, 7                 ; 3 uses
  %i.fc = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.fc, label %.lr.ph.i23.i.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.i.preheader.new

.lr.ph.i23.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i23.i.i.i.i.preheader
  %unroll_iter249 = and i32 %i.fb, 56
  br label %.lr.ph.i23.i.i.i.i

.lr.ph.i23.i.i.i.i:                               ; preds = %.lr.ph.i23.i.i.i.i, %.lr.ph.i23.i.i.i.i.preheader.new
  %niter250 = phi i32 [ 0, %.lr.ph.i23.i.i.i.i.preheader.new ], [ %niter250.next.7, %.lr.ph.i23.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %niter250.next.7 = add i32 %niter250, 8         ; 2 uses
  %niter250.ncmp.7 = icmp eq i32 %niter250.next.7, %unroll_iter249
  br i1 %niter250.ncmp.7, label %.backedge.i.i.i.i.loopexit214.unr-lcssa, label %.lr.ph.i23.i.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i: ; preds = %bb.au
  %..i.i.i.i8.i.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i.i, i32 6) ; 2 uses
  %i.fd = mul nuw nsw i32 %..i.i.i.i8.i.i, %..i.i.i.i8.i.i ; 2 uses
  %.not.i30.i.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i.i, 0
  br i1 %.not.i30.i.i.i.i, label %.backedge.i.i.i.i, label %.lr.ph.i33.i.i.i.i.preheader

.lr.ph.i33.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i.i
  %xtraiter239 = and i32 %i.fd, 5                 ; 3 uses
  %i.fe = icmp ult i32 %.sroa.0.043.i.i.i.i, 3
  br i1 %i.fe, label %.lr.ph.i33.i.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.i.preheader.new

.lr.ph.i33.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i33.i.i.i.i.preheader
  %unroll_iter243 = and i32 %i.fd, 56
  br label %.lr.ph.i33.i.i.i.i

.lr.ph.i33.i.i.i.i:                               ; preds = %.lr.ph.i33.i.i.i.i, %.lr.ph.i33.i.i.i.i.preheader.new
  %niter244 = phi i32 [ 0, %.lr.ph.i33.i.i.i.i.preheader.new ], [ %niter244.next.7, %.lr.ph.i33.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %niter244.next.7 = add i32 %niter244, 8         ; 2 uses
  %niter244.ncmp.7 = icmp eq i32 %niter244.next.7, %unroll_iter243
  br i1 %niter244.ncmp.7, label %.backedge.i.i.i.i.loopexit215.unr-lcssa, label %.lr.ph.i33.i.i.i.i

bb.aw:                                            ; preds = %bb.au
  %i.ff = icmp eq i64 %i.ej, 30
  br i1 %i.ff, label %bb.ax, label %bb.az

bb.ax:                                            ; preds = %bb.aw
  %i.fg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i.i, i64 1984 ; 2 uses
  %i.fh = load atomic ptr, ptr %i.fg acquire, align 8, !noalias !1328 ; 2 uses
  %i.fi = icmp eq ptr %i.fh, null
  br i1 %i.fi, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i37.i.i.i.i:                               ; preds = %bb.ax, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i
  %.sroa.0.02.i.i.i.i.i = phi i32 [ %i.fm, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ], [ 0, %bb.ax ] ; 6 uses
  %i.fj = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 7
  br i1 %i.fj, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, label %bb.ay

bb.ay:                                            ; preds = %.lr.ph.i37.i.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i.i
  %.not.i.i.i.i10.i.i = icmp eq i32 %.sroa.0.02.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i10.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i
  %i.fk = mul nuw i32 %.sroa.0.02.i.i.i.i.i, %.sroa.0.02.i.i.i.i.i ; 2 uses
  %xtraiter257 = and i32 %i.fk, 7                 ; 3 uses
  %i.fl = icmp ult i32 %.sroa.0.02.i.i.i.i.i, 3
  br i1 %i.fl, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter261 = and i32 %i.fk, 56
  br label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %niter262 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter262.next.7, %.lr.ph.i.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %niter262.next.7 = add i32 %niter262, 8         ; 2 uses
  %niter262.ncmp.7 = icmp eq i32 %niter262.next.7, %unroll_iter261
  br i1 %niter262.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod259.not = icmp eq i32 %xtraiter257, 0
  br i1 %lcmp.mod259.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %lcmp.mod260 = icmp ne i32 %xtraiter257, 0
  call void @llvm.assume(i1 %lcmp.mod260)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %epil.iter258 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ], [ %epil.iter258.next, %.lr.ph.i.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1328
  %epil.iter258.next = add i32 %epil.iter258, 1   ; 2 uses
  %epil.iter258.cmp.not = icmp eq i32 %epil.iter258.next, %xtraiter257
  br i1 %epil.iter258.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !1167

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i.i, %bb.ay
  %i.fm = add i32 %.sroa.0.02.i.i.i.i.i, 1
  %i.fn = load atomic ptr, ptr %i.fg acquire, align 8, !noalias !1328 ; 2 uses
  %i.fo = icmp eq ptr %i.fn, null
  br i1 %i.fo, label %.lr.ph.i37.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i, %bb.ax
  %.lcssa.i.i.i.i.i = phi ptr [ %i.fh, %bb.ax ], [ %i.fn, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.i ] ; 2 uses
  %i.fp = and i64 %.sroa.01.0.i.i6.i.i, -2
  %2 = add i64 %i.fp, 2
  %i.fq = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i.i, i64 1984
  %i.fr = load atomic ptr, ptr %i.fq monotonic, align 8, !noalias !1328
  %3 = icmp ne ptr %i.fr, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i.i, ptr %i.ec release, align 8, !noalias !1328
  store atomic i64 %spec.select17.i.i.i.i, ptr %.sroa.5.0.copyload.i release, align 8, !noalias !1328
  br label %bb.az

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %bb.as
  %i.fs = load i32, ptr %i.dz, align 8, !range !46, !noalias !1326, !noundef !17 ; 2 uses
  %.not.i11.i.i = icmp eq i32 %i.fs, -1
  br i1 %.not.i11.i.i, label %bb.bj, label %bb.bi

bb.az:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.aw
  store ptr %.sroa.012.0.i.i.i.i, ptr %i.ea, align 8, !alias.scope !1327, !noalias !1326
  store i64 %i.ej, ptr %i.eb, align 8, !alias.scope !1327, !noalias !1326
  %i.ft = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %i.ej ; 4 uses
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ft, i64 56 ; 3 uses
  %i.fv = load atomic i64, ptr %i.fu acquire, align 8, !noalias !1329
  %i.fw = and i64 %i.fv, 1
  %i.fx = icmp eq i64 %i.fw, 0
  br i1 %i.fx, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

.lr.ph.i.i6.i.i.i:                                ; preds = %bb.az, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i
  %.sroa.0.02.i.i7.i.i.i = phi i32 [ %i.gb, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i ], [ 0, %bb.az ] ; 6 uses
  %i.fy = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 7
  br i1 %i.fy, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, label %bb.ba

bb.ba:                                            ; preds = %.lr.ph.i.i6.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i: ; preds = %.lr.ph.i.i6.i.i.i
  %.not.i.i.i11.i.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i.i, 0
  br i1 %.not.i.i.i11.i.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.preheader

.lr.ph.i.i.i14.i.i.i.preheader:                   ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i
  %i.fz = mul nuw i32 %.sroa.0.02.i.i7.i.i.i, %.sroa.0.02.i.i7.i.i.i ; 2 uses
  %xtraiter263 = and i32 %i.fz, 7                 ; 3 uses
  %i.ga = icmp ult i32 %.sroa.0.02.i.i7.i.i.i, 3
  br i1 %i.ga, label %.lr.ph.i.i.i14.i.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.i.preheader.new

.lr.ph.i.i.i14.i.i.i.preheader.new:               ; preds = %.lr.ph.i.i.i14.i.i.i.preheader
  %unroll_iter267 = and i32 %i.fz, 56
  br label %.lr.ph.i.i.i14.i.i.i

.lr.ph.i.i.i14.i.i.i:                             ; preds = %.lr.ph.i.i.i14.i.i.i, %.lr.ph.i.i.i14.i.i.i.preheader.new
  %niter268 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.preheader.new ], [ %niter268.next.7, %.lr.ph.i.i.i14.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  call void @llvm.x86.sse2.pause(), !noalias !1329
  %niter268.next.7 = add i32 %niter268, 8         ; 2 uses
  %niter268.ncmp.7 = icmp eq i32 %niter268.next.7, %unroll_iter267
  br i1 %niter268.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i.i
  %lcmp.mod265.not = icmp eq i32 %xtraiter263, 0
  br i1 %lcmp.mod265.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.i.epil.preheader:              ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.preheader
  %lcmp.mod266 = icmp ne i32 %xtraiter263, 0
  call void @llvm.assume(i1 %lcmp.mod266)
  br label %.lr.ph.i.i.i14.i.i.i.epil

.lr.ph.i.i.i14.i.i.i.epil:                        ; preds = %.lr.ph.i.i.i14.i.i.i.epil, %.lr.ph.i.i.i14.i.i.i.epil.preheader
  %epil.iter264 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.i.epil.preheader ], [ %epil.iter264.next, %.lr.ph.i.i.i14.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !1329
  %epil.iter264.next = add i32 %epil.iter264, 1   ; 2 uses
  %epil.iter264.cmp.not = icmp eq i32 %epil.iter264.next, %xtraiter263
  br i1 %epil.iter264.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, label %.lr.ph.i.i.i14.i.i.i.epil, !llvm.loop !1170

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i.i, %bb.ba
  %i.gb = add i32 %.sroa.0.02.i.i7.i.i.i, 1
  %i.gc = load atomic i64, ptr %i.fu acquire, align 8, !noalias !1329
  %i.gd = and i64 %i.gc, 1
  %i.ge = icmp eq i64 %i.gd, 0
  br i1 %i.ge, label %.lr.ph.i.i6.i.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.i, %bb.az
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.028.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.ft, i64 40, i1 false), !noalias !1326
  %.sroa.429.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 40
  %.sroa.429.0.copyload.i.i.i = load i32, ptr %.sroa.429.0..sroa_idx.i.i.i, align 8, !noalias !1329 ; 2 uses
  %.sroa.530.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ft, i64 44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.530.0..sroa_idx.i.i.i, i64 12, i1 false), !noalias !1326
  %i.gf = add nuw nsw i64 %i.ej, 1                ; 2 uses
  %i.gg = icmp eq i64 %i.gf, 31
  br i1 %i.gg, label %.lr.ph.i1.i.i.i.i, label %bb.be

.lr.ph.i1.i.i.i.i:                                ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i, %bb.bd
  %.sroa.0.03.i.i4.i.i.i = phi i64 [ %i.gp, %bb.bd ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gh, i64 56 ; 2 uses
  %i.gj = load atomic i64, ptr %i.gi acquire, align 8, !noalias !1329
  %i.gk = and i64 %i.gj, 2
  %i.gl = icmp eq i64 %i.gk, 0
  br i1 %i.gl, label %bb.bb, label %.lr.ph.i1.i.i.i.i.1

bb.bb:                                            ; preds = %.lr.ph.i1.i.i.i.i
  %i.gm = atomicrmw or ptr %i.gi, i64 4 acq_rel, align 8, !noalias !1329
  %i.gn = and i64 %i.gm, 2
  %i.go = icmp eq i64 %i.gn, 0
  br i1 %i.go, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %.lr.ph.i1.i.i.i.i.1

.lr.ph.i1.i.i.i.i.1:                              ; preds = %bb.bb, %.lr.ph.i1.i.i.i.i
  %i.gp = add nuw nsw i64 %.sroa.0.03.i.i4.i.i.i, 2 ; 2 uses
  %i.gq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i.i4.i.i.i
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 120 ; 2 uses
  %i.gs = load atomic i64, ptr %i.gr acquire, align 8, !noalias !1329
  %i.gt = and i64 %i.gs, 2
  %i.gu = icmp eq i64 %i.gt, 0
  br i1 %i.gu, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %.lr.ph.i1.i.i.i.i.1
  %i.gv = atomicrmw or ptr %i.gr, i64 4 acq_rel, align 8, !noalias !1329
  %i.gw = and i64 %i.gv, 2
  %i.gx = icmp eq i64 %i.gw, 0
  br i1 %i.gx, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bd

bb.bd:                                            ; preds = %bb.bc, %.lr.ph.i1.i.i.i.i.1
  %exitcond.not.i.i5.i.i.i.1 = icmp eq i64 %i.gp, 30
  br i1 %exitcond.not.i.i5.i.i.i.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i, label %.lr.ph.i1.i.i.i.i

bb.be:                                            ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i.i
  %i.gy = atomicrmw or ptr %i.fu, i64 2 acq_rel, align 8, !noalias !1329
  %i.gz = and i64 %i.gy, 4
  %i.ha = icmp eq i64 %i.gz, 0
  br i1 %i.ha, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i, label %bb.bf

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i: ; preds = %bb.bh, %bb.bd, %bb.bf
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i.i.i.i, i64 noundef 1992, i64 noundef 8) #40, !noalias !1329
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4readCsc4241EHy6Do_9typst_kit.exit.i.i.i

bb.bf:                                            ; preds = %bb.be
  %i.hb = icmp samesign ult i64 %i.ej, 29
  br i1 %i.hb, label %.lr.ph.i3.i.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i.i.i.i

.lr.ph.i3.i.i.i.i:                                ; preds = %bb.bf, %bb.bh
  %.sroa.0.03.i4.i.i.i.i = phi i64 [ %i.hc, %bb.bh ], [ %i.gf, %bb.bf ] ; 2 uses
  %i.hc = add nuw nsw i64 %.sroa.0.03.i4.i.i.i.i, 1 ; 2 uses
  %i.hd = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i.i.i.i, i64 %.sroa.0.03.i4.i.i.i.i
  %i.he = getelementptr inbounds nuw i8, ptr %i.hd, i64 56 ; 2 uses
  %i.hf = load atomic i64, ptr %i.he acquire, align 8, !noalias !1329
  %i.hg = and i64 %i.hf, 2
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %.lr.ph.i3.i.i.i.i
  %i.hi = atomicrmw or ptr %i.he, i64 4 acq_rel, align 8, !noalias !1329
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
  %i.hm = load i64, ptr %i.u, align 8, !noalias !1326, !noundef !17 ; 2 uses
  %i.hn = invoke { i64, i32 } @_RNvMNtCsaL1QbXo9JQH_3std4timeNtB2_7Instant3now()
          to label %.noexc33.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304 ; 2 uses

.noexc33.i:                                       ; preds = %bb.bi
  %i.ho = extractvalue { i64, i32 } %i.hn, 0      ; 2 uses
  %i.hp = icmp eq i64 %i.ho, %i.hm
  br i1 %i.hp, label %.split.i17.i.i, label %bb.bw

bb.bj:                                            ; preds = %bb.bw, %.split.i17.i.i, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1330
  store ptr %i.t, ptr %i.s, align 8, !noalias !1326
  store ptr %.sroa.5.0.copyload.i, ptr %.sroa.423.0..sroa_idx.i.i.i, align 8, !noalias !1326
  store ptr %i.u, ptr %.sroa.7.0..sroa_idx.i1.i.i, align 8, !noalias !1326
  %i.hq = load i8, ptr %i.ef, align 8, !range !18, !noalias !1331, !noundef !17
  %i.hr = icmp eq i8 %i.hq, 1
  br i1 %i.hr, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i: ; preds = %bb.bj
  %i.hs = invoke fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.ee, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null)
          to label %.noexc34.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304 ; 2 uses

.noexc34.i:                                       ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i12.i.i
  %i.ht = icmp eq ptr %i.hs, null
  br i1 %i.ht, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtNtNtCs1xwejQucwHj_5alloc2io8buffered9bufreader9BufReaderNtNtNtCsbGiR87yI9G2_9tiny_http4util18refined_tcp_stream16RefinedTcpStreamEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i: ; preds = %.noexc34.i, %bb.bj
  %.sroa.0.0.i.i.i2.i.i.i14.i.i = phi ptr [ %i.hs, %.noexc34.i ], [ %i.ee, %bb.bj ] ; 4 uses
  %i.hu = load ptr, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1330, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i.i14.i.i, align 8, !noalias !1330
  %.not.i.i.i18.i.i.i = icmp eq ptr %i.hu, null
  br i1 %.not.i.i.i18.i.i.i, label %bb.bk, label %bb.bq, !prof !23

bb.bk:                                            ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i.i13.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !1330
  %i.hv = invoke noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new()
          to label %.noexc35.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1304 ; 2 uses

end_hunk_0
begin_hunk_1_@_RNCNCINvMs1_CsbGiR87yI9G2_9tiny_httpNtBa_6Server13from_listenerNtNtNtCsaL1QbXo9JQH_3std3net3tcp11TcpListenerE00Csc4241EHy6Do_9typst_kit:bb.a
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %i.j, i8 0, i64 16, i1 false), !noalias !4117
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 128 dereferenceable(16) %.sroa.611.0..sroa_idx.i, i8 0, i64 16, i1 false), !noalias !4117
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.5.sroa.5.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i, align 16, !noalias !4117
  %.sroa.9.sroa.0.sroa.5.sroa.6.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 280
  %.sroa.9.sroa.0.sroa.5.sroa.8.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 296
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9.sroa.0.sroa.5.sroa.6.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i, i8 0, i64 16, i1 false), !noalias !4117
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.9.sroa.0.sroa.5.sroa.8.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i, align 8, !noalias !4117
  %.sroa.9.sroa.0.sroa.5.sroa.9.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 304
  store i64 0, ptr %.sroa.9.sroa.0.sroa.5.sroa.9.0..sroa.9.sroa.0.sroa.5.0..sroa.9.0..sroa_idx.sroa_idx.sroa_idx.i, align 16, !noalias !4117
  %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 312
  store i8 1, ptr %.sroa.9.sroa.4.0..sroa.9.0..sroa_idx.sroa_idx.i, align 8, !noalias !4117
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #40, !noalias !4118
  %i.ac = tail call noundef align 128 dereferenceable_or_null(512) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 512, i64 noundef range(i64 1, -9223372036854775807) 128) #40, !noalias !4118 ; 17 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %bb.f, label %bb.q, !prof !15

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 128, i64 noundef 512) #43
          to label %.noexc.i unwind label %bb.g, !noalias !4117

.noexc.i:                                         ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7counter7CounterINtNtBG_4list7ChanneluEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 128 dereferenceable(512) %i.j) #44
          to label %bb.cs unwind label %bb.h, !noalias !4117

bb.h:                                             ; preds = %bb.g
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !4117
  unreachable

bb.i:                                             ; preds = %bb.o, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke void @_RNvXs_NtCsbGiR87yI9G2_9tiny_http6clientNtB4_16ClientConnectionNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(192) %i.m)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.l, %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.m) #44
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

bb.p:                                             ; preds = %bb.z, %bb.w, %bb.cs, %bb.cr, %.body34, %bb.j
  %i.ai = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.q:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 128 dereferenceable(512) %i.ac, ptr noundef nonnull align 128 dereferenceable(512) %i.j, i64 512, i1 false), !noalias !4117
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !4117
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
          to label %bb.s unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body34:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.cf, %bb.cg, %bb.co, %bb.cp, %bb.cr
  %.pn = phi { ptr, i32 } [ %i.lv, %bb.cf ], [ %i.mo, %bb.cr ], [ %i.mj, %bb.co ], [ %i.mj, %bb.cp ], [ %i.lv, %bb.cg ], [ %lpad.loopexit.split-lp170, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r) #44
          to label %bb.w unwind label %bb.p

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
  br i1 %i.aw, label %bb.u, label %bb.ac, !prof !23

bb.u:                                             ; preds = %bb.t
  invoke void @_RNvNtCsaL1QbXo9JQH_3std7process5abort() #43
          to label %.noexc25 unwind label %bb.cr

.noexc25:                                         ; preds = %bb.u
  unreachable

bb.v:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsbGiR87yI9G2_9tiny_http6client16ClientConnectionECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 dereferenceable(192) %i.r)
          to label %bb.y unwind label %bb.x

bb.w:                                             ; preds = %bb.x, %.body34
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body34 ], [ %i.ax, %bb.x ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc8ReceiveruEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #44
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
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac) #44
          to label %.thread unwind label %bb.p

bb.aa:                                            ; preds = %bb.y
  %i.ay = landingpad { ptr, i32 }
          cleanup
  br label %bb.z

bb.ab:                                            ; preds = %bb.y
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync4mpsc6SenderuEECsc4241EHy6Do_9typst_kit(i64 1, ptr nonnull %i.ac)
  br label %bb.n

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChanneluE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.cn, %bb.ci, %bb.ce, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i.i15.i, %bb.cc, %bb.ar, %.backedge.sink.split.i.i.i, %bb.at, %bb.r, %bb.ad, %bb.ac, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i
  %lpad.loopexit.split-lp170 = landingpad { ptr, i32 }
          cleanup
  br label %.body34

bb.ac:                                            ; preds = %bb.t
  invoke void @_RNvMs2_NtCsbGiR87yI9G2_9tiny_http7requestNtB5_7Request18with_notify_sender(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.o, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(176) %i.n, i64 noundef 1, ptr noundef nonnull %i.ac)
          to label %bb.ad unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.p, ptr noundef nonnull align 8 dereferenceable(176) %i.o, i64 176, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  invoke fastcc void @_RNvMNtNtCsbGiR87yI9G2_9tiny_http4util14messages_queueINtB2_13MessagesQueueNtB6_7MessageE4pushCsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.au, ptr noalias nofree noundef align 8 captures(address) dereferenceable(176) %i.p)
          to label %bb.ae unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store i32 -1, ptr %i.al, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, i8 0, i64 40, i1 false)
  br label %bb.af

bb.af:                                            ; preds = %_RINvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB3_7Context4withNCNvMs1_NtB5_4listINtB19_7ChanneluE4recvs_0uECsc4241EHy6Do_9typst_kit.exit.i.i, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !4119)
  %i.az = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4119
  %i.ba = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4119
  br label %bb.ag

bb.ag:                                            ; preds = %.backedge.i.i.i, %bb.af
  %.sroa.0.043.i.i.i = phi i32 [ 0, %bb.af ], [ %.sroa.0.043.be.i.i.i, %.backedge.i.i.i ] ; 14 uses
  %.sroa.012.0.i.i.i = phi ptr [ %i.ba, %bb.af ], [ %i.bl, %.backedge.i.i.i ] ; 35 uses
  %.sroa.07.0.i.i.i = phi i64 [ %i.az, %bb.af ], [ %i.bk, %.backedge.i.i.i ] ; 5 uses
  %i.bb = lshr i64 %.sroa.07.0.i.i.i, 1           ; 2 uses
  %i.bc = and i64 %i.bb, 31                       ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 31
  br i1 %i.bd, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %bb.ag
  %i.be = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.be, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i: ; preds = %bb.ah
  %.not.i.i.i25.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i.i.i25.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.preheader

.lr.ph.i.i.i28.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bf = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter187 = and i32 %i.bf, 7                 ; 3 uses
  %i.bg = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bg, label %.lr.ph.i.i.i28.i.epil.preheader, label %.lr.ph.i.i.i28.i.preheader.new

.lr.ph.i.i.i28.i.preheader.new:                   ; preds = %.lr.ph.i.i.i28.i.preheader
  %unroll_iter191 = and i32 %i.bf, 56
  br label %.lr.ph.i.i.i28.i

.lr.ph.i.i.i28.i:                                 ; preds = %.lr.ph.i.i.i28.i, %.lr.ph.i.i.i28.i.preheader.new
  %niter192 = phi i32 [ 0, %.lr.ph.i.i.i28.i.preheader.new ], [ %niter192.next.7, %.lr.ph.i.i.i28.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %niter192.next.7 = add i32 %niter192, 8         ; 2 uses
  %niter192.ncmp.7 = icmp eq i32 %niter192.next.7, %unroll_iter191
  br i1 %niter192.ncmp.7, label %.backedge.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i28.i

bb.ai:                                            ; preds = %bb.ag
  %i.bh = add i64 %.sroa.07.0.i.i.i, 2            ; 2 uses
  %i.bi = and i64 %.sroa.07.0.i.i.i, 1
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %bb.aj, label %bb.am

.backedge.sink.split.i.i.i:                       ; preds = %bb.ao, %bb.ah
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %.backedge.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.backedge.i.i.i.loopexit.unr-lcssa:               ; preds = %.lr.ph.i.i.i28.i
  %lcmp.mod189.not = icmp eq i32 %xtraiter187, 0
  br i1 %lcmp.mod189.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil.preheader

.lr.ph.i.i.i28.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.preheader
  %lcmp.mod190 = icmp ne i32 %xtraiter187, 0
  call void @llvm.assume(i1 %lcmp.mod190)
  br label %.lr.ph.i.i.i28.i.epil

.lr.ph.i.i.i28.i.epil:                            ; preds = %.lr.ph.i.i.i28.i.epil, %.lr.ph.i.i.i28.i.epil.preheader
  %epil.iter188 = phi i32 [ 0, %.lr.ph.i.i.i28.i.epil.preheader ], [ %epil.iter188.next, %.lr.ph.i.i.i28.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %epil.iter188.next = add i32 %epil.iter188, 1   ; 2 uses
  %epil.iter188.cmp.not = icmp eq i32 %epil.iter188.next, %xtraiter187
  br i1 %epil.iter188.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i.i.i28.i.epil, !llvm.loop !4078

.backedge.i.i.i.loopexit159.unr-lcssa:            ; preds = %.lr.ph.i23.i.i.i
  %lcmp.mod183.not = icmp eq i32 %xtraiter181, 0
  br i1 %lcmp.mod183.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil.preheader

.lr.ph.i23.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit159.unr-lcssa, %.lr.ph.i23.i.i.i.preheader
  %lcmp.mod184 = icmp ne i32 %xtraiter181, 0
  call void @llvm.assume(i1 %lcmp.mod184)
  br label %.lr.ph.i23.i.i.i.epil

.lr.ph.i23.i.i.i.epil:                            ; preds = %.lr.ph.i23.i.i.i.epil, %.lr.ph.i23.i.i.i.epil.preheader
  %epil.iter182 = phi i32 [ 0, %.lr.ph.i23.i.i.i.epil.preheader ], [ %epil.iter182.next, %.lr.ph.i23.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %epil.iter182.next = add i32 %epil.iter182, 1   ; 2 uses
  %epil.iter182.cmp.not = icmp eq i32 %epil.iter182.next, %xtraiter181
  br i1 %epil.iter182.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.epil, !llvm.loop !4079

.backedge.i.i.i.loopexit160.unr-lcssa:            ; preds = %.lr.ph.i33.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil.preheader

.lr.ph.i33.i.i.i.epil.preheader:                  ; preds = %.backedge.i.i.i.loopexit160.unr-lcssa, %.lr.ph.i33.i.i.i.preheader
  %lcmp.mod180 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod180)
  br label %.lr.ph.i33.i.i.i.epil

.lr.ph.i33.i.i.i.epil:                            ; preds = %.lr.ph.i33.i.i.i.epil, %.lr.ph.i33.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.epil, !llvm.loop !4080

.backedge.i.i.i:                                  ; preds = %.backedge.i.i.i.loopexit160.unr-lcssa, %.lr.ph.i33.i.i.i.epil, %.backedge.i.i.i.loopexit159.unr-lcssa, %.lr.ph.i23.i.i.i.epil, %.backedge.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i28.i.epil, %.backedge.sink.split.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i24.i
  %i.bk = load atomic i64, ptr %i.ac acquire, align 128, !noalias !4119
  %i.bl = load atomic ptr, ptr %i.ao acquire, align 8, !noalias !4119
  %.sroa.0.043.be.i.i.i = add i32 %.sroa.0.043.i.i.i, 1
  br label %bb.ag

bb.aj:                                            ; preds = %bb.ai
  fence seq_cst
  %i.bm = load atomic i64, ptr %i.ap monotonic, align 128, !noalias !4119 ; 3 uses
  %i.bn = lshr i64 %i.bm, 1
  %i.bo = icmp eq i64 %i.bb, %i.bn
  br i1 %i.bo, label %bb.al, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.not.unshifted.i.i.i = xor i64 %i.bm, %.sroa.07.0.i.i.i
  %.not.i.i.i = icmp ugt i64 %.not.unshifted.i.i.i, 63
  %1 = zext i1 %.not.i.i.i to i64
  %spec.select.i.i.i = or disjoint i64 %i.bh, %1
  br label %bb.am

bb.al:                                            ; preds = %bb.aj
  %i.bp = and i64 %i.bm, 1
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE4recvCsc4241EHy6Do_9typst_kit.exit.i

bb.am:                                            ; preds = %bb.ak, %bb.ai
  %.sroa.01.0.i.i9.i = phi i64 [ %i.bh, %bb.ai ], [ %spec.select.i.i.i, %bb.ak ] ; 2 uses
  %i.br = icmp eq ptr %.sroa.012.0.i.i.i, null
  br i1 %i.br, label %bb.ao, label %bb.an

bb.an:                                            ; preds = %bb.am
  %i.bs = cmpxchg weak ptr %i.ac, i64 %.sroa.07.0.i.i.i, i64 %.sroa.01.0.i.i9.i seq_cst acquire, align 8, !noalias !4119
  %.sroa.18.0.in.i.i.i10.i = extractvalue { i64, i1 } %i.bs, 1
  br i1 %.sroa.18.0.in.i.i.i10.i, label %bb.ap, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i

bb.ao:                                            ; preds = %bb.am
  %i.bt = icmp ult i32 %.sroa.0.043.i.i.i, 7
  br i1 %i.bt, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i, label %.backedge.sink.split.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i: ; preds = %bb.ao
  %.not.i20.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i20.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i23.i.i.i.preheader

.lr.ph.i23.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i.i.i
  %i.bu = mul nuw i32 %.sroa.0.043.i.i.i, %.sroa.0.043.i.i.i ; 2 uses
  %xtraiter181 = and i32 %i.bu, 7                 ; 3 uses
  %i.bv = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bv, label %.lr.ph.i23.i.i.i.epil.preheader, label %.lr.ph.i23.i.i.i.preheader.new

.lr.ph.i23.i.i.i.preheader.new:                   ; preds = %.lr.ph.i23.i.i.i.preheader
  %unroll_iter185 = and i32 %i.bu, 56
  br label %.lr.ph.i23.i.i.i

.lr.ph.i23.i.i.i:                                 ; preds = %.lr.ph.i23.i.i.i, %.lr.ph.i23.i.i.i.preheader.new
  %niter186 = phi i32 [ 0, %.lr.ph.i23.i.i.i.preheader.new ], [ %niter186.next.7, %.lr.ph.i23.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %niter186.next.7 = add i32 %niter186, 8         ; 2 uses
  %niter186.ncmp.7 = icmp eq i32 %niter186.next.7, %unroll_iter185
  br i1 %niter186.ncmp.7, label %.backedge.i.i.i.loopexit159.unr-lcssa, label %.lr.ph.i23.i.i.i

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i: ; preds = %bb.an
  %..i.i.i.i11.i = call noundef range(i32 0, 7) i32 @llvm.umin.i32(i32 %.sroa.0.043.i.i.i, i32 6) ; 2 uses
  %i.bw = mul nuw nsw i32 %..i.i.i.i11.i, %..i.i.i.i11.i ; 2 uses
  %.not.i30.i.i.i = icmp eq i32 %.sroa.0.043.i.i.i, 0
  br i1 %.not.i30.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i33.i.i.i.preheader

.lr.ph.i33.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i.i.i
  %xtraiter = and i32 %i.bw, 5                    ; 3 uses
  %i.bx = icmp ult i32 %.sroa.0.043.i.i.i, 3
  br i1 %i.bx, label %.lr.ph.i33.i.i.i.epil.preheader, label %.lr.ph.i33.i.i.i.preheader.new

.lr.ph.i33.i.i.i.preheader.new:                   ; preds = %.lr.ph.i33.i.i.i.preheader
  %unroll_iter = and i32 %i.bw, 56
  br label %.lr.ph.i33.i.i.i

.lr.ph.i33.i.i.i:                                 ; preds = %.lr.ph.i33.i.i.i, %.lr.ph.i33.i.i.i.preheader.new
  %niter = phi i32 [ 0, %.lr.ph.i33.i.i.i.preheader.new ], [ %niter.next.7, %.lr.ph.i33.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.i.i.loopexit160.unr-lcssa, label %.lr.ph.i33.i.i.i

bb.ap:                                            ; preds = %bb.an
  %i.by = icmp eq i64 %i.bc, 30
  br i1 %i.by, label %bb.aq, label %bb.as

bb.aq:                                            ; preds = %bb.ap
  %i.bz = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4119 ; 2 uses
  %i.ca = icmp eq ptr %i.bz, null
  br i1 %i.ca, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i37.i.i.i:                                 ; preds = %bb.aq, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i
  %.sroa.0.02.i.i.i.i = phi i32 [ %i.ce, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ], [ 0, %bb.aq ] ; 6 uses
  %i.cb = icmp ult i32 %.sroa.0.02.i.i.i.i, 7
  br i1 %i.cb, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i, label %bb.ar

bb.ar:                                            ; preds = %.lr.ph.i37.i.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i: ; preds = %.lr.ph.i37.i.i.i
  %.not.i.i.i.i13.i = icmp eq i32 %.sroa.0.02.i.i.i.i, 0
  br i1 %.not.i.i.i.i13.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.cc = mul nuw i32 %.sroa.0.02.i.i.i.i, %.sroa.0.02.i.i.i.i ; 2 uses
  %xtraiter193 = and i32 %i.cc, 7                 ; 3 uses
  %i.cd = icmp ult i32 %.sroa.0.02.i.i.i.i, 3
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.preheader.new:                   ; preds = %.lr.ph.i.i.i.i.i.preheader
  %unroll_iter197 = and i32 %i.cc, 56
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.new
  %niter198 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.preheader.new ], [ %niter198.next.7, %.lr.ph.i.i.i.i.i ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %niter198.next.7 = add i32 %niter198, 8         ; 2 uses
  %niter198.ncmp.7 = icmp eq i32 %niter198.next.7, %unroll_iter197
  br i1 %niter198.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i
  %lcmp.mod195.not = icmp eq i32 %xtraiter193, 0
  br i1 %lcmp.mod195.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.epil.preheader:                  ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader
  %lcmp.mod196 = icmp ne i32 %xtraiter193, 0
  call void @llvm.assume(i1 %lcmp.mod196)
  br label %.lr.ph.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.epil:                            ; preds = %.lr.ph.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.epil.preheader
  %epil.iter194 = phi i32 [ 0, %.lr.ph.i.i.i.i.i.epil.preheader ], [ %epil.iter194.next, %.lr.ph.i.i.i.i.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !4119
  %epil.iter194.next = add i32 %epil.iter194, 1   ; 2 uses
  %epil.iter194.cmp.not = icmp eq i32 %epil.iter194.next, %xtraiter193
  br i1 %epil.iter194.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.epil, !llvm.loop !4081

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.epil, %bb.ar, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i.i.i
  %i.ce = add i32 %.sroa.0.02.i.i.i.i, 1
  %i.cf = load atomic ptr, ptr %.sroa.012.0.i.i.i acquire, align 8, !noalias !4119 ; 2 uses
  %i.cg = icmp eq ptr %i.cf, null
  br i1 %i.cg, label %.lr.ph.i37.i.i.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i, %bb.aq
  %.lcssa.i.i.i.i = phi ptr [ %i.bz, %bb.aq ], [ %i.cf, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.i.i ] ; 2 uses
  %i.ch = and i64 %.sroa.01.0.i.i9.i, -2
  %2 = add i64 %i.ch, 2
  %i.ci = load atomic ptr, ptr %.lcssa.i.i.i.i monotonic, align 8, !noalias !4119
  %3 = icmp ne ptr %i.ci, null
  %4 = zext i1 %3 to i64
  %spec.select17.i.i.i = or disjoint i64 %2, %4
  store atomic ptr %.lcssa.i.i.i.i, ptr %i.ao release, align 8, !noalias !4119
  store atomic i64 %spec.select17.i.i.i, ptr %i.ac release, align 128, !noalias !4119
  br label %bb.as

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChanneluE10start_recvCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.al
  %i.cj = load i32, ptr %i.al, align 8, !range !46, !noundef !17 ; 2 uses
  %.not.i14.i = icmp eq i32 %i.cj, -1
  br i1 %.not.i14.i, label %bb.cd, label %bb.cc

bb.as:                                            ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockuE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i.i.i, %bb.ap
  store ptr %.sroa.012.0.i.i.i, ptr %i.am, align 8, !alias.scope !4119
  store i64 %i.bc, ptr %i.an, align 8, !alias.scope !4119
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 8 ; 4 uses
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.ck, i64 %i.bc ; 3 uses
  %i.cm = load atomic i64, ptr %i.cl acquire, align 8
  %i.cn = and i64 %i.cm, 1
  %i.co = icmp eq i64 %i.cn, 0
  br i1 %i.co, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.as, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i
  %.sroa.0.02.i.i7.i.i = phi i32 [ %i.cs, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i ], [ 0, %bb.as ] ; 6 uses
  %i.cp = icmp ult i32 %.sroa.0.02.i.i7.i.i, 7
  br i1 %i.cp, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i, label %bb.at

bb.at:                                            ; preds = %.lr.ph.i.i6.i.i
  invoke void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now()
          to label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i: ; preds = %.lr.ph.i.i6.i.i
  %.not.i.i.i11.i.i = icmp eq i32 %.sroa.0.02.i.i7.i.i, 0
  br i1 %.not.i.i.i11.i.i, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.preheader

.lr.ph.i.i.i14.i.i.preheader:                     ; preds = %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.cq = mul nuw i32 %.sroa.0.02.i.i7.i.i, %.sroa.0.02.i.i7.i.i ; 2 uses
  %xtraiter199 = and i32 %i.cq, 7                 ; 3 uses
  %i.cr = icmp ult i32 %.sroa.0.02.i.i7.i.i, 3
  br i1 %i.cr, label %.lr.ph.i.i.i14.i.i.epil.preheader, label %.lr.ph.i.i.i14.i.i.preheader.new

.lr.ph.i.i.i14.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i14.i.i.preheader
  %unroll_iter203 = and i32 %i.cq, 56
  br label %.lr.ph.i.i.i14.i.i

.lr.ph.i.i.i14.i.i:                               ; preds = %.lr.ph.i.i.i14.i.i, %.lr.ph.i.i.i14.i.i.preheader.new
  %niter204 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.preheader.new ], [ %niter204.next.7, %.lr.ph.i.i.i14.i.i ]
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  call void @llvm.x86.sse2.pause()
  %niter204.next.7 = add i32 %niter204, 8         ; 2 uses
  %niter204.ncmp.7 = icmp eq i32 %niter204.next.7, %unroll_iter203
  br i1 %niter204.ncmp.7, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i14.i.i

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i14.i.i
  %lcmp.mod201.not = icmp eq i32 %xtraiter199, 0
  br i1 %lcmp.mod201.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil.preheader

.lr.ph.i.i.i14.i.i.epil.preheader:                ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.preheader
  %lcmp.mod202 = icmp ne i32 %xtraiter199, 0
  call void @llvm.assume(i1 %lcmp.mod202)
  br label %.lr.ph.i.i.i14.i.i.epil

.lr.ph.i.i.i14.i.i.epil:                          ; preds = %.lr.ph.i.i.i14.i.i.epil, %.lr.ph.i.i.i14.i.i.epil.preheader
  %epil.iter200 = phi i32 [ 0, %.lr.ph.i.i.i14.i.i.epil.preheader ], [ %epil.iter200.next, %.lr.ph.i.i.i14.i.i.epil ]
  call void @llvm.x86.sse2.pause()
  %epil.iter200.next = add i32 %epil.iter200, 1   ; 2 uses
  %epil.iter200.cmp.not = icmp eq i32 %epil.iter200.next, %xtraiter199
  br i1 %epil.iter200.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, label %.lr.ph.i.i.i14.i.i.epil, !llvm.loop !4082

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i14.i.i.epil, %bb.at, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10.i.i
  %i.cs = add i32 %.sroa.0.02.i.i7.i.i, 1
  %i.ct = load atomic i64, ptr %i.cl acquire, align 8
  %i.cu = and i64 %i.ct, 1
  %i.cv = icmp eq i64 %i.cu, 0
  br i1 %i.cv, label %.lr.ph.i.i6.i.i, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.i.i, %bb.as
  %i.cw = add nuw nsw i64 %i.bc, 1                ; 2 uses
  %i.cx = icmp eq i64 %i.cw, 31
  br i1 %i.cx, label %.preheader.preheader.i.i.i, label %bb.by

.preheader.preheader.i.i.i:                       ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotuE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i.i.i
  %i.cy = load atomic i64, ptr %i.ck acquire, align 8
  %i.cz = and i64 %i.cy, 2
  %i.da = icmp eq i64 %i.cz, 0
  br i1 %i.da, label %bb.au, label %.preheader.1.i.i.i

bb.au:                                            ; preds = %.preheader.preheader.i.i.i
  %i.db = atomicrmw or ptr %i.ck, i64 4 acq_rel, align 8
  %i.dc = and i64 %i.db, 2
  %i.dd = icmp eq i64 %i.dc, 0
  br i1 %i.dd, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.1.i.i.i

.preheader.1.i.i.i:                               ; preds = %bb.au, %.preheader.preheader.i.i.i
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 16 ; 2 uses
  %i.df = load atomic i64, ptr %i.de acquire, align 8
  %i.dg = and i64 %i.df, 2
  %i.dh = icmp eq i64 %i.dg, 0
  br i1 %i.dh, label %bb.av, label %.preheader.2.i.i.i

bb.av:                                            ; preds = %.preheader.1.i.i.i
  %i.di = atomicrmw or ptr %i.de, i64 4 acq_rel, align 8
  %i.dj = and i64 %i.di, 2
  %i.dk = icmp eq i64 %i.dj, 0
  br i1 %i.dk, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.2.i.i.i

.preheader.2.i.i.i:                               ; preds = %bb.av, %.preheader.1.i.i.i
  %i.dl = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 24 ; 2 uses
  %i.dm = load atomic i64, ptr %i.dl acquire, align 8
  %i.dn = and i64 %i.dm, 2
  %i.do = icmp eq i64 %i.dn, 0
  br i1 %i.do, label %bb.aw, label %.preheader.3.i.i.i

bb.aw:                                            ; preds = %.preheader.2.i.i.i
  %i.dp = atomicrmw or ptr %i.dl, i64 4 acq_rel, align 8
  %i.dq = and i64 %i.dp, 2
  %i.dr = icmp eq i64 %i.dq, 0
  br i1 %i.dr, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.3.i.i.i

.preheader.3.i.i.i:                               ; preds = %bb.aw, %.preheader.2.i.i.i
  %i.ds = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 32 ; 2 uses
  %i.dt = load atomic i64, ptr %i.ds acquire, align 8
  %i.du = and i64 %i.dt, 2
  %i.dv = icmp eq i64 %i.du, 0
  br i1 %i.dv, label %bb.ax, label %.preheader.4.i.i.i

bb.ax:                                            ; preds = %.preheader.3.i.i.i
  %i.dw = atomicrmw or ptr %i.ds, i64 4 acq_rel, align 8
  %i.dx = and i64 %i.dw, 2
  %i.dy = icmp eq i64 %i.dx, 0
  br i1 %i.dy, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.4.i.i.i

.preheader.4.i.i.i:                               ; preds = %bb.ax, %.preheader.3.i.i.i
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 40 ; 2 uses
  %i.ea = load atomic i64, ptr %i.dz acquire, align 8
  %i.eb = and i64 %i.ea, 2
  %i.ec = icmp eq i64 %i.eb, 0
  br i1 %i.ec, label %bb.ay, label %.preheader.5.i.i.i

bb.ay:                                            ; preds = %.preheader.4.i.i.i
  %i.ed = atomicrmw or ptr %i.dz, i64 4 acq_rel, align 8
  %i.ee = and i64 %i.ed, 2
  %i.ef = icmp eq i64 %i.ee, 0
  br i1 %i.ef, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.5.i.i.i

.preheader.5.i.i.i:                               ; preds = %bb.ay, %.preheader.4.i.i.i
  %i.eg = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 48 ; 2 uses
  %i.eh = load atomic i64, ptr %i.eg acquire, align 8
  %i.ei = and i64 %i.eh, 2
  %i.ej = icmp eq i64 %i.ei, 0
  br i1 %i.ej, label %bb.az, label %.preheader.6.i.i.i

bb.az:                                            ; preds = %.preheader.5.i.i.i
  %i.ek = atomicrmw or ptr %i.eg, i64 4 acq_rel, align 8
  %i.el = and i64 %i.ek, 2
  %i.em = icmp eq i64 %i.el, 0
  br i1 %i.em, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.6.i.i.i

.preheader.6.i.i.i:                               ; preds = %bb.az, %.preheader.5.i.i.i
  %i.en = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 56 ; 2 uses
  %i.eo = load atomic i64, ptr %i.en acquire, align 8
  %i.ep = and i64 %i.eo, 2
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %bb.ba, label %.preheader.7.i.i.i

bb.ba:                                            ; preds = %.preheader.6.i.i.i
  %i.er = atomicrmw or ptr %i.en, i64 4 acq_rel, align 8
  %i.es = and i64 %i.er, 2
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.7.i.i.i

.preheader.7.i.i.i:                               ; preds = %bb.ba, %.preheader.6.i.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 64 ; 2 uses
  %i.ev = load atomic i64, ptr %i.eu acquire, align 8
  %i.ew = and i64 %i.ev, 2
  %i.ex = icmp eq i64 %i.ew, 0
  br i1 %i.ex, label %bb.bb, label %.preheader.8.i.i.i

bb.bb:                                            ; preds = %.preheader.7.i.i.i
  %i.ey = atomicrmw or ptr %i.eu, i64 4 acq_rel, align 8
  %i.ez = and i64 %i.ey, 2
  %i.fa = icmp eq i64 %i.ez, 0
  br i1 %i.fa, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.8.i.i.i

.preheader.8.i.i.i:                               ; preds = %bb.bb, %.preheader.7.i.i.i
  %i.fb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.i, i64 72 ; 2 uses
  %i.fc = load atomic i64, ptr %i.fb acquire, align 8
  %i.fd = and i64 %i.fc, 2
  %i.fe = icmp eq i64 %i.fd, 0
  br i1 %i.fe, label %bb.bc, label %.preheader.9.i.i.i

bb.bc:                                            ; preds = %.preheader.8.i.i.i
  %i.ff = atomicrmw or ptr %i.fb, i64 4 acq_rel, align 8
  %i.fg = and i64 %i.ff, 2
  %i.fh = icmp eq i64 %i.fg, 0
  br i1 %i.fh, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultuNtNtNtCsaL1QbXo9JQH_3std4sync4mpsc9RecvErrorE6unwrapCsc4241EHy6Do_9typst_kit.exit.critedge, label %.preheader.9.i.i.i

end_hunk_1
begin_hunk_2_@_RNvMs0_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5wakerNtB5_9SyncWaker8register:bb.a
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load atomic i64, ptr @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !6269
  %i.f = and i64 %i.e, 9223372036854775807
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  %i.h = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #46, !noalias !6269
  %i.i = xor i1 %i.h, true
  %i.j = zext i1 %i.i to i8
  br label %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit

_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.c, %bb.d
  %.sroa.01.0.i.i = phi i8 [ %i.j, %bb.d ], [ 0, %bb.c ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %i.l = load atomic i8, ptr %i.k monotonic, align 4, !noalias !6269
  %.not.i.i.not = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.not, label %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit, label %bb.e, !prof !16

bb.e:                                             ; preds = %_RNvMs5_NtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutexINtB5_5MutexNtNtNtB9_4mpmc5waker5WakerE4lockCsc4241EHy6Do_9typst_kit.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6270
  store ptr %0, ptr %i.a, align 8, !noalias !6270
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.m, align 8, !noalias !6270
  invoke void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @188, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @193, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @222) #43
          to label %bb.g unwind label %bb.f, !noalias !6271

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtNtBG_4mpmc5waker5WakerEEECsc4241EHy6Do_9typst_kit(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #44
          to label %common.resume unwind label %bb.h, !noalias !6271

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45, !noalias !6271
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
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !6272, !noundef !17 ; 4 uses
  %i.x = load i64, ptr %i.s, align 8, !range !21, !alias.scope !6272, !noundef !17
  %i.y = icmp eq i64 %i.w, %i.x
  br i1 %i.y, label %bb.j, label %bb.o

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5waker5EntryE8grow_oneCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s)
          to label %bb.o unwind label %bb.k, !noalias !6273

bb.k:                                             ; preds = %bb.j
  %i.z = landingpad { ptr, i32 }
          cleanup
  %i.aa = atomicrmw add ptr %.0.val, i64 -1 release, align 8, !noalias !6274
  %i.ab = icmp eq i64 %i.aa, 1
  br i1 %i.ab, label %bb.l, label %.body

bb.l:                                             ; preds = %bb.k
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7context5InnerE9drop_slowCsZ7O2w1b9D3_6notify(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #46
          to label %.body unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
  unreachable

bb.n:                                             ; preds = %_RNvMNtCs3oUPovFnLWP_4core6resultINtB2_6ResultINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBO_4mpmc5waker5WakerEINtBM_11PoisonErrorBH_EE6unwrapCsc4241EHy6Do_9typst_kit.exit
  tail call void @llvm.trap()
  unreachable

.body:                                            ; preds = %bb.k, %bb.l
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std4sync6poison5mutex10MutexGuardNtNtNtBI_4mpmc5waker5WakerEECsc4241EHy6Do_9typst_kit(ptr nonnull %0, i8 %.sroa.01.0.i.i) #44
          to label %common.resume unwind label %bb.v

bb.o:                                             ; preds = %bb.j, %bb.i
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !6272, !nonnull !17, !noundef !17
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.af, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  %i.ag = add nsw i64 %i.w, 1                     ; 2 uses
  store i64 %i.ag, ptr %i.v, align 8, !alias.scope !6272
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
  %i.as = tail call noundef zeroext i1 @_RNvNtNtCsaL1QbXo9JQH_3std9panicking11panic_count17is_zero_slow_path() #46
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
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #45
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
  call void @llvm.experimental.noalias.scope.decl(metadata !6318)
  %i.p = load atomic i64, ptr %1 acquire, align 128, !noalias !6318
  %i.q = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %niter112.next.7 = add i32 %niter112, 8         ; 2 uses
  %niter112.ncmp.7 = icmp eq i32 %niter112.next.7, %unroll_iter111
  br i1 %niter112.ncmp.7, label %.backedge.i.loopexit.unr-lcssa, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.c
  %i.x = add i64 %.sroa.07.0.i, 2                 ; 2 uses
  %i.y = and i64 %.sroa.07.0.i, 1
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %bb.f, label %bb.i

.backedge.sink.split.i:                           ; preds = %bb.k, %bb.d
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %epil.iter108.next = add i32 %epil.iter108, 1   ; 2 uses
  %epil.iter108.cmp.not = icmp eq i32 %epil.iter108.next, %xtraiter107
  br i1 %epil.iter108.cmp.not, label %.backedge.i, label %.lr.ph.i.i.epil, !llvm.loop !6277

.backedge.i.loopexit92.unr-lcssa:                 ; preds = %.lr.ph.i23.i
  %lcmp.mod103.not = icmp eq i32 %xtraiter101, 0
  br i1 %lcmp.mod103.not, label %.backedge.i, label %.lr.ph.i23.i.epil.preheader

.lr.ph.i23.i.epil.preheader:                      ; preds = %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.preheader
  %lcmp.mod104 = icmp ne i32 %xtraiter101, 0
  call void @llvm.assume(i1 %lcmp.mod104)
  br label %.lr.ph.i23.i.epil

.lr.ph.i23.i.epil:                                ; preds = %.lr.ph.i23.i.epil, %.lr.ph.i23.i.epil.preheader
  %epil.iter102 = phi i32 [ 0, %.lr.ph.i23.i.epil.preheader ], [ %epil.iter102.next, %.lr.ph.i23.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %epil.iter102.next = add i32 %epil.iter102, 1   ; 2 uses
  %epil.iter102.cmp.not = icmp eq i32 %epil.iter102.next, %xtraiter101
  br i1 %epil.iter102.cmp.not, label %.backedge.i, label %.lr.ph.i23.i.epil, !llvm.loop !6278

.backedge.i.loopexit93.unr-lcssa:                 ; preds = %.lr.ph.i33.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.backedge.i, label %.lr.ph.i33.i.epil.preheader

.lr.ph.i33.i.epil.preheader:                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.preheader
  %lcmp.mod100 = icmp ne i32 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod100)
  br label %.lr.ph.i33.i.epil

.lr.ph.i33.i.epil:                                ; preds = %.lr.ph.i33.i.epil, %.lr.ph.i33.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i33.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i33.i.epil ]
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.backedge.i, label %.lr.ph.i33.i.epil, !llvm.loop !6279

.backedge.i:                                      ; preds = %.backedge.i.loopexit93.unr-lcssa, %.lr.ph.i33.i.epil, %.backedge.i.loopexit92.unr-lcssa, %.lr.ph.i23.i.epil, %.backedge.i.loopexit.unr-lcssa, %.lr.ph.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i29.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i19.i, %.backedge.sink.split.i, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i
  %i.aa = load atomic i64, ptr %1 acquire, align 128, !noalias !6318
  %i.ab = load atomic ptr, ptr %i.l acquire, align 8, !noalias !6318
  %.sroa.0.043.be.i = add i32 %.sroa.0.043.i, 1
  br label %bb.c

bb.f:                                             ; preds = %bb.e
  fence seq_cst
  %i.ac = load atomic i64, ptr %i.m monotonic, align 128, !noalias !6318 ; 3 uses
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
  %i.ai = cmpxchg weak ptr %1, i64 %.sroa.07.0.i, i64 %.sroa.01.0.i seq_cst acquire, align 8, !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %.backedge.i.loopexit93.unr-lcssa, label %.lr.ph.i33.i

bb.l:                                             ; preds = %bb.j
  %i.ao = icmp eq i64 %i.s, 30
  br i1 %i.ao, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i, i64 1984 ; 2 uses
  %i.aq = load atomic ptr, ptr %i.ap acquire, align 8, !noalias !6318 ; 2 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i37.i:                                     ; preds = %bb.m, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i
  %.sroa.0.02.i.i = phi i32 [ %i.av, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ], [ 0, %bb.m ] ; 6 uses
  %i.as = icmp ult i32 %.sroa.0.02.i.i, 7
  br i1 %i.as, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i37.i
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
  call void @llvm.x86.sse2.pause(), !noalias !6318
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
  call void @llvm.x86.sse2.pause(), !noalias !6318
  %epil.iter114.next = add i32 %epil.iter114, 1   ; 2 uses
  %epil.iter114.cmp.not = icmp eq i32 %epil.iter114.next, %xtraiter113
  br i1 %epil.iter114.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, label %.lr.ph.i.i.i.epil, !llvm.loop !6280

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i, %bb.n
  %i.av = add i32 %.sroa.0.02.i.i, 1
  %i.aw = load atomic ptr, ptr %i.ap acquire, align 8, !noalias !6318 ; 2 uses
  %i.ax = icmp eq ptr %i.aw, null
  br i1 %i.ax, label %.lr.ph.i37.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i, %bb.m
  %.lcssa.i.i = phi ptr [ %i.aq, %bb.m ], [ %i.aw, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i ] ; 2 uses
  %i.ay = and i64 %.sroa.01.0.i, -2
  %5 = add i64 %i.ay, 2
  %i.az = getelementptr inbounds nuw i8, ptr %.lcssa.i.i, i64 1984
  %i.ba = load atomic ptr, ptr %i.az monotonic, align 8, !noalias !6318
  %6 = icmp ne ptr %i.ba, null
  %7 = zext i1 %6 to i64
  %spec.select17.i = or disjoint i64 %5, %7
  store atomic ptr %.lcssa.i.i, ptr %i.l release, align 8, !noalias !6318
  store atomic i64 %spec.select17.i, ptr %1 release, align 128, !noalias !6318
  br label %bb.o

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10start_recvCsc4241EHy6Do_9typst_kit.exit: ; preds = %bb.h
  %i.bb = load i32, ptr %i.i, align 8, !range !46, !noundef !17 ; 2 uses
  %.not = icmp eq i32 %i.bb, -1
  br i1 %.not, label %bb.y, label %bb.x

bb.o:                                             ; preds = %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE9wait_nextCsc4241EHy6Do_9typst_kit.exit.i, %bb.l
  store ptr %.sroa.012.0.i, ptr %i.j, align 8, !alias.scope !6318
  store i64 %i.s, ptr %i.k, align 8, !alias.scope !6318
  %i.bc = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %i.s ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bc, i64 56 ; 3 uses
  %i.be = load atomic i64, ptr %i.bd acquire, align 8, !noalias !6319
  %i.bf = and i64 %i.be, 1
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

.lr.ph.i.i6:                                      ; preds = %bb.o, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8
  %.sroa.0.02.i.i7 = phi i32 [ %i.bk, %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8 ], [ 0, %bb.o ] ; 6 uses
  %i.bh = icmp ult i32 %.sroa.0.02.i.i7, 7
  br i1 %i.bh, label %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i6
  call void @_RNvNtNtCsaL1QbXo9JQH_3std6thread9functions9yield_now(), !noalias !6319
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
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
  call void @llvm.x86.sse2.pause(), !noalias !6319
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
  call void @llvm.x86.sse2.pause(), !noalias !6319
  %epil.iter120.next = add i32 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i32 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, label %.lr.ph.i.i.i14.epil, !llvm.loop !6283

_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8.loopexit.unr-lcssa, %.lr.ph.i.i.i14.epil, %_RNvMs6_NtCs3oUPovFnLWP_4core3numm15overflowing_pow.exit.i.i.i10, %bb.p
  %i.bk = add i32 %.sroa.0.02.i.i7, 1
  %i.bl = load atomic i64, ptr %i.bd acquire, align 8, !noalias !6319
  %i.bm = and i64 %i.bl, 1
  %i.bn = icmp eq i64 %i.bm, 0
  br i1 %i.bn, label %.lr.ph.i.i6, label %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i

_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i: ; preds = %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc5utilsNtB5_7Backoff10spin_heavy.exit.i.i8, %bb.o
  %.sroa.026.0.copyload = load i64, ptr %i.bc, align 8, !noalias !6319 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.427.0..sroa_idx, i64 48, i1 false)
  %i.bo = add nuw nsw i64 %i.s, 1                 ; 2 uses
  %i.bp = icmp eq i64 %i.bo, 31
  br i1 %i.bp, label %.lr.ph.i1.i, label %bb.t

.lr.ph.i1.i:                                      ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i, %bb.s
  %.sroa.0.03.i.i4 = phi i64 [ %i.by, %bb.s ], [ 0, %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i ] ; 3 uses
  %i.bq = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 56 ; 2 uses
  %i.bs = load atomic i64, ptr %i.br acquire, align 8, !noalias !6319
  %i.bt = and i64 %i.bs, 2
  %i.bu = icmp eq i64 %i.bt, 0
  br i1 %i.bu, label %bb.q, label %.lr.ph.i1.i.1

bb.q:                                             ; preds = %.lr.ph.i1.i
  %i.bv = atomicrmw or ptr %i.br, i64 4 acq_rel, align 8, !noalias !6319
  %i.bw = and i64 %i.bv, 2
  %i.bx = icmp eq i64 %i.bw, 0
  br i1 %i.bx, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %.lr.ph.i1.i.1

.lr.ph.i1.i.1:                                    ; preds = %bb.q, %.lr.ph.i1.i
  %i.by = add nuw nsw i64 %.sroa.0.03.i.i4, 2     ; 2 uses
  %i.bz = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i.i4
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 120 ; 2 uses
  %i.cb = load atomic i64, ptr %i.ca acquire, align 8, !noalias !6319
  %i.cc = and i64 %i.cb, 2
  %i.cd = icmp eq i64 %i.cc, 0
  br i1 %i.cd, label %bb.r, label %bb.s

bb.r:                                             ; preds = %.lr.ph.i1.i.1
  %i.ce = atomicrmw or ptr %i.ca, i64 4 acq_rel, align 8, !noalias !6319
  %i.cf = and i64 %i.ce, 2
  %i.cg = icmp eq i64 %i.cf, 0
  br i1 %i.cg, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.s

bb.s:                                             ; preds = %bb.r, %.lr.ph.i1.i.1
  %exitcond.not.i.i5.1 = icmp eq i64 %i.by, 30
  br i1 %exitcond.not.i.i5.1, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i, label %.lr.ph.i1.i

bb.t:                                             ; preds = %_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB2_4SlotINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE10wait_writeCsc4241EHy6Do_9typst_kit.exit.i
  %i.ch = atomicrmw or ptr %i.bd, i64 2 acq_rel, align 8, !noalias !6319
  %i.ci = and i64 %i.ch, 4
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit, label %bb.u

_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i: ; preds = %bb.w, %bb.s, %bb.u
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.012.0.i, i64 noundef 1992, i64 noundef 8) #40, !noalias !6319
  br label %_RNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB5_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4readCsc4241EHy6Do_9typst_kit.exit

bb.u:                                             ; preds = %bb.t
  %i.ck = icmp samesign ult i64 %i.s, 29
  br i1 %i.ck, label %.lr.ph.i3.i, label %_RNvMs_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB4_5BlockINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE7destroyCsc4241EHy6Do_9typst_kit.exit.sink.split.i

.lr.ph.i3.i:                                      ; preds = %bb.u, %bb.w
  %.sroa.0.03.i4.i = phi i64 [ %i.cl, %bb.w ], [ %i.bo, %bb.u ] ; 2 uses
  %i.cl = add nuw nsw i64 %.sroa.0.03.i4.i, 1     ; 2 uses
  %i.cm = getelementptr inbounds nuw [64 x i8], ptr %.sroa.012.0.i, i64 %.sroa.0.03.i4.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 56 ; 2 uses
  %i.co = load atomic i64, ptr %i.cn acquire, align 8, !noalias !6319
  %i.cp = and i64 %i.co, 2
  %i.cq = icmp eq i64 %i.cp, 0
  br i1 %i.cq, label %bb.v, label %bb.w

bb.v:                                             ; preds = %.lr.ph.i3.i
  %i.cr = atomicrmw or ptr %i.cn, i64 4 acq_rel, align 8, !noalias !6319
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !6320
  store ptr %i.g, ptr %i.f, align 8
  store ptr %1, ptr %.sroa.4.0..sroa_idx, align 8
  store ptr %i.h, ptr %.sroa.7.0..sroa_idx, align 8
  %i.cz = load i8, ptr %i.o, align 8, !range !18, !noalias !6321, !noundef !17
  %i.da = icmp eq i8 %i.cz, 1
  br i1 %i.da, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, !prof !16

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i: ; preds = %bb.y
  %i.db = call fastcc noundef ptr @_RINvMs0_NtNtNtNtCsaL1QbXo9JQH_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCs3oUPovFnLWP_4core4cell4CellINtNtB1j_6option6OptionNtNtNtNtBe_4sync4mpmc7context7ContextEEuE16get_or_init_slowNvNvNvMB2b_B29_4with7CONTEXT27___rust_std_internal_init_fnECsc4241EHy6Do_9typst_kit(ptr noundef nonnull align 8 %i.n, ptr noalias nofree noundef align 8 dereferenceable_or_null(16) null), !noalias !6320 ; 2 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %_RINvMs2_NtNtCsaL1QbXo9JQH_3std6thread5localINtB6_8LocalKeyINtNtCs3oUPovFnLWP_4core4cell4CellINtNtBZ_6option6OptionNtNtNtNtBa_4sync4mpmc7context7ContextEEE8try_withNCINvMB1Q_B1O_4withNCNvMs1_NtB1S_4listINtB32_7ChannelINtNtBZ_6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0uEs_0uECsc4241EHy6Do_9typst_kit.exit.i, label %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i

_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i: ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i, %bb.y
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.db, %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.i.i ], [ %i.n, %bb.y ] ; 4 uses
  %i.dd = load ptr, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6320, !noundef !17 ; 7 uses
  store ptr null, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !noalias !6320
  %.not.i.i.i18 = icmp eq ptr %i.dd, null
  br i1 %.not.i.i.i18, label %bb.z, label %bb.af, !prof !23

bb.z:                                             ; preds = %_RNvYNCNKNvNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtBb_7Context4with7CONTEXT00INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTINtNtB1q_6option6OptionQIB25_INtNtB1q_4cell4CellIB25_BR_EEEEEE9call_onceCsc4241EHy6Do_9typst_kit.exit.thread.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !6320
  %i.de = call noundef nonnull ptr @_RNvMNtNtNtCsaL1QbXo9JQH_3std4sync4mpmc7contextNtB2_7Context3new(), !noalias !6320 ; 2 uses
  store ptr %i.de, ptr %i.e, align 8, !noalias !6320
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6320
  store ptr %i.g, ptr %i.c, align 8, !noalias !6320
  store ptr %1, ptr %.sroa.5.0..sroa_idx5.i.i.i, align 8
  store ptr %i.h, ptr %.sroa.7.8..sroa.5.0..sroa_idx5.i.i.i.sroa_idx, align 8
  invoke fastcc void @_RNCNvMs1_NtNtNtCsaL1QbXo9JQH_3std4sync4mpmc4listINtB7_7ChannelINtNtCs3oUPovFnLWP_4core6result6ResultNtNtCseI8KtaYyPt9_12notify_types5event5EventNtNtCsZ7O2w1b9D3_6notify5error5ErrorEE4recvs_0Csc4241EHy6Do_9typst_kit(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c, ptr nonnull %i.de)
          to label %bb.ac unwind label %bb.aa, !noalias !6320

bb.aa:                                            ; preds = %bb.z
  %i.df = landingpad { ptr, i32 }
end_hunk_2
