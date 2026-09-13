Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE8completeCsa7TLgTh0CeG_9ssmanager:bb.a
  %.not1.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.x) #46
  %i.y = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0) #46
  %i.z = and i64 %i.y, 8
  %.not2.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not2.i.i.i.i, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef) #46
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.k, %bb.j, %bb.i, %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtB9_9scheduler14current_thread6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = call noundef ptr @_RNvXs5_NtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler14current_threadINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB5_6HandleENtNtB9_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #46
  %.not.i = icmp eq ptr %i.ab, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i) #46
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB27_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtBG_4sync3ArcNtNtNtB1h_9scheduler14current_thread6HandleEEEECsa7TLgTh0CeG_9ssmanager(ptr nonnull %0) #46
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task7harnessINtB5_7HarnessNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB1b_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE8completeCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_complete(ptr noundef nonnull align 8 %0) #46 ; 2 uses
  %i.d = and i64 %i.c, 8
  %.not.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !36091
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load i64, ptr %i.e, align 8, !range !91, !noalias !36091, !noundef !80
  %i.g = tail call noundef i64 @_RNvMs2_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuard5enter(i64 noundef %i.f) #46, !noalias !36091
  store i64 %i.g, ptr %i.b, align 8, !noalias !36091
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.i = load i32, ptr %i.h, align 8, !range !90, !noalias !36091, !noundef !80
  switch i32 %i.i, label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i [
    i32 0, label %bb.c
    i32 1, label %bb.d
  ]

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtBI_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0ECsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 8 %i.j) #46, !noalias !36091
  br label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

bb.d:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36092)
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !36092, !noalias !36091, !noundef !80
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.val.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !36092, !noalias !36091, !noundef !80 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 72
  %.val1.i.i.i.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !36092, !noalias !36091 ; 4 uses
  %i.p = icmp eq ptr %.val.i.i.i.i.i.i.i, null
  br i1 %i.p, label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i.i.i.i.i) ]
  %i.q = load ptr, ptr %.val1.i.i.i.i.i.i.i, align 8, !invariant.load !80, !noalias !36093 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call void %i.q(ptr noundef nonnull %.val.i.i.i.i.i.i.i) #54, !noalias !36093, !inline_history !36090
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.r = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 8
  %i.s = load i64, ptr %i.r, align 8, !range !82, !invariant.load !80, !noalias !36093 ; 2 uses
  %i.t = icmp eq i64 %i.s, 0
  br i1 %i.t, label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h
  %i.u = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i, i64 16
  %i.v = load i64, ptr %i.u, align 8, !range !84, !invariant.load !80, !noalias !36093
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i, i64 noundef %i.s, i64 noundef range(i64 1, -9223372036854775807) %i.v) #46, !noalias !36093
  br label %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i

_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h, %bb.e, %bb.d, %bb.c, %bb.b
  store i32 2, ptr %i.h, align 8
  call void @_RNvXs3_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_11TaskIdGuardNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #46, !noalias !36091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !36091
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit

bb.i:                                             ; preds = %bb.a
  %i.w = and i64 %i.c, 16
  %.not1.i.i.i.i = icmp eq i64 %i.w, 0
  br i1 %.not1.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 440 ; 2 uses
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9wake_join(ptr noundef nonnull align 8 %i.x) #46
  %i.y = tail call noundef i64 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State26unset_waker_after_complete(ptr noundef nonnull align 8 %0) #46
  %i.z = and i64 %i.y, 8
  %.not2.i.i.i.i = icmp eq i64 %i.z, 0
  br i1 %.not2.i.i.i.i, label %bb.k, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs6_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreNtB5_7Trailer9set_waker(ptr noundef nonnull align 8 %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(32) null, ptr undef) #46
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.k, %bb.j, %bb.i, %_RNvMs4_NtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4coreINtB5_4CoreNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB15_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtCsgCecv3eZDcN_5alloc4sync3ArcNtNtNtNtB9_9scheduler12multi_thread6handle6HandleEE9set_stageCsa7TLgTh0CeG_9ssmanager.exit.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ab = call noundef ptr @_RNvXs_NtNtNtNtCsczhfDQ1qNkX_5tokio7runtime9scheduler12multi_thread6handleINtNtCsgCecv3eZDcN_5alloc4sync3ArcNtB4_6HandleENtNtBa_4task8Schedule7release(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a) #46
  %.not.i = icmp eq ptr %i.ab, null
  %..i = select i1 %.not.i, i64 1, i64 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ac = call noundef zeroext i1 @_RNvMNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task5stateNtB2_5State22transition_to_terminal(ptr noundef nonnull align 8 %0, i64 noundef %..i) #46
  br i1 %i.ac, label %bb.l, label %bb.m

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc5boxed3BoxINtNtNtNtCsczhfDQ1qNkX_5tokio7runtime4task4core4CellNCNvMs_NtCs8AjStw0eGtC_16hickory_resolver11name_serverINtB27_12ProbeRequestNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderE3run0INtNtBG_4sync3ArcNtNtNtNtB1h_9scheduler12multi_thread6handle6HandleEEEECsa7TLgTh0CeG_9ssmanager(ptr nonnull %0) #46
  br label %bb.m

bb.m:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtNtB4_3any3AnyNtNtB4_6marker4SendEL_EEECsa7TLgTh0CeG_9ssmanager.exit, %bb.l
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !80, !noundef !80 ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !80
  %i.f = zext i16 %i.e to i64                     ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !80, !noundef !80 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !80
  %i.k = zext i16 %i.j to i64                     ; 4 uses
  %i.l = add nuw nsw i64 %1, %i.k                 ; 3 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1141, i64 noundef 51, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1142) #56
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.f
  br i1 %.not, label %bb.d, label %bb.e, !prof !92

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1143, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1144) #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.f, %1                 ; 4 uses
  %i.o = trunc nuw i64 %i.n to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw nsw i64 %i.l to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.r = shl nuw nsw i64 %i.k, 5                  ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.q, ptr nonnull align 4 %i.h, i64 %i.r, i1 false), !alias.scope !36113
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.t, ptr nonnull align 8 %i.s, i64 %i.r, i1 false), !alias.scope !36114
  %i.u = add nuw nsw i64 %i.n, 1                  ; 4 uses
  %i.v = sub nuw nsw i64 %i.f, %i.u               ; 4 uses
  %i.w = add nsw i64 %1, -1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36115)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !36116)
  %i.x = icmp eq i64 %i.v, %i.w
  br i1 %i.x, label %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.f, !prof !89

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @360, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @361) #56, !noalias !36117
  unreachable

_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %bb.e
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.u
  %i.z = shl nuw nsw i64 %i.v, 5                  ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull readonly align 4 %i.y, i64 %i.z, i1 false), !alias.scope !36117
  %i.aa = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.ab = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.u
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull readonly align 8 %i.ab, i64 %i.z, i1 false), !alias.scope !36118
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw [32 x i8], ptr %i.aa, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.ad, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val17 = load i64, ptr %i.ae, align 8, !noundef !80 ; 2 uses
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val17 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.ag, i64 %.val17 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.af, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.af, ptr noundef nonnull align 4 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.ah, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !36119
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.al = load i64, ptr %i.ak, align 8, !noundef !80
  %i.am = icmp eq i64 %i.al, 0
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ao = load i64, ptr %i.an, align 8, !noundef !80
  %i.ap = icmp eq i64 %i.ao, 0                    ; 2 uses
  br i1 %i.am, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit
  br i1 %i.ap, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.j, !prof !89

