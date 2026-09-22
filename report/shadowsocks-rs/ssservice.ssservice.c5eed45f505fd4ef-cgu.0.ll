Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache10lookup_dns0CsgZAIVb0XKpv_9ssservice:bb.a
  ], !prof !222

bb.gy:                                            ; preds = %bb.gx
  %i.agl = icmp ult ptr %.val.i.i.i47, inttoptr (i64 188978561024 to ptr)
  %i.agm = and i64 %i.agj, 1095216660480
  %i.agn = icmp ne i64 %i.agm, 1095216660480
  call void @llvm.assume(i1 %i.agl)
  call void @llvm.assume(i1 %i.agn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i48

bb.gz:                                            ; preds = %bb.gx
  %i.ago = getelementptr i8, ptr %.val.i.i.i47, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ago) ]
  %i.agp = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  store ptr %i.ago, ptr %i.agp, align 8, !alias.scope !56494, !noalias !56493
  store i8 3, ptr %i.c, align 8, !alias.scope !56494, !noalias !56493
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.agp) #53, !noalias !56493
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i48

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i48: ; preds = %bb.gz, %bb.gy, %bb.gx, %bb.gx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !56493
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit50

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit50: ; preds = %bb.gt, %bb.gu, %bb.gv, %bb.gw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i48
  store i8 14, ptr %1, align 16
  %.sroa.5114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  store ptr %i.aga, ptr %.sroa.5114.0..sroa_idx, align 8
  br label %bb.go

bb.ha:                                            ; preds = %bb.gs
  %i.agq = getelementptr inbounds nuw i8, ptr %1, i64 2864
  store i8 1, ptr %i.agq, align 16
  %i.agr = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  store i64 %.sroa.083.0.i, ptr %i.agr, align 16
  %.sroa.3.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.aga, ptr %.sroa.3.0..sroa_idx2, align 8
  %.sroa.4.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %1, i64 80
  store ptr %.sroa.487.0.i, ptr %.sroa.4.0..sroa_idx4, align 16
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.sroa.2, i64 112, i1 false)
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 200
  store ptr %.sroa.692.0.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 208
  store i64 %.sroa.795.0.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx4.sroa_idx, align 16
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %.sroa.898.0.i, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.sroa.6.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.4.sroa.6, i64 16, i1 false)
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 240
  store i64 %.sroa.10103.0.i, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx4.sroa_idx, align 16
  %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 248
  store <2 x i32> %i.xv, ptr %.sroa.4.sroa.8.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 256
  store ptr %.sroa.13112.0.i, ptr %.sroa.4.sroa.10.0..sroa.4.0..sroa_idx4.sroa_idx, align 16
  %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 264
  store <2 x i64> %i.xw, ptr %.sroa.4.sroa.11.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 280
  store i64 %.sroa.16121.0.i, ptr %.sroa.4.sroa.13.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.sroa.14.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 16 dereferenceable(40) %.sroa.4.sroa.14, i64 40, i1 false)
  %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 328
  store i64 %.sroa.18126.0.i, ptr %.sroa.4.sroa.15.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.16.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 336
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4.sroa.16.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 16 dereferenceable(24) %.sroa.4.sroa.16, i64 24, i1 false)
  %.sroa.4.sroa.17.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2096) %.sroa.4.sroa.17.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 8 dereferenceable(2096) %.sroa.4.sroa.17, i64 2096, i1 false)
  %.sroa.4.sroa.18.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2456
  store ptr %.sroa.21133.0.i, ptr %.sroa.4.sroa.18.0..sroa.4.0..sroa_idx4.sroa_idx, align 8
  %.sroa.4.sroa.19.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2464
  store i8 %.sroa.22136.0.i, ptr %.sroa.4.sroa.19.0..sroa.4.0..sroa_idx4.sroa_idx, align 16
  %.sroa.4.sroa.20.0..sroa.4.0..sroa_idx4.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2465
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.sroa.20.0..sroa.4.0..sroa_idx4.sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.4.sroa.20, i64 15, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.090)
  %i.ags = getelementptr inbounds nuw i8, ptr %1, i64 2520
  call fastcc void @_RNvXs4_NtNtCs2Z77Vc7pSLS_13hickory_proto2op7messageNtB5_7MessageNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(152) %.sroa.090, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %i.ags) #61
  %i.agt = getelementptr inbounds nuw i8, ptr %1, i64 2504
  %i.agu = load ptr, ptr %i.agt, align 8, !nonnull !178, !align !186, !noundef !178 ; 2 uses
  %i.agv = getelementptr inbounds nuw i8, ptr %i.agu, i64 104
  %i.agw = load i64, ptr %i.agv, align 8, !noundef !178
  %i.agx = getelementptr inbounds nuw i8, ptr %i.agu, i64 112
  %i.agy = load i32, ptr %i.agx, align 8, !range !298, !noundef !178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.xu, ptr noundef nonnull align 8 dereferenceable(152) %.sroa.090, i64 152, i1 false)
  %.sroa.991.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3032
  store i64 %i.agw, ptr %.sroa.991.0..sroa_idx, align 8
  %.sroa.1092.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3040
  store i32 %i.agy, ptr %.sroa.1092.0..sroa_idx, align 16
  %.sroa.1294.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 3048
  store ptr %i.agr, ptr %.sroa.1294.0..sroa_idx, align 8
  %.sroa.1496.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 4176
  store i8 0, ptr %.sroa.1496.0..sroa_idx, align 16
  br label %bb.fd

bb.hb:                                            ; preds = %bb.fr
  store i8 3, ptr %i.zr, align 8, !noalias !56446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  store i64 -2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.090)
  br label %common.ret

bb.hc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream9DnsClientEECsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMs4_NtNtCsgCecv3eZDcN_5alloc11collections9vec_dequeINtB5_8VecDequeNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream9DnsClientE9push_backCsgZAIVb0XKpv_9ssservice.exit10.i, %_RNvMs1b_NtNtNtCs5Xr050g3D4S_3std11collections4hash3mapINtB6_11VacantEntryNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cache12DnsClientKeyINtNtNtCsgCecv3eZDcN_5alloc11collections9vec_deque8VecDequeNtNtB1d_8upstream9DnsClientEE6insertCsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvMNtNtCsczhfDQ1qNkX_5tokio4sync15batch_semaphoreNtB2_9Semaphore7release(ptr noundef nonnull align 8 %i.zu, i64 noundef 1) #53
  store i8 1, ptr %i.zr, align 8, !noalias !56446
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.721.i)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache11save_client0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.zs) #53
  %i.agz = getelementptr inbounds nuw i8, ptr %1, i64 2880
  %.sroa.018.0.copyload = load i64, ptr %i.agz, align 16 ; 5 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2888
  %.sroa.419.sroa.0.0.copyload = load i8, ptr %.sroa.419.0..sroa_idx, align 8 ; 5 uses
  %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2889
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.314.sroa.3, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.419.sroa.4.0..sroa.419.0..sroa_idx.sroa_idx, i64 47, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2936
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.416, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.5.0..sroa_idx, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.090)
  %i.aha = getelementptr inbounds nuw i8, ptr %1, i64 2864
  store i8 0, ptr %i.aha, align 16
  call void @llvm.experimental.noalias.scope.decl(metadata !56495)
  %i.ahb = load i8, ptr %1, align 16, !range !241, !alias.scope !56495, !noundef !178 ; 4 uses
  %i.ahc = icmp eq i8 %i.ahb, -1
  br i1 %i.ahc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit55, label %bb.hd

bb.hd:                                            ; preds = %bb.hc
  call void @llvm.experimental.noalias.scope.decl(metadata !56496)
  %i.ahd = icmp ne i8 %i.ahb, 13
  call void @llvm.assume(i1 %i.ahd)
  %i.ahe = add nsw i8 %i.ahb, -12
  %i.ahf = icmp samesign ugt i8 %i.ahb, 11
  %narrow.i.i51 = select i1 %i.ahf, i8 %i.ahe, i8 1
  switch i8 %narrow.i.i51, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit55 [
    i8 0, label %bb.he
    i8 1, label %bb.hf
    i8 2, label %bb.hg
  ]

bb.he:                                            ; preds = %bb.hd
  %i.ahg = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtNtCs2Z77Vc7pSLS_13hickory_proto9serialize6binary7decoder11DecodeErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.ahg) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit55

bb.hf:                                            ; preds = %bb.hd
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCs2Z77Vc7pSLS_13hickory_proto5error10ProtoErrorECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(48) %1) #53
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit55

bb.hg:                                            ; preds = %bb.hd
  %i.ahh = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !56497)
  %.val.i.i.i52 = load ptr, ptr %i.ahh, align 8, !alias.scope !56498, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !56498
  %i.ahi = ptrtoint ptr %.val.i.i.i52 to i64      ; 2 uses
  %i.ahj = and i64 %i.ahi, 3
  switch i64 %i.ahj, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i53
    i64 3, label %bb.hh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i53
    i64 1, label %bb.hi
  ], !prof !222

bb.hh:                                            ; preds = %bb.hg
  %i.ahk = icmp ult ptr %.val.i.i.i52, inttoptr (i64 188978561024 to ptr)
  %i.ahl = and i64 %i.ahi, 1095216660480
  %i.ahm = icmp ne i64 %i.ahl, 1095216660480
  call void @llvm.assume(i1 %i.ahk)
  call void @llvm.assume(i1 %i.ahm)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i53

bb.hi:                                            ; preds = %bb.hg
  %i.ahn = getelementptr i8, ptr %.val.i.i.i52, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahn) ]
  %i.aho = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store ptr %i.ahn, ptr %i.aho, align 8, !alias.scope !56499, !noalias !56498
  store i8 3, ptr %i.b, align 8, !alias.scope !56499, !noalias !56498
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aho) #53, !noalias !56498
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i53

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i53: ; preds = %bb.hi, %bb.hh, %bb.hg, %bb.hg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !56498
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns8upstream14DnsClientErrorEECsgZAIVb0XKpv_9ssservice.exit55
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache12lookup_local0CsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 16 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 21032 ; 2 uses
  %i.b = load i8, ptr %i.a, align 8, !range !233, !noundef !178
  switch i8 %i.b, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.e
    i8 3, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 20864
  %i.d = load ptr, ptr %i.c, align 16, !nonnull !178, !align !186, !noundef !178
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 20880
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20872
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !178, !align !186, !noundef !178
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 21033
  %i.i = load i8, ptr %i.h, align 1, !range !181, !noundef !178
  %. = zext nneg i8 %i.i to i32
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 36
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.j, ptr noundef nonnull align 16 dereferenceable(32) %1, i64 32, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  store i32 %., ptr %i.k, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2792
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 16 dereferenceable(152) %i.e, i64 152, i1 false)
  %.sroa.64.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2560
  store ptr %i.g, ptr %.sroa.64.0..sroa_idx, align 16
  %.sroa.75.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2568
  %.sroa.108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2776
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.75.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %i.d, ptr %.sroa.108.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2784
  store ptr %i.k, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2945
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  tail call fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache10lookup_dns0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull align 16 %i.l, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #61
  %i.m = load i64, ptr %0, align 8, !range !247, !noundef !178
  %i.n = icmp eq i64 %i.m, -2
  br i1 %i.n, label %common.ret, label %bb.f

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1017) #63
  unreachable

common.ret:                                       ; preds = %bb.j, %bb.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i, %bb.h, %bb.g, %bb.f, %bb.f, %bb.d
  %storemerge = phi i8 [ 3, %bb.d ], [ 1, %bb.f ], [ 1, %bb.f ], [ 1, %bb.g ], [ 1, %bb.h ], [ 1, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i ], [ 1, %bb.i ], [ 1, %bb.j ]
  store i8 %storemerge, ptr %i.a, align 8
  ret void

bb.f:                                             ; preds = %bb.d
  tail call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtBG_14DnsClientCache10lookup_dns0ECsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 16 %i.l) #53
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56514)
  %i.p = load i32, ptr %i.o, align 16, !range !259, !alias.scope !56514, !noundef !178
  switch i32 %i.p, label %default.unreachable [
    i32 0, label %common.ret
    i32 1, label %common.ret
    i32 2, label %bb.i
    i32 3, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i16, ptr %i.q, align 8, !range !179, !alias.scope !56515, !noundef !178
  %i.s = icmp eq i16 %i.r, 0
  br i1 %i.s, label %common.ret, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i.i = load i64, ptr %i.t, align 16, !alias.scope !56516 ; 2 uses
  %i.u = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.u, label %common.ret, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i: ; preds = %bb.j, %bb.h
  %.val.i.i.i1.sink.i = phi i64 [ %.val.i.i.i1.i, %bb.j ], [ %.val.i.i.i.i, %bb.h ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.val1.i.i.i2.i = load ptr, ptr %i.v, align 8, !alias.scope !56514, !nonnull !178, !noundef !178
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i2.i, i64 noundef %.val.i.i.i1.sink.i, i64 noundef range(i64 1, -9223372036854775807) 1) #53, !noalias !56514
  br label %common.ret

bb.i:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.x = load i16, ptr %i.w, align 8, !range !179, !alias.scope !56517, !noundef !178
  %i.y = icmp eq i16 %i.x, 0
  br i1 %i.y, label %common.ret, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val.i.i.i1.i = load i64, ptr %i.z, align 16, !alias.scope !56518 ; 2 uses
  %i.aa = icmp eq i64 %.val.i.i.i1.i, 0
  br i1 %i.aa, label %common.ret, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCslxdWNweD0x2_11shadowsocks5relay6socks57AddressECsgZAIVb0XKpv_9ssservice.exit.sink.split.i
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache13lookup_remote0CsgZAIVb0XKpv_9ssservice(ptr dead_on_unwind noalias nofree noundef nonnull writable align 8 captures(none) dereferenceable(152) %0, ptr noundef nonnull align 16 %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %2) unnamed_addr #2 {
bb.a:
  %i.a = alloca [152 x i8], align 8               ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 21016 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !233, !noundef !178
  switch i8 %i.e, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.l
    i8 3, label %bb.k
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 20832
  %i.g = load ptr, ptr %i.f, align 16, !nonnull !178, !align !186, !noundef !178
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 20840
  %i.i = load <2 x ptr>, ptr %i.h, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 20856
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !178, !align !186, !noundef !178 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 20864
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.a, ptr noundef nonnull align 16 dereferenceable(152) %i.l, i64 152, i1 false)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 21017
  %i.n = load i8, ptr %i.m, align 1, !range !181, !noundef !178
  %i.o = trunc nuw i8 %i.n to i1
  br i1 %i.o, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56539)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56540)
  %i.p = load i16, ptr %i.k, align 8, !range !179, !alias.scope !56540, !noalias !56539, !noundef !178
  %i.q = trunc nuw i16 %i.p to i1
  br i1 %i.q, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.s, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) #53
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.u = load i16, ptr %i.t, align 2, !alias.scope !56540, !noalias !56539, !noundef !178
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 2
  store i16 %i.u, ptr %i.v, align 2, !alias.scope !56539, !noalias !56540
  br label %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.f:                                             ; preds = %bb.d
  %i.w = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.x, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.w, i64 32, i1 false), !alias.scope !56541
  br label %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.e, %bb.f
  %.sink.i = phi i16 [ 1, %bb.e ], [ 0, %bb.f ]
  store i16 %.sink.i, ptr %i.b, align 8, !alias.scope !56539, !noalias !56540
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  store i32 2, ptr %1, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.j

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56542)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56543)
  %i.z = load i16, ptr %i.k, align 8, !range !179, !alias.scope !56543, !noalias !56542, !noundef !178
  %i.aa = trunc nuw i16 %i.z to i1
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ac, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #53
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 2
  %i.ae = load i16, ptr %i.ad, align 2, !alias.scope !56543, !noalias !56542, !noundef !178
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  store i16 %i.ae, ptr %i.af, align 2, !alias.scope !56542, !noalias !56543
  br label %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit2

bb.i:                                             ; preds = %bb.g
  %i.ag = getelementptr inbounds nuw i8, ptr %i.k, i64 4
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.ah, ptr noundef nonnull readonly align 4 dereferenceable(32) %i.ag, i64 32, i1 false), !alias.scope !56544
  br label %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit2

_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit2: ; preds = %bb.h, %bb.i
  %.sink.i1 = phi i16 [ 1, %bb.h ], [ 0, %bb.i ]
  store i16 %.sink.i1, ptr %i.c, align 8, !alias.scope !56542, !noalias !56543
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.ai, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  store i32 3, ptr %1, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.j

bb.j:                                             ; preds = %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit2, %_RNvXsw_NtNtCslxdWNweD0x2_11shadowsocks5relay6socks5NtB5_7AddressNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2528
  store ptr null, ptr %.sroa.66.0..sroa_idx, align 16
  %.sroa.77.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2536
  store <2 x ptr> %i.i, ptr %.sroa.77.0..sroa_idx, align 8
  %.sroa.1010.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2744
  store ptr %i.g, ptr %.sroa.1010.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2752
  store ptr %1, ptr %.sroa.11.0..sroa_idx, align 16
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2760
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(152) %i.a, i64 152, i1 false)
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 2913
  store i8 0, ptr %.sroa.14.0..sroa_idx, align 1
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.j
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  tail call fastcc void @_RNCNvMNtNtNtCs8UFHSMUhzWe_19shadowsocks_service5local3dns12client_cacheNtB4_14DnsClientCache10lookup_dns0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(152) %0, ptr noundef nonnull align 16 %i.aj, ptr noalias nofree noundef align 8 dereferenceable(32) %2) #61
  %i.ak = load i64, ptr %0, align 8, !range !247, !noundef !178
  %i.al = icmp eq i64 %i.ak, -2
  br i1 %i.al, label %common.ret, label %bb.m

