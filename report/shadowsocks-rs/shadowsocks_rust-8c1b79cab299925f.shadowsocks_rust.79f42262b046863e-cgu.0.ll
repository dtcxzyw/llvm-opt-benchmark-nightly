Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/shadowsocks_rust-8c1b79cab299925f.shadowsocks_rust.79f42262b046863e-cgu.0?download=true
inline.NumInlined: 5128
inline.NumDeleted: 2462
loop-unroll.NumCompletelyUnrolled: 38
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 54
begin_hunk_0_@_RINvMs1_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB6_13AccessControl14load_from_fileRNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  store ptr %i.bg, ptr %i.aw, align 8
  store ptr @_RNvXs2_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_4ModeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.493.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr @36, ptr %i.av, align 8
  store i64 24, ptr %i.et, align 8
  store ptr @36, ptr %i.eu, align 8
  store i64 24, ptr %i.ev, align 8
  store ptr @65, ptr %i.ew, align 8
  call fastcc void @_RINvNtCsJovr8ELaM0_3log13___private_api8log_implNtB2_12GlobalLoggerECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull @63, ptr noundef nonnull %i.aw, i64 noundef 5, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.av) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  br label %bb.dd

bb.dn:                                            ; preds = %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit
  %.lcssa505.sink = phi ptr [ %i.qv, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules13add_tree_rule.exit ], [ %i.rd, %_RNvMs0_NtCs8UFHSMUhzWe_19shadowsocks_service3aclNtB5_12ParsingRules12add_set_rule.exit ]
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.lcssa505.sink, ptr %i.xh, align 8
  store i64 2, ptr %0, align 8
  %i.xi = icmp eq i64 %.sroa.0238.1, 0
  br i1 %i.xi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214, label %bb.do

bb.do:                                            ; preds = %bb.dn
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.9239.1, i64 noundef %.sroa.0238.1, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !829
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214: ; preds = %bb.do, %bb.dn, %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  %.val1.i.i215 = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !832, !noundef !14 ; 2 uses
  %i.xj = icmp eq i64 %.val1.i.i215, 0
  br i1 %i.xj, label %.split, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214
  %.val.i.i217 = load ptr, ptr %i.az, align 8, !alias.scope !832, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i217, i64 noundef %.val1.i.i215, i64 noundef 1) #30, !noalias !832
  br label %.split

bb.dp:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  br label %bb.dq

.split:                                           ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i216, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit214
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  %.val.i.i.i218 = load i32, ptr %.sroa.5236.0..sroa_idx, align 8, !range !15, !alias.scope !834, !noundef !14
  %i.xk = call noundef i32 @close(i32 noundef %.val.i.i.i218) #30, !noalias !834 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.az)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bb) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bb)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bc) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.bd) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bd)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs8UFHSMUhzWe_19shadowsocks_service3acl12ParsingRulesECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(184) %i.be) #30
  br label %bb.dq

bb.dq:                                            ; preds = %.split.thread, %bb.dp, %.thread265, %.split
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  br label %bb.dr

bb.dr:                                            ; preds = %bb.dq, %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !835)
  %.val.i220 = load i64, ptr %i.bi, align 8, !range !16, !alias.scope !836, !noundef !14 ; 2 uses
  %i.xl = icmp eq i64 %.val.i220, 0
  br i1 %i.xl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  %i.xm = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  %.val1.i221 = load ptr, ptr %i.xm, align 8, !alias.scope !835, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i221, i64 noundef %.val.i220, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !837
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs5Xr050g3D4S_3std4path7PathBufECsat9HgdBb3qc_16shadowsocks_rust.exit
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FullINtNtNtB2o_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !864)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !864, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.u, %bb.p, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !864
  store i8 0, ptr %i.s, align 8, !noalias !864
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !864 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !864 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !864
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !864
  %i.u = load i64, ptr %i.r, align 8, !noalias !865, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !865
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !865
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !865
  store i64 0, ptr %i.q, align 8, !noalias !865
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !865
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !865
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !865
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 184
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !865
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !865
  store ptr %i.y, ptr %i.o, align 8, !noalias !865
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !865
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 170
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !865
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 181
  %i.ae = load i8, ptr %i.ad, align 1, !range !19, !noalias !865, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 182
  %i.ag = load i8, ptr %i.af, align 2, !range !19, !noalias !865, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !865
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ah, align 8, !noalias !865
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ae, ptr %i.ai, align 8, !noalias !865
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.ag, ptr %i.aj, align 1, !noalias !865
  %i.ak = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !865
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 183
  %i.an = load i8, ptr %i.am, align 1, !range !19, !noalias !865, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !865
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.aq = call { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8 %i.ap) #30, !noalias !865 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  store ptr %i.ar, ptr %i.m, align 8, !noalias !865
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !noalias !865
  %i.au = load ptr, ptr %i.p, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !865, !nonnull !14, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !865, !noundef !14
  %i.az = call fastcc noundef ptr @_RNvYNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay) #30, !noalias !865 ; 5 uses
  %i.ba = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 183
  %i.bc = load i8, ptr %i.bb, align 1, !range !19, !noalias !865, !noundef !14
  %1 = trunc nuw i8 %i.bc to i1
  %.not34.i.i = icmp ne ptr %i.az, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.p, label %bb.o

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !865
  %i.bd = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !865, !nonnull !14, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !865, !noundef !14
  store ptr %i.bh, ptr %i.i, align 8, !noalias !865, !captures !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !865
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !865, !noundef !14 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.br, ptr %i.h, align 8, !noalias !865
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bq, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !865
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bv = load <2 x ptr>, ptr %i.bs, align 8, !noalias !865
  store i64 0, ptr %i.bt, align 8, !noalias !865
  store i64 %i.bq, ptr %i.bu, align 8, !noalias !865
  store <2 x ptr> %i.bv, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !865
  store ptr %i.i, ptr %i.g, align 8, !noalias !865
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !865
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bw, align 8, !noalias !865
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !865
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !866
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !865
  %.sroa.055.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !865 ; 2 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.456.0.copyload.i.i = load ptr, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !865 ; 3 uses
  %.sroa.6.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx57.i.i, align 8, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !865
  %i.bx = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.by = call { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8 %i.bx) #30, !noalias !865 ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0
  %i.ca = extractvalue { ptr, ptr } %i.by, 1
  store ptr %i.bz, ptr %i.f, align 8, !noalias !865
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !noalias !865
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.456.0.copyload.i.i) ]
  %i.cc = call fastcc noundef ptr @_RNvYNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.456.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !865 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !865
  store ptr %i.cc, ptr %i.e, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !865
  store ptr %i.e, ptr %i.d, align 8, !noalias !865
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !865
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !865
  call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !867, !noalias !865, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !868
  %i.cd = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ce = and i64 %i.cd, 3
  switch i64 %i.ce, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cg = and i64 %i.cd, 1095216660480
  %i.ch = icmp ne i64 %i.cg, 1095216660480
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.ch)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ci = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !869, !noalias !868
  store i8 3, ptr %i.c, align 8, !alias.scope !869, !noalias !868
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #30, !noalias !868
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !865
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  %.val41.i.i = load ptr, ptr %i.cb, align 8, !noalias !865, !nonnull !14, !align !36, !noundef !14 ; 2 uses
  %i.ck = atomicrmw add ptr %.val41.i.i, i32 -1 release, align 4, !noalias !865
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  %i.cm = and i32 %i.cl, -1073741825
  %or.cond.i.i.i.i.i = icmp eq i32 %i.cm, -2147483648
  br i1 %or.cond.i.i.i.i.i, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, !prof !37

bb.m:                                             ; preds = %bb.l
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val41.i.i, i32 noundef %i.cl) #30, !noalias !865
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !865
  %i.cn = icmp eq i64 %.sroa.055.0.copyload.i.i, 0
  br i1 %i.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.i.i, i64 noundef %.sroa.055.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !870
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.g
  %i.co = load ptr, ptr %i.p, align 8, !noalias !865, !nonnull !14, !align !27, !noundef !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %i.cp, align 8, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !865
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.x

bb.o:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.u, label %bb.s

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !865
  store ptr %i.az, ptr %i.l, align 8, !noalias !865
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !865
  store ptr %i.l, ptr %i.k, align 8, !noalias !865
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !865
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !865
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !865
  call void @llvm.experimental.noalias.scope.decl(metadata !871)
  %.val.i42.i.i = load ptr, ptr %i.l, align 8, !alias.scope !871, !noalias !865, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !872
  %i.cq = ptrtoint ptr %.val.i42.i.i to i64       ; 2 uses
  %i.cr = and i64 %i.cq, 3
  switch i64 %i.cr, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i
    i64 3, label %bb.q
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i
    i64 1, label %bb.r
  ], !prof !29

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult ptr %.val.i42.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ct = and i64 %i.cq, 1095216660480
  %i.cu = icmp ne i64 %i.ct, 1095216660480
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.assume(i1 %i.cu)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i

bb.r:                                             ; preds = %bb.p
  %i.cv = getelementptr i8, ptr %.val.i42.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !873, !noalias !872
  store i8 3, ptr %i.b, align 8, !alias.scope !873, !noalias !872
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cw) #30, !noalias !872
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !872
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !865
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i, %bb.o
  %.val40.i.i = load ptr, ptr %i.at, align 8, !noalias !865, !nonnull !14, !align !36, !noundef !14 ; 2 uses
  %i.cx = atomicrmw add ptr %.val40.i.i, i32 -1 release, align 4, !noalias !865
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  %i.cz = and i32 %i.cy, -1073741825
  %or.cond.i.i.i45.i.i = icmp eq i32 %i.cz, -2147483648
  br i1 %or.cond.i.i.i45.i.i, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i, !prof !37

bb.t:                                             ; preds = %bb.s
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val40.i.i, i32 noundef %i.cy) #30, !noalias !865
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !865
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !874
  %i.da = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i
    i64 1, label %bb.w
  ], !prof !29

bb.v:                                             ; preds = %bb.u
  %i.dc = icmp ult ptr %i.az, inttoptr (i64 188978561024 to ptr)
  %i.dd = and i64 %i.da, 1095216660480
  %i.de = icmp ne i64 %i.dd, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i

bb.w:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.az, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !875, !noalias !874
  store i8 3, ptr %i.a, align 8, !alias.scope !875, !noalias !874
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #30, !noalias !874
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !874
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !876)
  call void @llvm.experimental.noalias.scope.decl(metadata !877)
  %.val.i.i50.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !878, !noalias !865, !noundef !14 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i50.i.i, 0
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i51.i.i = load ptr, ptr %i.di, align 8, !alias.scope !878, !noalias !865, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51.i.i, i64 noundef %.val.i.i50.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !879
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !865
  br label %bb.z

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !865
  %i.dj = load i64, ptr %i.r, align 8, !noalias !865, !noundef !14
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.r, align 8, !noalias !865
  br label %bb.z

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FullINtNtNtB2o_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !910)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !910, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !910
  store i8 0, ptr %i.s, align 8, !noalias !910
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !910 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !910 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !910
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !910
  %i.u = load i64, ptr %i.r, align 8, !noalias !911, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !911
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !911
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !911
  store i64 0, ptr %i.q, align 8, !noalias !911
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !911
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !911
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !911
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 48
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !911
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !911
  store ptr %i.y, ptr %i.o, align 8, !noalias !911
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !911
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 34
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !911
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 45
  %i.ae = load i8, ptr %i.ad, align 1, !range !19, !noalias !911, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 46
  %i.ag = load i8, ptr %i.af, align 2, !range !19, !noalias !911, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !911
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ah, align 8, !noalias !911
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ae, ptr %i.ai, align 8, !noalias !911
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.ag, ptr %i.aj, align 1, !noalias !911
  %i.ak = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !911
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 47
  %i.an = load i8, ptr %i.am, align 1, !range !19, !noalias !911, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !911
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.aq = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.at = getelementptr i8, ptr %i.ap, i64 24
  %.val45.i.i = load i64, ptr %i.as, align 8, !range !38, !noalias !911, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = load <2 x i32>, ptr %i.at, align 8, !noalias !911
  store i8 0, ptr %i.au, align 8, !alias.scope !912, !noalias !911
  store i64 %.val45.i.i, ptr %i.m, align 8, !alias.scope !912, !noalias !911
  store <2 x i32> %i.aw, ptr %i.av, align 8, !alias.scope !912, !noalias !911
  %i.ax = load ptr, ptr %i.p, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !911, !nonnull !14, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !911, !noundef !14
  %i.bc = call fastcc noundef ptr @_RNvYNtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog12SyslogWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb) #30, !noalias !911 ; 5 uses
  %i.bd = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 47
  %i.bf = load i8, ptr %i.be, align 1, !range !19, !noalias !911, !noundef !14
  %1 = trunc nuw i8 %i.bf to i1
  %.not34.i.i = icmp ne ptr %i.bc, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.o, label %bb.n

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !911
  %i.bg = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !911, !nonnull !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !911, !noundef !14
  store ptr %i.bk, ptr %i.i, align 8, !noalias !911, !captures !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !911
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !911, !noundef !14 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bu, ptr %i.h, align 8, !noalias !911
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bt, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !911
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !noalias !911
  store i64 0, ptr %i.bw, align 8, !noalias !911
  store i64 %i.bt, ptr %i.bx, align 8, !noalias !911
  store <2 x ptr> %i.by, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !911
  store ptr %i.i, ptr %i.g, align 8, !noalias !911
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !911
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bz, align 8, !noalias !911
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !911
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !913
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !911
  %.sroa.057.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !911 ; 2 uses
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.458.0.copyload.i.i = load ptr, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !911 ; 3 uses
  %.sroa.6.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx59.i.i, align 8, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !911
  %i.ca = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.cb = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.ce = getelementptr i8, ptr %i.ca, i64 24
  %.val42.i.i = load i64, ptr %i.cd, align 8, !range !38, !noalias !911, !noundef !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load <2 x i32>, ptr %i.ce, align 8, !noalias !911
  store i8 0, ptr %i.cf, align 8, !alias.scope !914, !noalias !911
  store i64 %.val42.i.i, ptr %i.f, align 8, !alias.scope !914, !noalias !911
  store <2 x i32> %i.ch, ptr %i.cg, align 8, !alias.scope !914, !noalias !911
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.458.0.copyload.i.i) ]
  %i.ci = call fastcc noundef ptr @_RNvYNtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog12SyslogWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.458.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !911 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !911
  store ptr %i.ci, ptr %i.e, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !911
  store ptr %i.e, ptr %i.d, align 8, !noalias !911
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !911
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !915)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !915, !noalias !911, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !916
  %i.cj = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.cl = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %i.cj, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.co = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !917, !noalias !916
  store i8 3, ptr %i.c, align 8, !alias.scope !917, !noalias !916
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #30, !noalias !916
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !916
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !911
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  call void @_RNvXs8_NtCs3uQwFeR9vTQ_14syslog_tracing6syslogNtB5_12SyslogWriterNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #30, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !911
  %i.cq = icmp eq i64 %.sroa.057.0.copyload.i.i, 0
  br i1 %i.cq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.458.0.copyload.i.i, i64 noundef %.sroa.057.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.r, %bb.m, %bb.l, %bb.g
  %i.cr = load ptr, ptr %i.p, align 8, !noalias !911, !nonnull !14, !align !27, !noundef !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 0, ptr %i.cs, align 8, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !911
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.v

bb.n:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !911
  store ptr %i.bc, ptr %i.l, align 8, !noalias !911
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !911
  store ptr %i.l, ptr %i.k, align 8, !noalias !911
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !911
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !911
  call void @llvm.experimental.noalias.scope.decl(metadata !919)
  %.val.i46.i.i = load ptr, ptr %i.l, align 8, !alias.scope !919, !noalias !911, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !920
  %i.ct = ptrtoint ptr %.val.i46.i.i to i64       ; 2 uses
  %i.cu = and i64 %i.ct, 3
  switch i64 %i.cu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i
    i64 1, label %bb.q
  ], !prof !29

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp ult ptr %.val.i46.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cw = and i64 %i.ct, 1095216660480
  %i.cx = icmp ne i64 %i.cw, 1095216660480
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.assume(i1 %i.cx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

bb.q:                                             ; preds = %bb.o
  %i.cy = getelementptr i8, ptr %.val.i46.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !921, !noalias !920
  store i8 3, ptr %i.b, align 8, !alias.scope !921, !noalias !920
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #30, !noalias !920
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !920
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !911
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, %bb.n
  call void @_RNvXs8_NtCs3uQwFeR9vTQ_14syslog_tracing6syslogNtB5_12SyslogWriterNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #30, !noalias !911
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !911
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !922
  %i.da = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i
    i64 1, label %bb.u
  ], !prof !29

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp ult ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %i.dd = and i64 %i.da, 1095216660480
  %i.de = icmp ne i64 %i.dd, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.bc, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !923, !noalias !922
  store i8 3, ptr %i.a, align 8, !alias.scope !923, !noalias !922
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #30, !noalias !922
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !922
  br label %bb.r

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !924)
  call void @llvm.experimental.noalias.scope.decl(metadata !925)
  %.val.i.i52.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !926, !noalias !911, !noundef !14 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i52.i.i, 0
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i53.i.i = load ptr, ptr %i.di, align 8, !alias.scope !926, !noalias !911, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i53.i.i, i64 noundef %.val.i.i52.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !927
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !911
  br label %bb.x

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !911
  %i.dj = load i64, ptr %i.r, align 8, !noalias !911, !noundef !14
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.r, align 8, !noalias !911
  br label %bb.x

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FullINtNtNtB2o_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENvNtNtBa_2io5stdio6stdoutEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !954)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !954, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENvNtNtBa_2io5stdio6stdoutEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !954
  store i8 0, ptr %i.s, align 8, !noalias !954
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !954 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !954 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !954
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !954
  %i.u = load i64, ptr %i.r, align 8, !noalias !955, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !955
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !955
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !955
  store i64 0, ptr %i.q, align 8, !noalias !955
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !955
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !955
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !955
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !955, !nonnull !14, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !955
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !955
  store ptr %i.y, ptr %i.o, align 8, !noalias !955
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !955
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 13
  %i.ad = load i8, ptr %i.ac, align 1, !range !19, !noalias !955, !noundef !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 14
  %i.af = load i8, ptr %i.ae, align 1, !range !19, !noalias !955, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !955
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ag, align 8, !noalias !955
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ad, ptr %i.ah, align 8, !noalias !955
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.af, ptr %i.ai, align 1, !noalias !955
  %i.aj = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(11) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !955
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !955, !nonnull !14, !noundef !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 15
  %i.am = load i8, ptr %i.al, align 1, !range !19, !noalias !955, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !955
  %i.ao = call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout() #30, !noalias !955
  store ptr %i.ao, ptr %i.m, align 8, !noalias !955
  %i.ap = load ptr, ptr %i.p, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !955, !nonnull !14, !noundef !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !955, !noundef !14
  %i.au = call noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at) #30, !noalias !955 ; 5 uses
  %i.av = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !955, !nonnull !14, !noundef !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 15
  %i.ax = load i8, ptr %i.aw, align 1, !range !19, !noalias !955, !noundef !14
  %1 = trunc nuw i8 %i.ax to i1
  %.not34.i.i = icmp ne ptr %i.au, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.o, label %bb.n

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !955
  %i.ay = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !955, !nonnull !14, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !955, !noundef !14
  store ptr %i.bc, ptr %i.i, align 8, !noalias !955, !captures !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !955
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !955, !noundef !14 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bm, ptr %i.h, align 8, !noalias !955
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bl, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !955
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bq = load <2 x ptr>, ptr %i.bn, align 8, !noalias !955
  store i64 0, ptr %i.bo, align 8, !noalias !955
  store i64 %i.bl, ptr %i.bp, align 8, !noalias !955
  store <2 x ptr> %i.bq, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !955
  store ptr %i.i, ptr %i.g, align 8, !noalias !955
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !955
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.br, align 8, !noalias !955
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !955
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !956
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !955
  %.sroa.051.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !955 ; 2 uses
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.452.0.copyload.i.i = load ptr, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !955 ; 3 uses
  %.sroa.6.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx53.i.i, align 8, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !955
  %i.bs = call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout() #30, !noalias !955
  store ptr %i.bs, ptr %i.f, align 8, !noalias !955
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.452.0.copyload.i.i) ]
  %i.bt = call noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.452.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !955 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !955
  store ptr %i.bt, ptr %i.e, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !955
  store ptr %i.e, ptr %i.d, align 8, !noalias !955
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !955
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !955
  call void @llvm.experimental.noalias.scope.decl(metadata !957)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !957, !noalias !955, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !958
  %i.bu = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.bv = and i64 %i.bu, 3
  switch i64 %i.bv, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bx = and i64 %i.bu, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.by)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.bz = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !alias.scope !959, !noalias !958
  store i8 3, ptr %i.c, align 8, !alias.scope !959, !noalias !958
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #30, !noalias !958
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !958
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !955
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !955
  %i.cb = icmp eq i64 %.sroa.051.0.copyload.i.i, 0
  br i1 %i.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.452.0.copyload.i.i, i64 noundef %.sroa.051.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !960
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.r, %bb.m, %bb.l, %bb.g
  %i.cc = load ptr, ptr %i.p, align 8, !noalias !955, !nonnull !14, !align !27, !noundef !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 0, ptr %i.cd, align 8, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !955
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.v