bb.h:                                             ; preds = %_RINvNtNtNtCsgCecv3eZDcN_5alloc11collections5btree4node13move_to_sliceTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEECsa7TLgTh0CeG_9ssmanager.exit
  br i1 %i.ap, label %bb.j, label %bb.k, !prof !92

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.loopexit.unr-lcssa: ; preds = %bb.l
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.loopexit.unr-lcssa, %bb.k
  %.sroa.0.06.i.epil.init = phi i64 [ 0, %bb.k ], [ %i.by, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.loopexit.unr-lcssa ]
  %lcmp.mod23 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod23)
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.epil.preheader
  %.sroa.0.06.i.epil = phi i64 [ %.sroa.0.06.i.epil.init, %.epil.preheader ], [ %i.aq, %bb.i ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.i ]
  %i.aq = add nuw nsw i64 %.sroa.0.06.i.epil, 1
  %i.ar = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i.epil
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 704
  store ptr %i.h, ptr %i.at, align 8
  %i.au = trunc nuw nsw i64 %.sroa.0.06.i.epil to i16
  %i.av = getelementptr inbounds nuw i8, ptr %i.as, i64 712
  store i16 %i.au, ptr %i.av, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit, label %bb.i, !llvm.loop !36107

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.loopexit.unr-lcssa, %bb.i, %bb.g
  ret void

bb.j:                                             ; preds = %bb.h, %bb.g
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1145) #56
  unreachable

bb.k:                                             ; preds = %bb.h
  %i.aw = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %1
  %i.ay = shl nuw nsw i64 %i.k, 3
  %i.az = add nuw nsw i64 %i.ay, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull align 8 dereferenceable(1) %i.aw, i64 %i.az, i1 false), !alias.scope !36120
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 720
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.ba, i64 %i.u
  %i.bc = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.aw, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.bb, i64 %i.bc, i1 false), !alias.scope !36121
  %i.bd = add nuw nsw i64 %1, %i.k
  %i.be = add nuw nsw i64 %i.bd, 1                ; 2 uses
  %xtraiter = and i64 %i.be, 3                    ; 3 uses
  %i.bf = icmp samesign ult i64 %i.l, 3
  br i1 %i.bf, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.k
  %unroll_iter = and i64 %i.be, 60
  br label %bb.l

bb.l:                                             ; preds = %bb.l, %.new
  %.sroa.0.06.i = phi i64 [ 0, %.new ], [ %i.by, %bb.l ] ; 6 uses
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.l ]
  %i.bg = or disjoint i64 %.sroa.0.06.i, 1        ; 2 uses
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.sroa.0.06.i
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 704
  store ptr %i.h, ptr %i.bj, align 8
  %i.bk = trunc nuw nsw i64 %.sroa.0.06.i to i16
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 712
  store i16 %i.bk, ptr %i.bl, align 8
  %i.bm = or disjoint i64 %.sroa.0.06.i, 2        ; 2 uses
  %i.bn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bg
  %i.bo = load ptr, ptr %i.bn, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 704
  store ptr %i.h, ptr %i.bp, align 8
  %i.bq = trunc nuw nsw i64 %i.bg to i16
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 712
  store i16 %i.bq, ptr %i.br, align 8
  %i.bs = or disjoint i64 %.sroa.0.06.i, 3        ; 2 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bm
  %i.bu = load ptr, ptr %i.bt, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bu, i64 704
  store ptr %i.h, ptr %i.bv, align 8
  %i.bw = trunc nuw nsw i64 %i.bm to i16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bu, i64 712
  store i16 %i.bw, ptr %i.bx, align 8
  %i.by = add nuw nsw i64 %.sroa.0.06.i, 4        ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bs
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 704
  store ptr %i.h, ptr %i.cb, align 8
  %i.cc = trunc nuw nsw i64 %i.bs to i16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 712
  store i16 %i.cc, ptr %i.cd, align 8
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.loopexit.unr-lcssa, label %bb.l
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantEE16bulk_steal_rightCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0 = alloca [32 x i8], align 8            ; 2 uses
  %.sroa.2 = alloca [32 x i8], align 8            ; 2 uses
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !80, !noundef !80 ; 10 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 714 ; 2 uses
  %i.e = load i16, ptr %i.d, align 2, !noundef !80 ; 6 uses
  %i.f = zext i16 %i.e to i64                     ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !80, !noundef !80 ; 12 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 714 ; 2 uses
  %i.j = load i16, ptr %i.i, align 2, !noundef !80
  %i.k = zext i16 %i.j to i64                     ; 3 uses
  %i.l = add nuw nsw i64 %1, %i.f                 ; 2 uses
  %i.m = icmp samesign ult i64 %i.l, 12
  br i1 %i.m, label %bb.c, label %bb.b, !prof !89

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1146, i64 noundef 50, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1147) #56
  unreachable