bb.l:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCsf3Ta7LF998c_4core9panicking11panic_const28panic_const_async_fn_resumed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1018) #63
end_hunk_0
begin_hunk_1_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a
  call void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @123) #63, !noalias !75748
  unreachable

bb.cb:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i.i
  %i.ke = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 32) #60, !noalias !75704
  br label %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit.i

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.cb, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i.i, %bb.ca
  %.sroa.05.0.i.i = phi ptr [ %i.kd, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i.i ], [ %i.ke, %bb.cb ], [ %.sroa.6.sroa.5.0.copyload.i.i, %bb.ca ]
  store i8 1, ptr %i.jx, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !75703
  %i.kf = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.kf, i64 32, i1 false), !noalias !75703
  call void @llvm.experimental.noalias.scope.decl(metadata !75749)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.aw) #53, !noalias !75750
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !75703
  br label %bb.cc

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i.i
  store i8 1, ptr %i.jx, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw), !noalias !75703
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %i.kg, i64 32, i1 false), !noalias !75703
  %.sroa.0567.0.copyload568.i = load i64, ptr %i.aw, align 8, !alias.scope !75751, !noalias !75703 ; 3 uses
  %.sroa.12569.0..sroa_idx570.i = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.12569.0.copyload571.i = load ptr, ptr %.sroa.12569.0..sroa_idx570.i, align 8, !alias.scope !75751, !noalias !75703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw), !noalias !75703
  %i.kh = icmp eq i64 %.sroa.0567.0.copyload568.i, 2
  br i1 %i.kh, label %bb.cc, label %bb.ci

bb.cc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.12569.01032.i = phi ptr [ %.sroa.05.0.i.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.12569.0.copyload571.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12569.01032.i) ]
  call void @llvm.experimental.noalias.scope.decl(metadata !75752)
  %i.ki = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.kj = load i64, ptr %i.ki, align 8, !range !236, !alias.scope !75752, !noalias !75703, !noundef !178 ; 2 uses
  %i.kk = icmp eq i64 %i.kj, -1
  br i1 %i.kk, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.cd

bb.cd:                                            ; preds = %bb.cc
  call void @llvm.experimental.noalias.scope.decl(metadata !75753)
  %.not.i.i155.i = icmp eq i64 %i.kj, 2
  br i1 %.not.i.i155.i, label %bb.cf, label %bb.ce

bb.ce:                                            ; preds = %bb.cd
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ki) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i

bb.cf:                                            ; preds = %bb.cd
  call void @llvm.experimental.noalias.scope.decl(metadata !75754)
  %.val.i.i.i156.i = load ptr, ptr %i.jw, align 8, !alias.scope !75755, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !75756
  %i.kl = ptrtoint ptr %.val.i.i.i156.i to i64    ; 2 uses
  %i.km = and i64 %i.kl, 3
  switch i64 %i.km, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i
    i64 3, label %bb.cg
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i
    i64 1, label %bb.ch
  ], !prof !222

bb.cg:                                            ; preds = %bb.cf
  %i.kn = icmp ult ptr %.val.i.i.i156.i, inttoptr (i64 188978561024 to ptr)
  %i.ko = and i64 %i.kl, 1095216660480
  %i.kp = icmp ne i64 %i.ko, 1095216660480
  call void @llvm.assume(i1 %i.kn)
  call void @llvm.assume(i1 %i.kp)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i

bb.ch:                                            ; preds = %bb.cf
  %i.kq = getelementptr i8, ptr %.val.i.i.i156.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.kq) ]
  %i.kr = getelementptr inbounds nuw i8, ptr %i.ai, i64 8 ; 2 uses
  store ptr %i.kq, ptr %i.kr, align 8, !alias.scope !75757, !noalias !75756
  store i8 3, ptr %i.ai, align 8, !alias.scope !75757, !noalias !75756
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.kr) #53, !noalias !75758
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i: ; preds = %bb.ch, %bb.cg, %bb.cf, %bb.cf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !noalias !75756
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i, %bb.ce, %bb.cc
  store ptr %.sroa.12569.01032.i, ptr %i.jw, align 8, !noalias !75703
  store i64 2, ptr %i.ki, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i)
  %.phi.trans.insert1126.i = getelementptr inbounds nuw i8, ptr %1, i64 456
  %.pre1127.i = load ptr, ptr %.phi.trans.insert1126.i, align 8, !alias.scope !75722, !noalias !75723
  %.phi.trans.insert1128.i = getelementptr inbounds nuw i8, ptr %1, i64 440
  %.pre1129.i = load ptr, ptr %.phi.trans.insert1128.i, align 8, !alias.scope !75722, !noalias !75723
  br label %bb.bg

bb.ci:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.ks = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6620.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ks, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0617.i)
  %i.kt = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0617.i, ptr noundef nonnull align 8 dereferenceable(32) %i.kt, i64 32, i1 false), !noalias !75703
  call void @llvm.experimental.noalias.scope.decl(metadata !75759)
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 3 uses
  %i.kv = load i64, ptr %i.ku, align 8, !range !236, !alias.scope !75759, !noalias !75703, !noundef !178 ; 2 uses
  %i.kw = icmp eq i64 %i.kv, -1
  br i1 %i.kw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  call void @llvm.experimental.noalias.scope.decl(metadata !75760)
  %.not.i.i158.i = icmp eq i64 %i.kv, 2
  br i1 %.not.i.i158.i, label %bb.cl, label %bb.ck

bb.ck:                                            ; preds = %bb.cj
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ku) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i

bb.cl:                                            ; preds = %bb.cj
  call void @llvm.experimental.noalias.scope.decl(metadata !75761)
  %.val.i.i.i159.i = load ptr, ptr %i.jw, align 8, !alias.scope !75762, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !75763
  %i.kx = ptrtoint ptr %.val.i.i.i159.i to i64    ; 2 uses
  %i.ky = and i64 %i.kx, 3
  switch i64 %i.ky, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i
    i64 3, label %bb.cm
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i
    i64 1, label %bb.cn
  ], !prof !222

bb.cm:                                            ; preds = %bb.cl
  %i.kz = icmp ult ptr %.val.i.i.i159.i, inttoptr (i64 188978561024 to ptr)
  %i.la = and i64 %i.kx, 1095216660480
  %i.lb = icmp ne i64 %i.la, 1095216660480
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.assume(i1 %i.lb)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i

bb.cn:                                            ; preds = %bb.cl
  %i.lc = getelementptr i8, ptr %.val.i.i.i159.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.lc) ]
  %i.ld = getelementptr inbounds nuw i8, ptr %i.ah, i64 8 ; 2 uses
  store ptr %i.lc, ptr %i.ld, align 8, !alias.scope !75764, !noalias !75763
  store i8 3, ptr %i.ah, align 8, !alias.scope !75764, !noalias !75763
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ld) #53, !noalias !75765
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i: ; preds = %bb.cn, %bb.cm, %bb.cl, %bb.cl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ah), !noalias !75763
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i160.i, %bb.ck, %bb.ci
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jw, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0617.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0567.0.copyload568.i, ptr %i.ku, align 8, !noalias !75703
  %.sroa.5619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  store ptr %.sroa.12569.0.copyload571.i, ptr %.sroa.5619.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6620.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6620.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0617.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6620.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i, %bb.bg
  %i.le = phi ptr [ %i.hb, %bb.bg ], [ %i.jv, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i ], [ %i.hb, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.lf = phi ptr [ %i.hc, %bb.bg ], [ %i.jw, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i ], [ %i.hc, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i ] ; 2 uses
  %.sroa.4622.0.copyload1133.i = phi i64 [ %.sroa.4622.0.copyload1134.i, %bb.bg ], [ %.sroa.0567.0.copyload568.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit162.i ], [ %.sroa.4622.0.copyload1134.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i)
  %i.lg = getelementptr i8, ptr %1, i64 448
  %.val111.i = load i64, ptr %i.lg, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.lh = icmp eq i64 %.val111.i, 0
  br i1 %i.lh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.co

bb.co:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %i.li = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.val110.i = load ptr, ptr %i.li, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.lj = shl nuw i64 %.val111.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val110.i, i64 noundef %i.lj, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75767
  %.sroa.4622.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.sroa.4622.0.copyload.pre.i = load i64, ptr %.sroa.4622.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.co, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i
  %.sroa.4622.0.copyload.i = phi i64 [ %.sroa.4622.0.copyload1133.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.thread.i ], [ %.sroa.4622.0.copyload.pre.i, %bb.co ] ; 2 uses
  %.not.i163.i = icmp eq i64 %.sroa.4622.0.copyload.i, -1
  br i1 %.not.i163.i, label %bb.cp, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.cp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75768
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.5625.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.0621.sroa.0.0.copyload.i = load ptr, ptr %i.lf, align 8, !noalias !75703
  %i.lk = load <2 x ptr>, ptr %.sroa.5625.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5625.sroa.4.0..sroa.5625.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.sroa.19.sroa.7.i.sroa.9.0.copyload88 = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5625.sroa.4.0..sroa.5625.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  br label %bb.cr

bb.cq:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit.i
  %i.ll = getelementptr inbounds nuw i8, ptr %1, i64 464
  store i16 %.sroa.0563.0.copyload564.i, ptr %i.ll, align 8, !noalias !75703
  %.sroa.12565.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12565.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12565.i, i64 30, i1 false), !noalias !75703
  %3 = trunc nuw i16 %.sroa.0563.0.copyload564.i to i8
  %i.lm = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %4 = and i8 %3, 1
  %.sroa.7586.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.ln, ptr %.sroa.7586.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8587.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8587.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9588.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %4, ptr %.sroa.9588.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.bt

bb.cr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i
  %i.lo = phi ptr [ %i.le, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.wq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.sm, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %i.afa, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %i.aaw, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %i.ox, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ] ; 2 uses
  %i.lp = phi ptr [ %i.lf, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.wr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.sn, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %i.afb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %i.aax, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %i.oy, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ] ; 2 uses
  %.sroa.19.sroa.7.i.sroa.9.0 = phi i64 [ %.sroa.19.sroa.7.i.sroa.9.0.copyload88, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload85, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload86, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload84, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %.sroa.19.sroa.7.i.sroa.9.0.copyload87, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ]
  %.sroa.0843.0.i = phi ptr [ %.sroa.0621.sroa.0.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.0837.sroa.0.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.0765.sroa.0.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %.sroa.0995.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %.sroa.0925.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %.sroa.0693.sroa.0.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ] ; 2 uses
  %.sroa.11853.0.i = phi i64 [ %.sroa.4622.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.4838.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %.sroa.4766.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %.sroa.5997.0.copyload.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %.sroa.5927.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %.sroa.4694.0.copyload.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ] ; 2 uses
  %i.lq = phi <2 x ptr> [ %i.lk, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.xg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i ], [ %i.st, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i ], [ %i.afq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i ], [ %i.abd, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i ], [ %i.pe, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i ]
  %i.lr = getelementptr inbounds nuw i8, ptr %1, i64 921 ; 2 uses
  %i.ls = load i8, ptr %i.lr, align 1, !range !181, !noalias !75703, !noundef !178
  %i.lt = trunc nuw i8 %i.ls to i1
  br i1 %i.lt, label %bb.kp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i

bb.cs:                                            ; preds = %bb.bt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.ct:                                            ; preds = %bb.bt
  %.sroa.3591.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.3591.0.copyload.i = load ptr, ptr %.sroa.3591.0..sroa_idx.i, align 8, !noalias !75703 ; 5 uses
  %.sroa.5592.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax), !noalias !75703
  %i.lu = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.lv = load i8, ptr %i.lu, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i164.i = icmp eq i8 %i.lv, 3
  br i1 %cond.i164.i, label %bb.cu, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i

bb.cu:                                            ; preds = %bb.ct
  %i.lw = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.lx = load i8, ptr %i.lw, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i165.i = icmp eq i8 %i.lx, 3
  br i1 %cond.i.i165.i, label %bb.cv, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i

bb.cv:                                            ; preds = %bb.cu
  %i.ly = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.lz = load i8, ptr %i.ly, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i166.i = icmp eq i8 %i.lz, 3
  br i1 %cond.i.i.i166.i, label %bb.cw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i

bb.cw:                                            ; preds = %bb.cv
  %i.ma = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i167.i = load i16, ptr %i.ma, align 8, !range !232, !noalias !75703, !noundef !178
  %i.mb = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i168.i = load ptr, ptr %i.mb, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i169.i = icmp eq i16 %.val.i.i.i167.i, -1
  br i1 %cond.i.i.i.i.i169.i, label %bb.cx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i

bb.cx:                                            ; preds = %bb.cw
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i168.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !noalias !75769
  %i.mc = ptrtoint ptr %.val1.i.i.i168.i to i64   ; 2 uses
  %i.md = and i64 %i.mc, 3
  switch i64 %i.md, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i
    i64 3, label %bb.cy
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i
    i64 1, label %bb.cz
  ], !prof !222

bb.cy:                                            ; preds = %bb.cx
  %i.me = icmp ult ptr %.val1.i.i.i168.i, inttoptr (i64 188978561024 to ptr)
  %i.mf = and i64 %i.mc, 1095216660480
  %i.mg = icmp ne i64 %i.mf, 1095216660480
  call void @llvm.assume(i1 %i.me)
  call void @llvm.assume(i1 %i.mg)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i

bb.cz:                                            ; preds = %bb.cx
  %i.mh = getelementptr i8, ptr %.val1.i.i.i168.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mh) ]
  %i.mi = getelementptr inbounds nuw i8, ptr %i.ag, i64 8 ; 2 uses
  store ptr %i.mh, ptr %i.mi, align 8, !alias.scope !75770, !noalias !75769
  store i8 3, ptr %i.ag, align 8, !alias.scope !75770, !noalias !75769
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mi) #53, !noalias !75771
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i: ; preds = %bb.cz, %bb.cy, %bb.cx, %bb.cx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !noalias !75769
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i170.i, %bb.cw, %bb.cv, %bb.cu, %bb.ct
  %i.mj = icmp eq i64 %i.jm, 2
  br i1 %i.mj, label %bb.da, label %.thread.i

bb.da:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3591.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12565.i)
  %i.mk = getelementptr i8, ptr %1, i64 448
  %.val109.i = load i64, ptr %i.mk, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.ml = icmp eq i64 %.val109.i, 0
  br i1 %i.ml, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit174.i, label %bb.db

bb.db:                                            ; preds = %bb.da
  %i.mm = getelementptr inbounds nuw i8, ptr %1, i64 432
  %.val108.i = load ptr, ptr %i.mm, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.mn = shl nuw i64 %.val109.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val108.i, i64 noundef %i.mn, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75772
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit174.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit174.i: ; preds = %bb.db, %bb.da
  call void @llvm.experimental.noalias.scope.decl(metadata !75773)
  %i.mo = getelementptr inbounds nuw i8, ptr %1, i64 80 ; 2 uses
  %i.mp = load i64, ptr %i.mo, align 8, !range !236, !alias.scope !75773, !noalias !75703, !noundef !178 ; 2 uses
  %i.mq = icmp eq i64 %i.mp, -1
  br i1 %i.mq, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i, label %bb.dc

bb.dc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit174.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75774)
  %.not.i.i175.i = icmp eq i64 %i.mp, 2
  br i1 %.not.i.i175.i, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.mo) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

bb.de:                                            ; preds = %bb.dc
  call void @llvm.experimental.noalias.scope.decl(metadata !75775)
  %.val.i.i.i176.i = load ptr, ptr %i.jk, align 8, !alias.scope !75776, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !noalias !75777
  %i.mr = ptrtoint ptr %.val.i.i.i176.i to i64    ; 2 uses
  %i.ms = and i64 %i.mr, 3
  switch i64 %i.ms, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i177.i
    i64 3, label %bb.df
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i177.i
    i64 1, label %bb.dg
  ], !prof !222

bb.df:                                            ; preds = %bb.de
  %i.mt = icmp ult ptr %.val.i.i.i176.i, inttoptr (i64 188978561024 to ptr)
  %i.mu = and i64 %i.mr, 1095216660480
  %i.mv = icmp ne i64 %i.mu, 1095216660480
  call void @llvm.assume(i1 %i.mt)
  call void @llvm.assume(i1 %i.mv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i177.i

bb.dg:                                            ; preds = %bb.de
  %i.mw = getelementptr i8, ptr %.val.i.i.i176.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.mw) ]
  %i.mx = getelementptr inbounds nuw i8, ptr %i.af, i64 8 ; 2 uses
  store ptr %i.mw, ptr %i.mx, align 8, !alias.scope !75778, !noalias !75777
  store i8 3, ptr %i.af, align 8, !alias.scope !75778, !noalias !75777
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.mx) #53, !noalias !75779
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i177.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i177.i: ; preds = %bb.dg, %bb.df, %bb.de, %bb.de
  call void @llvm.lifetime.end.p0(ptr nonnull %i.af), !noalias !75777
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