bb.n:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !955
  store ptr %i.au, ptr %i.l, align 8, !noalias !955
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !955
  store ptr %i.l, ptr %i.k, align 8, !noalias !955
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !955
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !955
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !955
  call void @llvm.experimental.noalias.scope.decl(metadata !961)
  %.val.i40.i.i = load ptr, ptr %i.l, align 8, !alias.scope !961, !noalias !955, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !962
  %i.ce = ptrtoint ptr %.val.i40.i.i to i64       ; 2 uses
  %i.cf = and i64 %i.ce, 3
  switch i64 %i.cf, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i
    i64 1, label %bb.q
  ], !prof !29

bb.p:                                             ; preds = %bb.o
  %i.cg = icmp ult ptr %.val.i40.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ch = and i64 %i.ce, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.assume(i1 %i.ci)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i

bb.q:                                             ; preds = %bb.o
  %i.cj = getelementptr i8, ptr %.val.i40.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !963, !noalias !962
  store i8 3, ptr %i.b, align 8, !alias.scope !963, !noalias !962
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck) #30, !noalias !962
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !962
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !955
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !955
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !964
  %i.cl = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 3
  switch i64 %i.cm, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i
    i64 1, label %bb.u
  ], !prof !29

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr)
  %i.co = and i64 %i.cl, 1095216660480
  %i.cp = icmp ne i64 %i.co, 1095216660480
  call void @llvm.assume(i1 %i.cn)
  call void @llvm.assume(i1 %i.cp)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i

bb.u:                                             ; preds = %bb.s
  %i.cq = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !alias.scope !965, !noalias !964
  store i8 3, ptr %i.a, align 8, !alias.scope !965, !noalias !964
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #30, !noalias !964
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !964
  br label %bb.r

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !966)
  call void @llvm.experimental.noalias.scope.decl(metadata !967)
  %.val.i.i46.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !968, !noalias !955, !noundef !14 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i46.i.i, 0
  br i1 %i.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i47.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !968, !noalias !955, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47.i.i, i64 noundef %.val.i.i46.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !969
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !955
  br label %bb.x

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !955
  %i.cu = load i64, ptr %i.r, align 8, !noalias !955, !noundef !14
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.r, align 8, !noalias !955
  br label %bb.x

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FullINtNtNtB2s_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENvNtNtBa_2io5stdio6stdoutEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FulluENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [16 x i8], align 8                ; 5 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !996)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !996, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.u, %bb.p, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !996
  store i8 0, ptr %i.s, align 8, !noalias !996
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !996 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !996 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !996
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !996
  %i.u = load i64, ptr %i.r, align 8, !noalias !997, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !997
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !997
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !997
  store i64 0, ptr %i.q, align 8, !noalias !997
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !997
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !997
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !997
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 181
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !997
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !997
  store ptr %i.y, ptr %i.o, align 8, !noalias !997
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !997
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !997
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 178
  %i.ae = load i8, ptr %i.ad, align 2, !range !19, !noalias !997, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 179
  %i.ag = load i8, ptr %i.af, align 1, !range !19, !noalias !997, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !997
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ah, align 8, !noalias !997
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ae, ptr %i.ai, align 8, !noalias !997
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.ag, ptr %i.aj, align 1, !noalias !997
  %i.ak = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FulluEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !997
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 180
  %i.an = load i8, ptr %i.am, align 4, !range !19, !noalias !997, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !997
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.aq = call { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8 %i.ap) #30, !noalias !997 ; 2 uses
  %i.ar = extractvalue { ptr, ptr } %i.aq, 0
  %i.as = extractvalue { ptr, ptr } %i.aq, 1
  store ptr %i.ar, ptr %i.m, align 8, !noalias !997
  %i.at = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.as, ptr %i.at, align 8, !noalias !997
  %i.au = load ptr, ptr %i.p, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !997, !nonnull !14, !noundef !14
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noalias !997, !noundef !14
  %i.az = call fastcc noundef ptr @_RNvYNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(16) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aw, i64 noundef %i.ay) #30, !noalias !997 ; 5 uses
  %i.ba = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 180
  %i.bc = load i8, ptr %i.bb, align 4, !range !19, !noalias !997, !noundef !14
  %1 = trunc nuw i8 %i.bc to i1
  %.not34.i.i = icmp ne ptr %i.az, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.p, label %bb.o

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !997
  %i.bd = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bf = load ptr, ptr %i.be, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !997, !nonnull !14, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %i.bj = load i64, ptr %i.bi, align 8, !noalias !997, !noundef !14
  store ptr %i.bh, ptr %i.i, align 8, !noalias !997, !captures !35
  %i.bk = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bj, ptr %i.bk, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !997
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 24
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !997, !noundef !14 ; 2 uses
  %i.br = load ptr, ptr %i.bo, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  %i.bt = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bu = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.br, ptr %i.h, align 8, !noalias !997
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bq, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !997
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bv = load <2 x ptr>, ptr %i.bs, align 8, !noalias !997
  store i64 0, ptr %i.bt, align 8, !noalias !997
  store i64 %i.bq, ptr %i.bu, align 8, !noalias !997
  store <2 x ptr> %i.bv, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !997
  store ptr %i.i, ptr %i.g, align 8, !noalias !997
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !997
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bw, align 8, !noalias !997
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !997
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !998
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !997
  %.sroa.055.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !997 ; 2 uses
  %.sroa.456.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.456.0.copyload.i.i = load ptr, ptr %.sroa.456.0..sroa_idx.i.i, align 8, !noalias !997 ; 3 uses
  %.sroa.6.0..sroa_idx57.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx57.i.i, align 8, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !997
  %i.bx = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.by = call { ptr, ptr } @_RNvXs0_NtCs20vKyNBpNec_16tracing_appender7rollingNtB5_19RollingFileAppenderNtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6writer10MakeWriter11make_writer(ptr noundef nonnull align 8 %i.bx) #30, !noalias !997 ; 2 uses
  %i.bz = extractvalue { ptr, ptr } %i.by, 0
  %i.ca = extractvalue { ptr, ptr } %i.by, 1
  store ptr %i.bz, ptr %i.f, align 8, !noalias !997
  %i.cb = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.ca, ptr %i.cb, align 8, !noalias !997
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.456.0.copyload.i.i) ]
  %i.cc = call fastcc noundef ptr @_RNvYNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.456.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !997 ; 2 uses
  %.not.i.i = icmp eq ptr %i.cc, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !997
  store ptr %i.cc, ptr %i.e, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !997
  store ptr %i.e, ptr %i.d, align 8, !noalias !997
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !997
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !997
  call void @llvm.experimental.noalias.scope.decl(metadata !999)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !999, !noalias !997, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1000
  %i.cd = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ce = and i64 %i.cd, 3
  switch i64 %i.ce, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.cf = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cg = and i64 %i.cd, 1095216660480
  %i.ch = icmp ne i64 %i.cg, 1095216660480
  call void @llvm.assume(i1 %i.cf)
  call void @llvm.assume(i1 %i.ch)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.ci = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ci, ptr %i.cj, align 8, !alias.scope !1001, !noalias !1000
  store i8 3, ptr %i.c, align 8, !alias.scope !1001, !noalias !1000
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cj) #30, !noalias !1000
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1000
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !997
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  %.val41.i.i = load ptr, ptr %i.cb, align 8, !noalias !997, !nonnull !14, !align !36, !noundef !14 ; 2 uses
  %i.ck = atomicrmw add ptr %.val41.i.i, i32 -1 release, align 4, !noalias !997
  %i.cl = add i32 %i.ck, -1                       ; 2 uses
  %i.cm = and i32 %i.cl, -1073741825
  %or.cond.i.i.i.i.i = icmp eq i32 %i.cm, -2147483648
  br i1 %or.cond.i.i.i.i.i, label %bb.m, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, !prof !37

bb.m:                                             ; preds = %bb.l
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val41.i.i, i32 noundef %i.cl) #30, !noalias !997
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.m, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !997
  %i.cn = icmp eq i64 %.sroa.055.0.copyload.i.i, 0
  br i1 %i.cn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.456.0.copyload.i.i, i64 noundef %.sroa.055.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1002
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i, %bb.n, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.g
  %i.co = load ptr, ptr %i.p, align 8, !noalias !997, !nonnull !14, !align !27, !noundef !14
  %i.cp = getelementptr inbounds nuw i8, ptr %i.co, i64 16
  store i64 0, ptr %i.cp, align 8, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !997
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.x

bb.o:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.u, label %bb.s

bb.p:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !997
  store ptr %i.az, ptr %i.l, align 8, !noalias !997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !997
  store ptr %i.l, ptr %i.k, align 8, !noalias !997
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !997
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !997
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !997
  call void @llvm.experimental.noalias.scope.decl(metadata !1003)
  %.val.i42.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1003, !noalias !997, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1004
  %i.cq = ptrtoint ptr %.val.i42.i.i to i64       ; 2 uses
  %i.cr = and i64 %i.cq, 3
  switch i64 %i.cr, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i
    i64 3, label %bb.q
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i
    i64 1, label %bb.r
  ], !prof !29

bb.q:                                             ; preds = %bb.p
  %i.cs = icmp ult ptr %.val.i42.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ct = and i64 %i.cq, 1095216660480
  %i.cu = icmp ne i64 %i.ct, 1095216660480
  call void @llvm.assume(i1 %i.cs)
  call void @llvm.assume(i1 %i.cu)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i

bb.r:                                             ; preds = %bb.p
  %i.cv = getelementptr i8, ptr %.val.i42.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cv, ptr %i.cw, align 8, !alias.scope !1005, !noalias !1004
  store i8 3, ptr %i.b, align 8, !alias.scope !1005, !noalias !1004
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cw) #30, !noalias !1004
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i: ; preds = %bb.r, %bb.q, %bb.p, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !997
  br label %bb.s

bb.s:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit44.i.i, %bb.o
  %.val40.i.i = load ptr, ptr %i.at, align 8, !noalias !997, !nonnull !14, !align !36, !noundef !14 ; 2 uses
  %i.cx = atomicrmw add ptr %.val40.i.i, i32 -1 release, align 4, !noalias !997
  %i.cy = add i32 %i.cx, -1                       ; 2 uses
  %i.cz = and i32 %i.cy, -1073741825
  %or.cond.i.i.i45.i.i = icmp eq i32 %i.cz, -2147483648
  br i1 %or.cond.i.i.i45.i.i, label %bb.t, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i, !prof !37

bb.t:                                             ; preds = %bb.s
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %.val40.i.i, i32 noundef %i.cy) #30, !noalias !997
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs20vKyNBpNec_16tracing_appender7rolling13RollingWriterECsat9HgdBb3qc_16shadowsocks_rust.exit46.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !997
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1006
  %i.da = ptrtoint ptr %i.az to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i
    i64 3, label %bb.v
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i
    i64 1, label %bb.w
  ], !prof !29

bb.v:                                             ; preds = %bb.u
  %i.dc = icmp ult ptr %i.az, inttoptr (i64 188978561024 to ptr)
  %i.dd = and i64 %i.da, 1095216660480
  %i.de = icmp ne i64 %i.dd, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i

bb.w:                                             ; preds = %bb.u
  %i.df = getelementptr i8, ptr %i.az, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !1007, !noalias !1006
  store i8 3, ptr %i.a, align 8, !alias.scope !1007, !noalias !1006
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #30, !noalias !1006
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit49.i.i: ; preds = %bb.w, %bb.v, %bb.u, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1006
  br label %bb.s

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  %.val.i.i50.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !1010, !noalias !997, !noundef !14 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i50.i.i, 0
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i51.i.i = load ptr, ptr %i.di, align 8, !alias.scope !1010, !noalias !997, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i51.i.i, i64 noundef %.val.i.i50.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1011
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i: ; preds = %bb.y, %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !997
  br label %bb.z

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !997
  %i.dj = load i64, ptr %i.r, align 8, !noalias !997, !noundef !14
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.r, align 8, !noalias !997
  br label %bb.z

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENtNtCs20vKyNBpNec_16tracing_appender7rolling19RollingFileAppenderEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.z:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit52.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FulluENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [24 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !1042, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !1042
  store i8 0, ptr %i.s, align 8, !noalias !1042
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1042 ; 6 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1042 ; 5 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1042
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1042
  %i.u = load i64, ptr %i.r, align 8, !noalias !1043, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !1043
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1043
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1043
  store i64 0, ptr %i.q, align 8, !noalias !1043
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !1043
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !1043
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1043
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 45
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !1043
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !1043
  store ptr %i.y, ptr %i.o, align 8, !noalias !1043
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !1043
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1043
  %i.ad = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  %i.ae = load i8, ptr %i.ad, align 2, !range !19, !noalias !1043, !noundef !14
  %i.af = getelementptr inbounds nuw i8, ptr %i.w, i64 43
  %i.ag = load i8, ptr %i.af, align 1, !range !19, !noalias !1043, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !1043
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ah, align 8, !noalias !1043
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ae, ptr %i.ai, align 8, !noalias !1043
  %i.aj = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.ag, ptr %i.aj, align 1, !noalias !1043
  %i.ak = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FulluEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(8) %i.ac, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1043
  br i1 %i.ak, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.al = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.an = load i8, ptr %i.am, align 4, !range !19, !noalias !1043, !noundef !14
  %i.ao = trunc nuw i8 %i.an to i1
  br i1 %i.ao, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1043
  %i.ap = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.aq = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  %i.as = load ptr, ptr %i.ar, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.at = getelementptr i8, ptr %i.ap, i64 24
  %.val45.i.i = load i64, ptr %i.as, align 8, !range !38, !noalias !1043, !noundef !14
  %i.au = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aw = load <2 x i32>, ptr %i.at, align 8, !noalias !1043
  store i8 0, ptr %i.au, align 8, !alias.scope !1044, !noalias !1043
  store i64 %.val45.i.i, ptr %i.m, align 8, !alias.scope !1044, !noalias !1043
  store <2 x i32> %i.aw, ptr %i.av, align 8, !alias.scope !1044, !noalias !1043
  %i.ax = load ptr, ptr %i.p, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !1043, !nonnull !14, !noundef !14
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !1043, !noundef !14
  %i.bc = call fastcc noundef ptr @_RNvYNtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog12SyslogWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef %i.bb) #30, !noalias !1043 ; 5 uses
  %i.bd = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 44
  %i.bf = load i8, ptr %i.be, align 4, !range !19, !noalias !1043, !noundef !14
  %1 = trunc nuw i8 %i.bf to i1
  %.not34.i.i = icmp ne ptr %i.bc, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.o, label %bb.n

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1043
  %i.bg = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bg, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !noalias !1043, !nonnull !14, !noundef !14
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  %i.bm = load i64, ptr %i.bl, align 8, !noalias !1043, !noundef !14
  store ptr %i.bk, ptr %i.i, align 8, !noalias !1043, !captures !35
  %i.bn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.bm, ptr %i.bn, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1043
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  %i.bp = load ptr, ptr %i.bo, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 24
  %i.br = load ptr, ptr %i.bq, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 8
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !1043, !noundef !14 ; 2 uses
  %i.bu = load ptr, ptr %i.br, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.bv = getelementptr inbounds nuw i8, ptr %i.br, i64 16
  %i.bw = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bu, ptr %i.h, align 8, !noalias !1043
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bt, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !1043
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.by = load <2 x ptr>, ptr %i.bv, align 8, !noalias !1043
  store i64 0, ptr %i.bw, align 8, !noalias !1043
  store i64 %i.bt, ptr %i.bx, align 8, !noalias !1043
  store <2 x ptr> %i.by, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1043
  store ptr %i.i, ptr %i.g, align 8, !noalias !1043
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !1043
  %i.bz = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.bz, align 8, !noalias !1043
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !1043
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !1045
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1043
  %.sroa.057.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !1043 ; 2 uses
  %.sroa.458.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.458.0.copyload.i.i = load ptr, ptr %.sroa.458.0..sroa_idx.i.i, align 8, !noalias !1043 ; 3 uses
  %.sroa.6.0..sroa_idx59.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx59.i.i, align 8, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1043
  %i.ca = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.cb = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 24
  %i.cd = load ptr, ptr %i.cc, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.ce = getelementptr i8, ptr %i.ca, i64 24
  %.val42.i.i = load i64, ptr %i.cd, align 8, !range !38, !noalias !1043, !noundef !14
  %i.cf = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.cg = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ch = load <2 x i32>, ptr %i.ce, align 8, !noalias !1043
  store i8 0, ptr %i.cf, align 8, !alias.scope !1046, !noalias !1043
  store i64 %.val42.i.i, ptr %i.f, align 8, !alias.scope !1046, !noalias !1043
  store <2 x i32> %i.ch, ptr %i.cg, align 8, !alias.scope !1046, !noalias !1043
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.458.0.copyload.i.i) ]
  %i.ci = call fastcc noundef ptr @_RNvYNtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog12SyslogWriterNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_allCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.458.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !1043 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ci, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1043
  store ptr %i.ci, ptr %i.e, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1043
  store ptr %i.e, ptr %i.d, align 8, !noalias !1043
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !1043
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1043
  call void @llvm.experimental.noalias.scope.decl(metadata !1047)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1047, !noalias !1043, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1048
  %i.cj = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.cl = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %i.cj, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.co = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  %i.cp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.co, ptr %i.cp, align 8, !alias.scope !1049, !noalias !1048
  store i8 3, ptr %i.c, align 8, !alias.scope !1049, !noalias !1048
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cp) #30, !noalias !1048
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1043
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  call void @_RNvXs8_NtCs3uQwFeR9vTQ_14syslog_tracing6syslogNtB5_12SyslogWriterNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f) #30, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1043
  %i.cq = icmp eq i64 %.sroa.057.0.copyload.i.i, 0
  br i1 %i.cq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.458.0.copyload.i.i, i64 noundef %.sroa.057.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1050
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.r, %bb.m, %bb.l, %bb.g
  %i.cr = load ptr, ptr %i.p, align 8, !noalias !1043, !nonnull !14, !align !27, !noundef !14
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cr, i64 16
  store i64 0, ptr %i.cs, align 8, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1043
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.v

bb.n:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1043
  store ptr %i.bc, ptr %i.l, align 8, !noalias !1043
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1043
  store ptr %i.l, ptr %i.k, align 8, !noalias !1043
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !1043
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1043
  call void @llvm.experimental.noalias.scope.decl(metadata !1051)
  %.val.i46.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1051, !noalias !1043, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1052
  %i.ct = ptrtoint ptr %.val.i46.i.i to i64       ; 2 uses
  %i.cu = and i64 %i.ct, 3
  switch i64 %i.cu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i
    i64 1, label %bb.q
  ], !prof !29

bb.p:                                             ; preds = %bb.o
  %i.cv = icmp ult ptr %.val.i46.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cw = and i64 %i.ct, 1095216660480
  %i.cx = icmp ne i64 %i.cw, 1095216660480
  call void @llvm.assume(i1 %i.cv)
  call void @llvm.assume(i1 %i.cx)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

bb.q:                                             ; preds = %bb.o
  %i.cy = getelementptr i8, ptr %.val.i46.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cy) ]
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cy, ptr %i.cz, align 8, !alias.scope !1053, !noalias !1052
  store i8 3, ptr %i.b, align 8, !alias.scope !1053, !noalias !1052
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cz) #30, !noalias !1052
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1052
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1043
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, %bb.n
  call void @_RNvXs8_NtCs3uQwFeR9vTQ_14syslog_tracing6syslogNtB5_12SyslogWriterNtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m) #30, !noalias !1043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1043
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1054
  %i.da = ptrtoint ptr %i.bc to i64               ; 2 uses
  %i.db = and i64 %i.da, 3
  switch i64 %i.db, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i
    i64 1, label %bb.u
  ], !prof !29

bb.t:                                             ; preds = %bb.s
  %i.dc = icmp ult ptr %i.bc, inttoptr (i64 188978561024 to ptr)
  %i.dd = and i64 %i.da, 1095216660480
  %i.de = icmp ne i64 %i.dd, 1095216660480
  call void @llvm.assume(i1 %i.dc)
  call void @llvm.assume(i1 %i.de)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i

