Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/coreutils-rs/original/uu_ls-a3a189bdfb08ca20.uu_ls.41ca68266698dde8-cgu.0?download=true
inline.NumInlined: 3251
inline.NumDeleted: 1478
loop-unroll.NumCompletelyUnrolled: 24
loop-unroll.NumRuntimeUnrolled: 5
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long:bb.a

bb.df:                                            ; preds = %bb.de
  unreachable

bb.dg:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !9409
  %i.aap = getelementptr i8, ptr %.val3.i.i.i.i, i64 -20 ; 2 uses
  store ptr %i.aap, ptr %i.bj, align 8, !noalias !9409
  %i.aaq = atomicrmw add ptr %i.aap, i64 -1 release, align 8, !noalias !9410
  %i.aar = icmp eq i64 %i.aaq, 1
  br i1 %i.aar, label %bb.dh, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i

bb.dh:                                            ; preds = %bb.dg
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bj) #36, !noalias !9411
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dh, %bb.dg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !9409
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i

bb.di:                                            ; preds = %bb.de
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !9409
  %i.aas = getelementptr i8, ptr %.val3.i.i.i.i, i64 -21 ; 2 uses
  store ptr %i.aas, ptr %i.bi, align 8, !noalias !9409
  %i.aat = atomicrmw add ptr %i.aas, i64 -1 release, align 8, !noalias !9412
  %i.aau = icmp eq i64 %i.aat, 1
  br i1 %i.aau, label %bb.dj, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i

bb.dj:                                            ; preds = %bb.di
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bi) #36, !noalias !9411
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i: ; preds = %bb.dj, %bb.di
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !9409
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i.i.i.i, %bb.de, %bb.de, %bb.de, %bb.de, %bb.dd
  %i.aav = getelementptr inbounds nuw i8, ptr %i.bu, i64 40
  %.val.i.i27.i.i = load i64, ptr %i.aav, align 8, !range !15, !alias.scope !9408, !noalias !9393, !noundef !4 ; 2 uses
  %i.aaw = icmp sgt i64 %.val.i.i27.i.i, 0
  br i1 %i.aaw, label %bb.dk, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i

bb.dk:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i
  %i.aax = getelementptr inbounds nuw i8, ptr %i.bu, i64 48
  %.val1.i.i28.i.i = load ptr, ptr %i.aax, align 8, !alias.scope !9408, !noalias !9393, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i28.i.i, i64 noundef %.val.i.i27.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9413
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i: ; preds = %bb.dk, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs3JjgEOiFeOI_4jiff2tz8timezone8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bu), !noalias !9393
  %i.aay = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  %.val.i.i.i184 = load ptr, ptr %i.aay, align 8, !alias.scope !9392, !noalias !9358, !noundef !4 ; 3 uses
  %i.aaz = ptrtoint ptr %.val.i.i.i184 to i64
  %i.aba = and i64 %i.aaz, 7
  switch i64 %i.aba, label %bb.dl [
    i64 1, label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i
    i64 2, label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i
    i64 3, label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i
    i64 0, label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i
    i64 4, label %bb.dm
    i64 5, label %bb.do
  ]

bb.dl:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i
  unreachable

bb.dm:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh), !noalias !9393
  %i.abb = getelementptr i8, ptr %.val.i.i.i184, i64 -20 ; 2 uses
  store ptr %i.abb, ptr %i.bh, align 8, !noalias !9393
  %i.abc = atomicrmw add ptr %i.abb, i64 -1 release, align 8, !noalias !9414
  %i.abd = icmp eq i64 %i.abc, 1
  br i1 %i.abd, label %bb.dn, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i4.i.i.i

bb.dn:                                            ; preds = %bb.dm
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bh) #36, !noalias !9353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i4.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i4.i.i.i: ; preds = %bb.dn, %bb.dm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh), !noalias !9393
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i

bb.do:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !9393
  %i.abe = getelementptr i8, ptr %.val.i.i.i184, i64 -21 ; 2 uses
  store ptr %i.abe, ptr %i.bg, align 8, !noalias !9393
  %i.abf = atomicrmw add ptr %i.abe, i64 -1 release, align 8, !noalias !9415
  %i.abg = icmp eq i64 %i.abf, 1
  br i1 %i.abg, label %bb.dp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i3.i.i.i

bb.dp:                                            ; preds = %bb.do
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneE9drop_slowCs3JjgEOiFeOI_4jiff(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.bg) #36, !noalias !9353
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i3.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i3.i.i.i: ; preds = %bb.dp, %bb.do
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !9393
  br label %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz5posix8TimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i3.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtCs7tKScEop1B6_5alloc4sync3ArcNtNtNtCscxuc9kp9KZq_9jiff_core2tz4tzif18MaybeNamedTimeZoneEECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i4.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs3JjgEOiFeOI_4jiff3fmt7strtime14BrokenDownTimeECs5EcwQX7phGK_5uu_ls.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cc), !noalias !9358
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.i.i: ; preds = %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i, %bb.ct, %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5EcwQX7phGK_5uu_ls.exit.i.i
  %.sroa.0.0.i8.i = phi ptr [ %.sroa.0.0.i.i.i183, %_RINvNtNtCsh036I4OHgIr_6uucore8features4time12format_zonedINtNtCs7tKScEop1B6_5alloc3vec3VechEECs5EcwQX7phGK_5uu_ls.exit.i.i ], [ null, %_RNvXs7_NtNtCs7tKScEop1B6_5alloc2io5implsINtNtB9_3vec3VechENtNtNtCs6JMX4GRUq9U_4core2io5write5Write9write_allCs5EcwQX7phGK_5uu_ls.exit.i.i ], [ null, %bb.ct ] ; 2 uses
  %i.abh = load i64, ptr %i.cd, align 8, !range !18, !noalias !9358, !noundef !4
  %i.abi = trunc nuw i64 %i.abh to i1
  br i1 %i.abi, label %bb.dq, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit

bb.dq:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9416)
  %i.abj = getelementptr inbounds nuw i8, ptr %i.cd, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9417)
  call void @llvm.experimental.noalias.scope.decl(metadata !9418)
  %i.abk = load ptr, ptr %i.abj, align 8, !alias.scope !9419, !noalias !9358, !noundef !4 ; 2 uses
  %i.abl = icmp eq ptr %i.abk, null
  br i1 %i.abl, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  %i.abm = atomicrmw add ptr %i.abk, i64 -1 release, align 8, !noalias !9420
  %i.abn = icmp eq i64 %i.abm, 1
  br i1 %i.abn, label %bb.ds, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit

bb.ds:                                            ; preds = %bb.dr
  fence acquire
  call void @_RNvMsn_NtCs7tKScEop1B6_5alloc4syncINtB5_3ArcNtNtCs3JjgEOiFeOI_4jiff5error10ErrorInnerE9drop_slowBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.abj) #36, !noalias !9353
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit

_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs7tKScEop1B6_5alloc6string6StringECs5EcwQX7phGK_5uu_ls.exit.i.i, %bb.dq, %bb.dr, %bb.ds
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cd), !noalias !9358
  %.not38 = icmp eq ptr %.sroa.0.0.i8.i, null
  br i1 %.not38, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit._crit_edge, label %bb.hq

_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit._crit_edge: ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit
  %.pre569 = load i64, ptr %i.fe, align 8, !alias.scope !9421
  br label %bb.dt