.thread.i:                                        ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit172.i
  %.sroa.5595.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5595.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5592.i, i64 16, i1 false), !noalias !75703
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  store i64 %i.jm, ptr %i.my, align 8, !noalias !75703
  %.sroa.4594.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %.sroa.3591.0.copyload.i, ptr %.sroa.4594.0..sroa_idx.i, align 8, !noalias !75703
  %i.mz = getelementptr inbounds nuw i8, ptr %1, i64 464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.jl, ptr noundef nonnull align 8 dereferenceable(32) %i.mz, i64 32, i1 false), !noalias !75703
  %.sroa.6602.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.my, ptr %.sroa.6602.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8604.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  store i8 0, ptr %.sroa.8604.0..sroa_idx.i, align 8, !noalias !75703
  br label %bb.bw

bb.dh:                                            ; preds = %bb.ee, %bb.g
  %i.na = phi ptr [ %i.hp, %bb.ee ], [ %i.cc, %bb.g ] ; 5 uses
  %i.nb = phi ptr [ %i.hq, %bb.ee ], [ %i.cb, %bb.g ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av), !noalias !75703
  %i.nc = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.av, ptr noundef nonnull align 8 %i.nc) #61, !noalias !75704
  %i.nd = load i64, ptr %i.av, align 8, !range !236, !noalias !75703, !noundef !178 ; 3 uses
  %i.ne = icmp eq i64 %i.nd, -1
  br i1 %i.ne, label %bb.ef, label %bb.eg

bb.di:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12636.i)
  %.phi.trans.insert1085.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 3 uses
  %.pre1086.i = load i8, ptr %.phi.trans.insert1085.i, align 8, !range !233, !noalias !75703
  switch i8 %.pre1086.i, label %bb.dj [
    i8 0, label %._crit_edge153
    i8 1, label %bb.dn
    i8 3, label %bb.dl
  ]

._crit_edge153:                                   ; preds = %bb.di
  %.phi.trans.insert154 = getelementptr inbounds nuw i8, ptr %1, i64 960
  %.pre155 = load ptr, ptr %.phi.trans.insert154, align 8, !noalias !75703
  br label %bb.dk

bb.dj:                                            ; preds = %bb.di
  unreachable

bb.dk:                                            ; preds = %._crit_edge153, %.thread1181.i
  %i.nf = phi ptr [ %i.na, %.thread1181.i ], [ %i.cc, %._crit_edge153 ]
  %i.ng = phi ptr [ %i.nb, %.thread1181.i ], [ %i.cb, %._crit_edge153 ]
  %i.nh = phi ptr [ %i.qn, %.thread1181.i ], [ %.pre155, %._crit_edge153 ]
  %i.ni = phi ptr [ %.sroa.8676.0..sroa_idx.i, %.thread1181.i ], [ %.phi.trans.insert1085.i, %._crit_edge153 ]
end_hunk_1
begin_hunk_2_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a
bb.dp:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtB4_6future5ready5ReadyINtNtB4_6result6ResultINtNtB4_6option8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit.i182.i
  %i.nv = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 32) #60, !noalias !75704
  br label %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit198.i

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit198.i: ; preds = %bb.dp, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i193.i, %bb.do
  %.sroa.05.0.i195.i = phi ptr [ %i.nu, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i193.i ], [ %i.nv, %bb.dp ], [ %.sroa.6.sroa.5.0.copyload.i185.i, %bb.do ]
  store i8 1, ptr %i.no, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !75703
  %i.nw = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.nw, i64 32, i1 false), !noalias !75703
  call void @llvm.experimental.noalias.scope.decl(metadata !75787)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.au) #53, !noalias !75788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !75703
  br label %bb.dq

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit205.thread.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i193.i
  store i8 1, ptr %i.no, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au), !noalias !75703
  %i.nx = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.au, ptr noundef nonnull align 8 dereferenceable(32) %i.nx, i64 32, i1 false), !noalias !75703
  %.sroa.0638.0.copyload639.i = load i64, ptr %i.au, align 8, !alias.scope !75789, !noalias !75703 ; 3 uses
  %.sroa.12640.0..sroa_idx641.i = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.12640.0.copyload642.i = load ptr, ptr %.sroa.12640.0..sroa_idx641.i, align 8, !alias.scope !75789, !noalias !75703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au), !noalias !75703
  %i.ny = icmp eq i64 %.sroa.0638.0.copyload639.i, 2
  br i1 %i.ny, label %bb.dq, label %bb.dw

bb.dq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit205.thread.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit198.i
  %.sroa.12640.01040.i = phi ptr [ %.sroa.05.0.i195.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit198.i ], [ %.sroa.12640.0.copyload642.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit205.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12640.01040.i) ]
  %i.nz = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75790)
  %i.oa = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.ob = load i64, ptr %i.oa, align 8, !range !236, !alias.scope !75790, !noalias !75703, !noundef !178 ; 2 uses
  %i.oc = icmp eq i64 %i.ob, -1
  br i1 %i.oc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit211.i, label %bb.dr

bb.dr:                                            ; preds = %bb.dq
  call void @llvm.experimental.noalias.scope.decl(metadata !75791)
  %.not.i.i207.i = icmp eq i64 %i.ob, 2
  br i1 %.not.i.i207.i, label %bb.dt, label %bb.ds

bb.ds:                                            ; preds = %bb.dr
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.oa) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit211.i

bb.dt:                                            ; preds = %bb.dr
  call void @llvm.experimental.noalias.scope.decl(metadata !75792)
  %.val.i.i.i208.i = load ptr, ptr %i.nz, align 8, !alias.scope !75793, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !75794
  %i.od = ptrtoint ptr %.val.i.i.i208.i to i64    ; 2 uses
  %i.oe = and i64 %i.od, 3
  switch i64 %i.oe, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i
    i64 3, label %bb.du
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i
    i64 1, label %bb.dv
  ], !prof !222

bb.du:                                            ; preds = %bb.dt
  %i.of = icmp ult ptr %.val.i.i.i208.i, inttoptr (i64 188978561024 to ptr)
  %i.og = and i64 %i.od, 1095216660480
  %i.oh = icmp ne i64 %i.og, 1095216660480
  call void @llvm.assume(i1 %i.of)
  call void @llvm.assume(i1 %i.oh)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i

bb.dv:                                            ; preds = %bb.dt
  %i.oi = getelementptr i8, ptr %.val.i.i.i208.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.oi) ]
  %i.oj = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  store ptr %i.oi, ptr %i.oj, align 8, !alias.scope !75795, !noalias !75794
  store i8 3, ptr %i.ad, align 8, !alias.scope !75795, !noalias !75794
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.oj) #53, !noalias !75796
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i: ; preds = %bb.dv, %bb.du, %bb.dt, %bb.dt
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !noalias !75794
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit211.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit211.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i209.i, %bb.ds, %bb.dq
  store ptr %.sroa.12640.01040.i, ptr %i.nz, align 8, !noalias !75703
  store i64 2, ptr %i.oa, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 520
  %.pre1082.i = load ptr, ptr %.phi.trans.insert.i, align 8, !alias.scope !75725, !noalias !75726
  %.phi.trans.insert1083.i = getelementptr inbounds nuw i8, ptr %1, i64 504
  %.pre1084.i = load ptr, ptr %.phi.trans.insert1083.i, align 8, !alias.scope !75725, !noalias !75726
  br label %bb.bj

bb.dw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit205.thread.i
  %i.ok = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6692.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.i, ptr noundef nonnull align 8 dereferenceable(16) %i.ok, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0689.i)
  %i.ol = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0689.i, ptr noundef nonnull align 8 dereferenceable(32) %i.ol, i64 32, i1 false), !noalias !75703
  %i.om = getelementptr inbounds nuw i8, ptr %1, i64 112 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75797)
  %i.on = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 3 uses
  %i.oo = load i64, ptr %i.on, align 8, !range !236, !alias.scope !75797, !noalias !75703, !noundef !178 ; 2 uses
  %i.op = icmp eq i64 %i.oo, -1
  br i1 %i.op, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i, label %bb.dx

bb.dx:                                            ; preds = %bb.dw
  call void @llvm.experimental.noalias.scope.decl(metadata !75798)
  %.not.i.i212.i = icmp eq i64 %i.oo, 2
  br i1 %.not.i.i212.i, label %bb.dz, label %bb.dy

bb.dy:                                            ; preds = %bb.dx
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.on) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i

bb.dz:                                            ; preds = %bb.dx
  call void @llvm.experimental.noalias.scope.decl(metadata !75799)
  %.val.i.i.i213.i = load ptr, ptr %i.om, align 8, !alias.scope !75800, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !75801
  %i.oq = ptrtoint ptr %.val.i.i.i213.i to i64    ; 2 uses
  %i.or = and i64 %i.oq, 3
  switch i64 %i.or, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i
    i64 3, label %bb.ea
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i
    i64 1, label %bb.eb
  ], !prof !222

bb.ea:                                            ; preds = %bb.dz
  %i.os = icmp ult ptr %.val.i.i.i213.i, inttoptr (i64 188978561024 to ptr)
  %i.ot = and i64 %i.oq, 1095216660480
  %i.ou = icmp ne i64 %i.ot, 1095216660480
  call void @llvm.assume(i1 %i.os)
  call void @llvm.assume(i1 %i.ou)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i

bb.eb:                                            ; preds = %bb.dz
  %i.ov = getelementptr i8, ptr %.val.i.i.i213.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ov) ]
  %i.ow = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  store ptr %i.ov, ptr %i.ow, align 8, !alias.scope !75802, !noalias !75801
  store i8 3, ptr %i.ac, align 8, !alias.scope !75802, !noalias !75801
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ow) #53, !noalias !75803
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i: ; preds = %bb.eb, %bb.ea, %bb.dz, %bb.dz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !75801
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i214.i, %bb.dy, %bb.dw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.om, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0689.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0638.0.copyload639.i, ptr %i.on, align 8, !noalias !75703
  %.sroa.5691.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  store ptr %.sroa.12640.0.copyload642.i, ptr %.sroa.5691.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6692.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6692.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0689.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6692.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.i, %bb.bj
  %i.ox = phi ptr [ %i.hp, %bb.bj ], [ %i.nm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i ], [ %i.hp, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.i ]
  %i.oy = phi ptr [ %i.hq, %bb.bj ], [ %i.nn, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i ], [ %i.hq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.i ]
  %.sroa.4694.0.copyload1088.i = phi i64 [ %.sroa.4694.0.copyload1089.i, %bb.bj ], [ %.sroa.0638.0.copyload639.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit216.i ], [ %.sroa.4694.0.copyload1089.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i)
  %i.oz = getelementptr i8, ptr %1, i64 512
  %.val107.i = load i64, ptr %i.oz, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.pa = icmp eq i64 %.val107.i, 0
  br i1 %i.pa, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit217.i, label %bb.ec

bb.ec:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.thread.i
  %i.pb = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.val106.i = load ptr, ptr %i.pb, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.pc = shl nuw i64 %.val107.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val106.i, i64 noundef %i.pc, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75804
  %.sroa.4694.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.4694.0.copyload.pre.i = load i64, ptr %.sroa.4694.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit217.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit217.i: ; preds = %bb.ec, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.thread.i
  %.sroa.4694.0.copyload.i = phi i64 [ %.sroa.4694.0.copyload1088.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.thread.i ], [ %.sroa.4694.0.copyload.pre.i, %bb.ec ] ; 2 uses
  %.not.i218.i = icmp eq i64 %.sroa.4694.0.copyload.i, -1
  br i1 %.not.i218.i, label %bb.ed, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i, !prof !187

bb.ed:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit217.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75805
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit219.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit217.i
  %.sroa.5697.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.pd = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.0693.sroa.0.0.copyload.i = load ptr, ptr %i.pd, align 8, !noalias !75703
  %i.pe = load <2 x ptr>, ptr %.sroa.5697.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5697.sroa.4.0..sroa.5697.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 168
  %.sroa.19.sroa.7.i.sroa.9.0.copyload87 = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5697.sroa.4.0..sroa.5697.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  br label %bb.cr

bb.ee:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit135.i
  %i.pf = getelementptr inbounds nuw i8, ptr %1, i64 528
  store i16 %.sroa.0634.0.copyload635.i, ptr %i.pf, align 8, !noalias !75703
  %.sroa.12636.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 530
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12636.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12636.i, i64 30, i1 false), !noalias !75703
  %5 = trunc nuw i16 %.sroa.0634.0.copyload635.i to i8
  %i.pg = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.ph = load ptr, ptr %i.pg, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %6 = and i8 %5, 1
  %.sroa.7658.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.ph, ptr %.sroa.7658.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8659.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8659.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9660.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %6, ptr %.sroa.9660.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.dh

bb.ef:                                            ; preds = %bb.dh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.eg:                                            ; preds = %bb.dh
  %.sroa.3663.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.3663.0.copyload.i = load ptr, ptr %.sroa.3663.0..sroa_idx.i, align 8, !noalias !75703 ; 5 uses
  %.sroa.5664.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av), !noalias !75703
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.pj = load i8, ptr %i.pi, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i220.i = icmp eq i8 %i.pj, 3
  br i1 %cond.i220.i, label %bb.eh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i

bb.eh:                                            ; preds = %bb.eg
  %i.pk = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.pl = load i8, ptr %i.pk, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i221.i = icmp eq i8 %i.pl, 3
  br i1 %cond.i.i221.i, label %bb.ei, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i

bb.ei:                                            ; preds = %bb.eh
  %i.pm = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.pn = load i8, ptr %i.pm, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i222.i = icmp eq i8 %i.pn, 3
  br i1 %cond.i.i.i222.i, label %bb.ej, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i

bb.ej:                                            ; preds = %bb.ei
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i223.i = load i16, ptr %i.po, align 8, !range !232, !noalias !75703, !noundef !178
  %i.pp = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i224.i = load ptr, ptr %i.pp, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i225.i = icmp eq i16 %.val.i.i.i223.i, -1
  br i1 %cond.i.i.i.i.i225.i, label %bb.ek, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i

bb.ek:                                            ; preds = %bb.ej
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i224.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab), !noalias !75806
  %i.pq = ptrtoint ptr %.val1.i.i.i224.i to i64   ; 2 uses
  %i.pr = and i64 %i.pq, 3
  switch i64 %i.pr, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i
    i64 3, label %bb.el
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i
    i64 1, label %bb.em
  ], !prof !222

bb.el:                                            ; preds = %bb.ek
  %i.ps = icmp ult ptr %.val1.i.i.i224.i, inttoptr (i64 188978561024 to ptr)
  %i.pt = and i64 %i.pq, 1095216660480
  %i.pu = icmp ne i64 %i.pt, 1095216660480
  call void @llvm.assume(i1 %i.ps)
  call void @llvm.assume(i1 %i.pu)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i

bb.em:                                            ; preds = %bb.ek
  %i.pv = getelementptr i8, ptr %.val1.i.i.i224.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.pv) ]
  %i.pw = getelementptr inbounds nuw i8, ptr %i.ab, i64 8 ; 2 uses
  store ptr %i.pv, ptr %i.pw, align 8, !alias.scope !75807, !noalias !75806
  store i8 3, ptr %i.ab, align 8, !alias.scope !75807, !noalias !75806
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.pw) #53, !noalias !75808
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i: ; preds = %bb.em, %bb.el, %bb.ek, %bb.ek
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab), !noalias !75806
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i226.i, %bb.ej, %bb.ei, %bb.eh, %bb.eg
  %i.px = icmp eq i64 %i.nd, 2
  br i1 %i.px, label %bb.en, label %.thread1181.i

bb.en:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3663.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12636.i)
  %i.py = getelementptr i8, ptr %1, i64 512
  %.val105.i = load i64, ptr %i.py, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.pz = icmp eq i64 %.val105.i, 0
  br i1 %i.pz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit230.i, label %bb.eo

bb.eo:                                            ; preds = %bb.en
  %i.qa = getelementptr inbounds nuw i8, ptr %1, i64 496
  %.val104.i = load ptr, ptr %i.qa, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.qb = shl nuw i64 %.val105.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val104.i, i64 noundef %i.qb, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75809
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit230.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit230.i: ; preds = %bb.eo, %bb.en
  %i.qc = getelementptr inbounds nuw i8, ptr %1, i64 112
  call void @llvm.experimental.noalias.scope.decl(metadata !75810)
  %i.qd = getelementptr inbounds nuw i8, ptr %1, i64 144 ; 2 uses
  %i.qe = load i64, ptr %i.qd, align 8, !range !236, !alias.scope !75810, !noalias !75703, !noundef !178 ; 2 uses
  %i.qf = icmp eq i64 %i.qe, -1
  br i1 %i.qf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i, label %bb.ep

bb.ep:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit230.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75811)
  %.not.i.i231.i = icmp eq i64 %i.qe, 2
  br i1 %.not.i.i231.i, label %bb.er, label %bb.eq

bb.eq:                                            ; preds = %bb.ep
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.qd) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