bb.u:                                             ; preds = %bb.s
  %i.df = getelementptr i8, ptr %i.bc, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.df) ]
  %i.dg = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.df, ptr %i.dg, align 8, !alias.scope !1055, !noalias !1054
  store i8 3, ptr %i.a, align 8, !alias.scope !1055, !noalias !1054
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.dg) #30, !noalias !1054
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit51.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1054
  br label %bb.r

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1056)
  call void @llvm.experimental.noalias.scope.decl(metadata !1057)
  %.val.i.i52.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !1058, !noalias !1043, !noundef !14 ; 2 uses
  %i.dh = icmp eq i64 %.val.i.i52.i.i, 0
  br i1 %i.dh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.di = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i53.i.i = load ptr, ptr %i.di, align 8, !alias.scope !1058, !noalias !1043, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i53.i.i, i64 noundef %.val.i.i52.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1059
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1043
  br label %bb.x

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1043
  %i.dj = load i64, ptr %i.r, align 8, !noalias !1043, !noundef !14
  %i.dk = add i64 %i.dj, 1
  store i64 %i.dk, ptr %i.r, align 8, !noalias !1043
  br label %bb.x

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit54.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE4withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2m_5LayerNtNtNtB2q_8registry7sharded8RegistryNtNtB2o_6format13DefaultFieldsINtB41_6FormatNtB41_4FulluENvNtNtBa_2io5stdio6stdoutEINtNtB2q_5layer5LayerB3p_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 5 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [48 x i8], align 8                ; 8 uses
  %i.i = alloca [16 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [8 x i8], align 8                 ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [24 x i8], align 8                ; 7 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [8 x i8], align 8                 ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  %i.r = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtBd_5LayerppppEINtNtBh_5layer5LayerpE8on_event3BUF0023___RUST_STD_INTERNAL_VAL) ; 7 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 2 uses
  %i.t = load i8, ptr %i.s, align 8, !range !28, !noalias !1086, !noundef !14
  switch i8 %i.t, label %default.unreachable [
    i8 0, label %bb.c
    i8 2, label %_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENvNtNtBa_2io5stdio6stdoutEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit
    i8 1, label %bb.b
  ], !prof !34

default.unreachable:                              ; preds = %bb.s, %bb.o, %bb.i, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local11destructors10linux_like8register(ptr noundef nonnull align 8 %i.r, ptr noundef nonnull @_RINvNtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native5eager7destroyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEECsat9HgdBb3qc_16shadowsocks_rust) #30, !noalias !1086
  store i8 0, ptr %i.s, align 8, !noalias !1086
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1086 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1086 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1086
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1086
  %i.u = load i64, ptr %i.r, align 8, !noalias !1087, !noundef !14
  %.not36.i.i = icmp eq i64 %i.u, 0               ; 2 uses
  br i1 %.not36.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -1, ptr %i.r, align 8, !noalias !1087
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1087
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1087
  store i64 0, ptr %i.q, align 8, !noalias !1087
  %.sroa.49.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.49.0..sroa_idx.i.i, align 8, !noalias !1087
  %.sroa.510.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %.sroa.510.0..sroa_idx.i.i, align 8, !noalias !1087
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %storemerge.i.i = phi ptr [ %i.q, %bb.e ], [ %i.v, %bb.d ]
  store ptr %storemerge.i.i, ptr %i.p, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  %i.w = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1087, !nonnull !14, !noundef !14 ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.x = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 13
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %.sroa.5.0.copyload.i, ptr %i.z, align 8, !noalias !1087
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %.sroa.6.0.copyload.i, ptr %i.aa, align 8, !noalias !1087
  store ptr %i.y, ptr %i.o, align 8, !noalias !1087
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr %i.x, ptr %i.ab, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1087
  %i.ac = getelementptr inbounds nuw i8, ptr %i.w, i64 10
  %i.ad = load i8, ptr %i.ac, align 1, !range !19, !noalias !1087, !noundef !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 11
  %i.af = load i8, ptr %i.ae, align 1, !range !19, !noalias !1087, !noundef !14
  store ptr %i.p, ptr %i.n, align 8, !noalias !1087
  %i.ag = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr @240, ptr %i.ag, align 8, !noalias !1087
  %i.ah = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i8 %i.ad, ptr %i.ah, align 8, !noalias !1087
  %i.ai = getelementptr inbounds nuw i8, ptr %i.n, i64 17
  store i8 %i.af, ptr %i.ai, align 1, !noalias !1087
  %i.aj = call fastcc noundef zeroext i1 @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt6formatINtB5_6FormatNtB5_4FulluEINtB5_11FormatEventNtNtNtB9_8registry7sharded8RegistryNtB5_13DefaultFieldsE12format_eventCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(8) %i.w, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.n, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.x) #30, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1087
  br i1 %i.aj, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.ak = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1087, !nonnull !14, !noundef !14
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 12
  %i.am = load i8, ptr %i.al, align 1, !range !19, !noalias !1087, !noundef !14
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %.split.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1087
  %i.ao = call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout() #30, !noalias !1087
  store ptr %i.ao, ptr %i.m, align 8, !noalias !1087
  %i.ap = load ptr, ptr %i.p, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.ar = load ptr, ptr %i.aq, align 8, !noalias !1087, !nonnull !14, !noundef !14
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.at = load i64, ptr %i.as, align 8, !noalias !1087, !noundef !14
  %i.au = call noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ar, i64 noundef %i.at) #30, !noalias !1087 ; 5 uses
  %i.av = load ptr, ptr %.sroa.0.0.copyload.i, align 8, !noalias !1087, !nonnull !14, !noundef !14
  %i.aw = getelementptr inbounds nuw i8, ptr %i.av, i64 12
  %i.ax = load i8, ptr %i.aw, align 1, !range !19, !noalias !1087, !noundef !14
  %1 = trunc nuw i8 %i.ax to i1
  %.not34.i.i = icmp ne ptr %i.au, null           ; 2 uses
  %or.cond.not.i.i = and i1 %.not34.i.i, %1
  br i1 %or.cond.not.i.i, label %bb.o, label %bb.n

.split.i.i:                                       ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1087
  %i.ay = load ptr, ptr %.sroa.4.0.copyload.i, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 24
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.bc = load ptr, ptr %i.bb, align 8, !noalias !1087, !nonnull !14, !noundef !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ba, i64 24
  %i.be = load i64, ptr %i.bd, align 8, !noalias !1087, !noundef !14
  store ptr %i.bc, ptr %i.i, align 8, !noalias !1087, !captures !35
  %i.bf = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 %i.be, ptr %i.bf, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1087
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.bh = load ptr, ptr %i.bg, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !noalias !1087, !noundef !14 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.bo = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.bp = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store ptr %i.bm, ptr %i.h, align 8, !noalias !1087
  %.sroa.416.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %i.bl, ptr %.sroa.416.0..sroa_idx.i.i, align 8, !noalias !1087
  %.sroa.517.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.bq = load <2 x ptr>, ptr %i.bn, align 8, !noalias !1087
  store i64 0, ptr %i.bo, align 8, !noalias !1087
  store i64 %i.bl, ptr %i.bp, align 8, !noalias !1087
  store <2 x ptr> %i.bq, ptr %.sroa.517.0..sroa_idx.i.i, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1087
  store ptr %i.i, ptr %i.g, align 8, !noalias !1087
  %.sroa.421.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.421.0..sroa_idx.i.i, align 8, !noalias !1087
  %i.br = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.h, ptr %i.br, align 8, !noalias !1087
  %.sroa.425.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @_RNvXsZ_NtCs1kwRxRulhfk_12tracing_core5fieldNtB5_4IterNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt, ptr %.sroa.425.0..sroa_idx.i.i, align 8, !noalias !1087
  call void @_RNvNvNtCsgCecv3eZDcN_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noundef nonnull @241, ptr noundef nonnull %i.g) #30, !noalias !1088
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1087
  %.sroa.051.0.copyload.i.i = load i64, ptr %i.j, align 8, !noalias !1087 ; 2 uses
  %.sroa.452.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.452.0.copyload.i.i = load ptr, ptr %.sroa.452.0..sroa_idx.i.i, align 8, !noalias !1087 ; 3 uses
  %.sroa.6.0..sroa_idx53.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx53.i.i, align 8, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1087
  %i.bs = call noundef nonnull align 8 ptr @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio6stdout() #30, !noalias !1087
  store ptr %i.bs, ptr %i.f, align 8, !noalias !1087
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.452.0.copyload.i.i) ]
  %i.bt = call noundef ptr @_RNvXse_NtNtCs5Xr050g3D4S_3std2io5stdioNtB5_6StdoutNtNtNtCsf3Ta7LF998c_4core2io5write5Write9write_all(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.452.0.copyload.i.i, i64 noundef %.sroa.6.0.copyload.i.i) #30, !noalias !1087 ; 2 uses
  %.not.i.i = icmp eq ptr %i.bt, null
  br i1 %.not.i.i, label %bb.l, label %bb.i

bb.i:                                             ; preds = %.split.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1087
  store ptr %i.bt, ptr %i.e, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1087
  store ptr %i.e, ptr %i.d, align 8, !noalias !1087
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !1087
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @242, ptr noundef nonnull %i.d) #30, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  %.val.i.i.i = load ptr, ptr %i.e, align 8, !alias.scope !1089, !noalias !1087, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1090
  %i.bu = ptrtoint ptr %.val.i.i.i to i64         ; 2 uses
  %i.bv = and i64 %i.bu, 3
  switch i64 %i.bv, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 3, label %bb.j
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
    i64 1, label %bb.k
  ], !prof !29

bb.j:                                             ; preds = %bb.i
  %i.bw = icmp ult ptr %.val.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.bx = and i64 %i.bu, 1095216660480
  %i.by = icmp ne i64 %i.bx, 1095216660480
  call void @llvm.assume(i1 %i.bw)
  call void @llvm.assume(i1 %i.by)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.k:                                             ; preds = %bb.i
  %i.bz = getelementptr i8, ptr %.val.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bz) ]
  %i.ca = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.bz, ptr %i.ca, align 8, !alias.scope !1091, !noalias !1090
  store i8 3, ptr %i.c, align 8, !alias.scope !1091, !noalias !1090
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ca) #30, !noalias !1090
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.k, %bb.j, %bb.i, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1090
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1087
  br label %bb.l

bb.l:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %.split.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1087
  %i.cb = icmp eq i64 %.sroa.051.0.copyload.i.i, 0
  br i1 %i.cb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.452.0.copyload.i.i, i64 noundef %.sroa.051.0.copyload.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1092
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.r, %bb.m, %bb.l, %bb.g
  %i.cc = load ptr, ptr %i.p, align 8, !noalias !1087, !nonnull !14, !align !27, !noundef !14
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 16
  store i64 0, ptr %i.cd, align 8, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !1087
  br i1 %.not36.i.i, label %.critedge.i.i, label %bb.v

bb.n:                                             ; preds = %bb.h
  br i1 %.not34.i.i, label %bb.s, label %bb.r

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1087
  store ptr %i.au, ptr %i.l, align 8, !noalias !1087
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1087
  store ptr %i.l, ptr %i.k, align 8, !noalias !1087
  %.sroa.414.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @_RNvXs3_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_5ErrorNtNtB9_3fmt7Display3fmt, ptr %.sroa.414.0..sroa_idx.i.i, align 8, !noalias !1087
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @243, ptr noundef nonnull %i.k) #30, !noalias !1087
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1087
  call void @llvm.experimental.noalias.scope.decl(metadata !1093)
  %.val.i40.i.i = load ptr, ptr %i.l, align 8, !alias.scope !1093, !noalias !1087, !nonnull !14, !noundef !14 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1094
  %i.ce = ptrtoint ptr %.val.i40.i.i to i64       ; 2 uses
  %i.cf = and i64 %i.ce, 3
  switch i64 %i.cf, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i
    i64 3, label %bb.p
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i
    i64 1, label %bb.q
  ], !prof !29

bb.p:                                             ; preds = %bb.o
  %i.cg = icmp ult ptr %.val.i40.i.i, inttoptr (i64 188978561024 to ptr)
  %i.ch = and i64 %i.ce, 1095216660480
  %i.ci = icmp ne i64 %i.ch, 1095216660480
  call void @llvm.assume(i1 %i.cg)
  call void @llvm.assume(i1 %i.ci)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i

bb.q:                                             ; preds = %bb.o
  %i.cj = getelementptr i8, ptr %.val.i40.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cj) ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.cj, ptr %i.ck, align 8, !alias.scope !1095, !noalias !1094
  store i8 3, ptr %i.b, align 8, !alias.scope !1095, !noalias !1094
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ck) #30, !noalias !1094
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i: ; preds = %bb.q, %bb.p, %bb.o, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1094
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1087
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit42.i.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1087
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i

bb.s:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1096
  %i.cl = ptrtoint ptr %i.au to i64               ; 2 uses
  %i.cm = and i64 %i.cl, 3
  switch i64 %i.cm, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i
    i64 3, label %bb.t
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i
    i64 1, label %bb.u
  ], !prof !29

bb.t:                                             ; preds = %bb.s
  %i.cn = icmp ult ptr %i.au, inttoptr (i64 188978561024 to ptr)
  %i.co = and i64 %i.cl, 1095216660480
  %i.cp = icmp ne i64 %i.co, 1095216660480
  call void @llvm.assume(i1 %i.cn)
  call void @llvm.assume(i1 %i.cp)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i

bb.u:                                             ; preds = %bb.s
  %i.cq = getelementptr i8, ptr %i.au, i64 -1     ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cq) ]
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr %i.cq, ptr %i.cr, align 8, !alias.scope !1097, !noalias !1096
  store i8 3, ptr %i.a, align 8, !alias.scope !1097, !noalias !1096
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cr) #30, !noalias !1096
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsat9HgdBb3qc_16shadowsocks_rust.exit45.i.i: ; preds = %bb.u, %bb.t, %bb.s, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1096
  br label %bb.r

bb.v:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !1098)
  call void @llvm.experimental.noalias.scope.decl(metadata !1099)
  %.val.i.i46.i.i = load i64, ptr %i.q, align 8, !range !16, !alias.scope !1100, !noalias !1087, !noundef !14 ; 2 uses
  %i.cs = icmp eq i64 %.val.i.i46.i.i, 0
  br i1 %i.cs, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ct = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.val1.i.i47.i.i = load ptr, ptr %i.ct, align 8, !alias.scope !1100, !noalias !1087, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i47.i.i, i64 noundef %.val.i.i46.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !1101
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i: ; preds = %bb.w, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1087
  br label %bb.x

.critedge.i.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !1087
  %i.cu = load i64, ptr %i.r, align 8, !noalias !1087, !noundef !14
  %i.cv = add i64 %i.cu, 1
  store i64 %i.cv, ptr %i.r, align 8, !noalias !1087
  br label %bb.x

_RINvMs2_NtNtCs5Xr050g3D4S_3std6thread5localINtB6_8LocalKeyINtNtCsf3Ta7LF998c_4core4cell7RefCellNtNtCsgCecv3eZDcN_5alloc6string6StringEE8try_withNCNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB2q_5LayerNtNtNtB2u_8registry7sharded8RegistryNtNtB2s_6format13DefaultFieldsINtB45_6FormatNtB45_4FulluENvNtNtBa_2io5stdio6stdoutEINtNtB2u_5layer5LayerB3t_E8on_event0uECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.a
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread5local18panic_access_error(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @72) #37
  unreachable

bb.x:                                             ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECsat9HgdBb3qc_16shadowsocks_rust.exit48.i.i, %.critedge.i.i
  ret void
}

; Function Attrs: cold nounwind nonlazybind uwtable
define internal fastcc noundef i64 @_RINvMs6_NtCsfl4DFYTbOu6_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECsat9HgdBb3qc_16shadowsocks_rust(ptr nofree noundef nonnull writeonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 11 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 6 uses
  %i.h = tail call noundef nonnull align 8 ptr @_RNvXs9_NtCsfl4DFYTbOu6_12sharded_slab3tidNtB5_8REGISTRYNtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5deref(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @_RNvNtCsfl4DFYTbOu6_12sharded_slab3tid8REGISTRY) #30 ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 6 uses
  %i.j = cmpxchg ptr %i.i, i32 0, i32 1 acquire monotonic, align 4, !noalias !1116
  %i.k = extractvalue { i32, i1 } %i.j, 1
  br i1 %i.k, label %bb.c, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.i) #30, !noalias !1116
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.l = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1116
  %i.m = and i64 %i.l, 9223372036854775807
  %i.n = icmp eq i64 %i.m, 0
  br i1 %i.n, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit, !prof !20

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  %i.o = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36, !noalias !1116 ; 2 uses
  %i.p = xor i1 %i.o, true
  %i.q = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.r = load atomic i8, ptr %i.q monotonic, align 4, !noalias !1116
  %.not.i.i.not = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.not, label %bb.d, label %bb.p

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit.thread: ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %i.h, i64 12 ; 3 uses
  %i.t = load atomic i8, ptr %i.s monotonic, align 4, !noalias !1116
  %.not.i.i.not14 = icmp eq i8 %i.t, 0
  br i1 %.not.i.i.not14, label %bb.d, label %.thread