bb.dt:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit._crit_edge, %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit.thread
  %i.abo = phi i64 [ %.pre569, %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit._crit_edge ], [ %i.sv, %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit.thread ] ; 3 uses
  %i.abp = load i64, ptr %i.ez, align 8, !range !5, !alias.scope !9421, !noundef !4
  %i.abq = icmp eq i64 %i.abo, %i.abp
  br i1 %i.abq, label %bb.du, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit187

bb.du:                                            ; preds = %bb.dt
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez) #36
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit187

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit187: ; preds = %bb.dt, %bb.du
  %i.abr = load ptr, ptr %i.gt, align 8, !alias.scope !9421, !nonnull !4, !noundef !4
  %i.abs = getelementptr inbounds nuw i8, ptr %i.abr, i64 %i.abo
  store i8 32, ptr %i.abs, align 1
  %i.abt = add i64 %i.abo, 1
  store i64 %i.abt, ptr %i.fe, align 8, !alias.scope !9421
  %i.abu = load i8, ptr %i.cp, align 2, !range !32, !noundef !4
  %.not39 = icmp eq i8 %i.abu, 2                  ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9422)
  call void @llvm.experimental.noalias.scope.decl(metadata !9423)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  store i64 0, ptr %i.bf, align 8, !noalias !9424
  %i.abv = getelementptr inbounds nuw i8, ptr %i.bf, i64 8 ; 3 uses
  store ptr %i.ez, ptr %i.abv, align 8, !noalias !9424
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be), !noalias !9424
  %i.abw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.abx = load i64, ptr %i.abw, align 8, !range !27, !noalias !9424, !noundef !4
  %cond.i.i = icmp eq i64 %i.abx, -2              ; 2 uses
  %spec.select.i.i = select i1 %cond.i.i, i64 8, i64 32
  %spec.select5.i.i = select i1 %cond.i.i, i64 16, i64 40
  %i.aby = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select.i.i
  %i.abz = getelementptr inbounds nuw i8, ptr %0, i64 %spec.select5.i.i
  %.sroa.0.0.i.i = load ptr, ptr %i.aby, align 8, !noalias !9424, !nonnull !4, !noundef !4 ; 2 uses
  %.sroa.4.0.i.i = load i64, ptr %i.abz, align 8, !noalias !9424, !noundef !4 ; 2 uses
  %i.aca = getelementptr inbounds nuw i8, ptr %2, i64 273
  %.val98.i = load i8, ptr %i.aca, align 1, !range !32, !alias.scope !9422, !noundef !4 ; 3 uses
  %i.acb = getelementptr inbounds nuw i8, ptr %2, i64 276
  %.val99.i = load i24, ptr %i.acb, align 4, !alias.scope !9422 ; 2 uses
  %.not.i.i.i188 = icmp eq i8 %.val98.i, 2        ; 2 uses
  %.sroa.021.0.sroa.gep203.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 8
  %.sroa.021.0.sroa.gep207.i = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  br i1 %.not.i.i.i188, label %bb.dw, label %bb.dv

bb.dv:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit187
  %i.acc = trunc nuw i8 %.val98.i to i1
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display12locale_quote(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, i1 noundef zeroext %i.acc) #37, !noalias !9424
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i

bb.dw:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit187
  call void @_RNvNtNtCsh036I4OHgIr_6uucore8features13quoting_style24locale_aware_escape_name(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i.i, i64 noundef %.sroa.4.0.i.i, i24 %.val99.i) #37, !noalias !9424
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i

_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i: ; preds = %bb.dw, %bb.dv
  %i.acd = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 8 uses
  %i.ace = load ptr, ptr %i.acd, align 8, !noalias !9424, !nonnull !4, !noundef !4 ; 2 uses
  %i.acf = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 22 uses
  %i.acg = load i64, ptr %i.acf, align 8, !noalias !9424, !noundef !4 ; 2 uses
  %.not.i.i108.i = icmp eq i64 %i.acg, 0
  br i1 %.not.i.i108.i, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display18os_str_starts_with.exit112.i, label %bb.dx

bb.dx:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i
  %rhsc.i.i = load i8, ptr %i.ace, align 1, !alias.scope !9425, !noalias !9424 ; 2 uses
  %6 = icmp ne i8 %rhsc.i.i, 39
  %i.ach = icmp ne i8 %rhsc.i.i, 34
  %i.aci = and i1 %6, %i.ach
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display18os_str_starts_with.exit112.i

_RNvNtCs5EcwQX7phGK_5uu_ls7display18os_str_starts_with.exit112.i: ; preds = %bb.dx, %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i
  %.sroa.03.0.i = phi i1 [ %i.aci, %bb.dx ], [ true, %_RNvNtCs5EcwQX7phGK_5uu_ls7display23escape_name_with_locale.exit.i ]
  %i.acj = getelementptr inbounds nuw i8, ptr %2, i64 270
  %i.ack = load i8, ptr %i.acj, align 2, !range !11, !alias.scope !9422, !noundef !4
  %i.acl = trunc nuw i8 %i.ack to i1
  br i1 %i.acl, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit.i, %_RNvNtCs5EcwQX7phGK_5uu_ls7display18os_str_starts_with.exit112.i
  br i1 %.not39, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i, label %bb.eb

bb.dz:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display18os_str_starts_with.exit112.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd), !noalias !9424
  %.val100.i = load ptr, ptr %i.ei, align 8, !noalias !9424, !nonnull !4, !noundef !4
  %.val101.i = load i64, ptr %i.ej, align 8, !noalias !9424, !noundef !4
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls7display16create_hyperlink(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.bd, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ace, i64 noundef %i.acg, ptr %.val100.i, i64 %.val101.i) #37, !noalias !9424
  call void @llvm.experimental.noalias.scope.decl(metadata !9426)
  %.val.i.i198 = load i64, ptr %i.be, align 8, !range !5, !alias.scope !9427, !noalias !9424, !noundef !4 ; 2 uses
  %i.acm = icmp eq i64 %.val.i.i198, 0
  br i1 %i.acm, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit.i, label %bb.ea

bb.ea:                                            ; preds = %bb.dz
  %.val1.i.i199 = load ptr, ptr %i.acd, align 8, !alias.scope !9426, !noalias !9424, !nonnull !4, !noundef !4
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i199, i64 noundef %.val.i.i198, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9428
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.ea, %bb.dz
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.be, ptr noundef nonnull align 8 dereferenceable(24) %i.bd, i64 24, i1 false), !noalias !9424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd), !noalias !9424
  br label %bb.dy

bb.eb:                                            ; preds = %bb.dy
  %i.acn = load i64, ptr %i.acf, align 8, !noalias !9424, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc), !noalias !9424
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bc, ptr noundef nonnull align 8 dereferenceable(24) %i.be, i64 24, i1 false), !noalias !9424
  %i.aco = getelementptr inbounds nuw i8, ptr %2, i64 260
  %i.acp = load i16, ptr %i.aco, align 4, !alias.scope !9422, !noundef !4 ; 2 uses
  %i.acq = icmp eq i16 %i.acp, 0
  br i1 %i.acq, label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.acr = call fastcc noundef nonnull align 8 ptr @_RNvMNtNtCs6JMX4GRUq9U_4core4cell4lazyINtB2_8LazyCelljNCNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long0E11really_initBV_(ptr noundef nonnull align 8 %i.bf) #37, !noalias !9424
  %i.acs = load i64, ptr %i.acr, align 8, !noundef !4
  %i.act = add i64 %i.acs, %i.acn
  %i.acu = zext i16 %i.acp to i64
  %i.acv = icmp ugt i64 %i.act, %i.acu
  br label %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i