bb.er:                                            ; preds = %bb.ep
  call void @llvm.experimental.noalias.scope.decl(metadata !75812)
  %.val.i.i.i232.i = load ptr, ptr %i.qc, align 8, !alias.scope !75813, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !75814
  %i.qg = ptrtoint ptr %.val.i.i.i232.i to i64    ; 2 uses
  %i.qh = and i64 %i.qg, 3
  switch i64 %i.qh, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i233.i
    i64 3, label %bb.es
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i233.i
    i64 1, label %bb.et
  ], !prof !222

bb.es:                                            ; preds = %bb.er
  %i.qi = icmp ult ptr %.val.i.i.i232.i, inttoptr (i64 188978561024 to ptr)
  %i.qj = and i64 %i.qg, 1095216660480
  %i.qk = icmp ne i64 %i.qj, 1095216660480
  call void @llvm.assume(i1 %i.qi)
  call void @llvm.assume(i1 %i.qk)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i233.i

bb.et:                                            ; preds = %bb.er
  %i.ql = getelementptr i8, ptr %.val.i.i.i232.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ql) ]
  %i.qm = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 2 uses
  store ptr %i.ql, ptr %i.qm, align 8, !alias.scope !75815, !noalias !75814
  store i8 3, ptr %i.aa, align 8, !alias.scope !75815, !noalias !75814
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.qm) #53, !noalias !75816
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i233.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i233.i: ; preds = %bb.et, %bb.es, %bb.er, %bb.er
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa), !noalias !75814
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

.thread1181.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit228.i
  %.sroa.5667.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5667.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5664.i, i64 16, i1 false), !noalias !75703
  %i.qn = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  store i64 %i.nd, ptr %i.qn, align 8, !noalias !75703
  %.sroa.4666.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %.sroa.3663.0.copyload.i, ptr %.sroa.4666.0..sroa_idx.i, align 8, !noalias !75703
  %i.qo = getelementptr inbounds nuw i8, ptr %1, i64 528
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.nc, ptr noundef nonnull align 8 dereferenceable(32) %i.qo, i64 32, i1 false), !noalias !75703
  %.sroa.6674.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.qn, ptr %.sroa.6674.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8676.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  store i8 0, ptr %.sroa.8676.0..sroa_idx.i, align 8, !noalias !75703
  br label %bb.dk

bb.eu:                                            ; preds = %bb.fr, %bb.h
  %i.qp = phi ptr [ %i.il, %bb.fr ], [ %i.cc, %bb.h ] ; 5 uses
  %i.qq = phi ptr [ %i.im, %bb.fr ], [ %i.cb, %bb.h ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at), !noalias !75703
  %i.qr = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.at, ptr noundef nonnull align 8 %i.qr) #61, !noalias !75704
  %i.qs = load i64, ptr %i.at, align 8, !range !236, !noalias !75703, !noundef !178 ; 3 uses
  %i.qt = icmp eq i64 %i.qs, -1
  br i1 %i.qt, label %bb.fu, label %bb.fv

bb.ev:                                            ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12708.i)
  %.phi.trans.insert1112.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 3 uses
  %.pre1113.i = load i8, ptr %.phi.trans.insert1112.i, align 8, !range !233, !noalias !75703
  switch i8 %.pre1113.i, label %bb.ew [
    i8 0, label %._crit_edge162
    i8 1, label %bb.fa
    i8 3, label %bb.ey
  ]

._crit_edge162:                                   ; preds = %bb.ev
  %.phi.trans.insert163 = getelementptr inbounds nuw i8, ptr %1, i64 960
  %.pre164 = load ptr, ptr %.phi.trans.insert163, align 8, !noalias !75703
  br label %bb.ex

bb.ew:                                            ; preds = %bb.ev
  unreachable

bb.ex:                                            ; preds = %._crit_edge162, %.thread1182.i
  %i.qu = phi ptr [ %i.qp, %.thread1182.i ], [ %i.cc, %._crit_edge162 ]
  %i.qv = phi ptr [ %i.qq, %.thread1182.i ], [ %i.cb, %._crit_edge162 ]
  %i.qw = phi ptr [ %i.ur, %.thread1182.i ], [ %.pre164, %._crit_edge162 ]
  %i.qx = phi ptr [ %.sroa.8748.0..sroa_idx.i, %.thread1182.i ], [ %.phi.trans.insert1112.i, %._crit_edge162 ]
  %i.qy = getelementptr inbounds nuw i8, ptr %1, i64 928
  %i.qz = getelementptr inbounds nuw i8, ptr %1, i64 968
  store ptr %i.qw, ptr %i.qz, align 8, !noalias !75703, !captures !231
  %i.ra = getelementptr inbounds nuw i8, ptr %1, i64 976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ra, ptr noundef nonnull align 8 dereferenceable(32) %i.qy, i64 32, i1 false), !noalias !75703
  br label %bb.ey

bb.ey:                                            ; preds = %bb.ex, %bb.ev
  %i.rb = phi ptr [ %i.cc, %bb.ev ], [ %i.qu, %bb.ex ] ; 2 uses
  %i.rc = phi ptr [ %i.cb, %bb.ev ], [ %i.qv, %bb.ex ] ; 2 uses
  %i.rd = phi ptr [ %.phi.trans.insert1112.i, %bb.ev ], [ %i.qx, %bb.ex ] ; 2 uses
end_hunk_2
begin_hunk_3_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.rk = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 32) #60, !noalias !75704
  br label %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit254.i

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit254.i: ; preds = %bb.fc, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i249.i, %bb.fb
  %.sroa.05.0.i251.i = phi ptr [ %i.rj, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i249.i ], [ %i.rk, %bb.fc ], [ %.sroa.6.sroa.5.0.copyload.i241.i, %bb.fb ]
  store i8 1, ptr %i.rd, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !75703
  %i.rl = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.rl, i64 32, i1 false), !noalias !75703
  call void @llvm.experimental.noalias.scope.decl(metadata !75824)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.as) #53, !noalias !75825
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !75703
  br label %bb.fd

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit261.thread.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i249.i
  store i8 1, ptr %i.rd, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as), !noalias !75703
  %i.rm = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.as, ptr noundef nonnull align 8 dereferenceable(32) %i.rm, i64 32, i1 false), !noalias !75703
  %.sroa.0710.0.copyload711.i = load i64, ptr %i.as, align 8, !alias.scope !75826, !noalias !75703 ; 3 uses
  %.sroa.12712.0..sroa_idx713.i = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %.sroa.12712.0.copyload714.i = load ptr, ptr %.sroa.12712.0..sroa_idx713.i, align 8, !alias.scope !75826, !noalias !75703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as), !noalias !75703
  %i.rn = icmp eq i64 %.sroa.0710.0.copyload711.i, 2
  br i1 %i.rn, label %bb.fd, label %bb.fj

bb.fd:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit261.thread.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit254.i
  %.sroa.12712.01048.i = phi ptr [ %.sroa.05.0.i251.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit254.i ], [ %.sroa.12712.0.copyload714.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit261.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12712.01048.i) ]
  %i.ro = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75827)
  %i.rp = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.rq = load i64, ptr %i.rp, align 8, !range !236, !alias.scope !75827, !noalias !75703, !noundef !178 ; 2 uses
  %i.rr = icmp eq i64 %i.rq, -1
  br i1 %i.rr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit267.i, label %bb.fe

bb.fe:                                            ; preds = %bb.fd
  call void @llvm.experimental.noalias.scope.decl(metadata !75828)
  %.not.i.i263.i = icmp eq i64 %i.rq, 2
  br i1 %.not.i.i263.i, label %bb.fg, label %bb.ff

bb.ff:                                            ; preds = %bb.fe
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.rp) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit267.i

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.experimental.noalias.scope.decl(metadata !75829)
  %.val.i.i.i264.i = load ptr, ptr %i.ro, align 8, !alias.scope !75830, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !75831
  %i.rs = ptrtoint ptr %.val.i.i.i264.i to i64    ; 2 uses
  %i.rt = and i64 %i.rs, 3
  switch i64 %i.rt, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i
    i64 3, label %bb.fh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i
    i64 1, label %bb.fi
  ], !prof !222

bb.fh:                                            ; preds = %bb.fg
  %i.ru = icmp ult ptr %.val.i.i.i264.i, inttoptr (i64 188978561024 to ptr)
  %i.rv = and i64 %i.rs, 1095216660480
  %i.rw = icmp ne i64 %i.rv, 1095216660480
  call void @llvm.assume(i1 %i.ru)
  call void @llvm.assume(i1 %i.rw)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i

bb.fi:                                            ; preds = %bb.fg
  %i.rx = getelementptr i8, ptr %.val.i.i.i264.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.rx) ]
  %i.ry = getelementptr inbounds nuw i8, ptr %i.y, i64 8 ; 2 uses
  store ptr %i.rx, ptr %i.ry, align 8, !alias.scope !75832, !noalias !75831
  store i8 3, ptr %i.y, align 8, !alias.scope !75832, !noalias !75831
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ry) #53, !noalias !75833
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i: ; preds = %bb.fi, %bb.fh, %bb.fg, %bb.fg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !75831
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit267.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit267.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i265.i, %bb.ff, %bb.fd
  store ptr %.sroa.12712.01048.i, ptr %i.ro, align 8, !noalias !75703
  store i64 2, ptr %i.rp, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i)
  %.phi.trans.insert1108.i = getelementptr inbounds nuw i8, ptr %1, i64 584
  %.pre1109.i = load ptr, ptr %.phi.trans.insert1108.i, align 8, !alias.scope !75731, !noalias !75732
  %.phi.trans.insert1110.i = getelementptr inbounds nuw i8, ptr %1, i64 568
  %.pre1111.i = load ptr, ptr %.phi.trans.insert1110.i, align 8, !alias.scope !75731, !noalias !75732
  br label %bb.bn

bb.fj:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit261.thread.i
  %i.rz = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6764.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.i, ptr noundef nonnull align 8 dereferenceable(16) %i.rz, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0761.i)
  %i.sa = getelementptr inbounds nuw i8, ptr %1, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0761.i, ptr noundef nonnull align 8 dereferenceable(32) %i.sa, i64 32, i1 false), !noalias !75703
  %i.sb = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75834)
  %i.sc = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 3 uses
  %i.sd = load i64, ptr %i.sc, align 8, !range !236, !alias.scope !75834, !noalias !75703, !noundef !178 ; 2 uses
  %i.se = icmp eq i64 %i.sd, -1
  br i1 %i.se, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i, label %bb.fk

bb.fk:                                            ; preds = %bb.fj
  call void @llvm.experimental.noalias.scope.decl(metadata !75835)
  %.not.i.i268.i = icmp eq i64 %i.sd, 2
  br i1 %.not.i.i268.i, label %bb.fm, label %bb.fl

bb.fl:                                            ; preds = %bb.fk
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.sc) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i

bb.fm:                                            ; preds = %bb.fk
  call void @llvm.experimental.noalias.scope.decl(metadata !75836)
  %.val.i.i.i269.i = load ptr, ptr %i.sb, align 8, !alias.scope !75837, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !75838
  %i.sf = ptrtoint ptr %.val.i.i.i269.i to i64    ; 2 uses
  %i.sg = and i64 %i.sf, 3
  switch i64 %i.sg, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i
    i64 3, label %bb.fn
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i
    i64 1, label %bb.fo
  ], !prof !222

bb.fn:                                            ; preds = %bb.fm
  %i.sh = icmp ult ptr %.val.i.i.i269.i, inttoptr (i64 188978561024 to ptr)
  %i.si = and i64 %i.sf, 1095216660480
  %i.sj = icmp ne i64 %i.si, 1095216660480
  call void @llvm.assume(i1 %i.sh)
  call void @llvm.assume(i1 %i.sj)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i

bb.fo:                                            ; preds = %bb.fm
  %i.sk = getelementptr i8, ptr %.val.i.i.i269.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.sk) ]
  %i.sl = getelementptr inbounds nuw i8, ptr %i.x, i64 8 ; 2 uses
  store ptr %i.sk, ptr %i.sl, align 8, !alias.scope !75839, !noalias !75838
  store i8 3, ptr %i.x, align 8, !alias.scope !75839, !noalias !75838
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.sl) #53, !noalias !75840
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i: ; preds = %bb.fo, %bb.fn, %bb.fm, %bb.fm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !75838
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i270.i, %bb.fl, %bb.fj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.sb, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0761.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0710.0.copyload711.i, ptr %i.sc, align 8, !noalias !75703
  %.sroa.5763.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  store ptr %.sroa.12712.0.copyload714.i, ptr %.sroa.5763.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6764.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 224
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6764.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0761.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6764.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.i, %bb.bn
  %i.sm = phi ptr [ %i.il, %bb.bn ], [ %i.rb, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i ], [ %i.il, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.i ] ; 2 uses
  %i.sn = phi ptr [ %i.im, %bb.bn ], [ %i.rc, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i ], [ %i.im, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.i ] ; 2 uses
  %.sroa.4766.0.copyload1115.i = phi i64 [ %.sroa.4766.0.copyload1116.i, %bb.bn ], [ %.sroa.0710.0.copyload711.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit272.i ], [ %.sroa.4766.0.copyload1116.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i)
  %i.so = getelementptr i8, ptr %1, i64 576
  %.val103.i = load i64, ptr %i.so, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.sp = icmp eq i64 %.val103.i, 0
  br i1 %i.sp, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit273.i, label %bb.fp

bb.fp:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.thread.i
  %i.sq = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val102.i = load ptr, ptr %i.sq, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.sr = shl nuw i64 %.val103.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val102.i, i64 noundef %i.sr, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75841
  %.sroa.4766.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %.sroa.4766.0.copyload.pre.i = load i64, ptr %.sroa.4766.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit273.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit273.i: ; preds = %bb.fp, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.thread.i
  %.sroa.4766.0.copyload.i = phi i64 [ %.sroa.4766.0.copyload1115.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.thread.i ], [ %.sroa.4766.0.copyload.pre.i, %bb.fp ] ; 3 uses
  %i.ss = getelementptr inbounds nuw i8, ptr %1, i64 176
  %.sroa.0765.sroa.0.0.copyload.i = load ptr, ptr %i.ss, align 8, !noalias !75703 ; 3 uses
  %.not.i274.i = icmp eq i64 %.sroa.4766.0.copyload.i, -1
  br i1 %.not.i274.i, label %bb.fq, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i, !prof !187

bb.fq:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit273.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75842
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit273.i
  %.sroa.5769.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.st = load <2 x ptr>, ptr %.sroa.5769.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5769.sroa.4.0..sroa.5769.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 232
  %.sroa.19.sroa.7.i.sroa.9.0.copyload86 = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5769.sroa.4.0..sroa.5769.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  %i.su = icmp eq i64 %.sroa.4766.0.copyload.i, 2
  br i1 %i.su, label %bb.fs, label %bb.cr

bb.fr:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit147.i
  %i.sv = getelementptr inbounds nuw i8, ptr %1, i64 592
  store i16 %.sroa.0706.0.copyload707.i, ptr %i.sv, align 8, !noalias !75703
  %.sroa.12708.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 594
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12708.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12708.i, i64 30, i1 false), !noalias !75703
  %7 = trunc nuw i16 %.sroa.0706.0.copyload707.i to i8
  %i.sw = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.sx = load ptr, ptr %i.sw, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %8 = and i8 %7, 1
  %.sroa.7730.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.sx, ptr %.sroa.7730.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8731.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8731.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9732.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %8, ptr %.sroa.9732.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.eu

bb.fs:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit275.i
  %i.sy = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0765.sroa.0.0.copyload.i) ]
  store ptr %.sroa.0765.sroa.0.0.copyload.i, ptr %i.sy, align 8, !noalias !75703
  %i.sz = getelementptr inbounds nuw i8, ptr %1, i64 272
  store i64 -1, ptr %i.sz, align 8, !noalias !75703
  %i.ta = getelementptr inbounds nuw i8, ptr %1, i64 922
  store i8 0, ptr %i.ta, align 2, !noalias !75703
  %i.tb = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.sroa.0775.0.copyload.i = load i64, ptr %i.tb, align 8, !noalias !75703
  %.sroa.4776.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 840
  %.sroa.4776.0.copyload.i = load ptr, ptr %.sroa.4776.0..sroa_idx.i, align 8, !noalias !75703, !nonnull !178, !noundef !178 ; 4 uses
  %.sroa.5777.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 848
  %.sroa.5777.0.copyload.i = load i64, ptr %.sroa.5777.0..sroa_idx.i, align 8, !noalias !75703 ; 2 uses
  %i.tc = icmp ult i64 %.sroa.5777.0.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.tc)
  %i.td = getelementptr inbounds nuw [32 x i8], ptr %.sroa.4776.0.copyload.i, i64 %.sroa.5777.0.copyload.i ; 2 uses
  %i.te = getelementptr inbounds nuw i8, ptr %1, i64 624
  store ptr %.sroa.4776.0.copyload.i, ptr %i.te, align 8, !noalias !75703
  %.sroa.9772.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  store ptr %.sroa.4776.0.copyload.i, ptr %.sroa.9772.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.10773.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 640
  store i64 %.sroa.0775.0.copyload.i, ptr %.sroa.10773.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.11774.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  store ptr %i.td, ptr %.sroa.11774.0..sroa_idx.i, align 8, !noalias !75703
  br label %bb.ft

