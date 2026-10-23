Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.03?download=true
inline.NumInlined: 4529
inline.NumDeleted: 1845
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumUnrolled: 5
begin_hunk_0_@_RNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_9DexHeaderNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 120
  store ptr %i.o, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @519, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @519, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @519, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @518, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @519, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @519, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @519, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @519, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @519, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @519, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @519, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.m, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @519, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.b, i64 192
  store ptr %i.n, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 200
  store ptr @519, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 208
  store ptr %i.a, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 216
  store ptr @512, ptr %i.ap, align 8
  %i.aq = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @157, i64 noundef 9, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @520, i64 noundef 14, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 14)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.aq
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor acquire, align 8
  %.not.i = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  br i1 %.not.i, label %._RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit_crit_edge, label %bb.b, !prof !12

._RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit_crit_edge: ; preds = %bb.a
  %.pre = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor, i64 8), align 8, !range !14
  br label %_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs2_NtCs69rhaJXEXoX_9once_cell3impINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE10initializeNCINvMs4_NtB8_4syncINtB2d_8OnceCellBP_E11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB33_10EnrichedIPNtNtBV_12message_full11MessageFull10descriptor0E0NtNvMs4_B2d_IB2o_pE11get_or_init4VoidEB39_(ptr noundef nonnull align 8 @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor)
  %i.b = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor, i64 8), align 8, !range !18, !noundef !6 ; 2 uses
  %.not6.i = icmp ne i64 %i.b, 2
  tail call void @llvm.assume(i1 %.not6.i)
  br label %_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit

_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit: ; preds = %._RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit_crit_edge, %bb.b
  %i.c = phi i64 [ %.pre, %._RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit_crit_edge ], [ %i.b, %bb.b ]
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit
  %i.e = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor, i64 16), align 8, !nonnull !6, !noundef !6
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c, %_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit
  %.sroa.0.0 = phi i64 [ 0, %_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect7message17MessageDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB2E_10EnrichedIPNtNtBW_12message_full11MessageFull10descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2K_.exit ], [ 1, %bb.c ]
  %.sroa.5.0 = load ptr, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor, i64 16), align 8, !nonnull !6, !noundef !6
  %i.h = load i64, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs15_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_10EnrichedIPNtNtCsg2CeFYmfPbl_8protobuf12message_full11MessageFull10descriptor10descriptor, i64 24), align 8, !noundef !6
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.h, ptr %i.j, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs16_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_10EnrichedIPNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvNtNtCsg2CeFYmfPbl_8protobuf11text_format5print3fmt(ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) @523, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs17_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_9ProtoItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr nofree noundef nonnull readonly align 8 captures(none) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !range !7, !noundef !6
  %.not = icmp eq i64 %i.b, -1
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %i.e = icmp eq i64 %i.d, -1                     ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.o, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %i.e, label %bb.e, label %bb.o

bb.d:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.g = load i64, ptr %i.f, align 8, !noundef !6 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.i = load i64, ptr %i.h, align 8, !noundef !6
  %i.j = icmp eq i64 %i.g, %i.i
  br i1 %i.j, label %.split, label %bb.o

.split:                                           ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !6, !noundef !6
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.n, ptr nonnull %i.l, i64 %i.g)
  %i.o = icmp eq i32 %bcmp, 0
  br i1 %i.o, label %bb.e, label %bb.o

bb.e:                                             ; preds = %.split, %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.q = load i64, ptr %i.p, align 8, !range !7, !noundef !6
  %.not7 = icmp eq i64 %i.q, -1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.s = load i64, ptr %i.r, align 8, !range !7, !noundef !6
  %i.t = icmp eq i64 %i.s, -1                     ; 2 uses
  br i1 %.not7, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.o, label %bb.h

bb.g:                                             ; preds = %bb.e
  br i1 %i.t, label %bb.i, label %bb.o

bb.h:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.v = load i64, ptr %i.u, align 8, !noundef !6 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.x = load i64, ptr %i.w, align 8, !noundef !6
  %i.y = icmp eq i64 %i.v, %i.x
  br i1 %i.y, label %.split12, label %bb.o

.split12:                                         ; preds = %bb.h
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6
  %bcmp9 = tail call i32 @bcmp(ptr nonnull %i.ac, ptr nonnull %i.aa, i64 %i.v)
  %i.ad = icmp eq i32 %bcmp9, 0
  br i1 %i.ad, label %bb.i, label %bb.o