_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i: ; preds = %bb.ec, %bb.eb
  %.sroa.0.0.i113.i = phi i1 [ %i.acv, %bb.ec ], [ false, %bb.eb ]
  call fastcc void @_RNvNtCs5EcwQX7phGK_5uu_ls6colors10color_name(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.be, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.bc, ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(64) dereferenceable_or_null(64) %i.co, i1 noundef zeroext %.sroa.0.0.i113.i) #37, !noalias !9429
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc), !noalias !9424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i: ; preds = %bb.dy, %_RNCINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB4_17display_item_long0E0B6_.exit.i
  %i.acw = getelementptr inbounds nuw i8, ptr %2, i64 280
  %i.acx = load i8, ptr %i.acw, align 8, !range !33, !alias.scope !9422, !noundef !4
  %.not72.i = icmp eq i8 %i.acx, 1
  br i1 %.not72.i, label %bb.ed, label %.thread243.i

bb.ed:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i
  %i.acy = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 3 uses
  %i.acz = load i32, ptr %i.acy, align 8, !range !9, !noalias !9424, !noundef !4 ; 2 uses
  %.not.i.i117.i = icmp eq i32 %i.acz, 2
  br i1 %.not.i.i117.i, label %bb.ee, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i, !prof !7

bb.ee:                                            ; preds = %bb.ed
  %i.ada = call fastcc noundef nonnull align 4 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8FileTypeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData9file_type0E0zEB2m_(ptr noundef nonnull align 4 %i.acy, ptr noundef nonnull align 8 %0) #37, !noalias !9424 ; 0 uses
  %.pre.i119.i = load i32, ptr %i.acy, align 8, !range !30, !noalias !9424
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i: ; preds = %bb.ee, %bb.ed
  %i.adb = phi i32 [ %i.acz, %bb.ed ], [ %.pre.i119.i, %bb.ee ]
  %i.adc = trunc nuw i32 %i.adb to i1
  br i1 %i.adc, label %bb.ef, label %.thread243.i

bb.ef:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i
  %i.add = getelementptr inbounds nuw i8, ptr %0, i64 228
  %i.ade = load i32, ptr %i.add, align 4, !noalias !9424, !noundef !4
  %i.adf = and i32 %i.ade, 61440
  %i.adg = icmp eq i32 %i.adf, 40960
  br i1 %i.adg, label %bb.eg, label %.thread243.i

bb.eg:                                            ; preds = %bb.ef
  %i.adh = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.adi = load i8, ptr %i.adh, align 8, !range !11, !noalias !9424, !noundef !4
  %i.adj = trunc nuw i8 %i.adi to i1
  br i1 %i.adj, label %.thread243.i, label %bb.eh

.thread243.i:                                     ; preds = %bb.eg, %bb.ef, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit116.i
  %i.adk = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.adl = load i8, ptr %i.adk, align 1, !range !37, !alias.scope !9422, !noundef !4
  %i.adm = call fastcc noundef i32 @_RNvNtCs5EcwQX7phGK_5uu_ls7display14indicator_char(ptr noundef nonnull align 8 %0, i8 noundef %i.adl) #37, !noalias !9424 ; 2 uses
  %.not75.i = icmp eq i32 %i.adm, -1
  br i1 %.not75.i, label %.thread248.i, label %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i

.thread248.i:                                     ; preds = %_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i, %.thread243.i
  %i.adn = load i64, ptr %i.acf, align 8, !noalias !9430 ; 2 uses
  %.sroa.011.0250.i = select i1 %i.dr, i64 %i.adn, i64 0
  br label %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit

_RNvYNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write10write_charCs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %.thread243.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9431
  store i32 0, ptr %i.al, align 4, !noalias !9431
  %i.ado = trunc nuw nsw i32 %i.adm to i8
  store i8 %i.ado, ptr %i.al, align 4, !alias.scope !9432, !noalias !9431
  %i.adp = call noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.be, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.al, i64 noundef 1) #37, !noalias !9424 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9431
  br label %.thread248.i

bb.eh:                                            ; preds = %bb.eg
  %i.adq = load i64, ptr %i.acf, align 8, !noalias !9424
  %.sroa.011.0.i = select i1 %i.dr, i64 %i.adq, i64 0
  br i1 %.not39, label %bb.en, label %bb.ei

bb.ei:                                            ; preds = %bb.eh
  call void @llvm.experimental.noalias.scope.decl(metadata !9433)
  call void @llvm.experimental.noalias.scope.decl(metadata !9434)
  %i.adr = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.ads = load i64, ptr %i.adr, align 8, !alias.scope !9435, !noundef !4
  %i.adt = icmp eq i64 %i.ads, 0
  br i1 %i.adt, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i, label %bb.ej

bb.ej:                                            ; preds = %bb.ei
  call void @llvm.experimental.noalias.scope.decl(metadata !9436)
  call void @llvm.experimental.noalias.scope.decl(metadata !9437)
  %i.adu = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.adv = load i64, ptr %i.adu, align 8, !alias.scope !9438, !noundef !4 ; 4 uses
  %i.adw = load ptr, ptr %i.co, align 8, !alias.scope !9438, !nonnull !4, !noundef !4 ; 4 uses
  br label %bb.ek

bb.ek:                                            ; preds = %bb.em, %bb.ej
  %.sroa.9.0.i.i.i.i.i = phi i64 [ 0, %bb.ej ], [ %i.aen, %bb.em ]
  %.pn.i.i.i.i = phi i64 [ -1259354368857373368, %bb.ej ], [ %i.aeo, %bb.em ]
  %.sroa.01.0.i.i.i.i.i = and i64 %.pn.i.i.i.i, %i.adv ; 3 uses
  %i.adx = getelementptr inbounds nuw i8, ptr %i.adw, i64 %.sroa.01.0.i.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i.i = load <16 x i8>, ptr %i.adx, align 1, !noalias !9439 ; 2 uses
  %i.ady = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 119)
  %i.adz = bitcast <16 x i1> %i.ady to i16        ; 2 uses
  %.not.i.not30.i.i.i.i = icmp eq i16 %i.adz, 0
  br i1 %.not.i.not30.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i192

.lr.ph.i.i.i.i192:                                ; preds = %bb.ek, %bb.el
  %.sroa.06.0.i31.i.i.i.i = phi i16 [ %i.aem, %bb.el ], [ %i.adz, %bb.ek ] ; 3 uses
  %i.aea = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i.i, i1 true)
  %i.aeb = zext nneg i16 %i.aea to i64
  %i.aec = add i64 %.sroa.01.0.i.i.i.i.i, %i.aeb
  %i.aed = and i64 %i.aec, %i.adv
  %i.aee = sub nsw i64 0, %i.aed
  %i.aef = getelementptr inbounds [32 x i8], ptr %i.adw, i64 %i.aee
  %i.aeg = getelementptr inbounds i8, ptr %i.aef, i64 -32
  %.val2.i.i.i.i.i = load i8, ptr %i.aeg, align 1, !range !19, !noalias !9440, !noundef !4
  %i.aeh = icmp eq i8 %.val2.i.i.i.i.i, 9
  br i1 %i.aeh, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %bb.el, !prof !12

._crit_edge.i.i.i.i:                              ; preds = %bb.el, %bb.ek
  %i.aei = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i.i, splat (i8 -1)
  %i.aej = bitcast <16 x i1> %i.aei to i16
  %i.aek = icmp eq i16 %i.aej, 0
  br i1 %i.aek, label %bb.em, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i, !prof !7