bb.d:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit.thread, %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.u = phi ptr [ %i.s, %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %i.q, %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.01.0.i.i16 = phi i1 [ false, %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit.thread ], [ %i.p, %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequejEE4lockCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 2 uses
  %i.w = load i64, ptr %i.v, align 8, !noundef !14 ; 2 uses
  %i.x = icmp ugt i64 %i.w, 1                     ; 2 uses
  br i1 %i.x, label %bb.e, label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1117)
  %i.y = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %i.aa = load i64, ptr %i.z, align 8, !alias.scope !1117, !noundef !14 ; 2 uses
  %i.ab = add i64 %i.aa, 1                        ; 2 uses
  %i.ac = load i64, ptr %i.y, align 8, !range !16, !alias.scope !1117, !noundef !14 ; 3 uses
  %.not.i.i7 = icmp ult i64 %i.ab, %i.ac
  %i.ad = select i1 %.not.i.i7, i64 0, i64 %i.ac
  %.sroa.01.0.i.i8 = sub nuw i64 %i.ab, %i.ad
  store i64 %.sroa.01.0.i.i8, ptr %i.z, align 8, !alias.scope !1117
  %i.ae = add i64 %i.w, -1                        ; 2 uses
  store i64 %i.ae, ptr %i.v, align 8, !alias.scope !1117
  %i.af = icmp ult i64 %i.ae, %i.ac
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %i.ah = load ptr, ptr %i.ag, align 8, !alias.scope !1117, !nonnull !14, !noundef !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ah, i64 %i.aa
  %i.aj = load i64, ptr %i.ai, align 8, !noalias !1117, !noundef !14
  br label %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.e, %bb.d
  %.sroa.3.0.i = phi i64 [ undef, %bb.d ], [ %i.aj, %bb.e ]
  br i1 %.sroa.01.0.i.i16, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.ak = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.al = and i64 %i.ak, 9223372036854775807
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.g, !prof !20

bb.g:                                             ; preds = %bb.f
  %i.an = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.an, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  store atomic i8 1, ptr %i.u monotonic, align 1
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.h, %bb.g, %bb.f, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequejE9pop_frontCsat9HgdBb3qc_16shadowsocks_rust.exit.i
end_hunk_0
begin_hunk_1_@_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE16is_enabled_innerCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  br i1 %i.n, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !5550
  store i64 2, ptr %i.d, align 8, !noalias !5550
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !5550
  store ptr %i.d, ptr %i.c, align 8, !noalias !5550
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !5550
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !5549
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.o = phi i64 [ %i.v, %.backedge.i.i.i.i.i.i ], [ %i.m, %bb.d ]
  %.sroa.05.0.i.i4.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.l, %bb.d ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, 2
  %i.p = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.q = icmp eq i64 %i.p, 1
  %i.r = icmp eq i64 %i.o, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %i.r, %i.q
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.s = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685248
  %i.t = or disjoint i64 %i.s, 3
  %i.u = cmpxchg ptr %i.k, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.t acq_rel acquire, align 8, !noalias !5549 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.u, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.e
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.u, %bb.e ], [ %i.ab, %.thread.i.i.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.v = and i64 %.sroa.05.0.i.i.be.i.i.i.i.i.i, 3 ; 2 uses
  %i.w = icmp eq i64 %i.v, 2
  br i1 %i.w, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i.i.i:                              ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.x = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685245
  %i.y = shl nuw nsw i64 %i.p, 2
  %i.z = add nsw i64 %i.y, -4
  %i.aa = or i64 %i.z, %i.x
  %i.ab = cmpxchg ptr %i.k, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.aa acq_rel acquire, align 8, !noalias !5549 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ab, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !5551
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !5545
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  %i.ac = and i64 %i.h, %1
  %i.ad = icmp eq i64 %i.ac, 0
  %i.ae = zext i1 %i.ad to i8                     ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.f, i64 80 ; 3 uses
  %i.ag = load atomic i64, ptr %i.af acquire, align 8, !noalias !5552 ; 2 uses
  %i.ah = and i64 %i.ag, 3                        ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 2
  br i1 %i.ai, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !5552
  store i64 2, ptr %i.b, align 8, !noalias !5552
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5552
  store ptr %i.b, ptr %i.a, align 8, !noalias !5552
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !5552
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !5552
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.aj = phi i64 [ %i.aq, %.backedge.i.i.i.i ], [ %i.ah, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.ag, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.ak = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.al = icmp eq i64 %i.ak, 1
  %i.am = icmp eq i64 %i.aj, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.am, %i.al
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.g, label %.thread.i.i.i.i

bb.g:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.an = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.ao = or disjoint i64 %i.an, 3
  %i.ap = cmpxchg ptr %i.af, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.ao acq_rel acquire, align 8, !noalias !5552 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.ap, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.g
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.ap, %bb.g ], [ %i.aw, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.aq = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.ar = icmp eq i64 %i.aq, 2
  br i1 %i.ar, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.as = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.at = shl nuw nsw i64 %i.ak, 2
  %i.au = add nsw i64 %i.at, -4
  %i.av = or i64 %i.au, %i.as
  %i.aw = cmpxchg ptr %i.af, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.av acq_rel acquire, align 8, !noalias !5552 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.aw, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !5553
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread.i.i.i.i.i.i, %.thread.i.i.i.i, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, %bb.a, %bb.f, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i
  %.sroa.0.0 = phi i8 [ %i.ae, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ], [ 2, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i ], [ %i.ae, %.thread.i.i.i.i ], [ 2, %bb.f ], [ 2, %bb.a ], [ 2, %.thread.i.i.i.i.i.i ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  fence acquire
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION0023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !28, !noalias !5574, !noundef !14
  %i.d = icmp eq i8 %i.c, 1
  br i1 %i.d, label %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i, label %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, !prof !20

_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.a
  %i.e = tail call fastcc noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageNtNtCsfl4DFYTbOu6_12sharded_slab3tid12RegistrationuE16get_or_init_slowNvNvB1g_12REGISTRATION27___rust_std_internal_init_fnECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) null) #30 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit, label %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i

_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i: ; preds = %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.a
  %.sroa.0.0.i.i.i2.i.i = phi ptr [ %i.e, %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ], [ %i.a, %bb.a ] ; 3 uses
  %i.g = load i64, ptr %.sroa.0.0.i.i.i2.i.i, align 8, !range !31, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.b, label %bb.c, !prof !20

bb.b:                                             ; preds = %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i2.i.i, i64 8
  %i.j = load i64, ptr %i.i, align 8
  br label %_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i
  %i.k = tail call fastcc noundef i64 @_RINvMs6_NtCsfl4DFYTbOu6_12sharded_slab3tidNtB6_12Registration8registerNtNtB8_3cfg13DefaultConfigECsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %.sroa.0.0.i.i.i2.i.i) #30
  br label %_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %bb.b, %bb.c
  %.sroa.0.0.i = phi i64 [ %i.j, %bb.b ], [ %i.k, %bb.c ], [ -1, %_RNvYNCNKNvNtCsfl4DFYTbOu6_12sharded_slab3tid12REGISTRATION00INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_12RegistrationEEEE9call_onceCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !14
  %i.n = icmp eq i64 %.sroa.0.0.i, %i.m
  br i1 %i.n, label %bb.o, label %bb.d

bb.d:                                             ; preds = %_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load i64, ptr %i.o, align 8, !noundef !14
  %i.p = and i64 %1, 274877906943                 ; 2 uses
  %i.q = add nuw nsw i64 %i.p, 32
  %i.r = lshr i64 %i.q, 6
  %i.s = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.r, i1 false)
  %i.t = sub nuw nsw i64 64, %i.s                 ; 2 uses
  %.not.i = icmp ult i64 %i.t, %.val1
  br i1 %.not.i, label %bb.e, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.e:                                             ; preds = %bb.d
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load ptr, ptr %i.u, align 8, !nonnull !14, !noundef !14
  %i.v = getelementptr inbounds nuw [40 x i8], ptr %.val, i64 %i.t ; 4 uses
  %i.w = lshr i64 %1, 51                          ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %i.z = load i64, ptr %i.y, align 8, !noundef !14
  %i.aa = sub i64 %i.p, %i.z                      ; 3 uses
  %i.ab = load ptr, ptr %i.v, align 8, !noalias !5575, !align !27, !noundef !14 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.ab, null
  br i1 %.not.i.i.i, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !5575, !noundef !14
  %i.ae = icmp ult i64 %i.aa, %i.ad
  br i1 %i.ae, label %bb.g, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw [96 x i8], ptr %i.ab, i64 %i.aa ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 80 ; 2 uses
  %i.ah = load atomic i64, ptr %i.ag acquire, align 8, !noalias !5575 ; 2 uses
  %i.ai = lshr i64 %i.ah, 51
  %i.aj = icmp eq i64 %i.w, %i.ai
  br i1 %i.aj, label %.lr.ph21.i.i.i.i, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

.lr.ph21.i.i.i.i:                                 ; preds = %bb.g
  %.cmp.i.i.i.i = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i = select i1 %.cmp.i.i.i.i, i64 1, i64 -8190
  %i.ak = add nsw i64 %.v.i.i.i.i, %i.w
  %i.al = shl nuw i64 %i.ak, 51
  br label %bb.h

bb.h:                                             ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %.lr.ph21.i.i.i.i
  %.sroa.02.018.i.i.i.i = phi i1 [ false, %.lr.ph21.i.i.i.i ], [ %.sroa.02.1.i.i.i.i, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ]
  %.sroa.06.017.i.i.i.i = phi i64 [ %i.ah, %.lr.ph21.i.i.i.i ], [ %.sroa.06.1.i.i.i.i, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %.sroa.0.016.i.i.i.i = phi i64 [ 0, %.lr.ph21.i.i.i.i ], [ %.sroa.0.1.i.i.i.i, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i ] ; 4 uses
  %i.am = and i64 %.sroa.06.017.i.i.i.i, 2251799813685247
  %i.an = or disjoint i64 %i.am, %i.al
  %i.ao = cmpxchg ptr %i.ag, i64 %.sroa.06.017.i.i.i.i, i64 %i.an acq_rel acquire, align 8, !noalias !5575 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.ao, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %bb.i, label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.i:                                             ; preds = %bb.h
  %i.ap = and i64 %.sroa.01.0.i.i.i.i.i, 2251799813685244
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %bb.j, label %bb.l

bb.j:                                             ; preds = %bb.i
  tail call void @_RNvXs6_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsfl4DFYTbOu6_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.af) #30, !noalias !5575
  %i.ar = load atomic i64, ptr %i.x monotonic, align 8, !noalias !5575
  %i.as = getelementptr inbounds nuw i8, ptr %i.af, i64 88
  br label %bb.k

bb.k:                                             ; preds = %bb.k, %bb.j
  %.sroa.02.0.i.i.i.i.i.i = phi i64 [ %i.ar, %bb.j ], [ %.sroa.01.0.i.i.i.i.i.i.i, %bb.k ] ; 2 uses
  store i64 %.sroa.02.0.i.i.i.i.i.i, ptr %i.as, align 8, !noalias !5575
  %i.at = cmpxchg ptr %i.x, i64 %.sroa.02.0.i.i.i.i.i.i, i64 %i.aa release monotonic, align 8, !noalias !5575 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 1
  %.sroa.01.0.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.at, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.k

bb.l:                                             ; preds = %bb.i
  %i.au = trunc i64 %.sroa.0.016.i.i.i.i to i32
  %i.av = and i32 %i.au, 31                       ; 2 uses
  %.not.i.i.i.i.a = icmp eq i32 %i.av, 31
  br i1 %.not.i.i.i.i.a, label %._crit_edge.i.i.i.i, label %.lr.ph.preheader.i.i.i.i

.lr.ph.preheader.i.i.i.i:                         ; preds = %bb.l
  %i.aw = shl nuw nsw i32 1, %i.av
  %i.ax = freeze i32 %i.aw                        ; 3 uses
  %i.ay = add i32 %i.ax, -1
  %xtraiter = and i32 %i.ax, 7                    ; 3 uses
  %i.az = icmp ult i32 %i.ay, 7
  br i1 %i.az, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.preheader.i.i.i.i.new

.lr.ph.preheader.i.i.i.i.new:                     ; preds = %.lr.ph.preheader.i.i.i.i
  %unroll_iter = and i32 %i.ax, -8
  br label %.lr.ph.i.i.i.i

._crit_edge.i.i.i.i.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i
  %lcmp.mod41 = icmp ne i32 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod41)
  br label %.lr.ph.i.i.i.i.epil

.lr.ph.i.i.i.i.epil:                              ; preds = %.lr.ph.i.i.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader
  %epil.iter = phi i32 [ 0, %.lr.ph.i.i.i.i.epil.preheader ], [ %epil.iter.next, %.lr.ph.i.i.i.i.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  %epil.iter.next = add i32 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i32 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i.epil, !llvm.loop !5564

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.epil, %bb.l
  %i.ba = icmp ugt i64 %.sroa.0.016.i.i.i.i, 7
  br i1 %i.ba, label %bb.n, label %bb.m

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.preheader.i.i.i.i.new
  %niter = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i.new ], [ %niter.next.7, %.lr.ph.i.i.i.i ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  tail call void @llvm.x86.sse2.pause(), !noalias !5576
  %niter.next.7 = add i32 %niter, 8               ; 2 uses
  %niter.ncmp.7 = icmp eq i32 %niter.next.7, %unroll_iter
  br i1 %niter.ncmp.7, label %._crit_edge.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i

bb.m:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bb = add nuw nsw i64 %.sroa.0.016.i.i.i.i, 1
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

bb.n:                                             ; preds = %._crit_edge.i.i.i.i
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() #30, !noalias !5576
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i

_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i: ; preds = %bb.n, %bb.m, %bb.h
  %.sroa.0.1.i.i.i.i = phi i64 [ 0, %bb.h ], [ %.sroa.0.016.i.i.i.i, %bb.n ], [ %i.bb, %bb.m ]
  %.sroa.06.1.i.i.i.i = phi i64 [ %.sroa.01.0.i.i.i.i.i, %bb.h ], [ %.sroa.06.017.i.i.i.i, %bb.n ], [ %.sroa.06.017.i.i.i.i, %bb.m ] ; 2 uses
  %.sroa.02.1.i.i.i.i = phi i1 [ %.sroa.02.018.i.i.i.i, %bb.h ], [ true, %bb.n ], [ true, %bb.m ] ; 2 uses
  %i.bc = lshr i64 %.sroa.06.1.i.i.i.i, 51
  %i.bd = icmp eq i64 %i.w, %i.bc
  %or.cond.not.i.i.i.i = or i1 %.sroa.02.1.i.i.i.i, %i.bd
  br i1 %or.cond.not.i.i.i.i, label %bb.h, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.o:                                             ; preds = %_RNvMs_NtCsfl4DFYTbOu6_12sharded_slab3tidINtB4_3TidNtNtB6_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5577)
  %i.be = and i64 %1, 274877906943                ; 2 uses
  %i.bf = add nuw nsw i64 %i.be, 32
  %i.bg = lshr i64 %i.bf, 6
  %i.bh = tail call range(i64 31, 65) i64 @llvm.ctlz.i64(i64 %i.bg, i1 false)
  %i.bi = sub nuw nsw i64 64, %i.bh               ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !5577, !noundef !14
  %.not.i3 = icmp ult i64 %i.bi, %i.bk
  br i1 %.not.i3, label %bb.p, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.p:                                             ; preds = %bb.o
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load ptr, ptr %i.bl, align 8, !alias.scope !5577, !nonnull !14, !noundef !14
  %i.bn = getelementptr inbounds nuw [40 x i8], ptr %i.bm, i64 %i.bi ; 3 uses
  %i.bo = lshr i64 %1, 51                         ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5578)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !5579, !noundef !14 ; 2 uses
  %i.br = icmp ult i64 %i.bi, %i.bq
  br i1 %i.br, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 34) %i.bi, i64 noundef %i.bq, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !5579
  unreachable

_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.p
  %i.bs = load ptr, ptr %0, align 8, !alias.scope !5579, !nonnull !14, !noundef !14
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.bs, i64 %i.bi ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bn, i64 32
  %i.bv = load i64, ptr %i.bu, align 8, !noalias !5577, !noundef !14
  %i.bw = sub i64 %i.be, %i.bv                    ; 3 uses
  %i.bx = load ptr, ptr %i.bn, align 8, !noalias !5580, !align !27, !noundef !14 ; 2 uses
  %.not.i.i.i5 = icmp eq ptr %i.bx, null
  br i1 %.not.i.i.i5, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.r

bb.r:                                             ; preds = %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %i.bn, i64 8
  %i.bz = load i64, ptr %i.by, align 8, !noalias !5580, !noundef !14
  %i.ca = icmp ult i64 %i.bw, %i.bz
  br i1 %i.ca, label %bb.s, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %bb.r
  %i.cb = getelementptr inbounds nuw [96 x i8], ptr %i.bx, i64 %i.bw ; 3 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.cb, i64 80 ; 2 uses
  %i.cd = load atomic i64, ptr %i.cc acquire, align 8, !noalias !5580 ; 2 uses
  %i.ce = lshr i64 %i.cd, 51
  %i.cf = icmp eq i64 %i.bo, %i.ce
  br i1 %i.cf, label %.lr.ph20.i.i.i.i, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

.lr.ph20.i.i.i.i:                                 ; preds = %bb.s
  %.cmp.i.i.i.i6 = icmp ult i64 %1, -4503599627370496
  %.v.i.i.i.i7 = select i1 %.cmp.i.i.i.i6, i64 1, i64 -8190
  %i.cg = add nsw i64 %.v.i.i.i.i7, %i.bo
  %i.ch = shl nuw i64 %i.cg, 51
  br label %bb.t

bb.t:                                             ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10, %.lr.ph20.i.i.i.i
  %.sroa.02.017.i.i.i.i = phi i1 [ false, %.lr.ph20.i.i.i.i ], [ %.sroa.02.1.i.i.i.i13, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ]
  %.sroa.06.016.i.i.i.i = phi i64 [ %i.cd, %.lr.ph20.i.i.i.i ], [ %.sroa.06.1.i.i.i.i12, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ] ; 4 uses
  %.sroa.0.015.i.i.i.i = phi i64 [ 0, %.lr.ph20.i.i.i.i ], [ %.sroa.0.1.i.i.i.i11, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10 ] ; 4 uses
  %i.ci = and i64 %.sroa.06.016.i.i.i.i, 2251799813685247
  %i.cj = or disjoint i64 %i.ci, %i.ch
  %i.ck = cmpxchg ptr %i.cc, i64 %.sroa.06.016.i.i.i.i, i64 %i.cj acq_rel acquire, align 8, !noalias !5580 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i8 = extractvalue { i64, i1 } %i.ck, 1
  %.sroa.01.0.i.i.i.i.i9 = extractvalue { i64, i1 } %i.ck, 0 ; 2 uses
  br i1 %.sroa.18.0.in.i.i.i.i.i8, label %bb.u, label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

bb.u:                                             ; preds = %bb.t
  %i.cl = and i64 %.sroa.01.0.i.i.i.i.i9, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  tail call void @_RNvXs6_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_9DataInnerNtNtCsfl4DFYTbOu6_12sharded_slab5clear5Clear5clear(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) dereferenceable_or_null(80) %i.cb) #30, !noalias !5580
  %i.cn = load i64, ptr %i.bt, align 8, !noalias !5580, !noundef !14
  %i.co = getelementptr inbounds nuw i8, ptr %i.cb, i64 88
  store i64 %i.cn, ptr %i.co, align 8, !noalias !5580
  store i64 %i.bw, ptr %i.bt, align 8, !noalias !5580
  br label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.w:                                             ; preds = %bb.u
  %i.cp = trunc i64 %.sroa.0.015.i.i.i.i to i32
  %i.cq = and i32 %i.cp, 31                       ; 2 uses
  %.not.i.i.i.i15 = icmp eq i32 %i.cq, 31
  br i1 %.not.i.i.i.i15, label %._crit_edge.i.i.i.i19, label %.lr.ph.preheader.i.i.i.i16

.lr.ph.preheader.i.i.i.i16:                       ; preds = %bb.w
  %i.cr = shl nuw nsw i32 1, %i.cq
  %i.cs = freeze i32 %i.cr                        ; 3 uses
  %i.ct = add i32 %i.cs, -1
  %xtraiter42 = and i32 %i.cs, 7                  ; 3 uses
  %i.cu = icmp ult i32 %i.ct, 7
  br i1 %i.cu, label %.lr.ph.i.i.i.i17.epil.preheader, label %.lr.ph.preheader.i.i.i.i16.new

.lr.ph.preheader.i.i.i.i16.new:                   ; preds = %.lr.ph.preheader.i.i.i.i16
  %unroll_iter46 = and i32 %i.cs, -8
  br label %.lr.ph.i.i.i.i17

._crit_edge.i.i.i.i19.loopexit.unr-lcssa:         ; preds = %.lr.ph.i.i.i.i17
  %lcmp.mod44.not = icmp eq i32 %xtraiter42, 0
  br i1 %lcmp.mod44.not, label %._crit_edge.i.i.i.i19, label %.lr.ph.i.i.i.i17.epil.preheader

.lr.ph.i.i.i.i17.epil.preheader:                  ; preds = %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, %.lr.ph.preheader.i.i.i.i16
  %lcmp.mod45 = icmp ne i32 %xtraiter42, 0
  tail call void @llvm.assume(i1 %lcmp.mod45)
  br label %.lr.ph.i.i.i.i17.epil

.lr.ph.i.i.i.i17.epil:                            ; preds = %.lr.ph.i.i.i.i17.epil, %.lr.ph.i.i.i.i17.epil.preheader
  %epil.iter43 = phi i32 [ 0, %.lr.ph.i.i.i.i17.epil.preheader ], [ %epil.iter43.next, %.lr.ph.i.i.i.i17.epil ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  %epil.iter43.next = add i32 %epil.iter43, 1     ; 2 uses
  %epil.iter43.cmp.not = icmp eq i32 %epil.iter43.next, %xtraiter42
  br i1 %epil.iter43.cmp.not, label %._crit_edge.i.i.i.i19, label %.lr.ph.i.i.i.i17.epil, !llvm.loop !5573

._crit_edge.i.i.i.i19:                            ; preds = %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, %.lr.ph.i.i.i.i17.epil, %bb.w
  %i.cv = icmp ugt i64 %.sroa.0.015.i.i.i.i, 7
  br i1 %i.cv, label %bb.y, label %bb.x

.lr.ph.i.i.i.i17:                                 ; preds = %.lr.ph.i.i.i.i17, %.lr.ph.preheader.i.i.i.i16.new
  %niter47 = phi i32 [ 0, %.lr.ph.preheader.i.i.i.i16.new ], [ %niter47.next.7, %.lr.ph.i.i.i.i17 ]
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  tail call void @llvm.x86.sse2.pause(), !noalias !5581
  %niter47.next.7 = add i32 %niter47, 8           ; 2 uses
  %niter47.ncmp.7 = icmp eq i32 %niter47.next.7, %unroll_iter46
  br i1 %niter47.ncmp.7, label %._crit_edge.i.i.i.i19.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i17

bb.x:                                             ; preds = %._crit_edge.i.i.i.i19
  %i.cw = add nuw nsw i64 %.sroa.0.015.i.i.i.i, 1
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

bb.y:                                             ; preds = %._crit_edge.i.i.i.i19
  tail call void @_RNvNtNtCs5Xr050g3D4S_3std6thread9functions9yield_now() #30, !noalias !5581
  br label %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10

_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10: ; preds = %bb.y, %bb.x, %bb.t
  %.sroa.0.1.i.i.i.i11 = phi i64 [ 0, %bb.t ], [ %.sroa.0.015.i.i.i.i, %bb.y ], [ %i.cw, %bb.x ]
  %.sroa.06.1.i.i.i.i12 = phi i64 [ %.sroa.01.0.i.i.i.i.i9, %bb.t ], [ %.sroa.06.016.i.i.i.i, %bb.y ], [ %.sroa.06.016.i.i.i.i, %bb.x ] ; 2 uses
  %.sroa.02.1.i.i.i.i13 = phi i1 [ %.sroa.02.017.i.i.i.i, %bb.t ], [ true, %bb.y ], [ true, %bb.x ] ; 2 uses
  %i.cx = lshr i64 %.sroa.06.1.i.i.i.i12, 51
  %i.cy = icmp eq i64 %i.bo, %i.cx
  %or.cond.not.i.i.i.i14 = or i1 %.sroa.02.1.i.i.i.i13, %i.cy
  br i1 %or.cond.not.i.i.i.i14, label %bb.t, label %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit

_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE12clear_remoteCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i, %bb.k, %_RNvNtNtCsfl4DFYTbOu6_12sharded_slab4page4slot19exponential_backoff.exit.i.i.i.i10, %bb.v, %bb.s, %bb.r, %_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE5localCsat9HgdBb3qc_16shadowsocks_rust.exit.i, %bb.o, %bb.g, %bb.f, %bb.e, %bb.d
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc { ptr, ptr } @_RNvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB5_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBP_3AnyNtNtBR_6marker4SendNtB26_4SyncEL_EINtNtBR_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE6insertCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(16) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !5597, !noalias !5598 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !5599, !noundef !14
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, !prof !23

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = tail call { i64, i64 } @_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0EB48_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef 1, ptr noundef nonnull %i.e, i1 noundef zeroext true) #36 ; 0 uses
  br label %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i