bb.c:                                             ; preds = %bb.a
  %.not = icmp samesign ugt i64 %1, %i.k
  br i1 %.not, label %bb.d, label %bb.e, !prof !92

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1148, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1149) #56
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.n = sub nuw nsw i64 %i.k, %1                 ; 4 uses
  %i.o = trunc nuw nsw i64 %i.l to i16
  store i16 %i.o, ptr %i.d, align 2
  %i.p = trunc nuw i64 %i.n to i16
  store i16 %i.p, ptr %i.i, align 2
  %i.q = add nsw i64 %1, -1                       ; 3 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %i.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 352 ; 4 uses
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %i.q
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  %.val = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val18 = load i64, ptr %i.u, align 8, !noundef !80 ; 2 uses
  %i.v = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val18 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.val, i64 352
  %i.x = getelementptr inbounds nuw [32 x i8], ptr %i.w, i64 %.val18 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, ptr noundef nonnull align 4 dereferenceable(32) %i.v, i64 32, i1 false)
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.v, ptr noundef nonnull align 4 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, ptr noundef nonnull align 8 dereferenceable(32) %i.x, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !36141
  %i.y = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.y, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0, i64 32, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 352 ; 2 uses
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aa, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2, i64 32, i1 false)
  %i.ab = add nuw nsw i64 %i.f, 1                 ; 5 uses
  %i.ac = getelementptr inbounds nuw [32 x i8], ptr %i.c, i64 %i.ab
  %i.ad = shl nuw nsw i64 %i.q, 5                 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ac, ptr nonnull readonly align 4 %i.h, i64 %i.ad, i1 false), !alias.scope !36142
  %i.ae = getelementptr inbounds nuw [32 x i8], ptr %i.z, i64 %i.ab
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.ae, ptr nonnull readonly align 8 %i.s, i64 %i.ad, i1 false), !alias.scope !36143
  %i.af = getelementptr inbounds nuw [32 x i8], ptr %i.h, i64 %1
  %i.ag = shl nuw nsw i64 %i.n, 5                 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %i.h, ptr nonnull align 4 %i.af, i64 %i.ag, i1 false), !alias.scope !36144
  %i.ah = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %1
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.s, ptr nonnull align 8 %i.ah, i64 %i.ag, i1 false), !alias.scope !36145
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !80
  %i.ak = icmp eq i64 %i.aj, 0
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.am = load i64, ptr %i.al, align 8, !noundef !80
  %i.an = icmp eq i64 %i.am, 0                    ; 2 uses
  br i1 %i.ak, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.an, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25, label %bb.h, !prof !89

bb.g:                                             ; preds = %bb.e
  br i1 %i.an, label %bb.h, label %bb.i, !prof !92

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25.loopexit.unr-lcssa: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader
  %.sroa.0.06.i23.epil.init = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25.loopexit.unr-lcssa ]
  %lcmp.mod30 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod30)
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader
  %.sroa.0.06.i23.epil = phi i64 [ %i.ao, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil ], [ %.sroa.0.06.i23.epil.init, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader ] ; 4 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil ], [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader ]
  %i.ao = add nuw nsw i64 %.sroa.0.06.i23.epil, 1
  %i.ap = icmp samesign ult i64 %.sroa.0.06.i23.epil, 12
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23.epil
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 704
  store ptr %i.h, ptr %i.as, align 8
  %i.at = trunc nuw nsw i64 %.sroa.0.06.i23.epil to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ar, i64 712
  store i16 %i.at, ptr %i.au, align 8
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil, !llvm.loop !36135

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25.loopexit.unr-lcssa, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil, %bb.f
  ret void