bb.el:                                            ; preds = %.lr.ph.i.i.i.i192
  %i.ael = add i16 %.sroa.06.0.i31.i.i.i.i, -1
  %i.aem = and i16 %i.ael, %.sroa.06.0.i31.i.i.i.i ; 2 uses
  %.not.i.not.i.i.i.i = icmp eq i16 %i.aem, 0
  br i1 %.not.i.not.i.i.i.i, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i192

bb.em:                                            ; preds = %._crit_edge.i.i.i.i
  %i.aen = add i64 %.sroa.9.0.i.i.i.i.i, 16       ; 2 uses
  %i.aeo = add i64 %.sroa.01.0.i.i.i.i.i, %i.aen
  br label %bb.ek

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i: ; preds = %._crit_edge.i.i.i.i
  %i.aep = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aeq = load ptr, ptr %i.aep, align 8, !alias.scope !9441, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  %i.aer = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aeq, i8 noundef 9) #37, !noalias !9442
  br i1 %i.aer, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %.preheader559

_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread253.i: ; preds = %bb.ei
  %i.aes = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.aet = load ptr, ptr %i.aes, align 8, !alias.scope !9441, !nonnull !4, !align !16, !noundef !4 ; 2 uses
  %i.aeu = call noundef zeroext i1 @_RNvMs4_Cs3VOLFQjs6jb_8lscolorsNtB5_8LsColors22has_explicit_style_for(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(160) %i.aet, i8 noundef 9) #37, !noalias !9442
  br i1 %i.aeu, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i, label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i

bb.en:                                            ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit133.i, %bb.eh
  %i.aev = getelementptr inbounds nuw i8, ptr %2, i64 279
  %i.aew = load i8, ptr %i.aev, align 1, !range !37, !alias.scope !9422, !noundef !4
  %.off.i = add nsw i8 %i.aew, -1
  %switch.i = icmp ult i8 %.off.i, -2
  br label %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.thread.i

.preheader559:                                    ; preds = %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i, %bb.ep
  %.sroa.9.0.i.i.i.i121.i = phi i64 [ %i.afn, %bb.ep ], [ 0, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i ]
  %.pn.i.i.i122.i = phi i64 [ %i.afo, %bb.ep ], [ -8387766902590710086, %_RNvMNtCs5EcwQX7phGK_5uu_ls6colorsNtB2_12StyleManager19has_indicator_style.exit.i ]
  %.sroa.01.0.i.i.i.i123.i = and i64 %.pn.i.i.i122.i, %i.adv ; 3 uses
  %i.aex = getelementptr inbounds nuw i8, ptr %i.adw, i64 %.sroa.01.0.i.i.i.i123.i
  %.sroa.0.0.copyload.i24.i.i.i124.i = load <16 x i8>, ptr %i.aex, align 1, !noalias !9443 ; 2 uses
  %i.aey = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i124.i, splat (i8 69)
  %i.aez = bitcast <16 x i1> %i.aey to i16        ; 2 uses
  %.not.i.not30.i.i.i125.i = icmp eq i16 %i.aez, 0
  br i1 %.not.i.not30.i.i.i125.i, label %._crit_edge.i.i.i130.i, label %.lr.ph.i.i.i126.i

.lr.ph.i.i.i126.i:                                ; preds = %.preheader559, %bb.eo
end_hunk_0
begin_hunk_1_@_RNvNtCs5EcwQX7phGK_5uu_ls7display17display_item_long:bb.a

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i184.i: ; preds = %bb.gk
  %i.alw = icmp sgt i64 %i.alq, -1
  call void @llvm.assume(i1 %i.alw)
  %.not.i.i.i185.i = icmp eq i64 %.sroa.5.0.copyload.i, 0
  br i1 %.not.i.i.i185.i, label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i186.i, label %bb.gl

bb.gl:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i184.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i188.i
  %i.alx = phi i64 [ %i.alu, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i188.i ], [ %i.alq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i184.i ] ; 2 uses
  %i.aly = load ptr, ptr %i.acd, align 8, !alias.scope !9516, !noalias !9424, !nonnull !4, !noundef !4
  %i.alz = getelementptr inbounds nuw i8, ptr %i.aly, i64 %i.alx
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.alz, ptr nonnull readonly align 1 %.sroa.4225.0.copyload.i, i64 %.sroa.5.0.copyload.i, i1 false), !noalias !9517
  br label %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i186.i

_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i186.i: ; preds = %bb.gl, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i184.i
  %i.ama = phi i64 [ %i.alx, %bb.gl ], [ %i.alq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i184.i ]
  %i.amb = add i64 %i.ama, %.sroa.5.0.copyload.i
  store i64 %i.amb, ptr %i.acf, align 8, !alias.scope !9516, !noalias !9424
  %i.amc = icmp eq i64 %.sroa.0224.0.copyload.i, 0
  br i1 %i.amc, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i, label %bb.gm

bb.gm:                                            ; preds = %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i186.i
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4225.0.copyload.i, i64 noundef %.sroa.0224.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9518
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i: ; preds = %bb.gm, %_RNvXNvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsString4pushBC_NtB2_10SpecPushTo12spec_push_toCs5EcwQX7phGK_5uu_ls.exit.i186.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.i
  %i.amd = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %.val94.i = load ptr, ptr %i.amd, align 8, !noalias !9424, !nonnull !4, !noundef !4 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !9519
  %i.ame = ptrtoint ptr %.val94.i to i64          ; 2 uses
  %i.amf = and i64 %i.ame, 3
  switch i64 %i.amf, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i
    i64 3, label %bb.gn
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i
    i64 1, label %bb.go
  ], !prof !13

bb.gn:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i
  %i.amg = icmp ult ptr %.val94.i, inttoptr (i64 188978561024 to ptr)
  %i.amh = and i64 %i.ame, 1095216660480
  %i.ami = icmp ne i64 %i.amh, 1095216660480
  call void @llvm.assume(i1 %i.amg)
  call void @llvm.assume(i1 %i.ami)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i

bb.go:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i
  %i.amj = getelementptr i8, ptr %.val94.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amj) ]
  %i.amk = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.amj, ptr %i.amk, align 8, !alias.scope !9520, !noalias !9519
  store i8 3, ptr %i.ah, align 8, !alias.scope !9520, !noalias !9519
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.amk) #37, !noalias !9519
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.go, %bb.gn, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !9519
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread293.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread293.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCs2vKOLqTMYjT_3std4path7PathBufNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i, %bb.fy, %bb.fx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az), !noalias !9424
  br i1 %.sroa.042.0.i, label %bb.gp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i: ; preds = %bb.gq, %bb.gp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread293.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba), !noalias !9424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i

bb.gp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit168.thread293.i
  call void @llvm.experimental.noalias.scope.decl(metadata !9521)
  call void @llvm.experimental.noalias.scope.decl(metadata !9522)
  %.val.i.i190.i = load i64, ptr %i.ba, align 8, !range !5, !alias.scope !9523, !noalias !9424, !noundef !4 ; 2 uses
  %i.aml = icmp eq i64 %.val.i.i190.i, 0
  br i1 %i.aml, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i, label %bb.gq

bb.gq:                                            ; preds = %bb.gp
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i191.i, i64 noundef %.val.i.i190.i, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9524
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit192.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i, %bb.ey, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit146.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb), !noalias !9424
  %.sroa.4516.0.copyload518.pr = load i64, ptr %i.acf, align 8, !noalias !9430
  br label %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit

bb.gr:                                            ; preds = %bb.eq
  br i1 %.not.i5.i.i, label %bb.gw, label %bb.gx, !prof !7