_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %0, align 8, !alias.scope !5600, !nonnull !14, !noundef !14 ; 8 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val5.i = load i64, ptr %i.g, align 8, !alias.scope !5600, !noundef !14 ; 4 uses
  %i.h = lshr i64 %.val.i.i, 57
  %i.i = trunc nuw nsw i64 %i.h to i8             ; 3 uses
  %i.j = insertelement <16 x i8> poison, i8 %i.i, i64 0
  %i.k = shufflevector <16 x i8> %i.j, <16 x i8> poison, <16 x i32> zeroinitializer
  %.val.i.i.i = load i128, ptr %1, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i
  %.pn.i.i = phi i64 [ %.val.i.i, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.aj, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.4.120.i.i, %bb.f ]
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %.sroa.04.122.i.i, %bb.f ]
  %i.l = phi i64 [ 0, %_RINvMs6_NtCsbDKHzkXHCUM_9hashbrown3rawINtB6_8RawTableTNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBS_3AnyNtNtBU_6marker4SendNtB29_4SyncEL_EEE7reserveNCINvNtB8_3map11make_hasherBQ_B1o_INtNtBU_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i ], [ %i.ai, %bb.f ]
  %.sroa.0.017.i.i = and i64 %.pn.i.i, %.val5.i   ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.017.i.i
  %.sroa.0.0.copyload.i27.i.i = load <16 x i8>, ptr %i.m, align 1, !noalias !5601 ; 3 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, %i.k
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not28.i.i = icmp eq i16 %i.o, 0
  br i1 %.not28.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %bb.d
  %.sroa.01.029.i.i = phi i16 [ %i.y, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.01.029.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.0.017.i.i, %i.q
  %i.s = and i64 %i.r, %.val5.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.t ; 3 uses
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -32
  %.val2.i.i = load i128, ptr %i.v, align 8, !noalias !5602
  %i.w = icmp eq i128 %.val.i.i.i, %.val2.i.i
  br i1 %i.w, label %bb.j, label %bb.d, !prof !20

._crit_edge.i.i:                                  ; preds = %bb.d, %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.04.0.i.i, 1
  br i1 %.not12.i.i, label %.thread.i.i, label %bb.e, !prof !23

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.x = add i16 %.sroa.01.029.i.i, -1
  %i.y = and i16 %i.x, %.sroa.01.029.i.i          ; 2 uses
  %.not.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.z = icmp slt <16 x i8> %.sroa.0.0.copyload.i27.i.i, zeroinitializer
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread24.i.i, !prof !23

.thread24.i.i:                                    ; preds = %bb.e
  %i.ab = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aa, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.0.017.i.i, %i.ac
  %i.ae = and i64 %i.ad, %.val5.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread24.i.i, %._crit_edge.i.i
  %.sroa.4.121.i.i = phi i64 [ %i.ae, %.thread24.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i27.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = icmp eq i16 %i.ag, 0
  br i1 %i.ah, label %bb.f, label %bb.g, !prof !23

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.04.122.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.120.i.i = phi i64 [ %.sroa.4.121.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ai = add i64 %i.l, 16                        ; 2 uses
  %i.aj = add i64 %i.ai, %.sroa.0.017.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.121.i.i
  %i.al = load i8, ptr %i.ak, align 1, !noundef !14 ; 2 uses
  %i.am = icmp sgt i8 %i.al, -1
  br i1 %i.am, label %bb.h, label %bb.i, !prof !23

bb.h:                                             ; preds = %bb.g
  %.val2.i.i.i = load <16 x i8>, ptr %.val.i, align 16
  %i.an = icmp slt <16 x i8> %.val2.i.i.i, zeroinitializer
  %i.ao = bitcast <16 x i1> %i.an to i16          ; 2 uses
  %.not.i23.i.i = icmp ne i16 %i.ao, 0
  %i.ap = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ao, i1 true)
  %i.aq = zext nneg i16 %i.ap to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i23.i.i)
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.aq
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !5603
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.ar = phi i8 [ %.pre, %bb.h ], [ %i.al, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.aq, %bb.h ], [ %.sroa.4.121.i.i, %bb.g ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5604)
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.at = and i8 %i.ar, 1
  %i.au = zext nneg i8 %i.at to i64
  %i.av = add i64 %.sroa.3.0.i.ph.i, -16
  %i.aw = and i64 %i.av, %.val5.i
  store i8 %i.i, ptr %i.as, align 1, !noalias !5603
  %i.ax = getelementptr i8, ptr %.val.i, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ax, i64 16
  store i8 %i.i, ptr %i.ay, align 1, !noalias !5603
  %i.az = load <2 x i64>, ptr %i.b, align 8, !alias.scope !5604
  %i.ba = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.au, i64 0
  %i.bb = sub <2 x i64> %i.az, %i.ba
  store <2 x i64> %i.bb, ptr %i.b, align 8, !alias.scope !5604
  %i.bc = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bd = getelementptr inbounds [32 x i8], ptr %.val.i, i64 %i.bc ; 3 uses
  %i.be = getelementptr inbounds i8, ptr %i.bd, i64 -32
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.be, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false), !noalias !5604
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -16
  store ptr %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !5604
  %.sroa.5.0..sroa_idx = getelementptr inbounds i8, ptr %i.bd, i64 -8
  store ptr %3, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !5604
  br label %bb.k

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.bf = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  %i.bg = load ptr, ptr %i.bf, align 8, !nonnull !14, !noundef !14
  %i.bh = getelementptr inbounds i8, ptr %i.u, i64 -8 ; 2 uses
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !14, !align !27, !noundef !14
  store ptr %2, ptr %i.bf, align 8
  store ptr %3, ptr %i.bh, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  %.sroa.34.0 = phi ptr [ undef, %bb.i ], [ %i.bi, %bb.j ]
  %.sroa.03.0 = phi ptr [ null, %bb.i ], [ %i.bg, %bb.j ]
  %i.bj = insertvalue { ptr, ptr } poison, ptr %.sroa.03.0, 0
  %i.bk = insertvalue { ptr, ptr } %i.bj, ptr %.sroa.34.0, 1
  ret { ptr, ptr } %i.bk
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs2_NtCsbPuM0779rnk_4time16offset_date_timeNtB5_14OffsetDateTime7now_utc(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(16) %0) unnamed_addr #6 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = tail call { i64, i32 } @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime3now() #30 ; 2 uses
  %i.d = extractvalue { i64, i32 } %i.c, 0
  %i.e = extractvalue { i64, i32 } %i.c, 1
  store i64 %i.d, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %i.e, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCs5Xr050g3D4S_3std4timeNtB5_10SystemTime14duration_since(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0) #30
  %i.g = load i64, ptr %i.a, align 8, !range !31, !noundef !14
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !14 ; 13 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.l = load i32, ptr %i.k, align 8, !range !56, !noundef !14 ; 3 uses
  %i.m = urem i64 %i.j, 60                        ; 4 uses
  %i.n = udiv i64 %i.j, 60
  %i.o = urem i64 %i.n, 60                        ; 4 uses
  br i1 %i.h, label %bb.b, label %_RNvMs2_NtCsbPuM0779rnk_4time4timeNtB5_4Time17adjusting_add_std.exit.i.thread

bb.b:                                             ; preds = %bb.a
  %i.p = sub nsw i64 0, %i.o
  %i.q = udiv i64 %i.j, 3600
  %i.r = urem i64 %i.q, 24                        ; 2 uses
  %.not = icmp eq i32 %i.l, 0
  br i1 %.not, label %.thread.i.i, label %.thread.i.i.thread, !prof !20

.thread.i.i.thread:                               ; preds = %bb.b
  %i.s = sub nuw nsw i32 1000000000, %i.l
  %i.t = xor i64 %i.m, -1
  br label %.thread43.i.i.thread

.thread.i.i:                                      ; preds = %bb.b
  %i.u = sub nsw i64 0, %i.m
  %.not63 = icmp eq i64 %i.m, 0
  br i1 %.not63, label %.thread43.i.i, label %.thread43.i.i.thread, !prof !57

.thread43.i.i.thread:                             ; preds = %.thread.i.i, %.thread.i.i.thread
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCs1kwRxRulhfk_12tracing_core10subscriber10Subscriber8new_span:bb.a

bb.t:                                             ; preds = %bb.s
  %i.bl = cmpxchg ptr %i.bi, i64 %.sroa.02.0.i.i.i.i, i64 %.sroa.0.0.i.i.i acq_rel acquire, align 8, !noalias !10364 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i = extractvalue { i64, i1 } %i.bl, 1
  %.sroa.01.0.i.i.i.i.i = extractvalue { i64, i1 } %i.bl, 0
  br i1 %.sroa.18.0.in.i.i.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, label %bb.s

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i: ; preds = %bb.t, %bb.s, %bb.k
  %.sroa.02.0.i.i.i = phi ptr [ %i.ae, %bb.k ], [ %i.az, %bb.s ], [ %i.az, %bb.t ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10364
  call void @llvm.experimental.noalias.scope.decl(metadata !10371)
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 16
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !10371, !noalias !10364, !nonnull !14, !noundef !14 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 24
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !10371, !noalias !10364, !noundef !14 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %i.bp, 40
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bn, i64 %.idx.i.i
  %i.br = getelementptr inbounds nuw i8, ptr %.sroa.02.0.i.i.i, i64 8
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !10371, !noalias !10364 ; 3 uses
  %i.bt = load ptr, ptr %.sroa.02.0.i.i.i, align 8, !alias.scope !10371, !noalias !10364, !nonnull !14 ; 2 uses
  %i.bu = icmp eq i64 %i.bp, 0
  br i1 %i.bu, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i
  %.sroa.0.0.i545.i.i = phi ptr [ %i.bv, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ %i.bn, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 8 uses
  %.sroa.8.0.i44.i.i = phi i64 [ %i.bw, %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i ], [ 0, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i ] ; 4 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 40 ; 2 uses
  %i.bw = add nuw nsw i64 %.sroa.8.0.i44.i.i, 1
  %exitcond.not.i.i.i = icmp eq i64 %.sroa.8.0.i44.i.i, %i.bs
  br i1 %exitcond.not.i.i.i, label %bb.aa, label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.8.0.i44.i.i
  %.val.i.i.i.i = load i64, ptr %i.bx, align 8, !noalias !10372, !noundef !14 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 24
  %i.bz = load i64, ptr %i.by, align 8, !noalias !10372, !noundef !14
  %i.ca = icmp ult i64 %.val.i.i.i.i, %i.bz
  br i1 %i.ca, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 16
  %i.cc = atomicrmw xchg ptr %i.cb, i64 274877906944 acquire, align 8, !noalias !10372 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.cc, 274877906944
  br i1 %.not.i.i.i.i.i, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.u
  %.not32.i.i.i.i = icmp eq i64 %.val.i.i.i.i, 274877906944
  br i1 %.not32.i.i.i.i, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i

_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i: ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.v
  %.sroa.05.0.i25.i.i.i.i = phi i64 [ %.val.i.i.i.i, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i ], [ %i.cc, %bb.v ] ; 4 uses
  %i.cd = load ptr, ptr %.sroa.0.0.i545.i.i, align 8, !noalias !10372, !align !27, !noundef !14 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.cd, null
  br i1 %.not.i.i.i.i, label %bb.w, label %.thread.i.i.i.i, !prof !23

bb.w:                                             ; preds = %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i
  call fastcc void @_RNvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE8allocateCsat9HgdBb3qc_16shadowsocks_rust(ptr noundef nonnull align 8 %.sroa.0.0.i545.i.i) #30, !noalias !10372
  %.pr.i.i.i.i = load ptr, ptr %.sroa.0.0.i545.i.i, align 8, !noalias !10373 ; 2 uses
  %.not.i4.i.i.i.i = icmp eq ptr %.pr.i.i.i.i, null
  br i1 %.not.i4.i.i.i.i, label %bb.x, label %.thread.i.i.i.i, !prof !57

.thread.i.i.i.i:                                  ; preds = %bb.w, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i
  %i.ce = phi ptr [ %.pr.i.i.i.i, %bb.w ], [ %i.cd, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.thread22.i.i.i.i ]
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !10373, !noundef !14 ; 2 uses
  %i.ch = icmp ult i64 %.sroa.05.0.i25.i.i.i.i, %i.cg
  br i1 %i.ch, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @200, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @202) #37, !noalias !10373
  unreachable

bb.y:                                             ; preds = %.thread.i.i.i.i
  %.pn.in.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i545.i.i, i64 32
  %.pn.i.i.i.i = load i64, ptr %.pn.in.i.i.i.i, align 8, !noalias !10372, !noundef !14
  %i.ci = getelementptr inbounds nuw [96 x i8], ptr %i.ce, i64 %.sroa.05.0.i25.i.i.i.i ; 7 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ci, i64 80
  %i.ck = load atomic i64, ptr %i.cj acquire, align 8, !noalias !10374 ; 4 uses
  %i.cl = and i64 %i.ck, 2251799813685244
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.ab, label %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i

bb.z:                                             ; preds = %.thread.i.i.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.05.0.i25.i.i.i.i, i64 noundef %i.cg, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @203) #37, !noalias !10373
  unreachable

_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %bb.y, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB5_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3popCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %bb.v
  %i.cn = icmp eq ptr %i.bv, %i.bq
  br i1 %i.cn, label %.loopexit, label %.lr.ph.i.i

bb.aa:                                            ; preds = %.lr.ph.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking18panic_bounds_check(i64 noundef %i.bs, i64 noundef %i.bs, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @39) #37, !noalias !10375
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.bt, i64 %.sroa.8.0.i44.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.ci, i64 80 ; 2 uses
  %i.cq = add i64 %.pn.i.i.i.i, %.sroa.05.0.i25.i.i.i.i
  %i.cr = and i64 %i.ck, -2251799813685248        ; 2 uses
  %i.cs = and i64 %i.cq, 274877906943
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 88
  %i.cu = load i64, ptr %i.ct, align 8, !noalias !10373, !noundef !14
  store i64 %i.cu, ptr %i.co, align 8, !noalias !10373
  %i.cv = shl i64 %.sroa.0.0.i.i.i, 38
  %i.cw = or disjoint i64 %i.cs, %i.cv
  %i.cx = or i64 %i.cw, %i.cr                     ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10376)
  %i.cy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cz = load ptr, ptr %i.cy, align 8, !noalias !10376, !nonnull !14, !align !27, !noundef !14
  store ptr %i.cz, ptr %i.ci, align 8, !alias.scope !10376, !captures !35
  %i.da = getelementptr inbounds nuw i8, ptr %i.ci, i64 16
  store i64 %.sroa.0.2, ptr %i.da, align 8, !alias.scope !10376
  %i.db = call noundef nonnull align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter13layer_filters9FILTERING0s_023___RUST_STD_INTERNAL_VAL)
  %i.dc = getelementptr i8, ptr %i.db, i64 16
  %.val.i.i.i3.i = load i64, ptr %i.dc, align 8, !noalias !10376, !noundef !14
  %i.dd = getelementptr inbounds nuw i8, ptr %i.ci, i64 8
  store i64 %.val.i.i.i3.i, ptr %i.dd, align 8, !alias.scope !10376
  %i.de = getelementptr inbounds nuw i8, ptr %i.ci, i64 24
  store i64 1, ptr %i.de, align 8, !alias.scope !10376
  %i.df = cmpxchg ptr %i.cp, i64 %i.ck, i64 %i.cr acq_rel acquire, align 8, !noalias !10377 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i = extractvalue { i64, i1 } %i.df, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i, label %bb.ae, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %bb.ab
  %i.dg = or i64 %i.ck, 3
  br label %bb.ac

bb.ac:                                            ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %.preheader.i.i.i.i.i
  %.pn19.i.i.i.i.i = phi { i64, i1 } [ %i.dj, %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ], [ %i.df, %.preheader.i.i.i.i.i ]
  %.sroa.01.0.i.pn.i.i.i.i.i = extractvalue { i64, i1 } %.pn19.i.i.i.i.i, 0 ; 2 uses
  %i.dh = and i64 %.sroa.01.0.i.pn.i.i.i.i.i, 3
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ad, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, !prof !10378

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10377
  store i64 2, ptr %i.b, align 8, !noalias !10377
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10377
  store ptr %i.b, ptr %i.a, align 8, !noalias !10377
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !10377
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !10377
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.ac
  %i.dj = cmpxchg ptr %i.cp, i64 %.sroa.01.0.i.pn.i.i.i.i.i, i64 %i.dg acq_rel acquire, align 8, !noalias !10377 ; 2 uses
  %.sroa.18.0.in.i12.i.i.i.i.i = extractvalue { i64, i1 } %i.dj, 1
  br i1 %.sroa.18.0.in.i12.i.i.i.i.i, label %_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, label %bb.ac

_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i: ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.02.0.i.i.i, i64 noundef %i.cx) #30, !noalias !10379
  br label %bb.ae

bb.ae:                                            ; preds = %_RNvMst_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9InitGuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %bb.ab
  %i.dk = add i64 %i.cx, 1
  %i.dl = call noundef i64 @_RNvMNtCs1kwRxRulhfk_12tracing_core4spanNtB2_2Id8from_u64(i64 noundef %i.dk) #30
  ret i64 %i.dl

