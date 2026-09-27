Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssmanager.ssmanager.75f5cfe302cf09d8-cgu.0?download=true
inline.NumInlined: 18859
inline.NumDeleted: 9054
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 53
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_RNvXs1Y_CskLEkjrY29GY_16rustls_pki_typesNtB6_8UnixTimeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt
define internal noundef zeroext i1 @_RNvXs1Y_CskLEkjrY29GY_16rustls_pki_typesNtB6_8UnixTimeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1553, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @221) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1_NtCs2Z77Vc7pSLS_13hickory_proto5errorNtB5_10ProtoErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = load i8, ptr %0, align 8, !range !144, !noundef !80
  switch i8 %i.l, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.n, ptr %i.k, align 8
  %i.o = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1554, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1555, i64 noundef 3, ptr noundef nonnull %i.m, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1389, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1392, i64 noundef 3, ptr noundef nonnull %i.k, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @219) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.n

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.j, align 8
  %i.q = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1557, i64 noundef 6, ptr noundef nonnull %i.j, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1556) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.i, align 8
  %i.t = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1560, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1561, i64 noundef 6, ptr noundef nonnull %i.r, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1558, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1562, i64 noundef 5, ptr noundef nonnull %i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1559) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.n

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.u, ptr %i.h, align 8
  %i.v = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1563, i64 noundef 21, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @219) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.n

bb.f:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.w, ptr %i.g, align 8
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1565, i64 noundef 7, ptr noundef nonnull %i.g, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1564) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.y, ptr %i.f, align 8
  %i.z = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1566, i64 noundef 3, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @201) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.e, align 8
  %i.ab = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1567, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1568, i64 noundef 5, ptr noundef nonnull %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @219) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.n

bb.i:                                             ; preds = %bb.a
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1569, i64 noundef 12) #46
  br label %bb.n

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.ad, ptr %i.d, align 8
  %i.ae = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1571, i64 noundef 10, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1570) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.n

bb.k:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.af, ptr %i.c, align 8
  %i.ag = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1424, i64 noundef 4, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1572) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.n

bb.l:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ah, ptr %i.b, align 8
  %i.ai = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1573, i64 noundef 8, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1423) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.aj, ptr %i.a, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1575, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1574) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.o, %bb.b ], [ %i.q, %bb.c ], [ %i.t, %bb.d ], [ %i.v, %bb.e ], [ %i.x, %bb.f ], [ %i.z, %bb.g ], [ %i.ab, %bb.h ], [ %i.ac, %bb.i ], [ %i.ae, %bb.j ], [ %i.ag, %bb.k ], [ %i.ai, %bb.l ], [ %i.ak, %bb.m ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone10as_any_mutCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1576, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone6as_anyCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1576, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone8into_anyCsa7TLgTh0CeG_9ssmanager(ptr noalias noundef nonnull align 8 %0) unnamed_addr #6 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @1576, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nounwind nonlazybind uwtable
define internal { ptr, ptr } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9clone_boxCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !80 ; 3 uses
  %.not.i = icmp eq ptr %.val, null
  br i1 %.not.i, label %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = atomicrmw add ptr %.val, i64 1 monotonic, align 8
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %bb.c, label %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.a, %bb.b
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #46 ; 3 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.d, label %_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit, !prof !83

bb.d:                                             ; preds = %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #55
  unreachable

_RNvNtCsgCecv3eZDcN_5alloc5boxed14box_new_uninit.exit: ; preds = %_RNvXsa_NtCsaI3lGUjttVO_5hyper7upgradeNtB5_9OnUpgradeNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  store ptr %.val, ptr %i.c, align 8
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.c, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr @234, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvXs1_NtCs7ewmRfXve8r_4http10extensionsNtNtCsaI3lGUjttVO_5hyper7upgrade9OnUpgradeNtB5_8AnyClone9type_nameCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @1577, i64 25 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #25 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !80, !noundef !80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noundef !80 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !80, !align !86, !noundef !80
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.3.0 = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1_NtNtCs2Z77Vc7pSLS_13hickory_proto2op7op_codeNtB5_6OpCodeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !107, !noundef !80
  switch i8 %i.b, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1579, i64 noundef 5) #46
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1580, i64 noundef 6) #46
  br label %bb.g