bb.gs:                                            ; preds = %bb.eq
  br i1 %.not.i5.i.i, label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread.i, label %bb.gt

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !9525
  %i.amm = ptrtoint ptr %i.agj to i64             ; 2 uses
  %i.amn = and i64 %i.amm, 3
  switch i64 %i.amn, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i
    i64 3, label %bb.gu
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i
    i64 1, label %bb.gv
  ], !prof !13

bb.gu:                                            ; preds = %bb.gt
  %i.amo = icmp ult ptr %i.agj, inttoptr (i64 188978561024 to ptr)
  %i.amp = and i64 %i.amm, 1095216660480
  %i.amq = icmp ne i64 %i.amp, 1095216660480
  call void @llvm.assume(i1 %i.amo)
  call void @llvm.assume(i1 %i.amq)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i

bb.gv:                                            ; preds = %bb.gt
  %i.amr = getelementptr i8, ptr %i.agj, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amr) ]
  %i.ams = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.amr, ptr %i.ams, align 8, !alias.scope !9526, !noalias !9525
  store i8 3, ptr %i.af, align 8, !alias.scope !9526, !noalias !9525
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ams) #37, !noalias !9527
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i: ; preds = %bb.gv, %bb.gu, %bb.gt, %bb.gt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !9525
  br label %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread.i

bb.gw:                                            ; preds = %bb.gr
  call void @_RNvNtCs6JMX4GRUq9U_4core9panicking9panic_fmt(ptr noundef nonnull @43, ptr noundef nonnull inttoptr (i64 173 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @45) #38, !noalias !9424
  unreachable

_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i.i.i.i, %bb.gs
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9446
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i

bb.gx:                                            ; preds = %bb.gr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !9446
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !noalias !9528
  %i.amt = ptrtoint ptr %i.agj to i64             ; 2 uses
  %i.amu = and i64 %i.amt, 3
  switch i64 %i.amu, label %default.unreachable [
    i64 2, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i
    i64 3, label %bb.gy
    i64 0, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i
    i64 1, label %bb.gz
  ], !prof !13

bb.gy:                                            ; preds = %bb.gx
  %i.amv = icmp ult ptr %i.agj, inttoptr (i64 188978561024 to ptr)
  %i.amw = and i64 %i.amt, 1095216660480
  %i.amx = icmp ne i64 %i.amw, 1095216660480
  call void @llvm.assume(i1 %i.amv)
  call void @llvm.assume(i1 %i.amx)
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i

bb.gz:                                            ; preds = %bb.gx
  %i.amy = getelementptr i8, ptr %i.agj, i64 -1   ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.amy) ]
  %i.amz = getelementptr inbounds nuw i8, ptr %i.ae, i64 8 ; 2 uses
  store ptr %i.amy, ptr %i.amz, align 8, !alias.scope !9529, !noalias !9528
  store i8 3, ptr %i.ae, align 8, !alias.scope !9529, !noalias !9528
  call void @_RNvXsd_NtNtCs6JMX4GRUq9U_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.amz) #37, !noalias !9528
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i: ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae), !noalias !9528
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs5EcwQX7phGK_5uu_ls.exit.i196.i, %_RINvNtNtCs6JMX4GRUq9U_4core2io5write17default_write_fmtNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9424
  %.val95.i = load ptr, ptr %i.ap, align 8, !noalias !9424, !nonnull !4, !align !16, !noundef !4 ; 3 uses
  %i.ana = getelementptr inbounds nuw i8, ptr %.val95.i, i64 12 ; 2 uses
  %i.anb = load i32, ptr %i.ana, align 4, !noalias !9424, !noundef !4
  %i.anc = add i32 %i.anb, -1                     ; 2 uses
  store i32 %i.anc, ptr %i.ana, align 4, !noalias !9424
  %i.and = icmp eq i32 %i.anc, 0
  br i1 %i.and, label %bb.ha, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i

bb.ha:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i
  store atomic i64 0, ptr %.val95.i monotonic, align 8, !noalias !9424
  %i.ane = getelementptr inbounds nuw i8, ptr %.val95.i, i64 8 ; 2 uses
  %i.anf = atomicrmw xchg ptr %i.ane, i32 0 release, align 4, !noalias !9424
  %i.ang = icmp eq i32 %i.anf, 2
  br i1 %i.ang, label %bb.hb, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i, !prof !7

bb.hb:                                            ; preds = %bb.ha
  call void @_RNvMNtNtNtNtCs2vKOLqTMYjT_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.ane) #37, !noalias !9424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std2io5stdio10StderrLockECs5EcwQX7phGK_5uu_ls.exit.i: ; preds = %bb.hb, %bb.ha, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueINtNtB4_6result6ResultuNtNtNtB4_2io5error5ErrorEECs5EcwQX7phGK_5uu_ls.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !9424
  call void @_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtCs5EcwQX7phGK_5uu_ls7LsErrorEBD_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.aq) #37, !noalias !9424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !9424
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i

_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit: ; preds = %.thread248.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i
  %.sroa.4516.0.copyload518 = phi i64 [ %i.adn, %.thread248.i ], [ %.sroa.4516.0.copyload518.pr, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i ] ; 8 uses
  %.sroa.011.0251.i = phi i64 [ %.sroa.011.0250.i, %.thread248.i ], [ %.sroa.011.0.i, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtCs2vKOLqTMYjT_3std4path7PathBufECs5EcwQX7phGK_5uu_ls.exit.i ]
  %.sroa.0515.sroa.0.0.copyload = load i64, ptr %i.be, align 8, !noalias !9430 ; 3 uses
  %.sroa.0515.sroa.4.0.copyload = load ptr, ptr %i.acd, align 8, !noalias !9430 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be), !noalias !9424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  %spec.select559 = select i1 %5, i1 %.sroa.03.0.i, i1 false ; 4 uses
  br i1 %i.dr, label %bb.hd, label %bb.hc

bb.hc:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display21update_dired_for_item.exit, %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit
  br i1 %spec.select559, label %bb.hf, label %bb.hj

bb.hd:                                            ; preds = %_RINvNtCs5EcwQX7phGK_5uu_ls7display17display_item_nameNCNvB2_17display_item_long0EB4_.exit
  %i.anh = zext i1 %spec.select559 to i64
  %spec.select = add i64 %.sroa.011.0251.i, %i.anh
  %i.ani = load i64, ptr %i.fe, align 8, !noundef !4 ; 3 uses
  %i.anj = icmp sgt i64 %i.ani, -1
  call void @llvm.assume(i1 %i.anj)
  call void @llvm.experimental.noalias.scope.decl(metadata !9530)
  call void @llvm.experimental.noalias.scope.decl(metadata !9531)
  %i.ank = getelementptr inbounds nuw i8, ptr %4, i64 56 ; 3 uses
  %i.anl = load i64, ptr %i.ank, align 8, !alias.scope !9532, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9533)
  %i.anm = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 2 uses
  %i.ann = load i64, ptr %i.anm, align 8, !alias.scope !9534, !noundef !4 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !9535)
  %i.ano = getelementptr inbounds nuw i8, ptr %4, i64 16 ; 2 uses
  %i.anp = load i64, ptr %i.ano, align 8, !alias.scope !9536, !noundef !4 ; 3 uses
  %i.anq = load i64, ptr %4, align 8, !range !5, !alias.scope !9536, !noundef !4
  %i.anr = icmp eq i64 %i.anp, %i.anq
  br i1 %i.anr, label %bb.he, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display21update_dired_for_item.exit