bb.i:                                             ; preds = %.split12, %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.af = load i32, ptr %i.ae, align 8, !range !28, !noundef !6
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.ah = trunc nuw i32 %i.af to i1
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aj = load i32, ptr %i.ai, align 8, !range !28, !noundef !6
  %2 = trunc nuw i32 %i.aj to i1                  ; 2 uses
  br i1 %i.ah, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %2, label %.split13, label %bb.o

bb.k:                                             ; preds = %bb.i
  br i1 %2, label %bb.o, label %bb.l

.split13:                                         ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.al = load i32, ptr %i.ag, align 4, !noundef !6
  %i.am = load i32, ptr %i.ak, align 4, !noundef !6
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %bb.o

bb.l:                                             ; preds = %.split13, %bb.k
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !6 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !6
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.m, label %bb.o

bb.m:                                             ; preds = %bb.l
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !nonnull !6, !noundef !6
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !6, !noundef !6
  %i.ax = tail call noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_14SlicePartialEqBC_E17equal_same_lengthCs7gfv9tzbXmh_6yara_x(ptr noundef nonnull %i.aw, ptr noundef nonnull %i.au, i64 noundef %i.ap)
  br i1 %i.ax, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.az = load ptr, ptr %i.ay, align 8, !align !8, !noundef !6 ; 2 uses
  %.not10 = icmp eq ptr %i.az, null               ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bb = load ptr, ptr %i.ba, align 8, !align !8, !noundef !6 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null                 ; 2 uses
  %brmerge = or i1 %.not10, %i.bc
  %.mux = and i1 %.not10, %i.bc
  br i1 %brmerge, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n, %.split13, %.split12, %.split, %bb.c, %bb.g, %bb.k, %bb.m, %bb.b, %bb.d, %bb.f, %bb.h, %bb.j, %bb.l, %bb.p
  %.sroa.0.0.shrunk = phi i1 [ %i.bd, %bb.p ], [ false, %bb.c ], [ false, %.split13 ], [ false, %bb.l ], [ false, %bb.j ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.b ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.g ], [ %.mux, %bb.n ], [ false, %.split ], [ false, %.split12 ]
  ret i1 %.sroa.0.0.shrunk

bb.p:                                             ; preds = %bb.n
  %i.bd = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBb_4hash6random13DefaultHasherEENtNtB1W_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.az, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bb)
  br label %bb.o
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs17_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos4yaraNtB6_11EnumOptionsNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @408, i64 noundef 11, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @518, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @406, i64 noundef 6, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @504, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @513, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvXs18_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetRNtB6_14EnrichedDomainNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load atomic ptr, ptr @_RNvNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance8instance acquire, align 8
  %.not.i.i = icmp eq ptr %i.a, inttoptr (i64 2 to ptr)
  br i1 %.not.i.i, label %_RNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance.exit, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMs2_NtCs69rhaJXEXoX_9once_cell3impINtB6_8OnceCellNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnet14EnrichedDomainE10initializeNCINvMs4_NtB8_4syncINtB2f_8OnceCellBP_E11get_or_initNvMs19_BR_BP_3newE0NtNvMs4_B2f_IB2q_pE11get_or_init4VoidEBX_(ptr noundef nonnull align 8 @_RNvNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance8instance)
  br label %_RNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance.exit

_RNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance.exit: ; preds = %bb.a, %bb.b
  ret ptr getelementptr inbounds nuw (i8, ptr @_RNvNvXs1a_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB8_14EnrichedDomainNtNtCsg2CeFYmfPbl_8protobuf7message7Message16default_instance8instance, i64 8)
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1D_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5vtnetNtB6_7TrackerNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @374, i64 noundef 7, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @159, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @524, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @372, i64 noundef 2, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @524, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @131, i64 noundef 3, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @524, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @513, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @512)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1G_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos7sandboxNtB6_16BehaviourSummaryNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [1088 x i8], align 8              ; 139 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 312
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 408
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 552
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 576
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 600
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 672
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 696
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 720
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 744
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 768
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 792
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 816
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 840
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 864
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 888
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 912
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 936
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 960
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 984
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1008
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1032
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 1056
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 1080
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 1104
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 1128
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 1152
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 1176
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 1200
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 1224
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 1248
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 1272
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 1600
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 1296
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 1320
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1344
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 1368
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 1392
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 1416
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 1440
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 1464
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 1488
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 1512
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 1536
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 1560
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 1584
  store ptr %i.bq, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.br = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @506, ptr %i.br, align 8
  %i.bs = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.bs, align 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @506, ptr %i.bt, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.bu, align 8
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @506, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.bw, align 8
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @525, ptr %i.bx, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @506, ptr %i.bz, align 8
  %i.ca = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.ca, align 8
  %i.cb = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @526, ptr %i.cb, align 8
  %i.cc = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.cc, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @524, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.ce, align 8
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @527, ptr %i.cf, align 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.cg, align 8
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @506, ptr %i.ch, align 8
  %i.ci = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ci, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @506, ptr %i.cj, align 8