bb.ft:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i, %bb.fs
  %i.tf = phi ptr [ %i.vf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i ], [ %i.sm, %bb.fs ] ; 3 uses
  %i.tg = phi ptr [ %i.vg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i ], [ %i.sn, %bb.fs ] ; 3 uses
  %.sroa.4838.0.copyload1125.i = phi i64 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i ], [ -1, %bb.fs ] ; 2 uses
  %i.th = phi ptr [ %.pre1120.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i ], [ %.sroa.4776.0.copyload.i, %bb.fs ] ; 4 uses
  %i.ti = phi ptr [ %.pre1118.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i ], [ %i.td, %bb.fs ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12780.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !75843)
  %i.tj = icmp eq ptr %i.th, %i.ti
  br i1 %i.tj, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i: ; preds = %bb.ft
  %i.tk = getelementptr inbounds nuw i8, ptr %1, i64 632
  %i.tl = getelementptr inbounds nuw i8, ptr %i.th, i64 32
  store ptr %i.tl, ptr %i.tk, align 8, !alias.scope !75843, !noalias !75844
  %.sroa.0778.0.copyload779.i = load i16, ptr %i.th, align 4, !noalias !75845 ; 3 uses
  %.sroa.12780.0..sroa_idx781.i = getelementptr inbounds nuw i8, ptr %i.th, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.0..sroa_idx781.i, i64 30, i1 false), !noalias !75845
  %.not80.i = icmp eq i16 %.sroa.0778.0.copyload779.i, 2
  br i1 %.not80.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i, label %bb.hi

bb.fu:                                            ; preds = %bb.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.fv:                                            ; preds = %bb.eu
  %.sroa.3735.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  %.sroa.3735.0.copyload.i = load ptr, ptr %.sroa.3735.0..sroa_idx.i, align 8, !noalias !75703 ; 5 uses
  %.sroa.5736.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.at), !noalias !75703
  %i.tm = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.tn = load i8, ptr %i.tm, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i282.i = icmp eq i8 %i.tn, 3
  br i1 %cond.i282.i, label %bb.fw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i

bb.fw:                                            ; preds = %bb.fv
  %i.to = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.tp = load i8, ptr %i.to, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i283.i = icmp eq i8 %i.tp, 3
  br i1 %cond.i.i283.i, label %bb.fx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i

bb.fx:                                            ; preds = %bb.fw
  %i.tq = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.tr = load i8, ptr %i.tq, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i284.i = icmp eq i8 %i.tr, 3
  br i1 %cond.i.i.i284.i, label %bb.fy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i

bb.fy:                                            ; preds = %bb.fx
  %i.ts = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i285.i = load i16, ptr %i.ts, align 8, !range !232, !noalias !75703, !noundef !178
  %i.tt = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i286.i = load ptr, ptr %i.tt, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i287.i = icmp eq i16 %.val.i.i.i285.i, -1
  br i1 %cond.i.i.i.i.i287.i, label %bb.fz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i

bb.fz:                                            ; preds = %bb.fy
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i286.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !75846
  %i.tu = ptrtoint ptr %.val1.i.i.i286.i to i64   ; 2 uses
  %i.tv = and i64 %i.tu, 3
  switch i64 %i.tv, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i
    i64 3, label %bb.ga
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i
    i64 1, label %bb.gb
  ], !prof !222

bb.ga:                                            ; preds = %bb.fz
  %i.tw = icmp ult ptr %.val1.i.i.i286.i, inttoptr (i64 188978561024 to ptr)
  %i.tx = and i64 %i.tu, 1095216660480
  %i.ty = icmp ne i64 %i.tx, 1095216660480
  call void @llvm.assume(i1 %i.tw)
  call void @llvm.assume(i1 %i.ty)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i

bb.gb:                                            ; preds = %bb.fz
  %i.tz = getelementptr i8, ptr %.val1.i.i.i286.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.tz) ]
  %i.ua = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 2 uses
  store ptr %i.tz, ptr %i.ua, align 8, !alias.scope !75847, !noalias !75846
  store i8 3, ptr %i.w, align 8, !alias.scope !75847, !noalias !75846
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ua) #53, !noalias !75848
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i: ; preds = %bb.gb, %bb.ga, %bb.fz, %bb.fz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !75846
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i288.i, %bb.fy, %bb.fx, %bb.fw, %bb.fv
  %i.ub = icmp eq i64 %i.qs, 2
  br i1 %i.ub, label %bb.gc, label %.thread1182.i

bb.gc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3735.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12708.i)
  %i.uc = getelementptr i8, ptr %1, i64 576
  %.val101.i = load i64, ptr %i.uc, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.ud = icmp eq i64 %.val101.i, 0
  br i1 %i.ud, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit292.i, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.ue = getelementptr inbounds nuw i8, ptr %1, i64 560
  %.val100.i = load ptr, ptr %i.ue, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.uf = shl nuw i64 %.val101.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val100.i, i64 noundef %i.uf, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75849
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit292.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit292.i: ; preds = %bb.gd, %bb.gc
  %i.ug = getelementptr inbounds nuw i8, ptr %1, i64 176
  call void @llvm.experimental.noalias.scope.decl(metadata !75850)
  %i.uh = getelementptr inbounds nuw i8, ptr %1, i64 208 ; 2 uses
  %i.ui = load i64, ptr %i.uh, align 8, !range !236, !alias.scope !75850, !noalias !75703, !noundef !178 ; 2 uses
  %i.uj = icmp eq i64 %i.ui, -1
  br i1 %i.uj, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i, label %bb.ge

bb.ge:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit292.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75851)
  %.not.i.i293.i = icmp eq i64 %i.ui, 2
  br i1 %.not.i.i293.i, label %bb.gg, label %bb.gf

bb.gf:                                            ; preds = %bb.ge
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.uh) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

bb.gg:                                            ; preds = %bb.ge
  call void @llvm.experimental.noalias.scope.decl(metadata !75852)
  %.val.i.i.i294.i = load ptr, ptr %i.ug, align 8, !alias.scope !75853, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !75854
  %i.uk = ptrtoint ptr %.val.i.i.i294.i to i64    ; 2 uses
  %i.ul = and i64 %i.uk, 3
  switch i64 %i.ul, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i295.i
    i64 3, label %bb.gh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i295.i
    i64 1, label %bb.gi
  ], !prof !222

bb.gh:                                            ; preds = %bb.gg
  %i.um = icmp ult ptr %.val.i.i.i294.i, inttoptr (i64 188978561024 to ptr)
  %i.un = and i64 %i.uk, 1095216660480
  %i.uo = icmp ne i64 %i.un, 1095216660480
  call void @llvm.assume(i1 %i.um)
  call void @llvm.assume(i1 %i.uo)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i295.i

bb.gi:                                            ; preds = %bb.gg
  %i.up = getelementptr i8, ptr %.val.i.i.i294.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.up) ]
  %i.uq = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  store ptr %i.up, ptr %i.uq, align 8, !alias.scope !75855, !noalias !75854
  store i8 3, ptr %i.v, align 8, !alias.scope !75855, !noalias !75854
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.uq) #53, !noalias !75856
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i295.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i295.i: ; preds = %bb.gi, %bb.gh, %bb.gg, %bb.gg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !75854
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

.thread1182.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit290.i
  %.sroa.5739.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5739.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5736.i, i64 16, i1 false), !noalias !75703
  %i.ur = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  store i64 %i.qs, ptr %i.ur, align 8, !noalias !75703
  %.sroa.4738.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %.sroa.3735.0.copyload.i, ptr %.sroa.4738.0..sroa_idx.i, align 8, !noalias !75703
  %i.us = getelementptr inbounds nuw i8, ptr %1, i64 592
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.qr, ptr noundef nonnull align 8 dereferenceable(32) %i.us, i64 32, i1 false), !noalias !75703
  %.sroa.6746.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.ur, ptr %.sroa.6746.0..sroa_idx.i, align 8, !noalias !75703
end_hunk_3
begin_hunk_4_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a

bb.gt:                                            ; preds = %bb.gs
  call void @llvm.experimental.noalias.scope.decl(metadata !75868)
  %.not.i.i325.i = icmp eq i64 %i.vu, 2
  br i1 %.not.i.i325.i, label %bb.gv, label %bb.gu

bb.gu:                                            ; preds = %bb.gt
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.vt) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i

bb.gv:                                            ; preds = %bb.gt
  call void @llvm.experimental.noalias.scope.decl(metadata !75869)
  %.val.i.i.i326.i = load ptr, ptr %i.vs, align 8, !alias.scope !75870, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !75871
  %i.vw = ptrtoint ptr %.val.i.i.i326.i to i64    ; 2 uses
  %i.vx = and i64 %i.vw, 3
  switch i64 %i.vx, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i
    i64 3, label %bb.gw
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i
    i64 1, label %bb.gx
  ], !prof !222

bb.gw:                                            ; preds = %bb.gv
  %i.vy = icmp ult ptr %.val.i.i.i326.i, inttoptr (i64 188978561024 to ptr)
  %i.vz = and i64 %i.vw, 1095216660480
  %i.wa = icmp ne i64 %i.vz, 1095216660480
  call void @llvm.assume(i1 %i.vy)
  call void @llvm.assume(i1 %i.wa)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i

bb.gx:                                            ; preds = %bb.gv
  %i.wb = getelementptr i8, ptr %.val.i.i.i326.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wb) ]
  %i.wc = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.wb, ptr %i.wc, align 8, !alias.scope !75872, !noalias !75871
  store i8 3, ptr %i.t, align 8, !alias.scope !75872, !noalias !75871
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wc) #53, !noalias !75873
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i: ; preds = %bb.gx, %bb.gw, %bb.gv, %bb.gv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !75871
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit329.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i327.i, %bb.gu, %bb.gs
  store ptr %.sroa.12784.01058.i, ptr %i.vs, align 8, !noalias !75703
  store i64 2, ptr %i.vt, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i)
  %.phi.trans.insert1117.i = getelementptr inbounds nuw i8, ptr %1, i64 648
  %.pre1118.i = load ptr, ptr %.phi.trans.insert1117.i, align 8, !alias.scope !75843, !noalias !75844
  %.phi.trans.insert1119.i = getelementptr inbounds nuw i8, ptr %1, i64 632
  %.pre1120.i = load ptr, ptr %.phi.trans.insert1119.i, align 8, !alias.scope !75843, !noalias !75844
  br label %bb.ft

bb.gy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit323.thread.i
  %i.wd = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6836.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.i, ptr noundef nonnull align 8 dereferenceable(16) %i.wd, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0833.i)
  %i.we = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0833.i, ptr noundef nonnull align 8 dereferenceable(32) %i.we, i64 32, i1 false), !noalias !75703
  %i.wf = getelementptr inbounds nuw i8, ptr %1, i64 240 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75874)
  %i.wg = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 3 uses
  %i.wh = load i64, ptr %i.wg, align 8, !range !236, !alias.scope !75874, !noalias !75703, !noundef !178 ; 2 uses
  %i.wi = icmp eq i64 %i.wh, -1
  br i1 %i.wi, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i, label %bb.gz

bb.gz:                                            ; preds = %bb.gy
  call void @llvm.experimental.noalias.scope.decl(metadata !75875)
  %.not.i.i330.i = icmp eq i64 %i.wh, 2
  br i1 %.not.i.i330.i, label %bb.hb, label %bb.ha

bb.ha:                                            ; preds = %bb.gz
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.wg) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i

bb.hb:                                            ; preds = %bb.gz
  call void @llvm.experimental.noalias.scope.decl(metadata !75876)
  %.val.i.i.i331.i = load ptr, ptr %i.wf, align 8, !alias.scope !75877, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !75878
  %i.wj = ptrtoint ptr %.val.i.i.i331.i to i64    ; 2 uses
  %i.wk = and i64 %i.wj, 3
  switch i64 %i.wk, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i
    i64 3, label %bb.hc
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i
    i64 1, label %bb.hd
  ], !prof !222

bb.hc:                                            ; preds = %bb.hb
  %i.wl = icmp ult ptr %.val.i.i.i331.i, inttoptr (i64 188978561024 to ptr)
  %i.wm = and i64 %i.wj, 1095216660480
  %i.wn = icmp ne i64 %i.wm, 1095216660480
  call void @llvm.assume(i1 %i.wl)
  call void @llvm.assume(i1 %i.wn)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i

bb.hd:                                            ; preds = %bb.hb
  %i.wo = getelementptr i8, ptr %.val.i.i.i331.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wo) ]
  %i.wp = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  store ptr %i.wo, ptr %i.wp, align 8, !alias.scope !75879, !noalias !75878
  store i8 3, ptr %i.s, align 8, !alias.scope !75879, !noalias !75878
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.wp) #53, !noalias !75880
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i: ; preds = %bb.hd, %bb.hc, %bb.hb, %bb.hb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !75878
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i332.i, %bb.ha, %bb.gy
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.wf, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0833.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0782.0.copyload783.i, ptr %i.wg, align 8, !noalias !75703
  %.sroa.5835.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  store ptr %.sroa.12784.0.copyload786.i, ptr %.sroa.5835.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6836.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6836.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0833.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6836.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i, %bb.ft
  %i.wq = phi ptr [ %i.tf, %bb.ft ], [ %i.vf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i ], [ %i.tf, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i ]
  %i.wr = phi ptr [ %i.tg, %bb.ft ], [ %i.vg, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i ], [ %i.tg, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i ]
  %.sroa.4838.0.copyload1124.i = phi i64 [ %.sroa.4838.0.copyload1125.i, %bb.ft ], [ %.sroa.0782.0.copyload783.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit334.i ], [ %.sroa.4838.0.copyload1125.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i)
  %i.ws = getelementptr i8, ptr %1, i64 640
  %.val99.i = load i64, ptr %i.ws, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.wt = icmp eq i64 %.val99.i, 0
  br i1 %i.wt, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit335.i, label %bb.he

bb.he:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i
  %i.wu = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.val98.i = load ptr, ptr %i.wu, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.wv = shl nuw i64 %.val99.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val98.i, i64 noundef %i.wv, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75881
  %.sroa.4838.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 272
  %.sroa.4838.0.copyload.pre.i = load i64, ptr %.sroa.4838.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit335.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit335.i: ; preds = %bb.he, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i
  %.sroa.4838.0.copyload.i = phi i64 [ %.sroa.4838.0.copyload1124.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.thread.i ], [ %.sroa.4838.0.copyload.pre.i, %bb.he ] ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.sroa.0837.sroa.0.0.copyload.i = load ptr, ptr %i.ww, align 8, !noalias !75703
  %.sroa.5841.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 280
  %.sroa.5841.sroa.0.0.copyload.i = load ptr, ptr %.sroa.5841.0..sroa_idx.i, align 8, !noalias !75703
  %.not.i336.i = icmp eq i64 %.sroa.4838.0.copyload.i, -1
  br i1 %.not.i336.i, label %bb.hf, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i, !prof !187

bb.hf:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit335.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75882
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit335.i
  %.sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 288
  %.sroa.19.sroa.7.i.sroa.0.0.copyload80 = load ptr, ptr %.sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 296
  %.sroa.19.sroa.7.i.sroa.9.0.copyload85 = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.5841.sroa.4.0..sroa.5841.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  %i.wx = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !75883)
  %.val.i338.i = load ptr, ptr %i.wx, align 8, !alias.scope !75883, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !75884
  %i.wy = ptrtoint ptr %.val.i338.i to i64        ; 2 uses
  %i.wz = and i64 %i.wy, 3
  switch i64 %i.wz, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 3, label %bb.hg
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i
    i64 1, label %bb.hh
  ], !prof !222

bb.hg:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i
  %i.xa = icmp ult ptr %.val.i338.i, inttoptr (i64 188978561024 to ptr)
  %i.xb = and i64 %i.wy, 1095216660480
  %i.xc = icmp ne i64 %i.xb, 1095216660480
  call void @llvm.assume(i1 %i.xa)
  call void @llvm.assume(i1 %i.xc)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

bb.hh:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i
  %i.xd = getelementptr i8, ptr %.val.i338.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xd) ]
  %i.xe = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 2 uses
  store ptr %i.xd, ptr %i.xe, align 8, !alias.scope !75885, !noalias !75884
  store i8 3, ptr %i.r, align 8, !alias.scope !75885, !noalias !75884
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xe) #53, !noalias !75886
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.hh, %bb.hg, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit337.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !75884
  %i.xf = insertelement <2 x ptr> poison, ptr %.sroa.5841.sroa.0.0.copyload.i, i64 0
  %i.xg = insertelement <2 x ptr> %i.xf, ptr %.sroa.19.sroa.7.i.sroa.0.0.copyload80, i64 1
  br label %bb.cr

bb.hi:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit281.i
  %i.xh = getelementptr inbounds nuw i8, ptr %1, i64 656
  store i16 %.sroa.0778.0.copyload779.i, ptr %i.xh, align 8, !noalias !75703
  %.sroa.12780.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 658
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12780.i, i64 30, i1 false), !noalias !75703
  %9 = trunc nuw i16 %.sroa.0778.0.copyload779.i to i8
  %i.xi = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.xj = load ptr, ptr %i.xi, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %10 = and i8 %9, 1
  %.sroa.7802.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.xj, ptr %.sroa.7802.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8803.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8803.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9804.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %10, ptr %.sroa.9804.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.gj