.loopexit:                                        ; preds = %_RINvMs4_NtCsfl4DFYTbOu6_12sharded_slab4pageINtB6_6SharedNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB8_3cfg13DefaultConfigE9init_withTjINtNtB6_4slot9InitGuardBS_EEQNCNvMs_NtB8_4poolINtB3a_4PoolBS_E6create0ECsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i, %_RNvMs2_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ArrayNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE7currentCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @679, i64 noundef 31, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @681) #37
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10418)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10419)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10420)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !10421
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.promoted27.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10422
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !10421, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10421, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10423, !noundef !14 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !10422 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !19, !alias.scope !10422
  %2 = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !10422 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted31.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !10423
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.aa = phi i64 [ %.promoted31.i.i.i, %.lr.ph.i.i.i ], [ %i.aw, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 3 uses
  %.lcssa242930.i.i.i = phi i64 [ %.promoted27.i.i.i, %.lr.ph.i.i.i ], [ %.lcssa2428.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10424)
  call void @llvm.experimental.noalias.scope.decl(metadata !10425)
  call void @llvm.experimental.noalias.scope.decl(metadata !10426)
  %i.ab = icmp ult i64 %i.l, %i.aa
  %or.cond27.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ab
  br i1 %or.cond27.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.b
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !10423 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ac = phi i64 [ %i.aq, %bb.e ], [ %i.aa, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ad = sub nuw i64 %i.l, %i.ac                 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ac ; 2 uses
  %i.af = icmp samesign ult i64 %i.ad, 16
  br i1 %i.af, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ad) #30, !noalias !10427 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.an, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !10428, !noalias !10427, !noundef !14
  %i.am = icmp eq i8 %i.al, %.pre.i.i.i.i.i.i
  br i1 %i.am, label %.loopexit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.an, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ad
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %i.ac, 1
  %i.aq = add i64 %i.ap, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.aq, ptr %i.j, align 8, !alias.scope !10423
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.aq, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !10423
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i
  %i.ar = icmp ult i64 %i.l, %i.aq
  br i1 %i.ar, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.as = sub nuw i64 %i.aq, %i.p                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.as
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.m, i64 %i.p), !noalias !10429
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.aq, ptr %i.e, align 8, !alias.scope !10421
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i, %bb.b
  %i.av = phi i64 [ %i.aa, %bb.b ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.aq, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !10430
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa242930.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %2, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.av, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.lcssa2428.i.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa242930.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.ax = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.pn34.i.i.i = phi i64 [ %i.as, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn34.i.i.i, %.lcssa242930.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn34.i.i.i, %.lcssa242930.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa242930.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10431
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.d, align 8, !noalias !10432
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.v, align 8, !noalias !10432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10432
  %i.ay = load ptr, ptr %.val, align 8, !noalias !10433, !nonnull !14, !align !27, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load i8, ptr %i.az, align 8, !range !19, !noalias !10434, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i1 noundef zeroext %i.bb) #30, !noalias !10434
  %i.bc = load i64, ptr %i.c, align 8, !range !18, !noalias !10432, !noundef !14 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -2
  br i1 %i.bd, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10432
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !10432
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10432
  store ptr %i.d, ptr %i.a, align 8, !noalias !10432
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10432
  store ptr %i.b, ptr %i.x, align 8, !noalias !10432
  store ptr @_RNvXsd_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10432
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @198, ptr noundef nonnull %i.a) #30, !noalias !10434
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10432
  call void @llvm.experimental.noalias.scope.decl(metadata !10435)
  call void @llvm.experimental.noalias.scope.decl(metadata !10436)
  %i.be = load i64, ptr %i.b, align 8, !range !32, !alias.scope !10437, !noalias !10432, !noundef !14
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !10437, !noalias !10432 ; 4 uses
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !10437, !noalias !10432, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bg = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !10438 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void %i.bg(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #35, !noalias !10438, !inline_history !10416
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !16, !invariant.load !14, !noalias !10438 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !25, !invariant.load !14, !noalias !10438
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) %i.bl) #30, !noalias !10438
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10431
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.ax, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.l:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !10418
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10432
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10431
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %bb.a, %bb.l
  %storemerge.i = phi i64 [ %i.bc, %bb.l ], [ -2, %bb.a ], [ -2, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyNtNtCsgCecv3eZDcN_5alloc6string6StringE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10417
  ret void
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs0_NtNtNtCsf3Ta7LF998c_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCsat9HgdBb3qc_16shadowsocks_rust(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(80) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [80 x i8], align 8                ; 6 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val = load ptr, ptr %1, align 8               ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10476)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10477)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10479)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 2 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !10480
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.g, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.promoted27.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !10481
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !10480, !nonnull !14, !noundef !14 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.i, align 8, !alias.scope !10480, !noundef !14 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !10482, !noundef !14 ; 7 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.l, %.val1.i.i.i.i.i
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !10481 ; 2 uses
  %i.p = zext nneg i8 %i.o to i64                 ; 4 uses
  %i.q = icmp ult i8 %i.o, 5
  %i.r = getelementptr i8, ptr %i.m, i64 %i.p
  %i.s = getelementptr i8, ptr %i.r, i64 -1
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.u = load i8, ptr %i.t, align 8, !range !19, !alias.scope !10481
  %2 = trunc nuw i8 %i.u to i1
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !10481 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.promoted31.i.i.i = load i64, ptr %i.j, align 8, !alias.scope !10482
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %.lr.ph.i.i.i
  %i.aa = phi i64 [ %.promoted31.i.i.i, %.lr.ph.i.i.i ], [ %i.aw, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 3 uses
  %.lcssa242930.i.i.i = phi i64 [ %.promoted27.i.i.i, %.lr.ph.i.i.i ], [ %.lcssa2428.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10483)
  call void @llvm.experimental.noalias.scope.decl(metadata !10484)
  call void @llvm.experimental.noalias.scope.decl(metadata !10485)
  %i.ab = icmp ult i64 %i.l, %i.aa
  %or.cond27.i.i.i.i.i.i = or i1 %.not.i.i.i.i.i.i, %i.ab
  br i1 %or.cond27.i.i.i.i.i.i, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %bb.b
  call void @llvm.assume(i1 %i.q)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.s, align 1, !alias.scope !10482 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.ac = phi i64 [ %i.aq, %bb.e ], [ %i.aa, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 4 uses
  %i.ad = sub nuw i64 %i.l, %i.ac                 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ac ; 2 uses
  %i.af = icmp samesign ult i64 %i.ad, 16
  br i1 %i.af, label %.preheader.i.i.i.i.i.i.i, label %bb.c

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.l, %i.ac
  br i1 %.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ag = call { i64, i64 } @_RNvNtNtCsf3Ta7LF998c_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ae, i64 noundef range(i64 0, -9223372036854775808) %i.ad) #30, !noalias !10486 ; 2 uses
  %i.ah = extractvalue { i64, i64 } %i.ag, 0
  %i.ai = extractvalue { i64, i64 } %i.ag, 1
  %i.aj = trunc nuw i64 %i.ah to i1
  br i1 %i.aj, label %.loopexit.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.d
  %.sroa.04.011.i.i.i.i.i.i.i = phi i64 [ %i.an, %bb.d ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ae, i64 %.sroa.04.011.i.i.i.i.i.i.i
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !10487, !noalias !10486, !noundef !14
  %i.am = icmp eq i8 %i.al, %.pre.i.i.i.i.i.i
  br i1 %i.am, label %.loopexit.i.i.i.i.i.i, label %bb.d

bb.d:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.an = add nuw nsw i64 %.sroa.04.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.an, %i.ad
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit15.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i.i.i, %bb.c
  %.sroa.5.0.i.i.i.i.i.i.i = phi i64 [ %i.ai, %bb.c ], [ %.sroa.04.011.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.ao = icmp ult i64 %.sroa.5.0.i.i.i.i.i.i.i, %i.ad
  call void @llvm.assume(i1 %i.ao)
  %i.ap = add i64 %i.ac, 1
  %i.aq = add i64 %i.ap, %.sroa.5.0.i.i.i.i.i.i.i ; 10 uses
  store i64 %i.aq, ptr %i.j, align 8, !alias.scope !10482
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.aq, %i.p
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.aq, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.loopexit15.i.i.i.i.i.i:                          ; preds = %bb.c, %.preheader.i.i.i.i.i.i.i, %bb.d
  store i64 %i.l, ptr %i.j, align 8, !alias.scope !10482
  br label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %.loopexit.i.i.i.i.i.i
  %i.ar = icmp ult i64 %i.l, %i.aq
  br i1 %i.ar, label %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %.loopexit.i.i.i.i.i.i
  %i.as = sub nuw i64 %i.aq, %i.p                 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.as
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.m, i64 %i.p), !noalias !10488
  %i.au = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.au, label %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.aq, ptr %i.e, align 8, !alias.scope !10480
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i: ; preds = %bb.e, %.loopexit15.i.i.i.i.i.i, %bb.b
  %i.av = phi i64 [ %i.aa, %bb.b ], [ %i.l, %.loopexit15.i.i.i.i.i.i ], [ %i.aq, %bb.e ]
  store i8 1, ptr %i.f, align 1, !alias.scope !10489
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.lcssa242930.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %2, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.aw = phi i64 [ %i.aq, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.av, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.lcssa2428.i.i.i = phi i64 [ %i.aq, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.lcssa242930.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %i.ax = phi i1 [ false, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  %.pn34.i.i.i = phi i64 [ %i.as, %_RNvXs_NtNtCsf3Ta7LF998c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ] ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.pn34.i.i.i, %.lcssa242930.i.i.i
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, label %bb.g

bb.g:                                             ; preds = %select.unfold.i.i.i
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn34.i.i.i, %.lcssa242930.i.i.i ; 2 uses
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.lcssa242930.i.i.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !10490
  store ptr %.sroa.0.1.i.i.i.i.i, ptr %i.d, align 8, !noalias !10491
  store i64 %.sroa.4.1.i.i.i.i.i, ptr %i.v, align 8, !noalias !10491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !10491
  %i.ay = load ptr, ptr %.val, align 8, !noalias !10492, !nonnull !14, !align !27, !noundef !14
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 104
  %i.ba = load i8, ptr %i.az, align 8, !range !19, !noalias !10493, !noundef !14
  %i.bb = trunc nuw i8 %i.ba to i1
  call void @_RNvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directiveNtB2_9Directive5parse(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i, i1 noundef zeroext %i.bb) #30, !noalias !10493
  %i.bc = load i64, ptr %i.c, align 8, !range !18, !noalias !10491, !noundef !14 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, -2
  br i1 %i.bd, label %bb.h, label %bb.l

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !10491
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false), !noalias !10491
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10491
  store ptr %i.d, ptr %i.a, align 8, !noalias !10491
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10491
  store ptr %i.b, ptr %i.x, align 8, !noalias !10491
  store ptr @_RNvXsd_NtNtCslHe4oyxs8Ro_18tracing_subscriber6filter9directiveNtB5_10ParseErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !10491
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @198, ptr noundef nonnull %i.a) #30, !noalias !10493
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !10491
  call void @llvm.experimental.noalias.scope.decl(metadata !10494)
  call void @llvm.experimental.noalias.scope.decl(metadata !10495)
  %i.be = load i64, ptr %i.b, align 8, !range !32, !alias.scope !10496, !noalias !10491, !noundef !14
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.i, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !10496, !noalias !10491 ; 4 uses
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !10496, !noalias !10491, !nonnull !14, !align !27, !noundef !14 ; 3 uses
  %i.bg = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !14, !noalias !10497 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void %i.bg(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i) #35, !noalias !10497, !inline_history !10475
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bi = load i64, ptr %i.bh, align 8, !range !16, !invariant.load !14, !noalias !10497 ; 2 uses
  %i.bj = icmp eq i64 %i.bi, 0
  br i1 %i.bj, label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, label %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i

_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !range !25, !invariant.load !14, !noalias !10497
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef %i.bi, i64 noundef range(i64 1, -9223372036854775807) %i.bl) #30, !noalias !10497
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i: ; preds = %_RNvXs1_NtCsgCecv3eZDcN_5alloc5allocNtB5_6GlobalNtNtCsf3Ta7LF998c_4core5alloc9Allocator10deallocate.exit.i.i.i.i.i.i.i.i.i.i.i, %bb.k, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10490
  br label %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i

_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i: ; preds = %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread17.i.i.i, %select.unfold.i.i.i
  br i1 %i.ax, label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.b

bb.l:                                             ; preds = %bb.g
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(72) %i.w, i64 72, i1 false), !noalias !10477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !10491
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !10490
  br label %_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvYINtNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i, %bb.a, %bb.l
  %storemerge.i = phi i64 [ %i.bc, %bb.l ], [ -2, %bb.a ], [ -2, %_RNCINvNtNtNtCsf3Ta7LF998c_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCslHe4oyxs8Ro_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Csat9HgdBb3qc_16shadowsocks_rust.exit.thread.i.i.i ], [ -2, %_RNvMsf_NtNtCsf3Ta7LF998c_4core3str4iterINtB5_13SplitInternalcE7get_endCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !10476
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6config1__NtBa_6ConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB16_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @682, i64 noundef 13) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs0_1__NtBa_15LogFormatConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1j_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @683, i64 noundef 22) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs1_1__NtBa_15LogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1j_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @684, i64 noundef 20) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs2_1__NtBa_22LogConsoleWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1q_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @685, i64 noundef 29) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs3_1__NtBa_23LogFormatConfigOverrideNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1r_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @686, i64 noundef 30) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs4_1__NtBa_19LogFileWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1n_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @687, i64 noundef 26) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs5_1__NtBa_11LogRotationNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1f_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @688, i64 noundef 16) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs6_1__NtBa_21LogSyslogWriterConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1p_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @689, i64 noundef 28) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs7_1__NtBa_11RuntimeModeNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1f_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @690, i64 noundef 16) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs8_1__NtBa_13RuntimeConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1h_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @691, i64 noundef 20) #30
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NvXNvNtCsat9HgdBb3qc_16shadowsocks_rust6configs_1__NtBa_9LogConfigNtNtCs2d6kDCn68sB_10serde_core2de11Deserialize11deserializeNtB5_9___VisitorNtB1b_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @692, i64 noundef 16) #30
  ret i1 %i.a
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs18_CsJovr8ELaM0_3logNtB6_14SetLoggerErrorNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #6 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @694, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @693) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNvXs1M_NtCsgCecv3eZDcN_5alloc6stringxNtB6_12SpecToString14spec_to_string(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, i64 %.0.val) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 12 uses
  %i.b = alloca [19 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = icmp slt i64 %.0.val, 0
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #30, !noalias !14
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef dereferenceable_or_null(19) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 19, i64 noundef range(i64 1, 9) 1) #30, !noalias !10506 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc7raw_vec12handle_error(i64 noundef 1, i64 19) #34
  unreachable

_RNvMs5_NtCsgCecv3eZDcN_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.b
  store i64 19, ptr %i.a, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.d, ptr %.sroa.410.0..sroa_idx, align 8
  %.sroa.511.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.511.0..sroa_idx, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.a
end_hunk_2
begin_hunk_3_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB9_5layer5LayerB17_E11on_new_spanCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa_idx.i, align 8, !noalias !12430 ; 6 uses
  %.sroa.7.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx.i, align 8, !noalias !12430 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12428
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !12431, !noundef !14
  %i.ab = and i64 %i.aa, %4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !12432 ; 2 uses
  %i.af = and i64 %i.ae, 3                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12433
  store i64 2, ptr %i.i, align 8, !noalias !12433
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12433
  store ptr %i.i, ptr %i.h, align 8, !noalias !12433
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12433
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !12432
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.ah = phi i64 [ %i.ao, %.backedge.i.i.i.i.i.i ], [ %i.af, %bb.d ]
  %.sroa.05.0.i.i4.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, 2
  %i.ai = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ah, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %i.ak, %i.aj
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.al = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685248
  %i.am = or disjoint i64 %i.al, 3
  %i.an = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.am acq_rel acquire, align 8, !noalias !12432 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.e
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.an, %bb.e ], [ %i.au, %.thread.i.i.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.ao = and i64 %.sroa.05.0.i.i.be.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i.i.i:                              ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.aq = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685245
  %i.ar = shl nuw nsw i64 %i.ai, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = or i64 %i.as, %i.aq
  %i.au = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.at acq_rel acquire, align 8, !noalias !12432 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i, label %.loopexit94, label %.backedge.i.i.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !12434
  br label %.loopexit94

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12428
  br label %.loopexit94

_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  store ptr %3, ptr %i.w, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 8
  %i.av = call { ptr, i1 } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.0..sroa_idx) #30 ; 2 uses
  %i.aw = extractvalue { ptr, i1 } %i.av, 0       ; 16 uses
  %i.ax = extractvalue { ptr, i1 } %i.av, 1       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12435)
  call void @llvm.experimental.noalias.scope.decl(metadata !12436)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !12437, !noundef !14
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit93, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !12438)
  call void @llvm.experimental.noalias.scope.decl(metadata !12439)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !12440, !noundef !14 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !alias.scope !12440, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.j ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.g ], [ %i.bw, %bb.j ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !12441 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bd
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.bo, align 8, !noalias !12442
  %i.bp = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.bp, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.loopexit93, !prof !23

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i, %i.bv
  br label %bb.h

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !12435, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !12435, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12435
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !14, !noalias !12435, !nonnull !14
  call void %i.cc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %i.by) #35, !noalias !12435, !inline_history !5
  %i.cd = load i128, ptr %i.g, align 16, !noalias !12435, !noundef !14
  %i.ce = icmp eq i128 %i.cd, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12435
  br i1 %i.ce, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit93

.loopexit94:                                      ; preds = %.thread.i.i.i.i.i.i, %bb.f, %bb.a, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @775, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @777) #37
  unreachable

.loopexit93:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  store i64 0, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 45
  %i.ci = load i8, ptr %i.ch, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ci, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 46
  %i.ck = load i8, ptr %i.cj, align 2, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ck, ptr %i.cg, align 1
  %i.cl = load ptr, ptr %i.x, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12443
  call void @llvm.experimental.noalias.scope.decl(metadata !12444)
  store ptr %i.v, ptr %i.f, align 8, !alias.scope !12445, !noalias !12446
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @748, ptr %.sroa.4.0..sroa_idx63, align 8, !alias.scope !12445, !noalias !12446
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ci, ptr %.sroa.5.0..sroa_idx64, align 8, !alias.scope !12445, !noalias !12446
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.ck, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !12445, !noalias !12446
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.cm, align 8, !alias.scope !12447, !noalias !12443
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 25 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !alias.scope !12447, !noalias !12443
  call void @_RNvXs1_NtCslHe4oyxs8Ro_18tracing_subscriber5fieldNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB5_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @182) #30, !noalias !12448
  %.sroa.3.0.copyload.i = load i8, ptr %i.cn, align 1, !noalias !12443
  %i.co = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12443
  br i1 %i.co, label %bb.k, label %bb.m

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cq = load i8, ptr %i.cp, align 8, !range !19, !noundef !14
  %5 = trunc nuw i8 %i.cq to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 33
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = and i8 %i.cs, 8
  %.not15 = icmp ne i8 %i.ct, 0
  %or.cond.not = select i1 %5, i1 %.not15, i1 false
  br i1 %or.cond.not, label %bb.n, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.k:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @778, ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !12449)
  call void @llvm.experimental.noalias.scope.decl(metadata !12450)
  call void @llvm.experimental.noalias.scope.decl(metadata !12451)
  %.val.i.i.i = load i64, ptr %i.v, align 8, !range !16, !alias.scope !12452, !noundef !14 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !12452, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !12452
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.m:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.l, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %.loopexit
  %i.cv = and i8 %i.cs, 1
  %.not17 = icmp eq i8 %i.cv, 0
  br i1 %.not17, label %bb.s, label %bb.y

bb.n:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12453)
  call void @llvm.experimental.noalias.scope.decl(metadata !12454)
  %i.cw = load i64, ptr %i.az, align 8, !alias.scope !12455, !noundef !14
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !12456)
  call void @llvm.experimental.noalias.scope.decl(metadata !12457)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !12458, !noundef !14 ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !12458, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.9.0.i.i.i.i27 = phi i64 [ 0, %bb.o ], [ %i.dr, %bb.r ]
  %.pn.i.i.i28 = phi i64 [ -6705996707123187924, %bb.o ], [ %i.ds, %bb.r ]
  %.sroa.01.0.i.i.i.i29 = and i64 %.pn.i.i.i28, %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.01.0.i.i.i.i29
  %.sroa.0.0.copyload.i24.i.i.i30 = load <16 x i8>, ptr %i.db, align 1, !noalias !12459 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 81)
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not30.i.i.i31 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not30.i.i.i31, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i33 = phi i16 [ %i.dq, %bb.q ], [ %i.dd, %bb.p ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i33, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i29, %i.df
  %i.dh = and i64 %i.dg, %i.cz
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.da, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val2.i.i.i.i34 = load i128, ptr %i.dk, align 8, !noalias !12460
  %i.dl = icmp eq i128 %.val2.i.i.i.i34, -123703805015440434511083380385622705146
  br i1 %i.dl, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, label %bb.q, !prof !20

._crit_edge.i.i.i36:                              ; preds = %bb.q, %bb.p
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.r, label %.loopexit, !prof !23

bb.q:                                             ; preds = %.lr.ph.i.i.i32
  %i.dp = add i16 %.sroa.06.0.i31.i.i.i33, -1
  %i.dq = and i16 %i.dp, %.sroa.06.0.i31.i.i.i33  ; 2 uses
  %.not.i.not.i.i.i35 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i.i35, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

bb.r:                                             ; preds = %._crit_edge.i.i.i36
  %i.dr = add i64 %.sroa.9.0.i.i.i.i27, 16        ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i.i29, %i.dr
  br label %bb.p

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38: ; preds = %.lr.ph.i.i.i32
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !12453, !nonnull !14, !noundef !14
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !12453, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12453
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !14, !noalias !12453, !nonnull !14
  call void %i.dy(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.du) #35, !noalias !12453, !inline_history !6
  %i.dz = load i128, ptr %i.e, align 16, !noalias !12453, !noundef !14
  %i.ea = icmp eq i128 %i.dz, -123703805015440434511083380385622705146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12453
  br i1 %i.ea, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.i36, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMse_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerNtB5_7Timings3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s) #30
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.s) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.ax, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ef = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ef, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.eb monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.eg = atomicrmw add ptr %i.aw, i32 -1073741823 release, align 4
  %i.eh = add i32 %i.eg, -1073741823              ; 2 uses
  %or.cond.not.i.i.i = icmp ult i32 %i.eh, 1073741824
  br i1 %or.cond.not.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.w, !prof !44