end_hunk_0
begin_hunk_1_@_RNvXs2V_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2peNtB6_10SignerInfoNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt:bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @518, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @518, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @673, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @512, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @680, i64 noundef 10, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @679, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2V_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_12BuildVersionNtNtCskKLDkoKarTP_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.g, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @519, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.d, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @518, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.e, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @518, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.f, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @519, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @681, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @512, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @687, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @686, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [72 x i8], ptr %0, i64 %.sroa.01.06 ; 8 uses
  %i.d = getelementptr inbounds nuw [72 x i8], ptr %1, i64 %.sroa.01.06 ; 8 uses
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %.not.i.i = icmp eq i64 %i.e, -1
  %i.f = load i64, ptr %i.d, align 8, !range !7, !noundef !6
  %i.g = icmp eq i64 %i.f, -1                     ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.g, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.split.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split.i.i:                                       ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.i)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.f:                                             ; preds = %.split.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.s = load ptr, ptr %i.r, align 8, !align !8, !noundef !6 ; 2 uses
  %.not6.i.i = icmp eq ptr %i.s, null
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.u = load ptr, ptr %i.t, align 8, !align !8, !noundef !6 ; 2 uses
  %i.v = icmp eq ptr %i.u, null                   ; 2 uses
  br i1 %.not6.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.v, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.split13.i.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.v, label %bb.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split13.i.i:                                     ; preds = %bb.g
  %i.w = tail call fastcc noundef zeroext i1 @_RNvXs17_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dexNtB6_9ProtoItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noundef nonnull align 8 %i.s, ptr noundef nonnull align 8 %i.u) #35
  br i1 %i.w, label %bb.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.i:                                             ; preds = %.split13.i.i, %bb.h
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.y = load i64, ptr %i.x, align 8, !range !7, !noundef !6
  %.not8.i.i = icmp eq i64 %i.y, -1
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.aa = load i64, ptr %i.z, align 8, !range !7, !noundef !6
  %i.ab = icmp eq i64 %i.aa, -1                   ; 2 uses
  br i1 %.not8.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.ab, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.ab, label %bb.m, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !6 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.af = load i64, ptr %i.ae, align 8, !noundef !6
  %i.ag = icmp eq i64 %i.ad, %i.af
  br i1 %i.ag, label %.split14.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split14.i.i:                                     ; preds = %bb.l
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ai = load ptr, ptr %i.ah, align 8, !nonnull !6, !noundef !6
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !6, !noundef !6
  %bcmp10.i.i = tail call i32 @bcmp(ptr nonnull %i.ak, ptr nonnull %i.ai, i64 %i.ad)
  %i.al = icmp eq i32 %bcmp10.i.i, 0
  br i1 %i.al, label %bb.m, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.m:                                             ; preds = %.split14.i.i, %bb.k
  %i.am = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.an = load ptr, ptr %i.am, align 8, !align !8, !noundef !6 ; 2 uses
  %.not11.i.i = icmp eq ptr %i.an, null           ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ap = load ptr, ptr %i.ao, align 8, !align !8, !noundef !6 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null                 ; 2 uses
  %brmerge.i.i = or i1 %.not11.i.i, %i.aq
  br i1 %brmerge.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, label %.split