bb.hj:                                            ; preds = %bb.gj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.hk:                                            ; preds = %bb.gj
  %.sroa.3807.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 8
  %.sroa.3807.0.copyload.i = load ptr, ptr %.sroa.3807.0..sroa_idx.i, align 8, !noalias !75703 ; 3 uses
  %.sroa.5808.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ar, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar), !noalias !75703
  %i.xk = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.xl = load i8, ptr %i.xk, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i340.i = icmp eq i8 %i.xl, 3
  br i1 %cond.i340.i, label %bb.hl, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i

bb.hl:                                            ; preds = %bb.hk
  %i.xm = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.xn = load i8, ptr %i.xm, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i341.i = icmp eq i8 %i.xn, 3
  br i1 %cond.i.i341.i, label %bb.hm, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i

bb.hm:                                            ; preds = %bb.hl
  %i.xo = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.xp = load i8, ptr %i.xo, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i342.i = icmp eq i8 %i.xp, 3
  br i1 %cond.i.i.i342.i, label %bb.hn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i

bb.hn:                                            ; preds = %bb.hm
  %i.xq = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i343.i = load i16, ptr %i.xq, align 8, !range !232, !noalias !75703, !noundef !178
  %i.xr = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i344.i = load ptr, ptr %i.xr, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i345.i = icmp eq i16 %.val.i.i.i343.i, -1
  br i1 %cond.i.i.i.i.i345.i, label %bb.ho, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i

bb.ho:                                            ; preds = %bb.hn
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i344.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !75887
  %i.xs = ptrtoint ptr %.val1.i.i.i344.i to i64   ; 2 uses
  %i.xt = and i64 %i.xs, 3
  switch i64 %i.xt, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i
    i64 3, label %bb.hp
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i
    i64 1, label %bb.hq
  ], !prof !222

bb.hp:                                            ; preds = %bb.ho
  %i.xu = icmp ult ptr %.val1.i.i.i344.i, inttoptr (i64 188978561024 to ptr)
  %i.xv = and i64 %i.xs, 1095216660480
  %i.xw = icmp ne i64 %i.xv, 1095216660480
  call void @llvm.assume(i1 %i.xu)
  call void @llvm.assume(i1 %i.xw)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i

bb.hq:                                            ; preds = %bb.ho
  %i.xx = getelementptr i8, ptr %.val1.i.i.i344.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.xx) ]
  %i.xy = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 2 uses
  store ptr %i.xx, ptr %i.xy, align 8, !alias.scope !75888, !noalias !75887
  store i8 3, ptr %i.q, align 8, !alias.scope !75888, !noalias !75887
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.xy) #53, !noalias !75889
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i: ; preds = %bb.hq, %bb.hp, %bb.ho, %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !75887
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i346.i, %bb.hn, %bb.hm, %bb.hl, %bb.hk
  %i.xz = icmp eq i64 %i.uw, 2
  br i1 %i.xz, label %bb.hr, label %.thread1183.i

bb.hr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3807.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12780.i)
  %i.ya = getelementptr i8, ptr %1, i64 640
  %.val97.i = load i64, ptr %i.ya, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.yb = icmp eq i64 %.val97.i, 0
  br i1 %i.yb, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit350.i, label %bb.hs

bb.hs:                                            ; preds = %bb.hr
  %i.yc = getelementptr inbounds nuw i8, ptr %1, i64 624
  %.val96.i = load ptr, ptr %i.yc, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.yd = shl nuw i64 %.val97.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val96.i, i64 noundef %i.yd, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75890
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit350.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit350.i: ; preds = %bb.hs, %bb.hr
  %i.ye = getelementptr inbounds nuw i8, ptr %1, i64 240
  call void @llvm.experimental.noalias.scope.decl(metadata !75891)
  %i.yf = getelementptr inbounds nuw i8, ptr %1, i64 272 ; 2 uses
  %i.yg = load i64, ptr %i.yf, align 8, !range !236, !alias.scope !75891, !noalias !75703, !noundef !178 ; 2 uses
  %i.yh = icmp eq i64 %i.yg, -1
  br i1 %i.yh, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i, label %bb.ht

bb.ht:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit350.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75892)
  %.not.i.i351.i = icmp eq i64 %i.yg, 2
  br i1 %.not.i.i351.i, label %bb.hv, label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.yf) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i

bb.hv:                                            ; preds = %bb.ht
  call void @llvm.experimental.noalias.scope.decl(metadata !75893)
  %.val.i.i.i352.i = load ptr, ptr %i.ye, align 8, !alias.scope !75894, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !75895
  %i.yi = ptrtoint ptr %.val.i.i.i352.i to i64    ; 2 uses
  %i.yj = and i64 %i.yi, 3
  switch i64 %i.yj, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i
    i64 3, label %bb.hw
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i
    i64 1, label %bb.hx
  ], !prof !222

bb.hw:                                            ; preds = %bb.hv
  %i.yk = icmp ult ptr %.val.i.i.i352.i, inttoptr (i64 188978561024 to ptr)
  %i.yl = and i64 %i.yi, 1095216660480
  %i.ym = icmp ne i64 %i.yl, 1095216660480
  call void @llvm.assume(i1 %i.yk)
  call void @llvm.assume(i1 %i.ym)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i

bb.hx:                                            ; preds = %bb.hv
  %i.yn = getelementptr i8, ptr %.val.i.i.i352.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yn) ]
  %i.yo = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 2 uses
  store ptr %i.yn, ptr %i.yo, align 8, !alias.scope !75896, !noalias !75895
  store i8 3, ptr %i.p, align 8, !alias.scope !75896, !noalias !75895
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yo) #53, !noalias !75897
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i: ; preds = %bb.hx, %bb.hw, %bb.hv, %bb.hv
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !75895
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i353.i, %bb.hu, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit350.i
  %i.yp = getelementptr inbounds nuw i8, ptr %1, i64 880
  call void @llvm.experimental.noalias.scope.decl(metadata !75898)
  %.val.i356.i = load ptr, ptr %i.yp, align 8, !alias.scope !75898, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !75899
  %i.yq = ptrtoint ptr %.val.i356.i to i64        ; 2 uses
  %i.yr = and i64 %i.yq, 3
  switch i64 %i.yr, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit358.i
    i64 3, label %bb.hy
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit358.i
    i64 1, label %bb.hz
  ], !prof !222

bb.hy:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i
  %i.ys = icmp ult ptr %.val.i356.i, inttoptr (i64 188978561024 to ptr)
  %i.yt = and i64 %i.yq, 1095216660480
  %i.yu = icmp ne i64 %i.yt, 1095216660480
  call void @llvm.assume(i1 %i.ys)
  call void @llvm.assume(i1 %i.yu)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit358.i

bb.hz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i
  %i.yv = getelementptr i8, ptr %.val.i356.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yv) ]
  %i.yw = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.yv, ptr %i.yw, align 8, !alias.scope !75900, !noalias !75899
  store i8 3, ptr %i.o, align 8, !alias.scope !75900, !noalias !75899
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.yw) #53, !noalias !75901
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit358.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit358.i: ; preds = %bb.hz, %bb.hy, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit355.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !75899
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

.thread1183.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit348.i
  %.sroa.5811.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5811.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5808.i, i64 16, i1 false), !noalias !75703
  %i.yx = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  store i64 %i.uw, ptr %i.yx, align 8, !noalias !75703
  %.sroa.4810.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %.sroa.3807.0.copyload.i, ptr %.sroa.4810.0..sroa_idx.i, align 8, !noalias !75703
  %i.yy = getelementptr inbounds nuw i8, ptr %1, i64 656
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.uv, ptr noundef nonnull align 8 dereferenceable(32) %i.yy, i64 32, i1 false), !noalias !75703
  %.sroa.6818.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.yx, ptr %.sroa.6818.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8820.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1008 ; 2 uses
  store i8 0, ptr %.sroa.8820.0..sroa_idx.i, align 8, !noalias !75703
  br label %bb.gm

bb.ia:                                            ; preds = %bb.ix, %bb.j
  %i.yz = phi ptr [ %i.ie, %bb.ix ], [ %i.cc, %bb.j ] ; 5 uses
  %i.za = phi ptr [ %i.if, %bb.ix ], [ %i.cb, %bb.j ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !75703
  %i.zb = getelementptr inbounds nuw i8, ptr %1, i64 928 ; 2 uses
  call fastcc void @_RNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0CsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 captures(address) dereferenceable(32) %i.ap, ptr noundef nonnull align 8 %i.zb) #61, !noalias !75704
  %i.zc = load i64, ptr %i.ap, align 8, !range !236, !noalias !75703, !noundef !178 ; 3 uses
  %i.zd = icmp eq i64 %i.zc, -1
  br i1 %i.zd, label %bb.ja, label %bb.jb
end_hunk_4
begin_hunk_5_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a
  %i.zu = call noundef nonnull ptr @_RINvMNtNtCsgCecv3eZDcN_5alloc2io5errorNtNtNtCsf3Ta7LF998c_4core2io5error5Error3newReECs5Xr050g3D4S_3std(i8 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @756, i64 noundef 32) #60, !noalias !75704
  br label %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit377.i

_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit377.i: ; preds = %bb.ii, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i372.i, %bb.ih
  %.sroa.05.0.i374.i = phi ptr [ %i.zt, %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i372.i ], [ %i.zu, %bb.ii ], [ %.sroa.6.sroa.5.0.copyload.i364.i, %bb.ih ]
  store i8 1, ptr %i.zn, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !75703
  %i.zv = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.zv, i64 32, i1 false), !noalias !75703
  call void @llvm.experimental.noalias.scope.decl(metadata !75909)
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ao) #53, !noalias !75910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !75703
  br label %bb.ij

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit384.thread.i: ; preds = %_RNvXs1_NtNtCsczhfDQ1qNkX_5tokio2io12poll_eventedINtB5_11PollEventedNtNtNtCs1fubhH6hfWX_3mio3net3udp9UdpSocketENtNtNtCsf3Ta7LF998c_4core3ops5deref5Deref5derefCsgZAIVb0XKpv_9ssservice.exit.us.i372.i
  store i8 1, ptr %i.zn, align 8, !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !75703
  %i.zw = getelementptr inbounds nuw i8, ptr %1, i64 1016
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ao, ptr noundef nonnull align 8 dereferenceable(32) %i.zw, i64 32, i1 false), !noalias !75703
  %.sroa.0870.0.copyload871.i = load i64, ptr %i.ao, align 8, !alias.scope !75911, !noalias !75703 ; 3 uses
  %.sroa.12872.0..sroa_idx873.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.sroa.12872.0.copyload874.i = load ptr, ptr %.sroa.12872.0..sroa_idx873.i, align 8, !alias.scope !75911, !noalias !75703 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !75703
  %i.zx = icmp eq i64 %.sroa.0870.0.copyload871.i, 2
  br i1 %i.zx, label %bb.ij, label %bb.ip

bb.ij:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit384.thread.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit377.i
  %.sroa.12872.01066.i = phi ptr [ %.sroa.05.0.i374.i, %_RNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtB5_9UdpSocket7connectNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrE0CsgZAIVb0XKpv_9ssservice.exit377.i ], [ %.sroa.12872.0.copyload874.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit384.thread.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.12872.01066.i) ]
  %i.zy = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75912)
  %i.zz = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.aaa = load i64, ptr %i.zz, align 8, !range !236, !alias.scope !75912, !noalias !75703, !noundef !178 ; 2 uses
  %i.aab = icmp eq i64 %i.aaa, -1
  br i1 %i.aab, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit390.i, label %bb.ik

bb.ik:                                            ; preds = %bb.ij
  call void @llvm.experimental.noalias.scope.decl(metadata !75913)
  %.not.i.i386.i = icmp eq i64 %i.aaa, 2
  br i1 %.not.i.i386.i, label %bb.im, label %bb.il

bb.il:                                            ; preds = %bb.ik
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.zz) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit390.i

bb.im:                                            ; preds = %bb.ik
  call void @llvm.experimental.noalias.scope.decl(metadata !75914)
  %.val.i.i.i387.i = load ptr, ptr %i.zy, align 8, !alias.scope !75915, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !75916
  %i.aac = ptrtoint ptr %.val.i.i.i387.i to i64   ; 2 uses
  %i.aad = and i64 %i.aac, 3
  switch i64 %i.aad, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i
    i64 3, label %bb.in
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i
    i64 1, label %bb.io
  ], !prof !222

bb.in:                                            ; preds = %bb.im
  %i.aae = icmp ult ptr %.val.i.i.i387.i, inttoptr (i64 188978561024 to ptr)
  %i.aaf = and i64 %i.aac, 1095216660480
  %i.aag = icmp ne i64 %i.aaf, 1095216660480
  call void @llvm.assume(i1 %i.aae)
  call void @llvm.assume(i1 %i.aag)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i

bb.io:                                            ; preds = %bb.im
  %i.aah = getelementptr i8, ptr %.val.i.i.i387.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aah) ]
  %i.aai = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.aah, ptr %i.aai, align 8, !alias.scope !75917, !noalias !75916
  store i8 3, ptr %i.m, align 8, !alias.scope !75917, !noalias !75916
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aai) #53, !noalias !75918
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i: ; preds = %bb.io, %bb.in, %bb.im, %bb.im
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !75916
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit390.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit390.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i388.i, %bb.il, %bb.ij
  store ptr %.sroa.12872.01066.i, ptr %i.zy, align 8, !noalias !75703
  store i64 2, ptr %i.zz, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i)
  %.phi.trans.insert1090.i = getelementptr inbounds nuw i8, ptr %1, i64 712
  %.pre1091.i = load ptr, ptr %.phi.trans.insert1090.i, align 8, !alias.scope !75728, !noalias !75729
  %.phi.trans.insert1092.i = getelementptr inbounds nuw i8, ptr %1, i64 696
  %.pre1093.i = load ptr, ptr %.phi.trans.insert1092.i, align 8, !alias.scope !75728, !noalias !75729
  br label %bb.bm

bb.ip:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit384.thread.i
  %i.aaj = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6924.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aaj, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0921.i)
  %i.aak = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0921.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aak, i64 32, i1 false), !noalias !75703
  %i.aal = getelementptr inbounds nuw i8, ptr %1, i64 304 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75919)
  %i.aam = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 3 uses
  %i.aan = load i64, ptr %i.aam, align 8, !range !236, !alias.scope !75919, !noalias !75703, !noundef !178 ; 2 uses
  %i.aao = icmp eq i64 %i.aan, -1
  br i1 %i.aao, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i, label %bb.iq

bb.iq:                                            ; preds = %bb.ip
  call void @llvm.experimental.noalias.scope.decl(metadata !75920)
  %.not.i.i391.i = icmp eq i64 %i.aan, 2
  br i1 %.not.i.i391.i, label %bb.is, label %bb.ir

bb.ir:                                            ; preds = %bb.iq
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aam) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i

bb.is:                                            ; preds = %bb.iq
  call void @llvm.experimental.noalias.scope.decl(metadata !75921)
  %.val.i.i.i392.i = load ptr, ptr %i.aal, align 8, !alias.scope !75922, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !75923
  %i.aap = ptrtoint ptr %.val.i.i.i392.i to i64   ; 2 uses
  %i.aaq = and i64 %i.aap, 3
  switch i64 %i.aaq, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i
    i64 3, label %bb.it
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i
    i64 1, label %bb.iu
  ], !prof !222

bb.it:                                            ; preds = %bb.is
  %i.aar = icmp ult ptr %.val.i.i.i392.i, inttoptr (i64 188978561024 to ptr)
  %i.aas = and i64 %i.aap, 1095216660480
  %i.aat = icmp ne i64 %i.aas, 1095216660480
  call void @llvm.assume(i1 %i.aar)
  call void @llvm.assume(i1 %i.aat)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i

bb.iu:                                            ; preds = %bb.is
  %i.aau = getelementptr i8, ptr %.val.i.i.i392.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aau) ]
  %i.aav = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  store ptr %i.aau, ptr %i.aav, align 8, !alias.scope !75924, !noalias !75923
  store i8 3, ptr %i.l, align 8, !alias.scope !75924, !noalias !75923
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aav) #53, !noalias !75925
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i: ; preds = %bb.iu, %bb.it, %bb.is, %bb.is
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !75923
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i393.i, %bb.ir, %bb.ip
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aal, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0921.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0870.0.copyload871.i, ptr %i.aam, align 8, !noalias !75703
  %.sroa.5923.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  store ptr %.sroa.12872.0.copyload874.i, ptr %.sroa.5923.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6924.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 352
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6924.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0921.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6924.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.i, %bb.bm
  %i.aaw = phi ptr [ %i.ie, %bb.bm ], [ %i.zl, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i ], [ %i.ie, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.i ] ; 2 uses
  %i.aax = phi ptr [ %i.if, %bb.bm ], [ %i.zm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i ], [ %i.if, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.i ] ; 2 uses
  %.sroa.5927.0.copyload1097.i = phi i64 [ %.sroa.5927.0.copyload1098.i, %bb.bm ], [ %.sroa.0870.0.copyload871.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit395.i ], [ %.sroa.5927.0.copyload1098.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i)
  %i.aay = getelementptr i8, ptr %1, i64 704
  %.val95.i = load i64, ptr %i.aay, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.aaz = icmp eq i64 %.val95.i, 0
  br i1 %i.aaz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit396.i, label %bb.iv