bb.d:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1581, i64 noundef 6) #46
  br label %bb.g

bb.e:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1582, i64 noundef 6) #46
  br label %bb.g

bb.f:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1583, i64 noundef 7, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @218) #46
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ], [ %i.e, %bb.d ], [ %i.f, %bb.e ], [ %i.h, %bb.f ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs1_NtNtCscVsx2cUGvkQ_12futures_util6future10maybe_doneINtB5_9MaybeDoneNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12dns_resolverNtB1f_11DnsResolver6lookup0ENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsa7TLgTh0CeG_9ssmanager(ptr noundef nonnull align 16 %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 4 uses
  %i.h = alloca [16 x i8], align 8                ; 4 uses
  %i.i = alloca [16 x i8], align 8                ; 6 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [110 x i8], align 2               ; 6 uses
  %.sroa.64.i.i.i.i.i.i = alloca [107 x i8], align 1 ; 6 uses
  %i.m = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.833.i.i.i.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.523.i.i.i.i.i = alloca [104 x i8], align 8 ; 8 uses
  %i.n = alloca [120 x i8], align 8               ; 9 uses
  %.sroa.6.i.i.i.i = alloca [16 x i8], align 8    ; 7 uses
  %.sroa.813.i.i.i.i = alloca [16 x i8], align 8  ; 7 uses
  %.sroa.510.sroa.4.i.sroa.6.i.i = alloca [40 x i8], align 1 ; 8 uses
  %.sroa.7.i.i.i = alloca [96 x i8], align 8      ; 6 uses
  %i.o = alloca [152 x i8], align 8               ; 9 uses
  %.sroa.044.i.i.i = alloca [152 x i8], align 8   ; 7 uses
  %.sroa.4.sroa.2.i.i.i = alloca [16 x i8], align 8 ; 7 uses
  %.sroa.10.i.i.i = alloca [16 x i8], align 8     ; 8 uses
  %.sroa.1274.i.i = alloca [136 x i8], align 8    ; 11 uses
  %.sroa.965.sroa.5.i.i = alloca [40 x i8], align 1 ; 7 uses
  %.sroa.1066.i.i = alloca [96 x i8], align 8     ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.38.sroa.3.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.410.i.i = alloca [96 x i8], align 8      ; 6 uses
  %i.q = alloca [152 x i8], align 8               ; 8 uses
  %i.r = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.3.sroa.3.i.i = alloca [40 x i8], align 8 ; 7 uses
  %.sroa.4.i.i = alloca [96 x i8], align 8        ; 6 uses
  %i.s = alloca [152 x i8], align 8               ; 8 uses
  %.sroa.033.i.i = alloca [20864 x i8], align 16  ; 7 uses
  %.sroa.936.i.i = alloca [152 x i8], align 16    ; 7 uses
  %.sroa.1020.i = alloca [136 x i8], align 8      ; 5 uses
  %.sroa.016.i = alloca [152 x i8], align 16      ; 7 uses
  %.sroa.6 = alloca [136 x i8], align 8           ; 4 uses
  %i.t = load i64, ptr %0, align 16, !range !88, !noundef !80
  switch i64 %i.t, label %default.unreachable17 [
    i64 0, label %bb.b
    i64 1, label %bb.dm
    i64 2, label %bb.dj
  ], !prof !200

default.unreachable17:                            ; preds = %bb.dg, %bb.dd, %bb.cq, %bb.cl, %bb.ce, %bb.ca, %bb.bv, %bb.bn, %bb.bb, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1020.i)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 21768 ; 3 uses
  %i.w = load i8, ptr %i.v, align 8, !range !114, !noalias !40811, !noundef !80
  switch i8 %i.w, label %bb.c [
    i8 0, label %bb.d
    i8 1, label %bb.f
    i8 3, label %bb.g
  ]

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 21440 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 21608
  %i.z = load ptr, ptr %i.y, align 8, !noalias !40811, !nonnull !80, !align !86, !noundef !80
  store ptr %i.z, ptr %i.x, align 16, !noalias !40811
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 21448
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 21616
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.aa, ptr noundef nonnull align 16 dereferenceable(152) %i.ab, i64 152, i1 false), !noalias !40811
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 21600
  %i.ad = tail call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 21, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @669, i64 noundef 13) #53, !noalias !40812 ; 2 uses
  store ptr %i.ad, ptr %i.ac, align 16, !noalias !40811
  %i.ae = load ptr, ptr %i.x, align 16, !noalias !40811, !nonnull !80, !align !86, !noundef !80
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 280
  %i.ag = load i64, ptr %i.af, align 8, !noalias !40812, !noundef !80 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 21424
  store i64 0, ptr %i.ah, align 16, !noalias !40811
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 21432
  store i64 %i.ag, ptr %i.ai, align 8, !noalias !40811
  br label %bb.e