.split:                                           ; preds = %bb.m
  %i.ar = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBb_4hash6random13DefaultHasherEENtNtB1W_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ap)
  br i1 %i.ar, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit: ; preds = %bb.m
  %.mux.i.i = and i1 %.not11.i.i, %i.aq
  br i1 %.mux.i.i, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, %bb.d, %.split14.i.i, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c, %bb.k, %bb.h, %.split.i.i, %.split13.i.i, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %.split13.i.i ], [ false, %.split.i.i ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.l ], [ false, %.split14.i.i ], [ false, %bb.d ], [ false, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex10MethodItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [48 x i8], ptr %0, i64 %.sroa.01.06 ; 9 uses
  %i.d = getelementptr inbounds nuw [48 x i8], ptr %1, i64 %.sroa.01.06 ; 9 uses
  %i.e = load i32, ptr %i.c, align 8, !range !28, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = trunc nuw i32 %i.e to i1
  %i.h = load i32, ptr %i.d, align 8, !range !28, !noundef !6
  %3 = trunc nuw i32 %i.h to i1                   ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.lr.ph
  br i1 %3, label %.split.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.d:                                             ; preds = %.lr.ph
  br i1 %3, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.e

.split.i.i:                                       ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.j = load i32, ptr %i.f, align 4, !noundef !6
  %i.k = load i32, ptr %i.i, align 4, !noundef !6
  %i.l = icmp eq i32 %i.j, %i.k
  br i1 %i.l, label %bb.e, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.e:                                             ; preds = %.split.i.i, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.n = load i32, ptr %i.m, align 8, !range !28, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.p = trunc nuw i32 %i.n to i1
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.r = load i32, ptr %i.q, align 8, !range !28, !noundef !6
  %4 = trunc nuw i32 %i.r to i1                   ; 2 uses
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %4, label %.split6.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.g:                                             ; preds = %bb.e
  br i1 %4, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.h

.split6.i.i:                                      ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.t = load i32, ptr %i.o, align 4, !noundef !6
  %i.u = load i32, ptr %i.s, align 4, !noundef !6
  %i.v = icmp eq i32 %i.t, %i.u
  br i1 %i.v, label %bb.h, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.h:                                             ; preds = %.split6.i.i, %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.x = load i32, ptr %i.w, align 8, !range !28, !noundef !6
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.z = trunc nuw i32 %i.x to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.ab = load i32, ptr %i.aa, align 8, !range !28, !noundef !6
  %5 = trunc nuw i32 %i.ab to i1                  ; 2 uses
  br i1 %i.z, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %5, label %.split7.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.j:                                             ; preds = %bb.h
  br i1 %5, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.k

.split7.i.i:                                      ; preds = %bb.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 20
  %i.ad = load i32, ptr %i.y, align 4, !noundef !6
  %i.ae = load i32, ptr %i.ac, align 4, !noundef !6
  %i.af = icmp eq i32 %i.ad, %i.ae
  br i1 %i.af, label %bb.k, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.k:                                             ; preds = %.split7.i.i, %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ah = load i32, ptr %i.ag, align 8, !range !28, !noundef !6
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 28
  %i.aj = trunc nuw i32 %i.ah to i1
  %i.ak = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.al = load i32, ptr %i.ak, align 8, !range !28, !noundef !6
  %6 = trunc nuw i32 %i.al to i1                  ; 2 uses
  br i1 %i.aj, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  br i1 %6, label %.split8.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.m:                                             ; preds = %bb.k
  br i1 %6, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.n

.split8.i.i:                                      ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.an = load i32, ptr %i.ai, align 4, !noundef !6
  %i.ao = load i32, ptr %i.am, align 4, !noundef !6
  %i.ap = icmp eq i32 %i.an, %i.ao
  br i1 %i.ap, label %bb.n, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.n:                                             ; preds = %.split8.i.i, %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ar = load ptr, ptr %i.aq, align 8, !align !8, !noundef !6 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ar, null             ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.at = load ptr, ptr %i.as, align 8, !align !8, !noundef !6 ; 2 uses
  %i.au = icmp eq ptr %i.at, null                 ; 2 uses
  %brmerge.i.i = or i1 %.not.i.i, %i.au
  br i1 %brmerge.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, label %.split

.split:                                           ; preds = %bb.n
  %i.av = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBb_4hash6random13DefaultHasherEENtNtB1W_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.ar, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.at)
  br i1 %i.av, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit: ; preds = %bb.n
  %.mux.i.i = and i1 %.not.i.i, %i.au
  br i1 %.mux.i.i, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, %bb.d, %.split8.i.i, %bb.l, %bb.i, %bb.f, %bb.c, %bb.m, %bb.j, %bb.g, %.split.i.i, %.split6.i.i, %.split7.i.i, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %.split7.i.i ], [ false, %.split6.i.i ], [ false, %.split.i.i ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.m ], [ false, %bb.c ], [ false, %bb.f ], [ false, %bb.i ], [ false, %bb.l ], [ false, %.split8.i.i ], [ false, %bb.d ], [ false, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex7MapItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [96 x i8], ptr %0, i64 %.sroa.01.06 ; 12 uses
  %i.d = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %.sroa.01.06 ; 12 uses
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %.not.i.i = icmp eq i64 %i.e, -1
  %i.f = load i64, ptr %i.d, align 8, !range !7, !noundef !6
  %i.g = icmp eq i64 %i.f, -1                     ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.g, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.split.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split.i.i:                                       ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.i)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.f:                                             ; preds = %.split.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.s = load i32, ptr %i.r, align 8, !range !28, !noundef !6
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.u = trunc nuw i32 %i.s to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.w = load i32, ptr %i.v, align 8, !range !28, !noundef !6
  %3 = trunc nuw i32 %i.w to i1                   ; 2 uses
  br i1 %i.u, label %bb.g, label %bb.h