bb.iv:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.thread.i
  %i.aba = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.val94.i = load ptr, ptr %i.aba, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.abb = shl nuw i64 %.val95.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val94.i, i64 noundef %i.abb, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75926
  %.sroa.5927.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 336
  %.sroa.5927.0.copyload.pre.i = load i64, ptr %.sroa.5927.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit396.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit396.i: ; preds = %bb.iv, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.thread.i
  %.sroa.5927.0.copyload.i = phi i64 [ %.sroa.5927.0.copyload1097.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.thread.i ], [ %.sroa.5927.0.copyload.pre.i, %bb.iv ] ; 3 uses
  %i.abc = getelementptr inbounds nuw i8, ptr %1, i64 304
  %.sroa.0925.0.copyload.i = load ptr, ptr %i.abc, align 8, !noalias !75703 ; 3 uses
  %.not.i397.i = icmp eq i64 %.sroa.5927.0.copyload.i, -1
  br i1 %.not.i397.i, label %bb.iw, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i, !prof !187

bb.iw:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit396.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75927
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit396.i
  %.sroa.7928.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 344
  %i.abd = load <2 x ptr>, ptr %.sroa.7928.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.7928.sroa.4.0..sroa.7928.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 360
  %.sroa.19.sroa.7.i.sroa.9.0.copyload84 = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.7928.sroa.4.0..sroa.7928.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  %i.abe = icmp eq i64 %.sroa.5927.0.copyload.i, 2
  br i1 %i.abe, label %bb.iy, label %bb.cr

bb.ix:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit146.i
  %i.abf = getelementptr inbounds nuw i8, ptr %1, i64 720
  store i16 %.sroa.0866.0.copyload867.i, ptr %i.abf, align 8, !noalias !75703
  %.sroa.12868.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 722
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12868.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12868.i, i64 30, i1 false), !noalias !75703
  %11 = trunc nuw i16 %.sroa.0866.0.copyload867.i to i8
  %i.abg = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.abh = load ptr, ptr %i.abg, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %12 = and i8 %11, 1
  %.sroa.7890.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.abh, ptr %.sroa.7890.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8891.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8891.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9892.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %12, ptr %.sroa.9892.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.ia

bb.iy:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit398.i
  %i.abi = getelementptr inbounds nuw i8, ptr %1, i64 888
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0925.0.copyload.i) ]
  store ptr %.sroa.0925.0.copyload.i, ptr %i.abi, align 8, !noalias !75703
  %i.abj = getelementptr inbounds nuw i8, ptr %1, i64 400
  store i64 -1, ptr %i.abj, align 8, !noalias !75703
  %i.abk = getelementptr inbounds nuw i8, ptr %1, i64 921
  store i8 0, ptr %i.abk, align 1, !noalias !75703
  %i.abl = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.sroa.0933.0.copyload.i = load i64, ptr %i.abl, align 8, !noalias !75703
  %.sroa.4934.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 864
  %.sroa.4934.0.copyload.i = load ptr, ptr %.sroa.4934.0..sroa_idx.i, align 8, !noalias !75703, !nonnull !178, !noundef !178 ; 4 uses
  %.sroa.5935.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 872
  %.sroa.5935.0.copyload.i = load i64, ptr %.sroa.5935.0..sroa_idx.i, align 8, !noalias !75703 ; 2 uses
  %i.abm = icmp ult i64 %.sroa.5935.0.copyload.i, 288230376151711744
  call void @llvm.assume(i1 %i.abm)
  %i.abn = getelementptr inbounds nuw [32 x i8], ptr %.sroa.4934.0.copyload.i, i64 %.sroa.5935.0.copyload.i ; 2 uses
  %i.abo = getelementptr inbounds nuw i8, ptr %1, i64 752
  store ptr %.sroa.4934.0.copyload.i, ptr %i.abo, align 8, !noalias !75703
  %.sroa.9930.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  store ptr %.sroa.4934.0.copyload.i, ptr %.sroa.9930.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.10931.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 768
  store i64 %.sroa.0933.0.copyload.i, ptr %.sroa.10931.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.11932.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  store ptr %i.abn, ptr %.sroa.11932.0..sroa_idx.i, align 8, !noalias !75703
  br label %bb.iz

bb.iz:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i, %bb.iy
  %i.abp = phi ptr [ %i.adp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i ], [ %i.aaw, %bb.iy ] ; 3 uses
  %i.abq = phi ptr [ %i.adq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i ], [ %i.aax, %bb.iy ] ; 3 uses
  %.sroa.5997.0.copyload1107.i = phi i64 [ 2, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i ], [ -1, %bb.iy ] ; 2 uses
  %i.abr = phi ptr [ %.pre1102.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i ], [ %.sroa.4934.0.copyload.i, %bb.iy ] ; 4 uses
  %i.abs = phi ptr [ %.pre1100.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i ], [ %i.abn, %bb.iy ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.12938.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !75928)
  %i.abt = icmp eq ptr %i.abr, %i.abs
  br i1 %i.abt, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i: ; preds = %bb.iz
  %i.abu = getelementptr inbounds nuw i8, ptr %1, i64 760
  %i.abv = getelementptr inbounds nuw i8, ptr %i.abr, i64 32
  store ptr %i.abv, ptr %i.abu, align 8, !alias.scope !75928, !noalias !75929
  %.sroa.0936.0.copyload937.i = load i16, ptr %i.abr, align 4, !noalias !75930 ; 3 uses
  %.sroa.12938.0..sroa_idx939.i = getelementptr inbounds nuw i8, ptr %i.abr, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.0..sroa_idx939.i, i64 30, i1 false), !noalias !75930
  %.not78.i = icmp eq i16 %.sroa.0936.0.copyload937.i, 2
  br i1 %.not78.i, label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i, label %bb.ko

bb.ja:                                            ; preds = %bb.ia
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.jb:                                            ; preds = %bb.ia
  %.sroa.3895.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %.sroa.3895.0.copyload.i = load ptr, ptr %.sroa.3895.0..sroa_idx.i, align 8, !noalias !75703 ; 5 uses
  %.sroa.5896.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !75703
  %i.abw = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.abx = load i8, ptr %i.abw, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i405.i = icmp eq i8 %i.abx, 3
  br i1 %cond.i405.i, label %bb.jc, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i

bb.jc:                                            ; preds = %bb.jb
  %i.aby = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.abz = load i8, ptr %i.aby, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i406.i = icmp eq i8 %i.abz, 3
  br i1 %cond.i.i406.i, label %bb.jd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i

bb.jd:                                            ; preds = %bb.jc
  %i.aca = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.acb = load i8, ptr %i.aca, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i407.i = icmp eq i8 %i.acb, 3
  br i1 %cond.i.i.i407.i, label %bb.je, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i

bb.je:                                            ; preds = %bb.jd
  %i.acc = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i408.i = load i16, ptr %i.acc, align 8, !range !232, !noalias !75703, !noundef !178
  %i.acd = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i409.i = load ptr, ptr %i.acd, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i410.i = icmp eq i16 %.val.i.i.i408.i, -1
  br i1 %cond.i.i.i.i.i410.i, label %bb.jf, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i

bb.jf:                                            ; preds = %bb.je
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i409.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !75931
  %i.ace = ptrtoint ptr %.val1.i.i.i409.i to i64  ; 2 uses
  %i.acf = and i64 %i.ace, 3
  switch i64 %i.acf, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i
    i64 3, label %bb.jg
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i
    i64 1, label %bb.jh
  ], !prof !222

bb.jg:                                            ; preds = %bb.jf
  %i.acg = icmp ult ptr %.val1.i.i.i409.i, inttoptr (i64 188978561024 to ptr)
  %i.ach = and i64 %i.ace, 1095216660480
  %i.aci = icmp ne i64 %i.ach, 1095216660480
  call void @llvm.assume(i1 %i.acg)
  call void @llvm.assume(i1 %i.aci)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i

bb.jh:                                            ; preds = %bb.jf
  %i.acj = getelementptr i8, ptr %.val1.i.i.i409.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acj) ]
  %i.ack = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  store ptr %i.acj, ptr %i.ack, align 8, !alias.scope !75932, !noalias !75931
  store i8 3, ptr %i.k, align 8, !alias.scope !75932, !noalias !75931
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ack) #53, !noalias !75933
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i: ; preds = %bb.jh, %bb.jg, %bb.jf, %bb.jf
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !75931
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i411.i, %bb.je, %bb.jd, %bb.jc, %bb.jb
  %i.acl = icmp eq i64 %i.zc, 2
  br i1 %i.acl, label %bb.ji, label %.thread1184.i

bb.ji:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3895.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12868.i)
  %i.acm = getelementptr i8, ptr %1, i64 704
  %.val93.i = load i64, ptr %i.acm, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.acn = icmp eq i64 %.val93.i, 0
  br i1 %i.acn, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit415.i, label %bb.jj

bb.jj:                                            ; preds = %bb.ji
  %i.aco = getelementptr inbounds nuw i8, ptr %1, i64 688
  %.val92.i = load ptr, ptr %i.aco, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.acp = shl nuw i64 %.val93.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val92.i, i64 noundef %i.acp, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75934
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit415.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit415.i: ; preds = %bb.jj, %bb.ji
  %i.acq = getelementptr inbounds nuw i8, ptr %1, i64 304
  call void @llvm.experimental.noalias.scope.decl(metadata !75935)
  %i.acr = getelementptr inbounds nuw i8, ptr %1, i64 336 ; 2 uses
  %i.acs = load i64, ptr %i.acr, align 8, !range !236, !alias.scope !75935, !noalias !75703, !noundef !178 ; 2 uses
  %i.act = icmp eq i64 %i.acs, -1
  br i1 %i.act, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i, label %bb.jk

bb.jk:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit415.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75936)
  %.not.i.i416.i = icmp eq i64 %i.acs, 2
  br i1 %.not.i.i416.i, label %bb.jm, label %bb.jl

bb.jl:                                            ; preds = %bb.jk
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.acr) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

bb.jm:                                            ; preds = %bb.jk
  call void @llvm.experimental.noalias.scope.decl(metadata !75937)
  %.val.i.i.i417.i = load ptr, ptr %i.acq, align 8, !alias.scope !75938, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !75939
  %i.acu = ptrtoint ptr %.val.i.i.i417.i to i64   ; 2 uses
  %i.acv = and i64 %i.acu, 3
  switch i64 %i.acv, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i418.i
    i64 3, label %bb.jn
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i418.i
    i64 1, label %bb.jo
  ], !prof !222

bb.jn:                                            ; preds = %bb.jm
  %i.acw = icmp ult ptr %.val.i.i.i417.i, inttoptr (i64 188978561024 to ptr)
  %i.acx = and i64 %i.acu, 1095216660480
  %i.acy = icmp ne i64 %i.acx, 1095216660480
  call void @llvm.assume(i1 %i.acw)
  call void @llvm.assume(i1 %i.acy)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i418.i

bb.jo:                                            ; preds = %bb.jm
  %i.acz = getelementptr i8, ptr %.val.i.i.i417.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.acz) ]
  %i.ada = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store ptr %i.acz, ptr %i.ada, align 8, !alias.scope !75940, !noalias !75939
  store i8 3, ptr %i.j, align 8, !alias.scope !75940, !noalias !75939
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ada) #53, !noalias !75941
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i418.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i418.i: ; preds = %bb.jo, %bb.jn, %bb.jm, %bb.jm
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !75939
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit179.i

.thread1184.i:                                    ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit413.i
  %.sroa.5899.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5899.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5896.i, i64 16, i1 false), !noalias !75703
  %i.adb = getelementptr inbounds nuw i8, ptr %1, i64 1016 ; 3 uses
  store i64 %i.zc, ptr %i.adb, align 8, !noalias !75703
  %.sroa.4898.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1024
  store ptr %.sroa.3895.0.copyload.i, ptr %.sroa.4898.0..sroa_idx.i, align 8, !noalias !75703
  %i.adc = getelementptr inbounds nuw i8, ptr %1, i64 720
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.zb, ptr noundef nonnull align 8 dereferenceable(32) %i.adc, i64 32, i1 false), !noalias !75703
  %.sroa.6906.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 960
  store ptr %i.adb, ptr %.sroa.6906.0..sroa_idx.i, align 8, !noalias !75703
end_hunk_5
begin_hunk_6_@_RNCNvMs_NtNtNtCslxdWNweD0x2_11shadowsocks5relay8udprelay12proxy_socketINtB6_11ProxySocketNtNtNtBc_3net3udp9UdpSocketE17connect_with_opts0CsgZAIVb0XKpv_9ssservice:bb.a

bb.jz:                                            ; preds = %bb.jy
  call void @llvm.experimental.noalias.scope.decl(metadata !75953)
  %.not.i.i448.i = icmp eq i64 %i.aee, 2
  br i1 %.not.i.i448.i, label %bb.kb, label %bb.ka

bb.ka:                                            ; preds = %bb.jz
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aed) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i

bb.kb:                                            ; preds = %bb.jz
  call void @llvm.experimental.noalias.scope.decl(metadata !75954)
  %.val.i.i.i449.i = load ptr, ptr %i.aec, align 8, !alias.scope !75955, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !75956
  %i.aeg = ptrtoint ptr %.val.i.i.i449.i to i64   ; 2 uses
  %i.aeh = and i64 %i.aeg, 3
  switch i64 %i.aeh, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i
    i64 3, label %bb.kc
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i
    i64 1, label %bb.kd
  ], !prof !222

bb.kc:                                            ; preds = %bb.kb
  %i.aei = icmp ult ptr %.val.i.i.i449.i, inttoptr (i64 188978561024 to ptr)
  %i.aej = and i64 %i.aeg, 1095216660480
  %i.aek = icmp ne i64 %i.aej, 1095216660480
  call void @llvm.assume(i1 %i.aei)
  call void @llvm.assume(i1 %i.aek)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i

bb.kd:                                            ; preds = %bb.kb
  %i.ael = getelementptr i8, ptr %.val.i.i.i449.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ael) ]
  %i.aem = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store ptr %i.ael, ptr %i.aem, align 8, !alias.scope !75957, !noalias !75956
  store i8 3, ptr %i.h, align 8, !alias.scope !75957, !noalias !75956
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aem) #53, !noalias !75958
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i: ; preds = %bb.kd, %bb.kc, %bb.kb, %bb.kb
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !75956
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit452.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i450.i, %bb.ka, %bb.jy
  store ptr %.sroa.12942.01076.i, ptr %i.aec, align 8, !noalias !75703
  store i64 2, ptr %i.aed, align 8, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i)
  %.phi.trans.insert1099.i = getelementptr inbounds nuw i8, ptr %1, i64 776
  %.pre1100.i = load ptr, ptr %.phi.trans.insert1099.i, align 8, !alias.scope !75928, !noalias !75929
  %.phi.trans.insert1101.i = getelementptr inbounds nuw i8, ptr %1, i64 760
  %.pre1102.i = load ptr, ptr %.phi.trans.insert1101.i, align 8, !alias.scope !75928, !noalias !75929
  br label %bb.iz

bb.ke:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCINvMNtNtCsczhfDQ1qNkX_5tokio3net3udpNtBH_9UdpSocket7connectNtNtNtB4_3net11socket_addr10SocketAddrE0ECsgZAIVb0XKpv_9ssservice.exit446.thread.i
  %i.aen = getelementptr inbounds nuw i8, ptr %1, i64 1032
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6994.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aen, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0991.i)
  %i.aeo = getelementptr inbounds nuw i8, ptr %1, i64 784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0991.i, ptr noundef nonnull align 8 dereferenceable(32) %i.aeo, i64 32, i1 false), !noalias !75703
  %i.aep = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !75959)
  %i.aeq = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 3 uses
  %i.aer = load i64, ptr %i.aeq, align 8, !range !236, !alias.scope !75959, !noalias !75703, !noundef !178 ; 2 uses
  %i.aes = icmp eq i64 %i.aer, -1
  br i1 %i.aes, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i, label %bb.kf

bb.kf:                                            ; preds = %bb.ke
  call void @llvm.experimental.noalias.scope.decl(metadata !75960)
  %.not.i.i453.i = icmp eq i64 %i.aer, 2
  br i1 %.not.i.i453.i, label %bb.kh, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.aeq) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i

bb.kh:                                            ; preds = %bb.kf
  call void @llvm.experimental.noalias.scope.decl(metadata !75961)
  %.val.i.i.i454.i = load ptr, ptr %i.aep, align 8, !alias.scope !75962, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !75963
  %i.aet = ptrtoint ptr %.val.i.i.i454.i to i64   ; 2 uses
  %i.aeu = and i64 %i.aet, 3
  switch i64 %i.aeu, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i
    i64 3, label %bb.ki
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i
    i64 1, label %bb.kj
  ], !prof !222

bb.ki:                                            ; preds = %bb.kh
  %i.aev = icmp ult ptr %.val.i.i.i454.i, inttoptr (i64 188978561024 to ptr)
  %i.aew = and i64 %i.aet, 1095216660480
  %i.aex = icmp ne i64 %i.aew, 1095216660480
  call void @llvm.assume(i1 %i.aev)
  call void @llvm.assume(i1 %i.aex)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i