bb.h:                                             ; preds = %bb.g, %bb.f
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @314, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1150) #56
  unreachable

bb.i:                                             ; preds = %bb.g
  %i.av = getelementptr inbounds nuw i8, ptr %i.h, i64 720 ; 8 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 720 ; 6 uses
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.ay = shl nuw nsw i64 %1, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.ax, ptr noundef nonnull readonly align 8 dereferenceable(1) %i.av, i64 %i.ay, i1 false), !alias.scope !36146
  %i.az = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %1
  %i.ba = shl nuw nsw i64 %i.n, 3
  %i.bb = add nuw nsw i64 %i.ba, 8
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.av, ptr noundef nonnull align 8 dereferenceable(1) %i.az, i64 %i.bb, i1 false), !alias.scope !36147
  %i.bc = icmp ult i16 %i.e, 11
  tail call void @llvm.assume(i1 %i.bc)
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.ab
  %i.be = load ptr, ptr %i.bd, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 704
  store ptr %i.c, ptr %i.bf, align 8
  %i.bg = trunc nuw nsw i64 %i.ab to i16
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 712
  store i16 %i.bg, ptr %i.bh, align 8
  %exitcond.not.i = icmp eq i64 %1, 1
  br i1 %exitcond.not.i, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bi = add nuw nsw i64 %i.f, 2                 ; 2 uses
  %i.bj = icmp samesign ult i16 %i.e, 10
  tail call void @llvm.assume(i1 %i.bj)
  %i.bk = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bi
  %i.bl = load ptr, ptr %i.bk, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bl, i64 704
  store ptr %i.c, ptr %i.bm, align 8
  %i.bn = trunc nuw nsw i64 %i.bi to i16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bl, i64 712
  store i16 %i.bn, ptr %i.bo, align 8
  %exitcond.not.i.1 = icmp eq i64 %1, 2
  br i1 %exitcond.not.i.1, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bp = add nuw nsw i64 %i.f, 3                 ; 2 uses
  %i.bq = icmp samesign ult i16 %i.e, 9
  tail call void @llvm.assume(i1 %i.bq)
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bp
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 704
  store ptr %i.c, ptr %i.bt, align 8
  %i.bu = trunc nuw nsw i64 %i.bp to i16
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bs, i64 712
  store i16 %i.bu, ptr %i.bv, align 8
  %exitcond.not.i.2 = icmp eq i64 %1, 3
  br i1 %exitcond.not.i.2, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bw = add nuw nsw i64 %i.f, 4                 ; 2 uses
  %i.bx = icmp samesign ult i16 %i.e, 8
  tail call void @llvm.assume(i1 %i.bx)
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.bw
  %i.bz = load ptr, ptr %i.by, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bz, i64 704
  store ptr %i.c, ptr %i.ca, align 8
  %i.cb = trunc nuw nsw i64 %i.bw to i16
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bz, i64 712
  store i16 %i.cb, ptr %i.cc, align 8
  %exitcond.not.i.3 = icmp eq i64 %1, 4
  br i1 %exitcond.not.i.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.cd = add nuw nsw i64 %i.f, 5                 ; 2 uses
  %i.ce = icmp ne i16 %i.e, 7
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.cd
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 704
  store ptr %i.c, ptr %i.ch, align 8
  %i.ci = trunc nuw nsw i64 %i.cd to i16
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 712
  store i16 %i.ci, ptr %i.cj, align 8
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i
  %i.ck = add nuw nsw i64 %i.k, 1
  %i.cl = sub nsw i64 %i.ck, %1                   ; 2 uses
  %xtraiter = and i64 %i.cl, 3                    ; 3 uses
  %i.cm = icmp samesign ult i64 %i.n, 3
  br i1 %i.cm, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.epil.preheader, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader.new

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader.new: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader
  %unroll_iter = and i64 %i.cl, -4
  br label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit

_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader.new
  %.sroa.0.06.i23 = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader.new ], [ %i.df, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit ] ; 7 uses
  %niter = phi i64 [ 0, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit.preheader.new ], [ %niter.next.3, %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit ]
  %i.cn = or disjoint i64 %.sroa.0.06.i23, 1      ; 2 uses
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.0.06.i23
  %i.cp = load ptr, ptr %i.co, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 704
  store ptr %i.h, ptr %i.cq, align 8
  %i.cr = trunc nuw nsw i64 %.sroa.0.06.i23 to i16
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cp, i64 712
  store i16 %i.cr, ptr %i.cs, align 8
  %i.ct = or disjoint i64 %.sroa.0.06.i23, 2      ; 2 uses
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cn
  %i.cv = load ptr, ptr %i.cu, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 704
  store ptr %i.h, ptr %i.cw, align 8
  %i.cx = trunc nuw nsw i64 %i.cn to i16
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cv, i64 712
  store i16 %i.cx, ptr %i.cy, align 8
  %i.cz = or disjoint i64 %.sroa.0.06.i23, 3      ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.ct
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 704
  store ptr %i.h, ptr %i.dc, align 8
  %i.dd = trunc nuw nsw i64 %i.ct to i16
  %i.de = getelementptr inbounds nuw i8, ptr %i.db, i64 712
  store i16 %i.dd, ptr %i.de, align 8
  %i.df = add nuw nsw i64 %.sroa.0.06.i23, 4      ; 2 uses
  %i.dg = icmp samesign ult i64 %.sroa.0.06.i23, 12
  tail call void @llvm.assume(i1 %i.dg)
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cz
  %i.di = load ptr, ptr %i.dh, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 704
  store ptr %i.h, ptr %i.dj, align 8
  %i.dk = trunc nuw nsw i64 %i.cz to i16
  %i.dl = getelementptr inbounds nuw i8, ptr %i.di, i64 712
  store i16 %i.dk, ptr %i.dl, align 8
  %niter.next.3 = add nuw nsw i64 %niter, 4       ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit25.loopexit.unr-lcssa, label %_RINvMsp_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker3MutNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service6server8udprelay14UdpAssociationNtNtCs5Xr050g3D4S_3std4time7InstantENtB1a_8InternalE30correct_childrens_parent_linksINtNtNtB1w_3ops5range5RangejEECsa7TLgTh0CeG_9ssmanager.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs10_NtNtNtCsgCecv3eZDcN_5alloc11collections5btree4nodeINtB6_16BalancingContextyTNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net13packet_window18PacketWindowFilterNtNtCs5Xr050g3D4S_3std4time7InstantEE15bulk_steal_leftCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %0, i64 noundef range(i64 1, 6) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [1048 x i8], align 8              ; 4 uses
  %i.b = alloca [1048 x i8], align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !80, !noundef !80 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 11626 ; 2 uses
  %i.f = load i16, ptr %i.e, align 2, !noundef !80
  %i.g = zext i16 %i.f to i64                     ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !80, !noundef !80 ; 10 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 11626 ; 2 uses
  %i.k = load i16, ptr %i.j, align 2, !noundef !80
  %i.l = zext i16 %i.k to i64                     ; 4 uses
  %i.m = add nuw nsw i64 %1, %i.l                 ; 3 uses
  %i.n = icmp samesign ult i64 %i.m, 12
  br i1 %i.n, label %bb.c, label %bb.b, !prof !89

end_hunk_0