bb.he:                                            ; preds = %bb.hd
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVecNtNtCs5EcwQX7phGK_5uu_ls5dired12BytePositionE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %4) #36
  %.pre.i.i = load i64, ptr %i.ank, align 8, !alias.scope !9534
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display21update_dired_for_item.exit

_RNvNtCs5EcwQX7phGK_5uu_ls7display21update_dired_for_item.exit: ; preds = %bb.hd, %bb.he
  %i.ans = phi i64 [ %i.anl, %bb.hd ], [ %.pre.i.i, %bb.he ]
  %i.ant = add i64 %i.anl, %i.ani                 ; 2 uses
  %i.anu = add i64 %spec.select, %i.ant
  %i.anv = add i64 %i.anu, %i.ann
  %i.anw = add i64 %i.ann, %i.ant
  %i.anx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.any = load ptr, ptr %i.anx, align 8, !alias.scope !9536, !nonnull !4, !noundef !4
  %i.anz = getelementptr inbounds nuw [16 x i8], ptr %i.any, i64 %i.anp ; 2 uses
  store i64 %i.anw, ptr %i.anz, align 8, !noalias !9536
  %i.aoa = getelementptr inbounds nuw i8, ptr %i.anz, i64 8
  store i64 %i.anv, ptr %i.aoa, align 8, !noalias !9536
  %i.aob = add i64 %i.anp, 1
  store i64 %i.aob, ptr %i.ano, align 8, !alias.scope !9536
  %i.aoc = select i1 %spec.select559, i64 2, i64 1
  %i.aod = add i64 %i.aoc, %.sroa.4516.0.copyload518
  %i.aoe = add i64 %i.aod, %i.ani
  %i.aof = add i64 %i.aoe, %i.ann
  %i.aog = add i64 %i.aof, %i.ans
  store i64 %i.aog, ptr %i.ank, align 8, !alias.scope !9534
  store i64 0, ptr %i.anm, align 8, !alias.scope !9534
  br label %bb.hc

bb.hf:                                            ; preds = %bb.hc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  %i.aoh = add i64 %.sroa.4516.0.copyload518, 1   ; 5 uses
  %.not.i200 = icmp slt i64 %i.aoh, 0
  br i1 %.not.i200, label %bb.hn, label %bb.hg, !prof !22

bb.hg:                                            ; preds = %bb.hf
  %i.aoi = icmp eq i64 %i.aoh, 0
  br i1 %i.aoi, label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit, label %bb.hh

bb.hh:                                            ; preds = %bb.hg
  call void @_RNvCsjSVV5GABoor_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #37, !noalias !9537
  %i.aoj = call noundef ptr @_RNvCsjSVV5GABoor_7___rustc12___rust_alloc(i64 noundef %i.aoh, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9537 ; 2 uses
  %i.aok = icmp eq ptr %i.aoj, null
  br i1 %i.aok, label %bb.hn, label %bb.hi

bb.hi:                                            ; preds = %bb.hh
  %i.aol = ptrtoint ptr %i.aoj to i64
  br label %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit

bb.hj:                                            ; preds = %bb.hc, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit
  %.sroa.8.0 = phi i64 [ %i.apu, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit ], [ %.sroa.4516.0.copyload518, %bb.hc ] ; 5 uses
  %.sroa.5530.0 = phi ptr [ %.sroa.5530.0.copyload, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit ], [ %.sroa.0515.sroa.4.0.copyload, %bb.hc ] ; 3 uses
  %.sroa.0529.0 = phi i64 [ %.sroa.0529.0.copyload, %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit ], [ %.sroa.0515.sroa.0.0.copyload, %bb.hc ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5530.0) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9538)
  call void @llvm.experimental.noalias.scope.decl(metadata !9539)
  call void @llvm.experimental.noalias.scope.decl(metadata !9540)
  call void @llvm.experimental.noalias.scope.decl(metadata !9541)
  call void @llvm.experimental.noalias.scope.decl(metadata !9542)
  %i.aom = load i64, ptr %i.fe, align 8, !alias.scope !9543, !noundef !4 ; 5 uses
  %i.aon = load i64, ptr %i.ez, align 8, !range !5, !alias.scope !9543, !noundef !4 ; 2 uses
  %i.aoo = sub i64 %i.aon, %i.aom
  %i.aop = icmp ugt i64 %.sroa.8.0, %i.aoo
  br i1 %i.aop, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i: ; preds = %bb.hj
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez, i64 noundef %i.aom, i64 noundef range(i64 0, -9223372036854775808) %.sroa.8.0, i64 noundef 1, i64 noundef 1) #37, !noalias !9544
  %i.aoq = load i64, ptr %i.fe, align 8, !alias.scope !9545, !noundef !4 ; 2 uses
  %i.aor = icmp sgt i64 %i.aoq, -1
  call void @llvm.assume(i1 %i.aor)
  br label %bb.hk

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i: ; preds = %bb.hj
  %i.aos = icmp sgt i64 %i.aom, -1
  call void @llvm.assume(i1 %i.aos)
  %.not.i.i.i.i.i203 = icmp samesign eq i64 %.sroa.8.0, 0
  br i1 %.not.i.i.i.i.i203, label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtCs7tKScEop1B6_5alloc3vec3VechEEB4_.exit, label %bb.hk

bb.hk:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i
  %i.aot = phi i64 [ %i.aoq, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i.i.i ], [ %i.aom, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i ] ; 2 uses
  %i.aou = load ptr, ptr %i.gt, align 8, !alias.scope !9545, !nonnull !4, !noundef !4
  %i.aov = getelementptr inbounds nuw i8, ptr %i.aou, i64 %i.aot
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aov, ptr nonnull readonly align 1 %.sroa.5530.0, i64 range(i64 0, -9223372036854775808) %.sroa.8.0, i1 false), !noalias !9545
  %.pre571 = load i64, ptr %i.ez, align 8, !range !5, !alias.scope !9546
  br label %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtCs7tKScEop1B6_5alloc3vec3VechEEB4_.exit

_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtCs7tKScEop1B6_5alloc3vec3VechEEB4_.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i, %bb.hk
  %i.aow = phi i64 [ %.pre571, %bb.hk ], [ %i.aon, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i ]
  %i.aox = phi i64 [ %i.aot, %bb.hk ], [ %i.aom, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i.i.i ]
  %i.aoy = add nuw i64 %i.aox, %.sroa.8.0         ; 4 uses
  store i64 %i.aoy, ptr %i.fe, align 8, !alias.scope !9545
  %i.aoz = getelementptr inbounds nuw i8, ptr %2, i64 282
  %i.apa = load i8, ptr %i.aoz, align 2, !range !38, !noundef !4
  %i.apb = icmp eq i64 %i.aoy, %i.aow
  br i1 %i.apb, label %bb.hl, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit204

bb.hl:                                            ; preds = %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtCs7tKScEop1B6_5alloc3vec3VechEEB4_.exit
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ez) #36
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit204

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit204: ; preds = %_RINvNtCs5EcwQX7phGK_5uu_ls7display12write_os_strINtNtCs7tKScEop1B6_5alloc3vec3VechEEB4_.exit, %bb.hl
  %i.apc = load ptr, ptr %i.gt, align 8, !alias.scope !9546, !nonnull !4, !noundef !4
  %i.apd = getelementptr inbounds nuw i8, ptr %i.apc, i64 %i.aoy
  store i8 %i.apa, ptr %i.apd, align 1
  %i.ape = add i64 %i.aoy, 1
  store i64 %i.ape, ptr %i.fe, align 8, !alias.scope !9546
  %i.apf = icmp eq i64 %.sroa.0529.0, 0
  br i1 %i.apf, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit, label %bb.hm