bb.g:                                             ; preds = %bb.f
  br i1 %3, label %.split16.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.h:                                             ; preds = %bb.f
  br i1 %3, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.i

.split16.i.i:                                     ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.y = load i32, ptr %i.t, align 4, !noundef !6
  %i.z = load i32, ptr %i.x, align 4, !noundef !6
  %i.aa = icmp eq i32 %i.y, %i.z
  br i1 %i.aa, label %bb.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.i:                                             ; preds = %.split16.i.i, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !range !7, !noundef !6
  %.not8.i.i = icmp eq i64 %i.ac, -1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.ae = load i64, ptr %i.ad, align 8, !range !7, !noundef !6
  %i.af = icmp eq i64 %i.ae, -1                   ; 2 uses
  br i1 %.not8.i.i, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  br i1 %i.af, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.l

bb.k:                                             ; preds = %bb.i
  br i1 %i.af, label %bb.m, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.l:                                             ; preds = %bb.j
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !6 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !6
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %.split17.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split17.i.i:                                     ; preds = %bb.l
  %i.al = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !6, !noundef !6
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !6, !noundef !6
  %bcmp10.i.i = tail call i32 @bcmp(ptr nonnull %i.ao, ptr nonnull %i.am, i64 %i.ah)
  %i.ap = icmp eq i32 %bcmp10.i.i, 0
  br i1 %i.ap, label %bb.m, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.m:                                             ; preds = %.split17.i.i, %bb.k
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ar = load i64, ptr %i.aq, align 8, !range !7, !noundef !6
  %.not11.i.i = icmp eq i64 %i.ar, -1
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.at = load i64, ptr %i.as, align 8, !range !7, !noundef !6
  %i.au = icmp eq i64 %i.at, -1                   ; 2 uses
  br i1 %.not11.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  br i1 %i.au, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.p

bb.o:                                             ; preds = %bb.m
  br i1 %i.au, label %bb.q, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.p:                                             ; preds = %bb.n
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.aw = load i64, ptr %i.av, align 8, !noundef !6 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !6
  %i.az = icmp eq i64 %i.aw, %i.ay
  br i1 %i.az, label %.split18.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split18.i.i:                                     ; preds = %bb.p
  %i.ba = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !6, !noundef !6
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !6, !noundef !6
  %bcmp13.i.i = tail call i32 @bcmp(ptr nonnull %i.bd, ptr nonnull %i.bb, i64 %i.aw)
  %i.be = icmp eq i32 %bcmp13.i.i, 0
  br i1 %i.be, label %bb.q, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.q:                                             ; preds = %.split18.i.i, %bb.o
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.bg = load ptr, ptr %i.bf, align 8, !align !8, !noundef !6 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.bg, null           ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bi = load ptr, ptr %i.bh, align 8, !align !8, !noundef !6 ; 2 uses
  %i.bj = icmp eq ptr %i.bi, null                 ; 2 uses
  %brmerge.i.i = or i1 %.not14.i.i, %i.bj
  br i1 %brmerge.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, label %.split