bb.kj:                                            ; preds = %bb.kh
  %i.aey = getelementptr i8, ptr %.val.i.i.i454.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aey) ]
  %i.aez = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.aey, ptr %i.aez, align 8, !alias.scope !75964, !noalias !75963
  store i8 3, ptr %i.g, align 8, !alias.scope !75964, !noalias !75963
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aez) #53, !noalias !75965
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i: ; preds = %bb.kj, %bb.ki, %bb.kh, %bb.kh
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !75963
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i455.i, %bb.kg, %bb.ke
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.aep, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.0991.i, i64 32, i1 false), !noalias !75703
  store i64 %.sroa.0940.0.copyload941.i, ptr %i.aeq, align 8, !noalias !75703
  %.sroa.5993.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  store ptr %.sroa.12942.0.copyload944.i, ptr %.sroa.5993.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.6994.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6994.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0991.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6994.i)
  br label %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i

_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i, %bb.iz
  %i.afa = phi ptr [ %i.abp, %bb.iz ], [ %i.adp, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i ], [ %i.abp, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i ]
  %i.afb = phi ptr [ %i.abq, %bb.iz ], [ %i.adq, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i ], [ %i.abq, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i ]
  %.sroa.5997.0.copyload1106.i = phi i64 [ %.sroa.5997.0.copyload1107.i, %bb.iz ], [ %.sroa.0940.0.copyload941.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit457.i ], [ %.sroa.5997.0.copyload1107.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i)
  %i.afc = getelementptr i8, ptr %1, i64 768
  %.val91.i = load i64, ptr %i.afc, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.afd = icmp eq i64 %.val91.i, 0
  br i1 %i.afd, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit458.i, label %bb.kk

bb.kk:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i
  %i.afe = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val90.i = load ptr, ptr %i.afe, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.aff = shl nuw i64 %.val91.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val90.i, i64 noundef %i.aff, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75966
  %.sroa.5997.0..sroa_idx.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 400
  %.sroa.5997.0.copyload.pre.i = load i64, ptr %.sroa.5997.0..sroa_idx.phi.trans.insert.i, align 8, !noalias !75703
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit458.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit458.i: ; preds = %bb.kk, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i
  %.sroa.5997.0.copyload.i = phi i64 [ %.sroa.5997.0.copyload1106.i, %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.thread.i ], [ %.sroa.5997.0.copyload.pre.i, %bb.kk ] ; 2 uses
  %i.afg = getelementptr inbounds nuw i8, ptr %1, i64 368
  %.sroa.0995.0.copyload.i = load ptr, ptr %i.afg, align 8, !noalias !75703
  %.sroa.7998.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 408
  %.sroa.7998.sroa.0.0.copyload.i = load ptr, ptr %.sroa.7998.0..sroa_idx.i, align 8, !noalias !75703
  %.not.i459.i = icmp eq i64 %.sroa.5997.0.copyload.i, -1
  br i1 %.not.i459.i, label %bb.kl, label %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i, !prof !187

bb.kl:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit458.i
  call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @653, i64 noundef 22, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @999) #63, !noalias !75967
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit458.i
  %.sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.sroa.19.sroa.7.i.sroa.0.0.copyload = load ptr, ptr %.sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i, align 8, !noalias !75703
  %.sroa.19.sroa.7.i.sroa.9.0..sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.sroa.19.sroa.7.i.sroa.9.0.copyload = load i64, ptr %.sroa.19.sroa.7.i.sroa.9.0..sroa.7998.sroa.4.0..sroa.7998.0..sroa_idx.sroa_idx.i.sroa_idx, align 8, !noalias !75703
  %i.afh = getelementptr inbounds nuw i8, ptr %1, i64 888
  call void @llvm.experimental.noalias.scope.decl(metadata !75968)
  %.val.i461.i = load ptr, ptr %i.afh, align 8, !alias.scope !75968, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !75969
  %i.afi = ptrtoint ptr %.val.i461.i to i64       ; 2 uses
  %i.afj = and i64 %i.afi, 3
  switch i64 %i.afj, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i
    i64 3, label %bb.km
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i
    i64 1, label %bb.kn
  ], !prof !222

bb.km:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i
  %i.afk = icmp ult ptr %.val.i461.i, inttoptr (i64 188978561024 to ptr)
  %i.afl = and i64 %i.afi, 1095216660480
  %i.afm = icmp ne i64 %i.afl, 1095216660480
  call void @llvm.assume(i1 %i.afk)
  call void @llvm.assume(i1 %i.afm)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i

bb.kn:                                            ; preds = %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i
  %i.afn = getelementptr i8, ptr %.val.i461.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.afn) ]
  %i.afo = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.afn, ptr %i.afo, align 8, !alias.scope !75970, !noalias !75969
  store i8 3, ptr %i.f, align 8, !alias.scope !75970, !noalias !75969
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.afo) #53, !noalias !75971
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit463.i: ; preds = %bb.kn, %bb.km, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i, %_RNvMNtCsf3Ta7LF998c_4core6optionINtB2_6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEE6expectCsgZAIVb0XKpv_9ssservice.exit460.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !75969
  %i.afp = insertelement <2 x ptr> poison, ptr %.sroa.7998.sroa.0.0.copyload.i, i64 0
  %i.afq = insertelement <2 x ptr> %i.afp, ptr %.sroa.19.sroa.7.i.sroa.0.0.copyload, i64 1
  br label %bb.cr

bb.ko:                                            ; preds = %_RNvXs4_NtNtCsgCecv3eZDcN_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsf3Ta7LF998c_4core3net11socket_addr10SocketAddrENtNtNtNtB12_4iter6traits8iterator8Iterator4nextCsgZAIVb0XKpv_9ssservice.exit404.i
  %i.afr = getelementptr inbounds nuw i8, ptr %1, i64 784
  store i16 %.sroa.0936.0.copyload937.i, ptr %i.afr, align 8, !noalias !75703
  %.sroa.12938.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 786
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.0..sroa_idx.i, ptr noundef nonnull align 2 dereferenceable(30) %.sroa.12938.i, i64 30, i1 false), !noalias !75703
  %13 = trunc nuw i16 %.sroa.0936.0.copyload937.i to i8
  %i.afs = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.aft = load ptr, ptr %i.afs, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %14 = and i8 %13, 1
  %.sroa.7960.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1040
  store ptr %i.aft, ptr %.sroa.7960.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.8961.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1048
  store i8 0, ptr %.sroa.8961.0..sroa_idx.i, align 8, !noalias !75703
  %.sroa.9962.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 1049
  store i8 %14, ptr %.sroa.9962.0..sroa_idx.i, align 1, !noalias !75703
  br label %bb.jp

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.kq, %bb.kp, %bb.cr
  store i8 0, ptr %i.lr, align 1, !noalias !75703
  %i.afu = getelementptr inbounds nuw i8, ptr %1, i64 922 ; 2 uses
  %i.afv = load i8, ptr %i.afu, align 2, !range !181, !noalias !75703, !noundef !178
  %i.afw = trunc nuw i8 %i.afv to i1
  br i1 %i.afw, label %bb.kr, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i

bb.kp:                                            ; preds = %bb.cr
  %i.afx = getelementptr inbounds nuw i8, ptr %1, i64 856
  %.val86.i = load i64, ptr %i.afx, align 8, !noalias !75703 ; 2 uses
  %i.afy = icmp eq i64 %.val86.i, 0
  br i1 %i.afy, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i, label %bb.kq

bb.kq:                                            ; preds = %bb.kp
  %i.afz = getelementptr i8, ptr %1, i64 864
  %.val87.i = load ptr, ptr %i.afz, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.aga = shl nuw i64 %.val86.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val87.i, i64 noundef %i.aga, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i: ; preds = %bb.ks, %bb.kr, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i
  store i8 0, ptr %i.afu, align 2, !noalias !75703
  %i.agb = icmp eq i64 %.sroa.11853.0.i, 2
  br i1 %i.agb, label %bb.kt, label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread111

_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread111: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i
  %i.agc = getelementptr inbounds nuw i8, ptr %1, i64 816
  %i.agd = load ptr, ptr %i.agc, align 8, !noalias !75703, !nonnull !178, !align !186, !noundef !178
  %i.age = load <2 x i64>, ptr %i.agd, align 8, !noalias !75704
  store i8 1, ptr %i.lo, align 1, !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5966.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5896.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5808.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5736.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5664.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5592.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6542.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5495.i)
  br label %bb.lr

bb.kr:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit.i
  %i.agf = getelementptr inbounds nuw i8, ptr %1, i64 832
  %.val84.i = load i64, ptr %i.agf, align 8, !noalias !75703 ; 2 uses
  %i.agg = icmp eq i64 %.val84.i, 0
  br i1 %i.agg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i, label %bb.ks

bb.ks:                                            ; preds = %bb.kr
  %i.agh = getelementptr i8, ptr %1, i64 840
  %.val85.i = load ptr, ptr %i.agh, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.agi = shl nuw i64 %.val84.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val85.i, i64 noundef %i.agi, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i

bb.kt:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtCsgCecv3eZDcN_5alloc3vec3VecNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit464.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0843.0.i) ]
  br label %.thread

bb.ku:                                            ; preds = %bb.jp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i)
  br label %_RNCNvMNtNtCslxdWNweD0x2_11shadowsocks3net3udpNtB4_9UdpSocket24connect_server_with_opts0CsgZAIVb0XKpv_9ssservice.exit.thread

bb.kv:                                            ; preds = %bb.jp
  %.sroa.3965.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.3965.0.copyload.i = load ptr, ptr %.sroa.3965.0..sroa_idx.i, align 8, !noalias !75703 ; 3 uses
  %.sroa.5966.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5966.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5966.0..sroa_idx.i, i64 16, i1 false), !noalias !75703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !75703
  %i.agj = getelementptr inbounds nuw i8, ptr %1, i64 1048
  %i.agk = load i8, ptr %i.agj, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i465.i = icmp eq i8 %i.agk, 3
  br i1 %cond.i465.i, label %bb.kw, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i

bb.kw:                                            ; preds = %bb.kv
  %i.agl = getelementptr inbounds nuw i8, ptr %1, i64 1033
  %i.agm = load i8, ptr %i.agl, align 1, !range !233, !noalias !75703, !noundef !178
  %cond.i.i466.i = icmp eq i8 %i.agm, 3
  br i1 %cond.i.i466.i, label %bb.kx, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i

bb.kx:                                            ; preds = %bb.kw
  %i.agn = getelementptr inbounds nuw i8, ptr %1, i64 1000
  %i.ago = load i8, ptr %i.agn, align 8, !range !233, !noalias !75703, !noundef !178
  %cond.i.i.i467.i = icmp eq i8 %i.ago, 3
  br i1 %cond.i.i.i467.i, label %bb.ky, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i

bb.ky:                                            ; preds = %bb.kx
  %i.agp = getelementptr inbounds nuw i8, ptr %1, i64 968
  %.val.i.i.i468.i = load i16, ptr %i.agp, align 8, !range !232, !noalias !75703, !noundef !178
  %i.agq = getelementptr i8, ptr %1, i64 976
  %.val1.i.i.i469.i = load ptr, ptr %i.agq, align 8, !noalias !75703 ; 4 uses
  %cond.i.i.i.i.i470.i = icmp eq i16 %.val.i.i.i468.i, -1
  br i1 %cond.i.i.i.i.i470.i, label %bb.kz, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i

bb.kz:                                            ; preds = %bb.ky
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i.i.i469.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !75972
  %i.agr = ptrtoint ptr %.val1.i.i.i469.i to i64  ; 2 uses
  %i.ags = and i64 %i.agr, 3
  switch i64 %i.ags, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i
    i64 3, label %bb.la
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i
    i64 1, label %bb.lb
  ], !prof !222

bb.la:                                            ; preds = %bb.kz
  %i.agt = icmp ult ptr %.val1.i.i.i469.i, inttoptr (i64 188978561024 to ptr)
  %i.agu = and i64 %i.agr, 1095216660480
  %i.agv = icmp ne i64 %i.agu, 1095216660480
  call void @llvm.assume(i1 %i.agt)
  call void @llvm.assume(i1 %i.agv)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i

bb.lb:                                            ; preds = %bb.kz
  %i.agw = getelementptr i8, ptr %.val1.i.i.i469.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.agw) ]
  %i.agx = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store ptr %i.agw, ptr %i.agx, align 8, !alias.scope !75973, !noalias !75972
  store i8 3, ptr %i.e, align 8, !alias.scope !75973, !noalias !75972
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.agx) #53, !noalias !75974
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i: ; preds = %bb.lb, %bb.la, %bb.kz, %bb.kz
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !75972
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i.i.i.i.i471.i, %bb.ky, %bb.kx, %bb.kw, %bb.kv
  %i.agy = icmp eq i64 %i.adg, 2
  br i1 %i.agy, label %bb.lc, label %.thread1185.i

bb.lc:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNCNvNtNtNtNtCslxdWNweD0x2_11shadowsocks3net3sys4unix5linux26create_outbound_udp_socket0ECsgZAIVb0XKpv_9ssservice.exit473.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3965.0.copyload.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12938.i)
  %i.agz = getelementptr i8, ptr %1, i64 768
  %.val89.i = load i64, ptr %i.agz, align 8, !alias.scope !75766, !noalias !75703, !noundef !178 ; 2 uses
  %i.aha = icmp eq i64 %.val89.i, 0
  br i1 %i.aha, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit475.i, label %bb.ld

bb.ld:                                            ; preds = %bb.lc
  %i.ahb = getelementptr inbounds nuw i8, ptr %1, i64 752
  %.val88.i = load ptr, ptr %i.ahb, align 8, !noalias !75703, !nonnull !178, !noundef !178
  %i.ahc = shl nuw i64 %.val89.i, 5
  call void @_RNvCsh0WfaQiVYm0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val88.i, i64 noundef %i.ahc, i64 noundef range(i64 1, -9223372036854775807) 4) #53, !noalias !75975
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit475.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit475.i: ; preds = %bb.ld, %bb.lc
  %i.ahd = getelementptr inbounds nuw i8, ptr %1, i64 368
  call void @llvm.experimental.noalias.scope.decl(metadata !75976)
  %i.ahe = getelementptr inbounds nuw i8, ptr %1, i64 400 ; 2 uses
  %i.ahf = load i64, ptr %i.ahe, align 8, !range !236, !alias.scope !75976, !noalias !75703, !noundef !178 ; 2 uses
  %i.ahg = icmp eq i64 %i.ahf, -1
  br i1 %i.ahg, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit480.i, label %bb.le

bb.le:                                            ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit475.i
  call void @llvm.experimental.noalias.scope.decl(metadata !75977)
  %.not.i.i476.i = icmp eq i64 %i.ahf, 2
  br i1 %.not.i.i476.i, label %bb.lg, label %bb.lf

bb.lf:                                            ; preds = %bb.le
  call fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketECsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef align 8 dereferenceable(32) %i.ahe) #53, !noalias !75704
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit480.i

bb.lg:                                            ; preds = %bb.le
  call void @llvm.experimental.noalias.scope.decl(metadata !75978)
  %.val.i.i.i477.i = load ptr, ptr %i.ahd, align 8, !alias.scope !75979, !noalias !75703, !nonnull !178, !noundef !178 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !75980
  %i.ahh = ptrtoint ptr %.val.i.i.i477.i to i64   ; 2 uses
  %i.ahi = and i64 %i.ahh, 3
  switch i64 %i.ahi, label %default.unreachable [
    i64 2, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i
    i64 3, label %bb.lh
    i64 0, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i
    i64 1, label %bb.li
  ], !prof !222

bb.lh:                                            ; preds = %bb.lg
  %i.ahj = icmp ult ptr %.val.i.i.i477.i, inttoptr (i64 188978561024 to ptr)
  %i.ahk = and i64 %i.ahh, 1095216660480
  %i.ahl = icmp ne i64 %i.ahk, 1095216660480
  call void @llvm.assume(i1 %i.ahj)
  call void @llvm.assume(i1 %i.ahl)
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i

bb.li:                                            ; preds = %bb.lg
  %i.ahm = getelementptr i8, ptr %.val.i.i.i477.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ahm) ]
  %i.ahn = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.ahm, ptr %i.ahn, align 8, !alias.scope !75981, !noalias !75980
  store i8 3, ptr %i.d, align 8, !alias.scope !75981, !noalias !75980
  call void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ahn) #53, !noalias !75982
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i: ; preds = %bb.li, %bb.lh, %bb.lg, %bb.lg
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !75980
  br label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit480.i

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtB4_6result6ResultTNtNtNtB4_3net11socket_addr10SocketAddrNtNtNtCsczhfDQ1qNkX_5tokio3net3udp9UdpSocketENtNtNtB4_2io5error5ErrorEEECsgZAIVb0XKpv_9ssservice.exit480.i: ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECsgZAIVb0XKpv_9ssservice.exit.i.i478.i, %bb.lf, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtCsgCecv3eZDcN_5alloc3vec9into_iter8IntoIterNtNtNtB4_3net11socket_addr10SocketAddrEECsgZAIVb0XKpv_9ssservice.exit475.i
end_hunk_6