bb.hm:                                            ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit204
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5530.0, i64 noundef %.sroa.0529.0, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9547
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit204, %bb.hm
  %i.apg = icmp ne i64 %.sroa.0515.sroa.0.0.copyload, 0
  %or.cond.not = select i1 %spec.select559, i1 %i.apg, i1 false
  br i1 %or.cond.not, label %bb.hp, label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit210

bb.hn:                                            ; preds = %bb.hf, %bb.hh
  %.sroa.4545.0.ph = phi i64 [ 1, %bb.hh ], [ 0, %bb.hf ]
  call void @_RNvNtCs7tKScEop1B6_5alloc7raw_vec12handle_error(i64 noundef %.sroa.4545.0.ph, i64 %i.aoh) #39
  unreachable

_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit: ; preds = %bb.hi, %bb.hg
  %.sroa.10.0 = phi i64 [ %i.aol, %bb.hi ], [ 1, %bb.hg ]
  %i.aph = inttoptr i64 %.sroa.10.0 to ptr
  store i64 %i.aoh, ptr %i.ck, align 8
  %.sroa.432.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 8 ; 3 uses
  store ptr %i.aph, ptr %.sroa.432.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ck, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.533.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !9548
  store i32 32, ptr %i.ad, align 4, !noalias !9548
  %i.api = call noundef zeroext i1 @_RNvXsi_NtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB5_8OsStringNtNtCs6JMX4GRUq9U_4core3fmt5Write9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ad, i64 noundef 1) #37 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !9548
  call void @llvm.experimental.noalias.scope.decl(metadata !9549)
  call void @llvm.experimental.noalias.scope.decl(metadata !9550)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0515.sroa.4.0.copyload) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !9551)
  %i.apj = load i64, ptr %.sroa.533.0..sroa_idx, align 8, !alias.scope !9552, !noundef !4 ; 5 uses
  %i.apk = load i64, ptr %i.ck, align 8, !range !5, !alias.scope !9552, !noundef !4 ; 2 uses
  %i.apl = sub i64 %i.apk, %i.apj
  %i.apm = icmp ugt i64 %.sroa.4516.0.copyload518, %i.apl
  br i1 %i.apm, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ck, i64 noundef %i.apj, i64 noundef %.sroa.4516.0.copyload518, i64 noundef 1, i64 noundef 1) #37, !noalias !9553
  %i.apn = load i64, ptr %.sroa.533.0..sroa_idx, align 8, !alias.scope !9554, !noundef !4 ; 2 uses
  %i.apo = icmp sgt i64 %i.apn, -1
  call void @llvm.assume(i1 %i.apo)
  br label %bb.ho

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i: ; preds = %_RNvMs5_NtCs7tKScEop1B6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs5EcwQX7phGK_5uu_ls.exit
  %i.app = icmp sgt i64 %i.apj, -1
  call void @llvm.assume(i1 %i.app)
  %.not.i.i.i207 = icmp eq i64 %.sroa.4516.0.copyload518, 0
  br i1 %.not.i.i.i207, label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit, label %bb.ho

bb.ho:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i
  %i.apq = phi i64 [ %i.apn, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i.i.i ], [ %i.apj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i ] ; 2 uses
  %i.apr = load ptr, ptr %.sroa.432.0..sroa_idx, align 8, !alias.scope !9554, !nonnull !4, !noundef !4
  %i.aps = getelementptr inbounds nuw i8, ptr %i.apr, i64 %i.apq
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.aps, ptr nonnull readonly align 1 %.sroa.0515.sroa.4.0.copyload, i64 %.sroa.4516.0.copyload518, i1 false), !noalias !9555
  %.sroa.0529.0.copyload.pre = load i64, ptr %i.ck, align 8
  br label %_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit

_RINvMNtNtCs2vKOLqTMYjT_3std3ffi6os_strNtB3_8OsString4pushRBA_ECs5EcwQX7phGK_5uu_ls.exit: ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i, %bb.ho
  %.sroa.0529.0.copyload = phi i64 [ %.sroa.0529.0.copyload.pre, %bb.ho ], [ %i.apk, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i ]
  %i.apt = phi i64 [ %i.apq, %bb.ho ], [ %i.apj, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.i.i.i ]
  %i.apu = add i64 %i.apt, %.sroa.4516.0.copyload518
  %.sroa.5530.0.copyload = load ptr, ptr %.sroa.432.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  br label %bb.hj

bb.hp:                                            ; preds = %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0515.sroa.4.0.copyload) ]
  call void @_RNvCsjSVV5GABoor_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0515.sroa.4.0.copyload, i64 noundef %.sroa.0515.sroa.0.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #37, !noalias !9556
  br label %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit210

_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit210: ; preds = %bb.lw, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit501, %bb.hp, %_RINvNtCs6JMX4GRUq9U_4core3ptr9drop_glueNtNtNtCs2vKOLqTMYjT_3std3ffi6os_str8OsStringECs5EcwQX7phGK_5uu_ls.exit
  %i.apv = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.apw = load ptr, ptr %i.apv, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.apx = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 2 uses
  %i.apy = load i64, ptr %i.apx, align 8, !noundef !4 ; 4 uses
  %i.apz = load i64, ptr %3, align 8, !range !5, !noundef !4
  %i.aqa = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.aqb = load i64, ptr %i.aqa, align 8, !noundef !4 ; 4 uses
  %i.aqc = icmp sgt i64 %i.aqb, -1
  call void @llvm.assume(i1 %i.aqc)
  %i.aqd = sub nsw i64 %i.apz, %i.aqb
  %i.aqe = icmp ult i64 %i.apy, %i.aqd
  br i1 %i.aqe, label %bb.ma, label %bb.lz, !prof !12

bb.hq:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit, %bb.mc, %bb.mb
  %.sroa.6.1 = phi ptr [ %i.bms, %bb.mb ], [ undef, %bb.mc ], [ @58, %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit ]
  %.sroa.0.1 = phi ptr [ %i.bmr, %bb.mb ], [ null, %bb.mc ], [ %.sroa.0.0.i8.i, %_RNvNtCs5EcwQX7phGK_5uu_ls7display12display_date.exit ]
  %i.aqf = insertvalue { ptr, ptr } poison, ptr %.sroa.0.1, 0
  %i.aqg = insertvalue { ptr, ptr } %i.aqf, ptr %.sroa.6.1, 1
  ret { ptr, ptr } %i.aqg

bb.hr:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit
  %i.aqh = load i32, ptr %i.gb, align 4, !noundef !4
  %i.aqi = and i32 %i.aqh, 61440                  ; 2 uses
  %i.aqj = call i32 @llvm.fshl.i32(i32 %i.aqi, i32 %i.aqi, i32 19) ; 2 uses
  %i.aqk = icmp ult i32 %i.aqj, 6
  br i1 %i.aqk, label %switch.lookup, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread

bb.hs:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit
  %i.aql = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.aqm = load i8, ptr %i.aql, align 8, !range !11, !noundef !4
  %i.aqn = trunc nuw i8 %i.aqm to i1
  br i1 %i.aqn, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i213, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i213: ; preds = %bb.hs
  %i.aqo = load i64, ptr %i.ds, align 8, !range !6, !noundef !4 ; 2 uses
  %.not.i.i2.i = icmp eq i64 %i.aqo, -1
  br i1 %.not.i.i2.i, label %bb.ht, label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit, !prof !7