bb.e:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i, %bb.d
  %i.aj = phi ptr [ %.sroa.672.1.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.ad, %bb.d ]
  %i.ak = phi i64 [ %.pre26.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ %i.ag, %bb.d ]
  %i.al = phi i64 [ %.pre.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i ], [ 0, %bb.d ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !40813)
  call void @llvm.experimental.noalias.scope.decl(metadata !40814)
  %i.am = icmp ult i64 %i.al, %i.ak
  br i1 %i.am, label %.thread.i, label %bb.dl

bb.f:                                             ; preds = %bb.b
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @672) #56, !noalias !40812
  unreachable

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.016.i), !noalias !40811
  %.phi.trans.insert27.i = getelementptr inbounds nuw i8, ptr %0, i64 376 ; 10 uses
  %.pre28.i = load i8, ptr %.phi.trans.insert27.i, align 8, !range !108, !noalias !40815
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1274.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.965.sroa.5.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1066.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.38.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.sroa.3.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i)
  switch i8 %.pre28.i, label %bb.h [
    i8 0, label %._crit_edge
    i8 1, label %bb.br
    i8 3, label %bb.j
    i8 4, label %bb.ch
    i8 5, label %bb.o
  ]

._crit_edge:                                      ; preds = %bb.g
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.pre = load ptr, ptr %.phi.trans.insert, align 8, !noalias !40815
  br label %bb.i

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %._crit_edge, %.thread.i
  %i.an = phi ptr [ %i.mp, %.thread.i ], [ %.pre, %._crit_edge ] ; 4 uses
  %i.ao = phi ptr [ %.sroa.9.0..sroa_idx.i, %.thread.i ], [ %.phi.trans.insert27.i, %._crit_edge ] ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtBb_3fmt5Write10write_charCsa7TLgTh0CeG_9ssmanager:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !46242
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !46242
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46243)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !46243, !noalias !46244, !nonnull !80, !align !86, !noundef !80
  %i.ad = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #46, !noalias !46243 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit

bb.h:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !46243, !noalias !46244, !noundef !80 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46245
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i
    i64 1, label %bb.k
  ], !prof !111

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !46246, !noalias !46245
  store i8 3, ptr %i.a, align 8, !alias.scope !46246, !noalias !46245
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #46, !noalias !46247
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46245
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !46243, !noalias !46244
  br label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit

_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtNtBb_3fmt5Write9write_fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtCsgCecv3eZDcN_5alloc5boxed3BoxNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service3net8outbound6stream19OutboundProxyStreamEEENtB4_12SpecWriteFmt14spec_write_fmtCsa7TLgTh0CeG_9ssmanager.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @342, ptr noundef nonnull %1, ptr noundef nonnull %2) #46, !inline_history !46248
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB23_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtBb_3fmt5Write10write_charCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 0, ptr %i.b, align 4
  %i.c = icmp samesign ult i32 %1, 128
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = icmp samesign ult i32 %1, 2048
  %i.e = trunc i32 %1 to i8
  %i.f = and i8 %i.e, 63
  %i.g = or disjoint i8 %i.f, -128                ; 3 uses
  %i.h = lshr i32 %1, 6
  %i.i = trunc i32 %i.h to i8                     ; 2 uses
  %i.j = and i8 %i.i, 63
  %i.k = or disjoint i8 %i.j, -128                ; 2 uses
  %i.l = lshr i32 %1, 12
  %i.m = trunc i32 %i.l to i8                     ; 2 uses
  %i.n = and i8 %i.m, 63
  %i.o = or disjoint i8 %i.n, -128
  %i.p = lshr i32 %1, 18
  %i.q = trunc nuw nsw i32 %i.p to i8
  %i.r = or disjoint i8 %i.q, -16
  br i1 %i.d, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.s = trunc nuw nsw i32 %1 to i8
  store i8 %i.s, ptr %i.b, align 4, !alias.scope !46258
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.d:                                             ; preds = %bb.b
  %i.t = or disjoint i8 %i.i, -64
  store i8 %i.t, ptr %i.b, align 4, !alias.scope !46258
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.g, ptr %i.u, align 1, !alias.scope !46258
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.e:                                             ; preds = %bb.b
  %i.v = icmp samesign ult i32 %1, 65536
  br i1 %i.v, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.w = or disjoint i8 %i.m, -32
  store i8 %i.w, ptr %i.b, align 4, !alias.scope !46258
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.k, ptr %i.x, align 1, !alias.scope !46258
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.g, ptr %i.y, align 2, !alias.scope !46258
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.r, ptr %i.b, align 4, !alias.scope !46258
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 %i.o, ptr %i.z, align 1, !alias.scope !46258
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i8 %i.k, ptr %i.aa, align 2, !alias.scope !46258
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  store i8 %i.g, ptr %i.ab, align 1, !alias.scope !46258
  br label %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit

_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46259)
  %i.ac = load ptr, ptr %0, align 8, !alias.scope !46259, !noalias !46260, !nonnull !80, !align !86, !noundef !80
  %i.ad = call noundef ptr @_RNvYINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB11_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEENtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %.sroa.0.05.i) #46, !noalias !46259 ; 2 uses
  %.not.i = icmp ne ptr %i.ad, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit

bb.h:                                             ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val.i = load ptr, ptr %i.ae, align 8, !alias.scope !46259, !noalias !46260, !noundef !80 ; 4 uses
  %i.af = icmp eq ptr %.val.i, null
  br i1 %i.af, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !46261
  %i.ag = ptrtoint ptr %.val.i to i64             ; 2 uses
  %i.ah = and i64 %i.ag, 3
  switch i64 %i.ah, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i
    i64 1, label %bb.k
  ], !prof !111

default.unreachable:                              ; preds = %bb.i
  unreachable

bb.j:                                             ; preds = %bb.i
  %i.ai = icmp ult ptr %.val.i, inttoptr (i64 188978561024 to ptr)
  %i.aj = and i64 %i.ag, 1095216660480
  %i.ak = icmp ne i64 %i.aj, 1095216660480
  call void @llvm.assume(i1 %i.ai)
  call void @llvm.assume(i1 %i.ak)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.al = getelementptr i8, ptr %.val.i, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.al) ]
  %i.am = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.al, ptr %i.am, align 8, !alias.scope !46262, !noalias !46261
  store i8 3, ptr %i.a, align 8, !alias.scope !46262, !noalias !46261
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.am) #46, !noalias !46263
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !46261
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsa7TLgTh0CeG_9ssmanager.exit.i.i, %bb.h
  store ptr %i.ad, ptr %i.ae, align 8, !alias.scope !46259, !noalias !46260
  br label %_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit

_RNvXNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmtINtB2_7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB26_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtB8_3fmt5Write9write_strCsa7TLgTh0CeG_9ssmanager.exit: ; preds = %_RNvNtNtCsf3Ta7LF998c_4core4char7methods15encode_utf8_raw.exit, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECsa7TLgTh0CeG_9ssmanager.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %.not.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYINtNvNtNtCsf3Ta7LF998c_4core2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB23_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtNtBb_3fmt5Write9write_fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(16) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQINtNvNtNtBa_2io5write17default_write_fmt7AdapterINtNtCs3Ol6WPi9G6e_12tokio_rustls6common16SyncWriteAdapterINtNtNtCsi1FNhPBS7PW_11hickory_net7runtime8iocompat17AsyncIoStdAsTokioINtB2z_17AsyncIoTokioAsStdNtNtNtCslxdWNweD0x2_11shadowsocks3net3tcp9TcpStreamEEEENtB4_12SpecWriteFmt14spec_write_fmtCsa7TLgTh0CeG_9ssmanager.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @346, ptr noundef nonnull %1, ptr noundef nonnull %2) #46, !inline_history !46264
  ret i1 %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, ptr } @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLE0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsa7TLgTh0CeG_9ssmanager(ptr nofree readnone captures(none) %0) unnamed_addr #24 {
