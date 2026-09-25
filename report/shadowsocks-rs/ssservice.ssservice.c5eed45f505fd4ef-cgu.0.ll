Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/shadowsocks-rs/original/ssservice.ssservice.c5eed45f505fd4ef-cgu.0?download=true
inline.NumInlined: 40157
inline.NumDeleted: 17541
loop-unroll.NumCompletelyUnrolled: 94
loop-unroll.NumRuntimeUnrolled: 164
loop-unroll.NumUnrolled: 272
begin_hunk_0_@_RNvXse_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_8NetErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone:bb.a
  %i.h = icmp slt i64 %i.g, 0
  br i1 %i.h, label %bb.m, label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i32, ptr %i.i, align 8, !range !193, !noundef !178 ; 3 uses
  %.not = icmp eq i32 %i.j, 2
  br i1 %.not, label %bb.z, label %bb.n

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8
  %i.n = icmp slt i64 %i.m, 0
  br i1 %i.n, label %bb.ac, label %bb.ab

bb.e:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !178, !noundef !178
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load i64, ptr %i.q, align 8, !noundef !178
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.t, align 8
  br label %bb.k

bb.f:                                             ; preds = %bb.a
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @_RNvXs4_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.u) #53
  br label %bb.k

bb.g:                                             ; preds = %bb.a
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.x = load i8, ptr %i.w, align 1, !range !234, !noundef !178
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.x, ptr %i.y, align 1
  br label %bb.k

bb.h:                                             ; preds = %bb.a
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXs0_NtCs2Z77Vc7pSLS_13hickory_proto5errorNtB5_10ProtoErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.z) #61
  br label %bb.k

bb.i:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !178, !noundef !178 ; 2 uses
  %i.ad = atomicrmw add ptr %i.ac, i64 1 monotonic, align 8
  %i.ae = icmp slt i64 %i.ad, 0
  br i1 %i.ae, label %bb.ae, label %bb.ad

bb.j:                                             ; preds = %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call fastcc void @_RNvXsj_NtCsb28OZjLZAOu_6rustls5errorNtB5_5ErrorNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %i.ag, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.af) #61
  br label %bb.k

bb.k:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.ad, %bb.ab, %bb.aa, %bb.l, %bb.j, %bb.h, %bb.g, %bb.f, %bb.e
  %.sink = phi i8 [ 9, %bb.ad ], [ 3, %bb.ab ], [ 2, %bb.aa ], [ 1, %bb.l ], [ %i.d, %bb.a ], [ 11, %bb.j ], [ %i.d, %bb.a ], [ 8, %bb.h ], [ %i.d, %bb.a ], [ 6, %bb.g ], [ 5, %bb.f ], [ 4, %bb.e ], [ %i.d, %bb.a ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.l:                                             ; preds = %bb.b
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.ah, align 8
  br label %bb.k

bb.m:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106641)
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val.i = load ptr, ptr %i.ai, align 8, !alias.scope !106641, !noalias !106642 ; 3 uses
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !106643
  %i.aj = tail call noalias noundef align 8 dereferenceable_or_null(88) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 88, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !106643 ; 3 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.o, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.o:                                             ; preds = %bb.n
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 88) #62, !noalias !106643
  unreachable

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106644)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !106645
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106646)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106647)
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %.val.i) #61, !noalias !106643
  %i.al = getelementptr inbounds nuw i8, ptr %.val.i, i64 80
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.an = load <4 x i16>, ptr %i.al, align 8, !alias.scope !106648, !noalias !106649
  store <4 x i16> %i.an, ptr %i.am, align 8, !alias.scope !106646, !noalias !106650
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aj, ptr noundef nonnull align 8 dereferenceable(88) %i.c, i64 88, i1 false), !noalias !106645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !106645
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !106641, !noalias !106642, !align !186, !noundef !178 ; 8 uses
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.r, label %bb.p

bb.p:                                             ; preds = %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !106643
  %i.aq = tail call noalias noundef align 8 dereferenceable_or_null(272) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef 272, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !106643 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.q, label %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxINtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata3soa3SOAEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.q:                                             ; preds = %bb.p
  tail call void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 272) #62, !noalias !106643
  unreachable