bb.ht:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i213
  %i.aqp = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtB7_6option6OptionNtNtCs2vKOLqTMYjT_3std2fs8MetadataEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB2m_8PathData8metadata0E0zEB2m_(ptr noundef nonnull align 8 %i.ds, ptr noundef nonnull align 8 %0) #37 ; 0 uses
  %.pre.i3.i = load i64, ptr %i.ds, align 8, !range !8
  %i.aqq = freeze i64 %.pre.i3.i
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i213, %bb.ht
  %.fr = phi i64 [ %i.aqo, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData9file_type.exit.i213 ], [ %i.aqq, %bb.ht ]
  %.not.i.i215 = icmp eq i64 %.fr, 2
  %spec.select556 = select i1 %.not.i.i215, i8 108, i8 45
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread

switch.lookup:                                    ; preds = %bb.hr
  %i.aqr = shl nuw nsw i32 %i.aqj, 3
  %switch.shiftamt = zext nneg i32 %i.aqr to i48
  %switch.downshift = lshr i48 118942180074285, %switch.shiftamt
  %switch.masked = trunc i48 %switch.downshift to i8
  br label %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread

_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread: ; preds = %bb.hr, %switch.lookup, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit, %bb.hs
  %.sroa.017.1 = phi i8 [ %spec.select556, %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit ], [ 45, %bb.hs ], [ %switch.masked, %switch.lookup ], [ 45, %bb.hr ]
  %i.aqs = getelementptr inbounds nuw i8, ptr %3, i64 40 ; 55 uses
  %i.aqt = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 48 uses
  %i.aqu = load i64, ptr %i.aqt, align 8, !alias.scope !9557, !noundef !4 ; 3 uses
  %i.aqv = load i64, ptr %i.aqs, align 8, !range !5, !alias.scope !9557, !noundef !4
  %i.aqw = icmp eq i64 %i.aqu, %i.aqv
  br i1 %i.aqw, label %bb.hu, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217

bb.hu:                                            ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aqs) #36
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217: ; preds = %_RNvMs_Cs5EcwQX7phGK_5uu_lsNtB4_8PathData16is_dangling_link.exit.thread, %bb.hu
  %i.aqx = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 27 uses
  %i.aqy = load ptr, ptr %i.aqx, align 8, !alias.scope !9557, !nonnull !4, !noundef !4
  %i.aqz = getelementptr inbounds nuw i8, ptr %i.aqy, i64 %i.aqu
  store i8 %.sroa.017.1, ptr %i.aqz, align 1
  %i.ara = add i64 %i.aqu, 1                      ; 4 uses
  store i64 %i.ara, ptr %i.aqt, align 8, !alias.scope !9557
  %i.arb = load i64, ptr %i.aqs, align 8, !range !5, !alias.scope !9558, !noundef !4
  %i.arc = sub i64 %i.arb, %i.ara
  %i.ard = icmp ult i64 %i.arc, 9
  br i1 %i.ard, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i219, label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit220, !prof !7

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i219: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217
  call fastcc void @_RINvNvMs2_NtCs7tKScEop1B6_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs5EcwQX7phGK_5uu_ls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aqs, i64 noundef %i.ara, i64 noundef 9, i64 noundef 1, i64 noundef 1) #37
  %i.are = load i64, ptr %i.aqt, align 8, !alias.scope !9559, !noundef !4
  br label %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit220

_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit220: ; preds = %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i219
  %.sink708 = phi i64 [ %i.are, %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE7reserveCs5EcwQX7phGK_5uu_ls.exit.thread.i219 ], [ %i.ara, %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit217 ] ; 3 uses
  %i.arf = icmp sgt i64 %.sink708, -1
  call void @llvm.assume(i1 %i.arf)
  %i.arg = load ptr, ptr %i.aqx, align 8, !alias.scope !9559, !nonnull !4, !noundef !4
  %i.arh = getelementptr inbounds nuw i8, ptr %i.arg, i64 %.sink708
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %i.arh, i8 63, i64 9, i1 false)
  %i.ari = add nuw i64 %.sink708, 9               ; 3 uses
  store i64 %i.ari, ptr %i.aqt, align 8, !alias.scope !9559
  %i.arj = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ark = load i64, ptr %i.arj, align 8, !noundef !4
  %i.arl = icmp ugt i64 %i.ark, 10
  br i1 %i.arl, label %bb.hv, label %bb.hy

bb.hv:                                            ; preds = %_RNvMs_NtCs7tKScEop1B6_5alloc3vecINtB4_3VechE15append_elementsCs5EcwQX7phGK_5uu_ls.exit220
  %i.arm = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.arn = load ptr, ptr %i.arm, align 8, !noundef !4
  %.not.i.i.i221 = icmp eq ptr %i.arn, null
  br i1 %.not.i.i.i221, label %bb.hw, label %_RNvNtCs5EcwQX7phGK_5uu_ls7display20alt_access_indicator.exit223, !prof !7

bb.hw:                                            ; preds = %bb.hv
  %i.aro = getelementptr inbounds nuw i8, ptr %2, i64 267
  %.val54 = load i8, ptr %i.aro, align 1
  %i.arp = call fastcc noundef nonnull align 8 ptr @_RINvMNtNtCs6JMX4GRUq9U_4core4cell4onceINtB3_8OnceCellINtNtCs7tKScEop1B6_5alloc5boxed3BoxeEE8try_initNCINvB2_11get_or_initNCNvMs_Cs5EcwQX7phGK_5uu_lsNtB22_8PathData16security_context0E0zEB22_(ptr noundef nonnull align 8 %i.arm, ptr noundef nonnull readonly align 8 %0, i8 %.val54) #37 ; 0 uses
  %.pre572 = load i64, ptr %i.aqt, align 8, !alias.scope !9560
  br label %_RNvNtCs5EcwQX7phGK_5uu_ls7display20alt_access_indicator.exit223

_RNvNtCs5EcwQX7phGK_5uu_ls7display20alt_access_indicator.exit223: ; preds = %bb.hv, %bb.hw
  %i.arq = phi i64 [ %i.ari, %bb.hv ], [ %.pre572, %bb.hw ] ; 3 uses
  %i.arr = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ars = load i64, ptr %i.arr, align 8, !noundef !4
  %i.art = icmp ugt i64 %i.ars, 1
  %.sroa.0.0.i222 = select i1 %i.art, i8 46, i8 32
  %i.aru = load i64, ptr %i.aqs, align 8, !range !5, !alias.scope !9560, !noundef !4
  %i.arv = icmp eq i64 %i.arq, %i.aru
  br i1 %i.arv, label %bb.hx, label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit224

bb.hx:                                            ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display20alt_access_indicator.exit223
  call void @_RNvMs4_NtCs7tKScEop1B6_5alloc7raw_vecINtB5_6RawVechE8grow_oneB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.aqs) #36
  br label %_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit224

_RNvMsG_NtCs7tKScEop1B6_5alloc3vecINtB5_3VechE8push_mutCs5EcwQX7phGK_5uu_ls.exit224: ; preds = %_RNvNtCs5EcwQX7phGK_5uu_ls7display20alt_access_indicator.exit223, %bb.hx
  %i.arw = load ptr, ptr %i.aqx, align 8, !alias.scope !9560, !nonnull !4, !noundef !4
  %i.arx = getelementptr inbounds nuw i8, ptr %i.arw, i64 %i.arq
  store i8 %.sroa.0.0.i222, ptr %i.arx, align 1
  %i.ary = add i64 %i.arq, 1                      ; 2 uses
  store i64 %i.ary, ptr %i.aqt, align 8, !alias.scope !9560
  br label %bb.hy

end_hunk_1