bb.w:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.aw, i32 noundef %i.eh) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8, !noalias !12461 ; 2 uses
  %i.ek = and i64 %i.ej, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  br i1 %i.el, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12461
  store i64 2, ptr %i.d, align 8, !noalias !12461
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12461
  store ptr %i.d, ptr %i.c, align 8, !noalias !12461
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !12461
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !12461
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.em = phi i64 [ %i.et, %.backedge.i.i.i.i ], [ %i.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.en = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = icmp eq i64 %i.em, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.ep, %i.eo
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i

bb.x:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.eq = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.er = or disjoint i64 %i.eq, 3
  %i.es = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.er acq_rel acquire, align 8, !noalias !12461 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.es, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.x
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.es, %bb.x ], [ %i.ez, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.et = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 2
  br i1 %i.eu, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.ev = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.ew = shl nuw nsw i64 %i.en, 2
  %i.ex = add nsw i64 %i.ew, -4
  %i.ey = or i64 %i.ex, %i.ev
  %i.ez = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.ey acq_rel acquire, align 8, !noalias !12461 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.x
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !12462
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread.i.i.i.i, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
end_hunk_3
begin_hunk_4_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FullINtNtNtB7_4time10time_crate10OffsetTimeNtNtNtNtCsbPuM0779rnk_4time18format_description10well_known7rfc33397Rfc3339EENvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEINtNtB9_5layer5LayerB17_E11on_new_spanCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa_idx.i, align 8, !noalias !12879 ; 6 uses
  %.sroa.7.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx.i, align 8, !noalias !12879 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12877
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !12880, !noundef !14
  %i.ab = and i64 %i.aa, %4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !12881 ; 2 uses
  %i.af = and i64 %i.ae, 3                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !12882
  store i64 2, ptr %i.i, align 8, !noalias !12882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12882
  store ptr %i.i, ptr %i.h, align 8, !noalias !12882
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !12882
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !12881
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.ah = phi i64 [ %i.ao, %.backedge.i.i.i.i.i.i ], [ %i.af, %bb.d ]
  %.sroa.05.0.i.i4.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, 2
  %i.ai = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ah, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %i.ak, %i.aj
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.al = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685248
  %i.am = or disjoint i64 %i.al, 3
  %i.an = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.am acq_rel acquire, align 8, !noalias !12881 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.e
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.an, %bb.e ], [ %i.au, %.thread.i.i.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.ao = and i64 %.sroa.05.0.i.i.be.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i.i.i:                              ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.aq = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685245
  %i.ar = shl nuw nsw i64 %i.ai, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = or i64 %i.as, %i.aq
  %i.au = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.at acq_rel acquire, align 8, !noalias !12881 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i, label %.loopexit94, label %.backedge.i.i.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !12883
  br label %.loopexit94

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !12877
  br label %.loopexit94

_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  store ptr %3, ptr %i.w, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 8
  %i.av = call { ptr, i1 } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.0..sroa_idx) #30 ; 2 uses
  %i.aw = extractvalue { ptr, i1 } %i.av, 0       ; 16 uses
  %i.ax = extractvalue { ptr, i1 } %i.av, 1       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12884)
  call void @llvm.experimental.noalias.scope.decl(metadata !12885)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !12886, !noundef !14
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit93, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !12887)
  call void @llvm.experimental.noalias.scope.decl(metadata !12888)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !12889, !noundef !14 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !alias.scope !12889, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.j ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.g ], [ %i.bw, %bb.j ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !12890 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bd
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.bo, align 8, !noalias !12891
  %i.bp = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.bp, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.loopexit93, !prof !23

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i, %i.bv
  br label %bb.h

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !12884, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !12884, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12884
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !14, !noalias !12884, !nonnull !14
  call void %i.cc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %i.by) #35, !noalias !12884, !inline_history !5
  %i.cd = load i128, ptr %i.g, align 16, !noalias !12884, !noundef !14
  %i.ce = icmp eq i128 %i.cd, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12884
  br i1 %i.ce, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit93

.loopexit94:                                      ; preds = %.thread.i.i.i.i.i.i, %bb.f, %bb.a, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @775, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @777) #37
  unreachable

.loopexit93:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  store i64 0, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 13
  %i.ci = load i8, ptr %i.ch, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ci, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 14
  %i.ck = load i8, ptr %i.cj, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ck, ptr %i.cg, align 1
  %i.cl = load ptr, ptr %i.x, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12892
  call void @llvm.experimental.noalias.scope.decl(metadata !12893)
  store ptr %i.v, ptr %i.f, align 8, !alias.scope !12894, !noalias !12895
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @748, ptr %.sroa.4.0..sroa_idx63, align 8, !alias.scope !12894, !noalias !12895
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ci, ptr %.sroa.5.0..sroa_idx64, align 8, !alias.scope !12894, !noalias !12895
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.ck, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !12894, !noalias !12895
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.cm, align 8, !alias.scope !12896, !noalias !12892
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 25 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !alias.scope !12896, !noalias !12892
  call void @_RNvXs1_NtCslHe4oyxs8Ro_18tracing_subscriber5fieldNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB5_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @182) #30, !noalias !12897
  %.sroa.3.0.copyload.i = load i8, ptr %i.cn, align 1, !noalias !12892
  %i.co = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !12892
  br i1 %i.co, label %bb.k, label %bb.m

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.cq = load i8, ptr %i.cp, align 1, !range !19, !noundef !14
  %5 = trunc nuw i8 %i.cq to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = and i8 %i.cs, 8
  %.not15 = icmp ne i8 %i.ct, 0
  %or.cond.not = select i1 %5, i1 %.not15, i1 false
  br i1 %or.cond.not, label %bb.n, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.k:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @778, ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !12898)
  call void @llvm.experimental.noalias.scope.decl(metadata !12899)
  call void @llvm.experimental.noalias.scope.decl(metadata !12900)
  %.val.i.i.i = load i64, ptr %i.v, align 8, !range !16, !alias.scope !12901, !noundef !14 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !12901, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !12901
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.m:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.l, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %.loopexit
  %i.cv = and i8 %i.cs, 1
  %.not17 = icmp eq i8 %i.cv, 0
  br i1 %.not17, label %bb.s, label %bb.y

bb.n:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12902)
  call void @llvm.experimental.noalias.scope.decl(metadata !12903)
  %i.cw = load i64, ptr %i.az, align 8, !alias.scope !12904, !noundef !14
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !12905)
  call void @llvm.experimental.noalias.scope.decl(metadata !12906)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !12907, !noundef !14 ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !12907, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.9.0.i.i.i.i27 = phi i64 [ 0, %bb.o ], [ %i.dr, %bb.r ]
  %.pn.i.i.i28 = phi i64 [ -6705996707123187924, %bb.o ], [ %i.ds, %bb.r ]
  %.sroa.01.0.i.i.i.i29 = and i64 %.pn.i.i.i28, %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.01.0.i.i.i.i29
  %.sroa.0.0.copyload.i24.i.i.i30 = load <16 x i8>, ptr %i.db, align 1, !noalias !12908 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 81)
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not30.i.i.i31 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not30.i.i.i31, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i33 = phi i16 [ %i.dq, %bb.q ], [ %i.dd, %bb.p ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i33, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i29, %i.df
  %i.dh = and i64 %i.dg, %i.cz
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.da, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val2.i.i.i.i34 = load i128, ptr %i.dk, align 8, !noalias !12909
  %i.dl = icmp eq i128 %.val2.i.i.i.i34, -123703805015440434511083380385622705146
  br i1 %i.dl, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, label %bb.q, !prof !20

._crit_edge.i.i.i36:                              ; preds = %bb.q, %bb.p
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.r, label %.loopexit, !prof !23

bb.q:                                             ; preds = %.lr.ph.i.i.i32
  %i.dp = add i16 %.sroa.06.0.i31.i.i.i33, -1
  %i.dq = and i16 %i.dp, %.sroa.06.0.i31.i.i.i33  ; 2 uses
  %.not.i.not.i.i.i35 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i.i35, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

bb.r:                                             ; preds = %._crit_edge.i.i.i36
  %i.dr = add i64 %.sroa.9.0.i.i.i.i27, 16        ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i.i29, %i.dr
  br label %bb.p

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38: ; preds = %.lr.ph.i.i.i32
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !12902, !nonnull !14, !noundef !14
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !12902, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12902
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !14, !noalias !12902, !nonnull !14
  call void %i.dy(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.du) #35, !noalias !12902, !inline_history !6
  %i.dz = load i128, ptr %i.e, align 16, !noalias !12902, !noundef !14
  %i.ea = icmp eq i128 %i.dz, -123703805015440434511083380385622705146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !12902
  br i1 %i.ea, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.i36, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMse_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerNtB5_7Timings3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s) #30
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.s) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.ax, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ef = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ef, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.eb monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.eg = atomicrmw add ptr %i.aw, i32 -1073741823 release, align 4
  %i.eh = add i32 %i.eg, -1073741823              ; 2 uses
  %or.cond.not.i.i.i = icmp ult i32 %i.eh, 1073741824
  br i1 %or.cond.not.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.w, !prof !44

bb.w:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.aw, i32 noundef %i.eh) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8, !noalias !12910 ; 2 uses
  %i.ek = and i64 %i.ej, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  br i1 %i.el, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12910
  store i64 2, ptr %i.d, align 8, !noalias !12910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12910
  store ptr %i.d, ptr %i.c, align 8, !noalias !12910
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !12910
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !12910
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.em = phi i64 [ %i.et, %.backedge.i.i.i.i ], [ %i.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.en = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = icmp eq i64 %i.em, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.ep, %i.eo
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i

bb.x:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.eq = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.er = or disjoint i64 %i.eq, 3
  %i.es = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.er acq_rel acquire, align 8, !noalias !12910 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.es, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.x
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.es, %bb.x ], [ %i.ez, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.et = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 2
  br i1 %i.eu, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.ev = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.ew = shl nuw nsw i64 %i.en, 2
  %i.ex = add nsw i64 %i.ew, -4
  %i.ey = or i64 %i.ex, %i.ev
  %i.ez = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.ey acq_rel acquire, align 8, !noalias !12910 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.x
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !12911
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread.i.i.i.i, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
end_hunk_4
begin_hunk_5_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FulluENtNtCs3uQwFeR9vTQ_14syslog_tracing6syslog6SyslogEINtNtB9_5layer5LayerB17_E11on_new_spanCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa_idx.i, align 8, !noalias !13777 ; 6 uses
  %.sroa.7.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx.i, align 8, !noalias !13777 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13775
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !13778, !noundef !14
  %i.ab = and i64 %i.aa, %4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !13779 ; 2 uses
  %i.af = and i64 %i.ae, 3                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !13780
  store i64 2, ptr %i.i, align 8, !noalias !13780
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !13780
  store ptr %i.i, ptr %i.h, align 8, !noalias !13780
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !13780
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !13779
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.ah = phi i64 [ %i.ao, %.backedge.i.i.i.i.i.i ], [ %i.af, %bb.d ]
  %.sroa.05.0.i.i4.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, 2
  %i.ai = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ah, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %i.ak, %i.aj
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.al = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685248
  %i.am = or disjoint i64 %i.al, 3
  %i.an = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.am acq_rel acquire, align 8, !noalias !13779 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.e
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.an, %bb.e ], [ %i.au, %.thread.i.i.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.ao = and i64 %.sroa.05.0.i.i.be.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i.i.i:                              ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.aq = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685245
  %i.ar = shl nuw nsw i64 %i.ai, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = or i64 %i.as, %i.aq
  %i.au = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.at acq_rel acquire, align 8, !noalias !13779 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i, label %.loopexit94, label %.backedge.i.i.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !13781
  br label %.loopexit94

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !13775
  br label %.loopexit94

_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  store ptr %3, ptr %i.w, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 8
  %i.av = call { ptr, i1 } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.0..sroa_idx) #30 ; 2 uses
  %i.aw = extractvalue { ptr, i1 } %i.av, 0       ; 16 uses
  %i.ax = extractvalue { ptr, i1 } %i.av, 1       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13782)
  call void @llvm.experimental.noalias.scope.decl(metadata !13783)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !13784, !noundef !14
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit93, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !13785)
  call void @llvm.experimental.noalias.scope.decl(metadata !13786)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !13787, !noundef !14 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !alias.scope !13787, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.j ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.g ], [ %i.bw, %bb.j ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !13788 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bd
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.bo, align 8, !noalias !13789
  %i.bp = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.bp, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.loopexit93, !prof !23

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i, %i.bv
  br label %bb.h

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !13782, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !13782, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13782
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !14, !noalias !13782, !nonnull !14
  call void %i.cc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %i.by) #35, !noalias !13782, !inline_history !5
  %i.cd = load i128, ptr %i.g, align 16, !noalias !13782, !noundef !14
  %i.ce = icmp eq i128 %i.cd, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13782
  br i1 %i.ce, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit93

.loopexit94:                                      ; preds = %.thread.i.i.i.i.i.i, %bb.f, %bb.a, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @775, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @777) #37
  unreachable

.loopexit93:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  store i64 0, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 42
  %i.ci = load i8, ptr %i.ch, align 2, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ci, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 43
  %i.ck = load i8, ptr %i.cj, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ck, ptr %i.cg, align 1
  %i.cl = load ptr, ptr %i.x, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13790
  call void @llvm.experimental.noalias.scope.decl(metadata !13791)
  store ptr %i.v, ptr %i.f, align 8, !alias.scope !13792, !noalias !13793
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @748, ptr %.sroa.4.0..sroa_idx63, align 8, !alias.scope !13792, !noalias !13793
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ci, ptr %.sroa.5.0..sroa_idx64, align 8, !alias.scope !13792, !noalias !13793
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.ck, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !13792, !noalias !13793
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.cm, align 8, !alias.scope !13794, !noalias !13790
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 25 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !alias.scope !13794, !noalias !13790
  call void @_RNvXs1_NtCslHe4oyxs8Ro_18tracing_subscriber5fieldNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB5_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @182) #30, !noalias !13795
  %.sroa.3.0.copyload.i = load i8, ptr %i.cn, align 1, !noalias !13790
  %i.co = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13790
  br i1 %i.co, label %bb.k, label %bb.m

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.cq = load i8, ptr %i.cp, align 8, !range !19, !noundef !14
  %5 = trunc nuw i8 %i.cq to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 41
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = and i8 %i.cs, 8
  %.not15 = icmp ne i8 %i.ct, 0
  %or.cond.not = select i1 %5, i1 %.not15, i1 false
  br i1 %or.cond.not, label %bb.n, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.k:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @778, ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !13796)
  call void @llvm.experimental.noalias.scope.decl(metadata !13797)
  call void @llvm.experimental.noalias.scope.decl(metadata !13798)
  %.val.i.i.i = load i64, ptr %i.v, align 8, !range !16, !alias.scope !13799, !noundef !14 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !13799, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !13799
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.m:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.l, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %.loopexit
  %i.cv = and i8 %i.cs, 1
  %.not17 = icmp eq i8 %i.cv, 0
  br i1 %.not17, label %bb.s, label %bb.y

bb.n:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !13800)
  call void @llvm.experimental.noalias.scope.decl(metadata !13801)
  %i.cw = load i64, ptr %i.az, align 8, !alias.scope !13802, !noundef !14
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !13803)
  call void @llvm.experimental.noalias.scope.decl(metadata !13804)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !13805, !noundef !14 ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !13805, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.9.0.i.i.i.i27 = phi i64 [ 0, %bb.o ], [ %i.dr, %bb.r ]
  %.pn.i.i.i28 = phi i64 [ -6705996707123187924, %bb.o ], [ %i.ds, %bb.r ]
  %.sroa.01.0.i.i.i.i29 = and i64 %.pn.i.i.i28, %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.01.0.i.i.i.i29
  %.sroa.0.0.copyload.i24.i.i.i30 = load <16 x i8>, ptr %i.db, align 1, !noalias !13806 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 81)
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not30.i.i.i31 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not30.i.i.i31, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i33 = phi i16 [ %i.dq, %bb.q ], [ %i.dd, %bb.p ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i33, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i29, %i.df
  %i.dh = and i64 %i.dg, %i.cz
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.da, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val2.i.i.i.i34 = load i128, ptr %i.dk, align 8, !noalias !13807
  %i.dl = icmp eq i128 %.val2.i.i.i.i34, -123703805015440434511083380385622705146
  br i1 %i.dl, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, label %bb.q, !prof !20

._crit_edge.i.i.i36:                              ; preds = %bb.q, %bb.p
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.r, label %.loopexit, !prof !23

bb.q:                                             ; preds = %.lr.ph.i.i.i32
  %i.dp = add i16 %.sroa.06.0.i31.i.i.i33, -1
  %i.dq = and i16 %i.dp, %.sroa.06.0.i31.i.i.i33  ; 2 uses
  %.not.i.not.i.i.i35 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i.i35, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

bb.r:                                             ; preds = %._crit_edge.i.i.i36
  %i.dr = add i64 %.sroa.9.0.i.i.i.i27, 16        ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i.i29, %i.dr
  br label %bb.p

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38: ; preds = %.lr.ph.i.i.i32
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !13800, !nonnull !14, !noundef !14
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !13800, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13800
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !14, !noalias !13800, !nonnull !14
  call void %i.dy(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.du) #35, !noalias !13800, !inline_history !6
  %i.dz = load i128, ptr %i.e, align 16, !noalias !13800, !noundef !14
  %i.ea = icmp eq i128 %i.dz, -123703805015440434511083380385622705146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13800
  br i1 %i.ea, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.i36, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMse_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerNtB5_7Timings3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s) #30
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.s) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.ax, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ef = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ef, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.eb monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.eg = atomicrmw add ptr %i.aw, i32 -1073741823 release, align 4
  %i.eh = add i32 %i.eg, -1073741823              ; 2 uses
  %or.cond.not.i.i.i = icmp ult i32 %i.eh, 1073741824
  br i1 %or.cond.not.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.w, !prof !44

bb.w:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.aw, i32 noundef %i.eh) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8, !noalias !13808 ; 2 uses
  %i.ek = and i64 %i.ej, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  br i1 %i.el, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13808
  store i64 2, ptr %i.d, align 8, !noalias !13808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13808
  store ptr %i.d, ptr %i.c, align 8, !noalias !13808
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !13808
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !13808
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.em = phi i64 [ %i.et, %.backedge.i.i.i.i ], [ %i.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.en = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = icmp eq i64 %i.em, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.ep, %i.eo
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i

bb.x:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.eq = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.er = or disjoint i64 %i.eq, 3
  %i.es = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.er acq_rel acquire, align 8, !noalias !13808 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.es, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.x
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.es, %bb.x ], [ %i.ez, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.et = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 2
  br i1 %i.eu, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.ev = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.ew = shl nuw nsw i64 %i.en, 2
  %i.ex = add nsw i64 %i.ew, -4
  %i.ey = or i64 %i.ex, %i.ev
  %i.ez = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.ey acq_rel acquire, align 8, !noalias !13808 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.x
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !13809
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread.i.i.i.i, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
end_hunk_5
begin_hunk_6_@_RNvXsa_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerINtB5_5LayerNtNtNtB9_8registry7sharded8RegistryNtNtB7_6format13DefaultFieldsINtB1I_6FormatNtB1I_4FulluENvNtNtCs5Xr050g3D4S_3std2io5stdio6stdoutEINtNtB9_5layer5LayerB17_E11on_new_spanCsat9HgdBb3qc_16shadowsocks_rust:bb.a
  %.not.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.7.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %.sroa.7.sroa.6.0.copyload.i = load ptr, ptr %.sroa.7.sroa.6.0..sroa_idx.i, align 8, !noalias !14226 ; 6 uses
  %.sroa.7.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.7.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.sroa.7.0..sroa_idx.i, align 8, !noalias !14226 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14224
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noalias !14227, !noundef !14
  %i.ab = and i64 %i.aa, %4
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ae = load atomic i64, ptr %i.ad acquire, align 8, !noalias !14228 ; 2 uses
  %i.af = and i64 %i.ae, 3                        ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2
  br i1 %i.ag, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i.i.i:                          ; preds = %.backedge.i.i.i.i.i.i, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14229
  store i64 2, ptr %i.i, align 8, !noalias !14229
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14229
  store ptr %i.i, ptr %i.h, align 8, !noalias !14229
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !14229
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !14228
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i: ; preds = %bb.d, %.backedge.i.i.i.i.i.i
  %i.ah = phi i64 [ %i.ao, %.backedge.i.i.i.i.i.i ], [ %i.af, %bb.d ]
  %.sroa.05.0.i.i4.i.i.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i.i.i, %.backedge.i.i.i.i.i.i ], [ %i.ae, %bb.d ] ; 5 uses
  %.in.i.i.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, 2
  %i.ai = and i64 %.in.i.i.i.i.i.i, 562949953421311 ; 2 uses
  %i.aj = icmp eq i64 %i.ai, 1
  %i.ak = icmp eq i64 %i.ah, 1
  %.sroa.0.0.i.i.i.i.i.i.i.i = and i1 %i.ak, %i.aj
  br i1 %.sroa.0.0.i.i.i.i.i.i.i.i, label %bb.e, label %.thread.i.i.i.i.i.i