_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxINtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata3soa3SOAEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106651)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !106652
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106653)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106654)
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(272) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(272) %i.ap) #61, !noalias !106643
  %i.as = getelementptr inbounds nuw i8, ptr %i.ap, i64 264
  %i.at = getelementptr inbounds nuw i8, ptr %i.ap, i64 268
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !106655, !noalias !106656, !noundef !178
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106657
  %i.av = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106658)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106659)
  %i.aw = getelementptr inbounds nuw i8, ptr %i.ap, i64 160
  %i.ax = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 240
  %i.az = getelementptr inbounds nuw i8, ptr %i.ap, i64 256
  %i.ba = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.bb = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 264
  %i.bd = load <2 x i16>, ptr %i.as, align 8, !alias.scope !106655, !noalias !106656
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(184) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(184) %i.av) #61, !noalias !106656
  call fastcc void @_RNvXsn_NtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6domain4nameNtB5_4NameNtNtCsf3Ta7LF998c_4core5clone5Clone5clone(ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %i.ax, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.aw) #61, !noalias !106656
  %i.be = load i32, ptr %i.az, align 8, !alias.scope !106660, !noalias !106661, !noundef !178
  %i.bf = load <4 x i32>, ptr %i.ay, align 8, !alias.scope !106660, !noalias !106661
  store <4 x i32> %i.bf, ptr %i.ba, align 8, !alias.scope !106658, !noalias !106662
  store i32 %i.be, ptr %i.bb, align 8, !alias.scope !106658, !noalias !106662
  store <2 x i16> %i.bd, ptr %i.bc, align 8, !alias.scope !106653, !noalias !106663
  %i.bg = getelementptr inbounds nuw i8, ptr %i.b, i64 268
  store i32 %i.au, ptr %i.bg, align 4, !alias.scope !106653, !noalias !106663
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %i.bh, ptr noundef nonnull align 8 dereferenceable(184) %i.a, i64 184, i1 false), !noalias !106663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !106657
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(272) %i.aq, ptr noundef nonnull align 8 dereferenceable(272) %i.b, i64 272, i1 false), !noalias !106652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !106652
  br label %bb.r

bb.r:                                             ; preds = %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxINtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata3soa3SOAEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i
  %.sroa.0.0.i = phi ptr [ %i.aq, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxINtNtNtCs2Z77Vc7pSLS_13hickory_proto2rr6record6RecordNtNtNtBM_5rdata3soa3SOAEENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i ], [ null, %_RNvXsd_NtCsgCecv3eZDcN_5alloc5boxedINtB5_3BoxNtNtNtCs2Z77Vc7pSLS_13hickory_proto2op5query5QueryENtNtCsf3Ta7LF998c_4core5clone5Clone5cloneCsgZAIVb0XKpv_9ssservice.exit.i ]
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !106641, !noalias !106642, !noundef !178 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.not6.i = icmp eq ptr %i.bj, null
  br i1 %.not6.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bl = atomicrmw add ptr %i.bj, i64 1 monotonic, align 8, !noalias !106643
  %i.bm = icmp slt i64 %i.bl, 0
  br i1 %i.bm, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.u, %bb.r
  %.sroa.5.0.i = phi i64 [ %i.bu, %bb.u ], [ undef, %bb.r ]
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bo = load i32, ptr %i.bn, align 4, !alias.scope !106641, !noalias !106642
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bq = load <2 x i16>, ptr %i.bp, align 8, !alias.scope !106641, !noalias !106642
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !106641, !noalias !106642, !noundef !178 ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.not7.i = icmp eq ptr %i.bs, null
  br i1 %.not7.i, label %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit, label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.bu = load i64, ptr %i.bk, align 8, !alias.scope !106641, !noalias !106642, !noundef !178
  br label %bb.t

bb.v:                                             ; preds = %bb.s
  tail call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.t
  %i.bv = atomicrmw add ptr %i.bs, i64 1 monotonic, align 8, !noalias !106643
  %i.bw = icmp slt i64 %i.bv, 0
  br i1 %i.bw, label %bb.y, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bx = load i64, ptr %i.bt, align 8, !alias.scope !106641, !noalias !106642, !noundef !178
  br label %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit

bb.y:                                             ; preds = %bb.w
  tail call void @llvm.trap()
  unreachable

_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit: ; preds = %bb.t, %bb.x
  %.sroa.55.0.i = phi i64 [ %i.bx, %bb.x ], [ undef, %bb.t ]
  %i.by = trunc nuw i32 %i.j to i1
  %.sroa.53.0.i = select i1 %i.by, i32 %i.bo, i32 undef
  %2 = bitcast i32 %.sroa.53.0.i to <2 x i16>
  br label %bb.aa

bb.z:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 12
  %3 = load <2 x i16>, ptr %i.bz, align 4
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit
  %.sroa.7.sroa.8.0 = phi i64 [ undef, %bb.z ], [ %.sroa.55.0.i, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %.sroa.7.sroa.7.0 = phi ptr [ undef, %bb.z ], [ %i.bs, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %.sroa.7.sroa.6.0 = phi i64 [ undef, %bb.z ], [ %.sroa.5.0.i, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %.sroa.7.sroa.5.0 = phi ptr [ undef, %bb.z ], [ %i.bj, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %.sroa.7.sroa.4.0 = phi ptr [ undef, %bb.z ], [ %.sroa.0.0.i, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %.sroa.7.sroa.0.0 = phi ptr [ undef, %bb.z ], [ %i.aj, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %4 = phi <2 x i16> [ %3, %bb.z ], [ %2, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %i.ca = phi <2 x i16> [ undef, %bb.z ], [ %i.bq, %_RNvXsk_NtCsi1FNhPBS7PW_11hickory_net5errorNtB5_9NoRecordsNtNtCsf3Ta7LF998c_4core5clone5Clone5clone.exit ]
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.j, ptr %i.cb, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 12
  store <2 x i16> %4, ptr %.sroa.5.0..sroa_idx2, align 4
  %.sroa.7.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx6, align 8
  %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.sroa.4.0, ptr %.sroa.7.sroa.4.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.7.sroa.5.0, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %.sroa.7.sroa.7.0, ptr %.sroa.7.sroa.7.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %.sroa.7.sroa.8.0, ptr %.sroa.7.sroa.8.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store <2 x i16> %i.ca, ptr %.sroa.7.sroa.9.0..sroa.7.0..sroa_idx6.sroa_idx, align 8
  br label %bb.k

bb.ab:                                            ; preds = %bb.d
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.l, ptr %i.cc, align 8
  br label %bb.k

bb.ac:                                            ; preds = %bb.d
  tail call void @llvm.trap()
  unreachable

bb.ad:                                            ; preds = %bb.i
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ac, ptr %i.cd, align 8
  br label %bb.k

bb.ae:                                            ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nounwind nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXse_NtNtCs2Z77Vc7pSLS_13hickory_proto2op4ednsNtB5_9EdnsFlagsNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter26debug_struct_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3505, i64 noundef 9, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3506, i64 noundef 9, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @2396, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3507, i64 noundef 1, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @223) #53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RNvXse_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexINtB5_15MutexLockFutureINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8AjStw0eGtC_16hickory_resolver11name_server15ConnectionStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEENtNtNtCsf3Ta7LF998c_4core6future6future6Future4pollCsgZAIVb0XKpv_9ssservice(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %0, ptr nofree readonly captures(address, read_provenance) %.0.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !align !186, !noundef !178 ; 18 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !187

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 3 uses
  %i.d = atomicrmw or ptr %i.c, i64 1 acquire, align 8
  %i.e = and i64 %i.d, 1
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCsf3Ta7LF998c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3508, i64 noundef 39, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3509) #63
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !178
  br label %.sink.split

bb.e:                                             ; preds = %bb.b
  %i.i = cmpxchg ptr %i.b, i32 0, i32 1 acquire monotonic, align 4, !noalias !106675
  %i.j = extractvalue { i32, i1 } %i.i, 1
  br i1 %i.j, label %bb.g, label %bb.f, !prof !192

bb.f:                                             ; preds = %bb.e
  tail call void @_RNvMNtNtNtNtCs5Xr050g3D4S_3std3sys4sync5mutex5futexNtB2_5Mutex14lock_contended(ptr noundef nonnull align 8 %i.b) #53, !noalias !106675
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.k = load atomic i64, ptr @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !106675
  %i.l = and i64 %i.k, 9223372036854775807
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE4lockCsgZAIVb0XKpv_9ssservice.exit, label %bb.h, !prof !192

bb.h:                                             ; preds = %bb.g
  %i.n = tail call noundef zeroext i1 @_RNvNtNtCs5Xr050g3D4S_3std9panicking11panic_count17is_zero_slow_path() #60, !noalias !106675
  %i.o = xor i1 %i.n, true
  %i.p = zext i1 %i.o to i8
  br label %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE4lockCsgZAIVb0XKpv_9ssservice.exit

_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE4lockCsgZAIVb0XKpv_9ssservice.exit: ; preds = %bb.g, %bb.h
  %.sroa.01.0.i.i = phi i8 [ %i.p, %bb.h ], [ 0, %bb.g ] ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 4 ; 2 uses
  %i.r = load atomic i8, ptr %i.q monotonic, align 4, !noalias !106675
  %.not.i.i.not = icmp eq i8 %i.r, 0
  br i1 %.not.i.i.not, label %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit, label %bb.i, !prof !192

bb.i:                                             ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE4lockCsgZAIVb0XKpv_9ssservice.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !106676
  store ptr %i.b, ptr %i.a, align 8, !noalias !106676
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %.sroa.01.0.i.i, ptr %i.s, align 8, !noalias !106676
  call void @_RNvNtCsf3Ta7LF998c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1963, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @1966, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3510) #63, !noalias !106677
  unreachable

_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMs5_NtNtNtCs5Xr050g3D4S_3std4sync6poison5mutexINtB5_5MutexINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE4lockCsgZAIVb0XKpv_9ssservice.exit
  %i.t = trunc nuw i8 %.sroa.01.0.i.i to i1
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !178 ; 4 uses
  %i.w = icmp eq i64 %i.v, -1
  br i1 %i.w, label %bb.k, label %bb.q

.sink.split:                                      ; preds = %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit, %bb.d
  %.sink = phi i64 [ %i.h, %bb.d ], [ %i.bm, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit ]
  tail call fastcc void @_RNvMs3_NtNtCscVsx2cUGvkQ_12futures_util4lock5mutexINtB5_5MutexINtNtCsgCecv3eZDcN_5alloc3vec3VecINtNtCs8AjStw0eGtC_16hickory_resolver11name_server15ConnectionStateNtNtNtCslxdWNweD0x2_11shadowsocks12dns_resolver20hickory_dns_resolver24ShadowDnsRuntimeProviderEEE12remove_wakerCsgZAIVb0XKpv_9ssservice(ptr noundef nonnull align 8 %i.b, i64 noundef %.sink, i1 noundef zeroext false) #53
  store ptr null, ptr %0, align 8
  br label %bb.j

bb.j:                                             ; preds = %.sink.split, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit
  %.sroa.08.0 = phi ptr [ null, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEECsgZAIVb0XKpv_9ssservice.exit ], [ %i.b, %.sink.split ]
  ret ptr %.sroa.08.0

bb.k:                                             ; preds = %_RNvMNtCsf3Ta7LF998c_4core6resultINtB2_6ResultINtNtNtNtCs5Xr050g3D4S_3std4sync6poison5mutex10MutexGuardINtCs1xKDb8L2iy4_4slab4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEEINtBM_11PoisonErrorBH_EE6unwrapCsgZAIVb0XKpv_9ssservice.exit
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.y = load ptr, ptr %.0.val, align 8, !nonnull !178, !align !186, !noundef !178
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !178, !noundef !178
  %i.aa = getelementptr inbounds nuw i8, ptr %.0.val, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !178
  %i.ac = tail call { ptr, ptr } %i.z(ptr noundef %i.ab) #53 ; 2 uses
  %i.ad = extractvalue { ptr, ptr } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { ptr, ptr } %i.ac, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ad) ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  %i.ag = load i64, ptr %i.af, align 8, !noundef !178 ; 9 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !106678)
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 3 uses
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !106678, !noalias !106679, !noundef !178
  %i.aj = add i64 %i.ai, 1
  store i64 %i.aj, ptr %i.ah, align 8, !alias.scope !106678, !noalias !106679
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !106678, !noalias !106679, !noundef !178 ; 3 uses
  %i.am = icmp ult i64 %i.al, 384307168202282326
  tail call void @llvm.assume(i1 %i.am)
  %i.an = icmp eq i64 %i.ag, %i.al
  br i1 %i.an, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.ao = icmp ult i64 %i.ag, %i.al
  br i1 %i.ao, label %bb.o, label %bb.p, !prof !192

bb.m:                                             ; preds = %bb.k
  %i.ap = load i64, ptr %i.x, align 8, !range !180, !alias.scope !106680, !noalias !106681, !noundef !178
  %i.aq = icmp eq i64 %i.ag, %i.ap
  br i1 %i.aq, label %bb.n, label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit.i

bb.n:                                             ; preds = %bb.m
  tail call void @_RNvMs4_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE8grow_oneCs8UFHSMUhzWe_19shadowsocks_service(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.x) #60, !noalias !106681
  br label %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit.i

_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.n, %bb.m
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = load ptr, ptr %i.ar, align 8, !alias.scope !106680, !noalias !106681, !nonnull !178, !noundef !178
  %i.at = getelementptr inbounds nuw [24 x i8], ptr %i.as, i64 %i.ag ; 3 uses
  store i64 1, ptr %i.at, align 8, !noalias !106679
  %.sroa.4.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.ad, ptr %.sroa.4.0..sroa_idx5.i, align 8, !noalias !106679
  %.sroa.5.0..sroa_idx6.i = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx6.i, align 8
  %i.au = add nuw nsw i64 %i.ag, 1                ; 2 uses
  store i64 %i.au, ptr %i.ak, align 8, !alias.scope !106680, !noalias !106681
  store i64 %i.au, ptr %i.af, align 8, !alias.scope !106678, !noalias !106679
  br label %_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE9insert_atCsgZAIVb0XKpv_9ssservice.exit

bb.o:                                             ; preds = %bb.l
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !106678, !noalias !106679, !nonnull !178, !noundef !178
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ag ; 4 uses
  %i.ay = load i64, ptr %i.ax, align 8, !range !182, !noalias !106682, !noundef !178
  %i.az = trunc nuw i64 %i.ay to i1
  br i1 %i.az, label %bb.p, label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEECsgZAIVb0XKpv_9ssservice.exit.i, !prof !187

bb.p:                                             ; preds = %bb.o, %bb.l
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @358, i64 noundef 40, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2223) #63, !noalias !106682
  unreachable

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEECsgZAIVb0XKpv_9ssservice.exit.i: ; preds = %bb.o
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ax, i64 8 ; 2 uses
  %i.bb = load i64, ptr %i.ba, align 8, !noalias !106682, !noundef !178
  store i64 %i.bb, ptr %i.af, align 8, !alias.scope !106678, !noalias !106679
  store i64 1, ptr %i.ax, align 8, !noalias !106682
  store ptr %i.ad, ptr %i.ba, align 8, !noalias !106682
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store ptr %i.ae, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !106678
  br label %_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE9insert_atCsgZAIVb0XKpv_9ssservice.exit

_RNvMs3_Cs1xKDb8L2iy4_4slabINtB5_4SlabNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterE9insert_atCsgZAIVb0XKpv_9ssservice.exit: ; preds = %_RNvMsG_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEE8push_mutCsgZAIVb0XKpv_9ssservice.exit.i, %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueINtCs1xKDb8L2iy4_4slab5EntryNtNtNtCscVsx2cUGvkQ_12futures_util4lock5mutex6WaiterEECsgZAIVb0XKpv_9ssservice.exit.i
  store i64 %i.ag, ptr %i.u, align 8
end_hunk_0