bb.a:
  ret { ptr, ptr } { ptr @334, ptr null }
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs0_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsa7TLgTh0CeG_9ssmanager(ptr nofree readnone captures(none) %0) unnamed_addr #24 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs1_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsa7TLgTh0CeG_9ssmanager(ptr nofree readnone captures(none) %0) unnamed_addr #24 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNCNvNvNtNtCsaI3lGUjttVO_5hyper6common4task10noop_waker11NOOP_VTABLEs_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTPuEE9call_onceCsa7TLgTh0CeG_9ssmanager(ptr nofree readnone captures(none) %0) unnamed_addr #24 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2735, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, target_mem: none) uwtable
define internal { ptr, ptr } @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #31 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !46267)
  %i.a = load ptr, ptr %0, align 8, !alias.scope !46267, !nonnull !80, !noundef !80 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !noalias !46267, !noundef !80 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noalias !46267, !nonnull !80, !align !86, !noundef !80
  br label %_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit

_RNvXs1_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5error5Error6source.exit: ; preds = %bb.a, %bb.b
  %.sroa.3.0.i = phi ptr [ %i.d, %bb.b ], [ undef, %bb.a ]
  %i.e = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, ptr } %i.e, ptr %.sroa.3.0.i, 1
  ret { ptr, ptr } %i.f
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7provideCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCsaI3lGUjttVO_5hyper5error5ErrorNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2736, i64 16, i1 false)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCsa7TLgTh0CeG_9ssmanager.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @2025, ptr noundef nonnull %1, ptr noundef nonnull %2) #46, !inline_history !46268
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error11descriptionCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2735, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7provideCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtCsf3Ta7LF998c_4core2io5error5ErrorNtNtB8_5error5Error7type_idCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2738, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error11descriptionCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2735, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error5causeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error6sourceCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error7provideCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtNtNtCsaI3lGUjttVO_5hyper5proto2h16encode6NotEofNtNtCsf3Ta7LF998c_4core5error5Error7type_idCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2741, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_11descriptionCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @2735, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_5causeCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_6sourceCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7provideCsa7TLgTh0CeG_9ssmanager(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNvXsf_NtNtCsgCecv3eZDcN_5alloc5boxed7convertINtBc_3BoxDNtNtCsf3Ta7LF998c_4core5error5ErrorNtNtB11_6marker4SendNtB1y_4SyncEL_EINtNtB11_7convert4FromNtNtBe_6string6StringE4from11StringErrorBX_7type_idCsa7TLgTh0CeG_9ssmanager(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #13 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @2742, i64 16, i1 false)
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #32

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RNvNtNtCs1jR6m42rQJO_4rand4rngs6thread3rng() unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #32

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs_NtCs5cGWJDriNjd_6notify7inotifyNtB4_14INotifyWatcher18from_event_handler(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(none) dereferenceable(56), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #33

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: cold minsize noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #35

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #36

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #37

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #32

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i32 } @_RNvMNtCs5Xr050g3D4S_3std4timeNtB2_7Instant3now() unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtNtNtCsb28OZjLZAOu_6rustls6client11client_conn10connectionNtB5_16ClientConnection13new_with_alpn(ptr dead_on_unwind noalias nofree noundef writable sret([1056 x i8]) align 8 captures(none) dereferenceable(1056), ptr noundef nonnull, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newNtNtCsb28OZjLZAOu_6rustls5error5ErrorECs8UFHSMUhzWe_19shadowsocks_service(i8 noundef range(i8 0, 44), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64)) unnamed_addr #8

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #38

; Function Attrs: nounwind nonlazybind uwtable
declare { i64, i32 } @_RNvXs_NtCs5Xr050g3D4S_3std4timeNtB4_7InstantINtNtNtCsf3Ta7LF998c_4core3ops5arith3AddNtNtBN_4time8DurationE3add(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message9add_query(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(88)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs7ewmRfXve8r_4http8responseNtB5_5Parts3new(ptr dead_on_unwind noalias nofree noundef writable sret([112 x i8]) align 8 captures(none) dereferenceable(112)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs8_NtCsb1q9vQXIC0o_7tracing4spanNtB5_5Inner12follows_from(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMs2_NtCs1kwRxRulhfk_12tracing_core10dispatcherNtB5_8Dispatch5enter(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCsb28OZjLZAOu_6rustls12common_stateNtB2_11CommonState8send_msg(ptr noalias nofree noundef align 8 dereferenceable(840), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(168), i1 noundef zeroext) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs1_NtNtCsb28OZjLZAOu_6rustls4msgs7messageNtB5_7Message17is_handshake_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(168), i8 noundef range(i8 0, 21), i8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCsb28OZjLZAOu_6rustls12common_stateNtB2_11CommonState18send_warning_alert(ptr noalias nofree noundef align 8 dereferenceable(840), i8 noundef range(i8 0, 36), i8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i8 -1, 41) i8 @_RNvXs1_NtCsbYq7bIcWEdL_18shadowsocks_crypto4kindNtB5_10CipherKindNtNtNtCsf3Ta7LF998c_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #32

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #0

; Function Attrs: noinline nounwind nonlazybind uwtable
declare void @_RINvNtNtNtCsf3Ta7LF998c_4core5slice4sort8unstable7ipnsortTyjENvYBT_NtNtB8_3cmp10PartialOrd2ltECs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 576460752303423488), ptr noalias nofree noundef nonnull) unnamed_addr #8

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #39

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsknai52m1gBp_5bytes5bytes13static_to_vec(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvNtCsknai52m1gBp_5bytes5bytes13static_to_mut(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noundef, ptr noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message10add_answer(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message14add_additional(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef nonnull align 8 ptr @_RNvMNtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB2_7Message13add_authority(ptr noalias nofree noundef align 8 dereferenceable(152), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(272)) unnamed_addr #0

; Function Attrs: cold noinline nounwind nonlazybind uwtable
declare noundef range(i8 0, 3) i8 @_RNvMNtCs1kwRxRulhfk_12tracing_core8callsiteNtB2_15DefaultCallsite8register(ptr noundef nonnull align 8) unnamed_addr #40

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsb1q9vQXIC0o_7tracing15___macro_support12___is_enabled(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), i8 noundef range(i8 0, 3)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXsl_NtCs1kwRxRulhfk_12tracing_core5fieldNtNtCsf3Ta7LF998c_4core3fmt9ArgumentsNtB5_5Value6record(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40), ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtCs1kwRxRulhfk_12tracing_core5eventNtB2_5Event8dispatch(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsg_NtCsf3Ta7LF998c_4core3fmtbNtB5_7Display3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtNtNtCsf3Ta7LF998c_4core3fmt3num3impjNtB9_7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtCsknai52m1gBp_5bytes9bytes_mutNtB5_8BytesMutNtNtNtB7_3buf7buf_mut6BufMut9put_slice(ptr noalias nofree noundef align 8 dereferenceable(32), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef range(i64 0, -9223372036854775808)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1_NtNtCs2dlyTE5y14r_2h25frame6reasonNtB5_6ReasonNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold noinline noreturn nounwind nonlazybind uwtable
declare void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #36

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #36

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvXs2_NtNtCs2dlyTE5y14r_2h25proto5errorNtB5_5ErrorINtNtCsf3Ta7LF998c_4core7convert4FromNtNtNtBS_2io5error5ErrorE4from(ptr dead_on_unwind noalias nofree noundef writable sret([40 x i8]) align 8 captures(none) dereferenceable(40), ptr noundef nonnull) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMCsckWnq44jmzE_12atomic_wakerNtB2_11AtomicWaker8register(ptr noundef nonnull align 8, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvMNtNtCsczhfDQ1qNkX_5tokio7runtime7runtimeNtB2_7Runtime5enter(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noundef nonnull align 8) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs3_NtCs2dlyTE5y14r_2h25errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noundef nonnull align 8, ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsI_NtCs5Xr050g3D4S_3std7processNtB5_10ExitStatusNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs_NtCs5cGWJDriNjd_6notify5errorNtB4_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCs7ewmRfXve8r_4http6statusNtB5_10StatusCodeNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsj_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsl_NtCs8UFHSMUhzWe_19shadowsocks_service6configNtB5_6ConfigNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(1488), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs0_NtCsaI3lGUjttVO_5hyper5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs9_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8NetErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

end_hunk_1