bb.e:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.al = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685248
  %i.am = or disjoint i64 %i.al, 3
  %i.an = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.am acq_rel acquire, align 8, !noalias !14228 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.an, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, label %.backedge.i.i.i.i.i.i

.backedge.i.i.i.i.i.i:                            ; preds = %.thread.i.i.i.i.i.i, %bb.e
  %.pn.i.i.i.i.i.i = phi { i64, i1 } [ %i.an, %bb.e ], [ %i.au, %.thread.i.i.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i.i.i, 0 ; 2 uses
  %i.ao = and i64 %.sroa.05.0.i.i.be.i.i.i.i.i.i, 3 ; 2 uses
  %i.ap = icmp eq i64 %i.ao, 2
  br i1 %i.ap, label %._crit_edge.i.i.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i.i.i:                              ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i.i.i
  %i.aq = and i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, -2251799813685245
  %i.ar = shl nuw nsw i64 %i.ai, 2
  %i.as = add nsw i64 %i.ar, -4
  %i.at = or i64 %i.as, %i.aq
  %i.au = cmpxchg ptr %i.ad, i64 %.sroa.05.0.i.i4.i.i.i.i.i.i, i64 %i.at acq_rel acquire, align 8, !noalias !14228 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i = extractvalue { i64, i1 } %i.au, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i.i.i, label %.loopexit94, label %.backedge.i.i.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.6.0.copyload.i) ]
  tail call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !14230
  br label %.loopexit94

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14224
  br label %.loopexit94

_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.c
  store ptr %3, ptr %i.w, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.y, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store ptr %.sroa.7.sroa.6.0.copyload.i, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  store i64 %.sroa.7.sroa.7.0.copyload.i, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i64 %4, ptr %.sroa.11.0..sroa_idx, align 8
  %i.av = call { ptr, i1 } @_RNvXs4_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7shardedNtB5_4DataNtB7_8SpanData14extensions_mut(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.8.0..sroa_idx) #30 ; 2 uses
  %i.aw = extractvalue { ptr, i1 } %i.av, 0       ; 16 uses
  %i.ax = extractvalue { ptr, i1 } %i.av, 1       ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aw, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14231)
  call void @llvm.experimental.noalias.scope.decl(metadata !14232)
  %i.az = getelementptr inbounds nuw i8, ptr %i.aw, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !14233, !noundef !14
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %.loopexit93, label %bb.g

bb.g:                                             ; preds = %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !14234)
  call void @llvm.experimental.noalias.scope.decl(metadata !14235)
  %i.bc = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bd = load i64, ptr %i.bc, align 8, !alias.scope !14236, !noundef !14 ; 2 uses
  %i.be = load ptr, ptr %i.ay, align 8, !alias.scope !14236, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.j, %bb.g
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.g ], [ %i.bv, %bb.j ]
  %.pn.i.i.i = phi i64 [ 4929995443823542074, %bb.g ], [ %i.bw, %bb.j ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.bd ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.bf, align 1, !noalias !14237 ; 2 uses
  %i.bg = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 34)
  %i.bh = bitcast <16 x i1> %i.bg to i16          ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.h, %bb.i
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.bu, %bb.i ], [ %i.bh, %bb.h ] ; 3 uses
  %i.bi = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.bj = zext nneg i16 %i.bi to i64
  %i.bk = add i64 %.sroa.01.0.i.i.i.i, %i.bj
  %i.bl = and i64 %i.bk, %i.bd
  %i.bm = sub nsw i64 0, %i.bl
  %i.bn = getelementptr inbounds [32 x i8], ptr %i.be, i64 %i.bm ; 3 uses
  %i.bo = getelementptr inbounds i8, ptr %i.bn, i64 -32
  %.val2.i.i.i.i = load i128, ptr %i.bo, align 8, !noalias !14238
  %i.bp = icmp eq i128 %.val2.i.i.i.i, 90942364236767015451608553362907401699
  br i1 %i.bp, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, label %bb.i, !prof !20

._crit_edge.i.i.i:                                ; preds = %bb.i, %bb.h
  %i.bq = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.br = bitcast <16 x i1> %i.bq to i16
  %i.bs = icmp eq i16 %i.br, 0
  br i1 %i.bs, label %bb.j, label %.loopexit93, !prof !23

bb.i:                                             ; preds = %.lr.ph.i.i.i
  %i.bt = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.bu = and i16 %i.bt, %.sroa.06.0.i31.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bu, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.j:                                             ; preds = %._crit_edge.i.i.i
  %i.bv = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bw = add i64 %.sroa.01.0.i.i.i.i, %i.bv
  br label %bb.h

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i: ; preds = %.lr.ph.i.i.i
  %i.bx = getelementptr inbounds i8, ptr %i.bn, i64 -16
  %i.by = load ptr, ptr %i.bx, align 8, !noalias !14231, !nonnull !14, !noundef !14
  %i.bz = getelementptr inbounds i8, ptr %i.bn, i64 -8
  %i.ca = load ptr, ptr %i.bz, align 8, !noalias !14231, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14231
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 24
  %i.cc = load ptr, ptr %i.cb, align 8, !invariant.load !14, !noalias !14231, !nonnull !14
  call void %i.cc(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noundef nonnull %i.by) #35, !noalias !14231, !inline_history !5
  %i.cd = load i128, ptr %i.g, align 16, !noalias !14231, !noundef !14
  %i.ce = icmp eq i128 %i.cd, 90942364236767015451608553362907401699
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14231
  br i1 %i.ce, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit93

.loopexit94:                                      ; preds = %.thread.i.i.i.i.i.i, %bb.f, %bb.a, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @775, i64 noundef 29, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @777) #37
  unreachable

.loopexit93:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RNvMNtNtCslHe4oyxs8Ro_18tracing_subscriber5layer7contextINtB2_7ContextNtNtNtB6_8registry7sharded8RegistryE4spanCsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.cg = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  store i64 0, ptr %i.v, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.ci = load i8, ptr %i.ch, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ci, ptr %i.cf, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.ck = load i8, ptr %i.cj, align 1, !range !19, !noundef !14 ; 2 uses
  store i8 %i.ck, ptr %i.cg, align 1
  %i.cl = load ptr, ptr %i.x, align 8, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14239
  call void @llvm.experimental.noalias.scope.decl(metadata !14240)
  store ptr %i.v, ptr %i.f, align 8, !alias.scope !14241, !noalias !14242
  %.sroa.4.0..sroa_idx63 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr @748, ptr %.sroa.4.0..sroa_idx63, align 8, !alias.scope !14241, !noalias !14242
  %.sroa.5.0..sroa_idx64 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i8 %i.ci, ptr %.sroa.5.0..sroa_idx64, align 8, !alias.scope !14241, !noalias !14242
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 17
  store i8 %i.ck, ptr %.sroa.6.0..sroa_idx, align 1, !alias.scope !14241, !noalias !14242
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i8 1, ptr %i.cm, align 8, !alias.scope !14243, !noalias !14239
  %i.cn = getelementptr inbounds nuw i8, ptr %i.f, i64 25 ; 2 uses
  store i8 0, ptr %i.cn, align 1, !alias.scope !14243, !noalias !14239
  call void @_RNvXs1_NtCslHe4oyxs8Ro_18tracing_subscriber5fieldNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB5_12RecordFields6record(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cl, ptr noundef nonnull %i.f, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @182) #30, !noalias !14244
  %.sroa.3.0.copyload.i = load i8, ptr %i.cn, align 1, !noalias !14239
  %i.co = trunc nuw i8 %.sroa.3.0.copyload.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !14239
  br i1 %i.co, label %bb.k, label %bb.m

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cq = load i8, ptr %i.cp, align 1, !range !19, !noundef !14
  %5 = trunc nuw i8 %i.cq to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 9
  %i.cs = load i8, ptr %i.cr, align 1             ; 2 uses
  %i.ct = and i8 %i.cs, 8
  %.not15 = icmp ne i8 %i.ct, 0
  %or.cond.not = select i1 %5, i1 %.not15, i1 false
  br i1 %or.cond.not, label %bb.n, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.k:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.x, ptr %i.t, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCs1kwRxRulhfk_12tracing_core4span10AttributesNtB6_5Debug3fmtCsat9HgdBb3qc_16shadowsocks_rust, ptr %.sroa.410.0..sroa_idx, align 8
  call void @_RNvNtNtCs5Xr050g3D4S_3std2io5stdio7__eprint(ptr noundef nonnull @778, ptr noundef nonnull %i.t) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.experimental.noalias.scope.decl(metadata !14245)
  call void @llvm.experimental.noalias.scope.decl(metadata !14246)
  call void @llvm.experimental.noalias.scope.decl(metadata !14247)
  %.val.i.i.i = load i64, ptr %i.v, align 8, !range !16, !alias.scope !14248, !noundef !14 ; 2 uses
  %i.cu = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val1.i.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !14248, !nonnull !14, !noundef !14
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #30, !noalias !14248
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.m:                                             ; preds = %.loopexit93
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1z_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.u) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layer15FormattedFieldsNtNtBG_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %bb.l, %bb.k, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %.loopexit
  %i.cv = and i8 %i.cs, 1
  %.not17 = icmp eq i8 %i.cv, 0
  br i1 %.not17, label %bb.s, label %bb.y

bb.n:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutINtNtNtBa_3fmt9fmt_layer15FormattedFieldsNtNtB1C_6format13DefaultFieldsEECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !14249)
  call void @llvm.experimental.noalias.scope.decl(metadata !14250)
  %i.cw = load i64, ptr %i.az, align 8, !alias.scope !14251, !noundef !14
  %i.cx = icmp eq i64 %i.cw, 0
  br i1 %i.cx, label %.loopexit, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !14252)
  call void @llvm.experimental.noalias.scope.decl(metadata !14253)
  %i.cy = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !14254, !noundef !14 ; 2 uses
  %i.da = load ptr, ptr %i.ay, align 8, !alias.scope !14254, !nonnull !14, !noundef !14 ; 2 uses
  br label %bb.p

bb.p:                                             ; preds = %bb.r, %bb.o
  %.sroa.9.0.i.i.i.i27 = phi i64 [ 0, %bb.o ], [ %i.dr, %bb.r ]
  %.pn.i.i.i28 = phi i64 [ -6705996707123187924, %bb.o ], [ %i.ds, %bb.r ]
  %.sroa.01.0.i.i.i.i29 = and i64 %.pn.i.i.i28, %i.cz ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %i.da, i64 %.sroa.01.0.i.i.i.i29
  %.sroa.0.0.copyload.i24.i.i.i30 = load <16 x i8>, ptr %i.db, align 1, !noalias !14255 ; 2 uses
  %i.dc = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 81)
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.not30.i.i.i31 = icmp eq i16 %i.dd, 0
  br i1 %.not.i.not30.i.i.i31, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

.lr.ph.i.i.i32:                                   ; preds = %bb.p, %bb.q
  %.sroa.06.0.i31.i.i.i33 = phi i16 [ %i.dq, %bb.q ], [ %i.dd, %bb.p ] ; 3 uses
  %i.de = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i33, i1 true)
  %i.df = zext nneg i16 %i.de to i64
  %i.dg = add i64 %.sroa.01.0.i.i.i.i29, %i.df
  %i.dh = and i64 %i.dg, %i.cz
  %i.di = sub nsw i64 0, %i.dh
  %i.dj = getelementptr inbounds [32 x i8], ptr %i.da, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds i8, ptr %i.dj, i64 -32
  %.val2.i.i.i.i34 = load i128, ptr %i.dk, align 8, !noalias !14256
  %i.dl = icmp eq i128 %.val2.i.i.i.i34, -123703805015440434511083380385622705146
  br i1 %i.dl, label %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, label %bb.q, !prof !20

._crit_edge.i.i.i36:                              ; preds = %bb.q, %bb.p
  %i.dm = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i30, splat (i8 -1)
  %i.dn = bitcast <16 x i1> %i.dm to i16
  %i.do = icmp eq i16 %i.dn, 0
  br i1 %i.do, label %bb.r, label %.loopexit, !prof !23

bb.q:                                             ; preds = %.lr.ph.i.i.i32
  %i.dp = add i16 %.sroa.06.0.i31.i.i.i33, -1
  %i.dq = and i16 %i.dp, %.sroa.06.0.i31.i.i.i33  ; 2 uses
  %.not.i.not.i.i.i35 = icmp eq i16 %i.dq, 0
  br i1 %.not.i.not.i.i.i35, label %._crit_edge.i.i.i36, label %.lr.ph.i.i.i32

bb.r:                                             ; preds = %._crit_edge.i.i.i36
  %i.dr = add i64 %.sroa.9.0.i.i.i.i27, 16        ; 2 uses
  %i.ds = add i64 %.sroa.01.0.i.i.i.i29, %i.dr
  br label %bb.p

_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38: ; preds = %.lr.ph.i.i.i32
  %i.dt = getelementptr inbounds i8, ptr %i.dj, i64 -16
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !14249, !nonnull !14, !noundef !14
  %i.dv = getelementptr inbounds i8, ptr %i.dj, i64 -8
  %i.dw = load ptr, ptr %i.dv, align 8, !noalias !14249, !nonnull !14, !align !27, !noundef !14
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14249
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 24
  %i.dy = load ptr, ptr %i.dx, align 8, !invariant.load !14, !noalias !14249, !nonnull !14
  call void %i.dy(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.e, ptr noundef nonnull %i.du) #35, !noalias !14249, !inline_history !6
  %i.dz = load i128, ptr %i.e, align 16, !noalias !14249, !noundef !14
  %i.ea = icmp eq i128 %i.dz, -123703805015440434511083380385622705146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !14249
  br i1 %i.ea, label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.loopexit

.loopexit:                                        ; preds = %._crit_edge.i.i.i36, %_RINvMs1_NtCsbDKHzkXHCUM_9hashbrown3mapINtB6_7HashMapNtNtCsf3Ta7LF998c_4core3any6TypeIdINtNtCsgCecv3eZDcN_5alloc5boxed3BoxDNtBQ_3AnyNtNtBS_6marker4SendNtB27_4SyncEL_EINtNtBS_4hash18BuildHasherDefaultNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions8IdHasherEE7get_mutBO_ECsat9HgdBb3qc_16shadowsocks_rust.exit.i38, %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @_RNvMse_NtNtCslHe4oyxs8Ro_18tracing_subscriber3fmt9fmt_layerNtB5_7Timings3new(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.s) #30
  call fastcc void @_RINvMs0_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_13ExtensionsMut6insertNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust(ptr nonnull %i.aw, ptr noalias nofree noundef align 8 captures(address) dereferenceable(40) %i.s) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit

bb.s:                                             ; preds = %_RINvMs1_NtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensionsNtB6_15ExtensionsInner7get_mutNtNtNtBa_3fmt9fmt_layer7TimingsECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aw) ]
  %i.eb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  br i1 %i.ax, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ec = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8
  %i.ed = and i64 %i.ec, 9223372036854775807
  %i.ee = icmp eq i64 %i.ed, 0
  br i1 %i.ee, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.u, !prof !20

bb.u:                                             ; preds = %bb.t
  %i.ef = call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #36
  br i1 %i.ef, label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %bb.u
  store atomic i8 1, ptr %i.eb monotonic, align 8
  br label %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.v, %bb.u, %bb.t, %bb.s
  %i.eg = atomicrmw add ptr %i.aw, i32 -1073741823 release, align 4
  %i.eh = add i32 %i.eg, -1073741823              ; 2 uses
  %or.cond.not.i.i.i = icmp ult i32 %i.eh, 1073741824
  br i1 %or.cond.not.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, label %bb.w, !prof !44

bb.w:                                             ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.aw, i32 noundef %i.eh) #30
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %_RNvMNtNtCs5Xr050g3D4S_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.w
  %i.ei = getelementptr inbounds nuw i8, ptr %i.y, i64 80 ; 3 uses
  %i.ej = load atomic i64, ptr %i.ei acquire, align 8, !noalias !14257 ; 2 uses
  %i.ek = and i64 %i.ej, 3                        ; 2 uses
  %i.el = icmp eq i64 %i.ek, 2
  br i1 %i.el, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !46

._crit_edge.i.i.i.i:                              ; preds = %.backedge.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14257
  store i64 2, ptr %i.d, align 8, !noalias !14257
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14257
  store ptr %i.d, ptr %i.c, align 8, !noalias !14257
  %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs2_NtNtCsf3Ta7LF998c_4core3fmt3numjNtB7_6Binary3fmt, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !14257
  call void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull @825, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @827) #37, !noalias !14257
  unreachable

_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit, %.backedge.i.i.i.i
  %i.em = phi i64 [ %i.et, %.backedge.i.i.i.i ], [ %i.ek, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ]
  %.sroa.05.0.i.i4.i.i.i.i = phi i64 [ %.sroa.05.0.i.i.be.i.i.i.i, %.backedge.i.i.i.i ], [ %i.ej, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry10extensions13ExtensionsMutECsat9HgdBb3qc_16shadowsocks_rust.exit ] ; 5 uses
  %.in.i.i.i.i = lshr i64 %.sroa.05.0.i.i4.i.i.i.i, 2
  %i.en = and i64 %.in.i.i.i.i, 562949953421311   ; 2 uses
  %i.eo = icmp eq i64 %i.en, 1
  %i.ep = icmp eq i64 %i.em, 1
  %.sroa.0.0.i.i.i.i.i.i = and i1 %i.ep, %i.eo
  br i1 %.sroa.0.0.i.i.i.i.i.i, label %bb.x, label %.thread.i.i.i.i

bb.x:                                             ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.eq = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685248
  %i.er = or disjoint i64 %i.eq, 3
  %i.es = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.er acq_rel acquire, align 8, !noalias !14257 ; 2 uses
  %.sroa.18.0.in.i.i.i.i.i.i.i = extractvalue { i64, i1 } %i.es, 1
  br i1 %.sroa.18.0.in.i.i.i.i.i.i.i, label %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, label %.backedge.i.i.i.i

.backedge.i.i.i.i:                                ; preds = %.thread.i.i.i.i, %bb.x
  %.pn.i.i.i.i = phi { i64, i1 } [ %i.es, %bb.x ], [ %i.ez, %.thread.i.i.i.i ]
  %.sroa.05.0.i.i.be.i.i.i.i = extractvalue { i64, i1 } %.pn.i.i.i.i, 0 ; 2 uses
  %i.et = and i64 %.sroa.05.0.i.i.be.i.i.i.i, 3   ; 2 uses
  %i.eu = icmp eq i64 %i.et, 2
  br i1 %i.eu, label %._crit_edge.i.i.i.i, label %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i, !prof !47

.thread.i.i.i.i:                                  ; preds = %_RNvXsf_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_9LifecycleNtNtB9_3cfg13DefaultConfigEINtB9_4PackB11_E10from_usizeCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i.i.i
  %i.ev = and i64 %.sroa.05.0.i.i4.i.i.i.i, -2251799813685245
  %i.ew = shl nuw nsw i64 %i.en, 2
  %i.ex = add nsw i64 %i.ew, -4
  %i.ey = or i64 %i.ex, %i.ev
  %i.ez = cmpxchg ptr %i.ei, i64 %.sroa.05.0.i.i4.i.i.i.i, i64 %i.ey acq_rel acquire, align 8, !noalias !14257 ; 2 uses
  %.sroa.18.0.in.i.i.i2.i.i.i.i = extractvalue { i64, i1 } %i.ez, 1
  br i1 %.sroa.18.0.in.i.i.i2.i.i.i.i, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit, label %.backedge.i.i.i.i

_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i: ; preds = %bb.x
  call fastcc void @_RNvMs0_NtCsfl4DFYTbOu6_12sharded_slab5shardINtB5_5ShardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE19clear_after_releaseCsat9HgdBb3qc_16shadowsocks_rust(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %.sroa.7.sroa.6.0.copyload.i, i64 noundef %.sroa.7.sroa.7.0.copyload.i) #30, !noalias !14258
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit: ; preds = %.thread.i.i.i.i, %_RNvMsd_NtNtCsfl4DFYTbOu6_12sharded_slab4page4slotINtB5_5GuardNtNtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7sharded9DataInnerE7releaseCsat9HgdBb3qc_16shadowsocks_rust.exit.i.i.i.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCslHe4oyxs8Ro_18tracing_subscriber8registry7SpanRefNtNtBE_7sharded8RegistryEECsat9HgdBb3qc_16shadowsocks_rust.exit56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
end_hunk_6