.split:                                           ; preds = %bb.q
  %i.bk = tail call noundef zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapmNtNtCsg2CeFYmfPbl_8protobuf7unknown13UnknownValuesINtNtCskKLDkoKarTP_4core4hash18BuildHasherDefaultNtNtNtBb_4hash6random13DefaultHasherEENtNtB1W_3cmp9PartialEq2eqCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bi)
  br i1 %i.bk, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit: ; preds = %bb.q
  %.mux.i.i = and i1 %.not14.i.i, %i.bj
  br i1 %.mux.i.i, label %bb.b, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread: ; preds = %bb.b, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit, %bb.d, %.split18.i.i, %bb.p, %bb.n, %bb.l, %bb.j, %bb.g, %bb.e, %bb.c, %bb.o, %bb.k, %bb.h, %.split.i.i, %.split16.i.i, %.split17.i.i, %.split, %bb.a
  %.lcssa = phi i1 [ true, %bb.a ], [ false, %.split ], [ false, %.split17.i.i ], [ false, %.split16.i.i ], [ false, %.split.i.i ], [ false, %bb.h ], [ false, %bb.k ], [ false, %bb.o ], [ false, %bb.c ], [ false, %bb.e ], [ false, %bb.g ], [ false, %bb.j ], [ false, %bb.l ], [ false, %bb.n ], [ false, %bb.p ], [ false, %.split18.i.i ], [ false, %bb.d ], [ false, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9ClassItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit ], [ true, %bb.b ]
  ret i1 %.lcssa
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs2_NtNtCskKLDkoKarTP_4core5slice3cmpNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemINtB5_14SlicePartialEqBC_E17equal_same_lengthBK_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) unnamed_addr #1 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

bb.b:                                             ; preds = %.split, %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit
  %i.b = add nuw i64 %.sroa.01.06, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %i.b, %2
  br i1 %exitcond.not, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.01.06 = phi i64 [ %i.b, %bb.b ], [ 0, %bb.a ] ; 3 uses
  %i.c = getelementptr inbounds nuw [88 x i8], ptr %0, i64 %.sroa.01.06 ; 10 uses
  %i.d = getelementptr inbounds nuw [88 x i8], ptr %1, i64 %.sroa.01.06 ; 10 uses
  %i.e = load i64, ptr %i.c, align 8, !range !7, !noundef !6
  %.not.i.i = icmp eq i64 %i.e, -1
  %i.f = load i64, ptr %i.d, align 8, !range !7, !noundef !6
  %i.g = icmp eq i64 %i.f, -1                     ; 2 uses
  br i1 %.not.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %.lr.ph
  br i1 %i.g, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.e

bb.d:                                             ; preds = %.lr.ph
  br i1 %i.g, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !6 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !6
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %.split.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split.i.i:                                       ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !6, !noundef !6
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.p, ptr nonnull %i.n, i64 %i.i)
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.q, label %bb.f, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.f:                                             ; preds = %.split.i.i, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.s = load i64, ptr %i.r, align 8, !range !7, !noundef !6
  %.not7.i.i = icmp eq i64 %i.s, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = load i64, ptr %i.t, align 8, !range !7, !noundef !6
  %i.v = icmp eq i64 %i.u, -1                     ; 2 uses
  br i1 %.not7.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.v, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.i

bb.h:                                             ; preds = %bb.f
  br i1 %i.v, label %bb.j, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.x = load i64, ptr %i.w, align 8, !noundef !6 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.z = load i64, ptr %i.y, align 8, !noundef !6
  %i.aa = icmp eq i64 %i.x, %i.z
  br i1 %i.aa, label %.split15.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split15.i.i:                                     ; preds = %bb.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !nonnull !6, !noundef !6
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !6, !noundef !6
  %bcmp9.i.i = tail call i32 @bcmp(ptr nonnull %i.ae, ptr nonnull %i.ac, i64 %i.x)
  %i.af = icmp eq i32 %bcmp9.i.i, 0
  br i1 %i.af, label %bb.j, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.j:                                             ; preds = %.split15.i.i, %bb.h
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.ah = load i64, ptr %i.ag, align 8, !range !7, !noundef !6
  %.not10.i.i = icmp eq i64 %i.ah, -1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !range !7, !noundef !6
  %i.ak = icmp eq i64 %i.aj, -1                   ; 2 uses
  br i1 %.not10.i.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  br i1 %i.ak, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread, label %bb.m

bb.l:                                             ; preds = %bb.j
  br i1 %i.ak, label %bb.n, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

bb.m:                                             ; preds = %bb.k
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.am = load i64, ptr %i.al, align 8, !noundef !6 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !noundef !6
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %.split16.i.i, label %_RNvYNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex9FieldItemNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neBa_.exit.thread

.split16.i.i:                                     ; preds = %bb.m
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !6, !noundef !6
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.at = load ptr, ptr %i.as, align 8, !nonnull !6, !noundef !6
  %bcmp12.i.i = tail call i32 @bcmp(ptr nonnull %i.at, ptr nonnull %i.ar, i64 %i.am)
end_hunk_1
