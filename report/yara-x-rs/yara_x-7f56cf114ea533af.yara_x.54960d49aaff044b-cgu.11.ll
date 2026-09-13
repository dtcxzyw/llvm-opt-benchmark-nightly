Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.11?download=true
inline.NumInlined: 4347
inline.NumDeleted: 1844
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 14
loop-unroll.NumUnrolled: 15
begin_hunk_0_@_RNvXs2h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_12CpuMcSubTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor:bb.a

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.e, %bb.d, %bb.f
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_12CpuMcSubTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs2h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB2z_12CpuMcSubTypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2F_(ptr noundef nonnull align 8 @_RNvNvXs2h_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB8_12CpuMcSubTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i8 0, 12) i8 @_RNvXs2k_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_str(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %bb.m [
    i64 9, label %bb.b
    i64 10, label %bb.c
    i64 7, label %bb.e
    i64 8, label %bb.g
    i64 11, label %bb.h
    i64 13, label %bb.j
    i64 14, label %bb.l
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 4847362222594148429
  %i.c = getelementptr i8, ptr %0, i64 8
  %i.d = load i8, ptr %i.c, align 1
  %i.e = zext i8 %i.d to i64
  %i.f = xor i64 %i.e, 84
  %i.g = or i64 %i.b, %i.f
  %i.h = icmp ne i64 %i.g, 0
  %i.i = zext i1 %i.h to i32
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %bb.m, label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %0, align 1
  %i.l = xor i64 %i.k, 6143830562086799437
  %i.m = getelementptr i8, ptr %0, i64 8
  %i.n = load i16, ptr %i.m, align 1
  %i.o = zext i16 %i.n to i64
  %i.p = xor i64 %i.o, 17748
  %i.q = or i64 %i.l, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.m, label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.u = load i64, ptr %0, align 1
  %i.v = xor i64 %i.u, 5281681495941924941
  %i.w = getelementptr i8, ptr %0, i64 8
  %i.x = load i8, ptr %i.w, align 1
  %i.y = zext i8 %i.x to i64
  %i.z = xor i64 %i.y, 66
  %i.aa = or i64 %i.v, %i.z
  %i.ab = icmp ne i64 %i.aa, 0
  %i.ac = zext i1 %i.ab to i32
  %i.ad = icmp eq i32 %i.ac, 0
  br i1 %i.ad, label %bb.m, label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.ae = load i32, ptr %0, align 1
  %i.af = xor i32 %i.ae, 1130317901
  %i.ag = getelementptr i8, ptr %0, i64 3
  %i.ah = load i32, ptr %i.ag, align 1
  %i.ai = xor i32 %i.ah, 1163022147
  %i.aj = or i32 %i.af, %i.ai
  %i.ak = icmp ne i32 %i.aj, 0
  %i.al = zext i1 %i.ak to i32
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.m, label %bb.k

bb.f:                                             ; preds = %bb.c
  %i.an = load i64, ptr %0, align 1
  %i.ao = xor i64 %i.an, 5714018247064373325
  %i.ap = getelementptr i8, ptr %0, i64 8
  %i.aq = load i16, ptr %i.ap, align 1
  %i.ar = zext i16 %i.aq to i64
  %i.as = xor i64 %i.ar, 17473
  %i.at = or i64 %i.ao, %i.as
  %i.au = icmp ne i64 %i.at, 0
  %i.av = zext i1 %i.au to i32
  %i.aw = icmp eq i32 %i.av, 0
  %spec.select11 = select i1 %i.aw, i8 5, i8 0
  br label %bb.m

bb.g:                                             ; preds = %bb.a
  %i.ax = load i64, ptr %0, align 1
  %i.ay = icmp ne i64 %i.ax, 4776432826086017101
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  %spec.select12 = select i1 %i.ba, i8 6, i8 0
  br label %bb.m

bb.h:                                             ; preds = %bb.a
  %i.bb = load i64, ptr %0, align 1
  %i.bc = xor i64 %i.bb, 5641123954541152333
  %i.bd = getelementptr i8, ptr %0, i64 3
  %i.be = load i64, ptr %i.bd, align 1
  %i.bf = xor i64 %i.be, 5928227284112398660
  %i.bg = or i64 %i.bc, %i.bf
  %i.bh = icmp ne i64 %i.bg, 0
  %i.bi = zext i1 %i.bh to i32
  %i.bj = icmp eq i32 %i.bi, 0
  %spec.select13 = select i1 %i.bj, i8 7, i8 0
  br label %bb.m

bb.i:                                             ; preds = %bb.d
  %i.bk = load i64, ptr %0, align 1
  %i.bl = xor i64 %i.bk, 5495603573391575117
  %i.bm = getelementptr i8, ptr %0, i64 8
  %i.bn = load i8, ptr %i.bm, align 1
  %i.bo = zext i8 %i.bn to i64
  %i.bp = xor i64 %i.bo, 69
  %i.bq = or i64 %i.bl, %i.bp
  %i.br = icmp ne i64 %i.bq, 0
  %i.bs = zext i1 %i.br to i32
  %i.bt = icmp eq i32 %i.bs, 0
  %spec.select14 = select i1 %i.bt, i8 8, i8 0
  br label %bb.m

bb.j:                                             ; preds = %bb.a
  %i.bu = load i64, ptr %0, align 1
  %i.bv = xor i64 %i.bu, 4776432826086017101
  %i.bw = getelementptr i8, ptr %0, i64 5
  %i.bx = load i64, ptr %i.bw, align 1
  %i.by = xor i64 %i.bx, 4779819296580847948
  %i.bz = or i64 %i.bv, %i.by
  %i.ca = icmp ne i64 %i.bz, 0
  %i.cb = zext i1 %i.ca to i32
  %i.cc = icmp eq i32 %i.cb, 0
  %spec.select15 = select i1 %i.cc, i8 9, i8 0
  br label %bb.m

bb.k:                                             ; preds = %bb.e
  %i.cd = load i32, ptr %0, align 1
  %i.ce = xor i32 %i.cd, 1147095117
  %i.cf = getelementptr i8, ptr %0, i64 3
  %i.cg = load i32, ptr %i.cf, align 1
  %i.ch = xor i32 %i.cg, 1297699652
  %i.ci = or i32 %i.ce, %i.ch
  %i.cj = icmp ne i32 %i.ci, 0
  %i.ck = zext i1 %i.cj to i32
  %i.cl = icmp eq i32 %i.ck, 0
  %spec.select16 = select i1 %i.cl, i8 10, i8 0
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  %i.cm = load i64, ptr %0, align 1
  %i.cn = xor i64 %i.cm, 6869212386287372365
  %i.co = getelementptr i8, ptr %0, i64 6
  %i.cp = load i64, ptr %i.co, align 1
  %i.cq = xor i64 %i.cp, 4993441190075588436
  %i.cr = or i64 %i.cn, %i.cq
  %i.cs = icmp ne i64 %i.cr, 0
  %i.ct = zext i1 %i.cs to i32
  %i.cu = icmp eq i32 %i.ct, 0
  %spec.select = select i1 %i.cu, i8 11, i8 0
  br label %bb.m

bb.m:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.l, %bb.a, %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0 = phi i8 [ %spec.select13, %bb.h ], [ %spec.select, %bb.l ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ %spec.select16, %bb.k ], [ 0, %bb.a ], [ %spec.select12, %bb.g ], [ %spec.select14, %bb.i ], [ %spec.select11, %bb.f ], [ %spec.select15, %bb.j ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !6811, !noundef !4
  %switch.tableidx = add nsw i8 %i.b, -1
  %switch.idx.cast = zext i8 %switch.tableidx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6812)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB2z_8FileTypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2F_(ptr noundef nonnull align 8 @_RNvNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB8_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !6812 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !14, !noalias !6812, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1                 ; 3 uses
  br i1 %i.f, label %bb.a, label %_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.e, align 8, !noalias !6812, !nonnull !4, !noundef !4
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !6812
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.j = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ]
  %.sroa.5.0.i = load ptr, ptr %i.e, align 8, !noalias !6812, !nonnull !4, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !6812, !noundef !4
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !6812
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.m, align 8, !alias.scope !6812
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !6812
  invoke void @_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.idx.cast)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !6813
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  br i1 %i.f, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !6814
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #35
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB2z_8FileTypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2F_(ptr noundef nonnull align 8 @_RNvNvXs2l_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB8_8FileTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define noundef range(i32 0, 33554433) i32 @_RNvXs2o_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5machoNtB6_8FileFlagNtNtCsg2CeFYmfPbl_8protobuf5enums4Enum8from_str(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef %1) unnamed_addr #5 {
bb.a:
  switch i64 %1, label %bb.ab [
    i64 11, label %bb.b
    i64 13, label %bb.e
    i64 12, label %bb.h
    i64 14, label %bb.k
    i64 18, label %bb.l
    i64 15, label %bb.n
    i64 26, label %bb.o
    i64 16, label %bb.r
    i64 24, label %bb.s
    i64 23, label %bb.v
    i64 6, label %bb.w
    i64 22, label %bb.y
    i64 20, label %bb.z
    i64 21, label %bb.aa
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = load i64, ptr %0, align 1
  %i.b = xor i64 %i.a, 4921965241868175437
  %i.c = getelementptr i8, ptr %0, i64 3
  %i.d = load i64, ptr %i.c, align 1
  %i.e = xor i64 %i.d, 6000559713192070990
  %i.f = or i64 %i.b, %i.e
  %i.g = icmp ne i64 %i.f, 0
  %i.h = zext i1 %i.g to i32
  %i.i = icmp eq i32 %i.h, 0
  br i1 %i.i, label %bb.ab, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %0, align 1
  %i.k = xor i64 %i.j, 5499532098490288205
  %i.l = getelementptr i8, ptr %0, i64 3
  %i.m = load i64, ptr %i.l, align 1
  %i.n = xor i64 %i.m, 5426355193174511177
  %i.o = or i64 %i.k, %i.n
  %i.p = icmp ne i64 %i.o, 0
  %i.q = zext i1 %i.p to i32
  %i.r = icmp eq i32 %i.q, 0
  br i1 %i.r, label %bb.ab, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load i64, ptr %0, align 1
  %i.t = xor i64 %i.s, 5495601391581743181
  %i.u = getelementptr i8, ptr %0, i64 3
  %i.v = load i64, ptr %i.u, align 1
  %i.w = xor i64 %i.v, 5426355192940222788
  %i.x = or i64 %i.t, %i.w
  %i.y = icmp ne i64 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.ab, label %bb.f

bb.e:                                             ; preds = %bb.a
  %i.ab = load i64, ptr %0, align 1
  %i.ac = xor i64 %i.ab, 4702969987434760269
  %i.ad = getelementptr i8, ptr %0, i64 5
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = xor i64 %i.ae, 4918299457314964558
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.ab, label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ak = load i64, ptr %0, align 1
  %i.al = xor i64 %i.ak, 5711203497297266765
  %i.am = getelementptr i8, ptr %0, i64 3
  %i.an = load i64, ptr %i.am, align 1
  %i.ao = xor i64 %i.an, 4921965241665147472
  %i.ap = or i64 %i.al, %i.ao
  %i.aq = icmp ne i64 %i.ap, 0
  %i.ar = zext i1 %i.aq to i32
  %i.as = icmp eq i32 %i.ar, 0
  br i1 %i.as, label %bb.ab, label %bb.i

bb.g:                                             ; preds = %bb.e
  %i.at = load i64, ptr %0, align 1
  %i.au = xor i64 %i.at, 6073469480365672525
  %i.av = getelementptr i8, ptr %0, i64 5
  %i.aw = load i64, ptr %i.av, align 1
  %i.ax = xor i64 %i.aw, 6000841252878436684
  %i.ay = or i64 %i.au, %i.ax
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.ab, label %bb.j

bb.h:                                             ; preds = %bb.a
  %i.bc = load i64, ptr %0, align 1
  %i.bd = xor i64 %i.bc, 6870621943031089229
end_hunk_0
begin_hunk_1_@_RNvXs5_NtCsexYYUdYSQU6_5alloc5sliceSNtNtB7_6string6StringINtB5_16SpecCloneIntoVecBy_NtNtB7_5alloc6GlobalE10clone_intoCs7gfv9tzbXmh_6yara_x:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4 ; 5 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not.i = icmp samesign ugt i64 %i.b, %1
  br i1 %.not.i, label %bb.b, label %.preheader.i, !prof !16

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking9panic_fmt(ptr noundef nonnull @110, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @554) #39, !noalias !6983
  unreachable

.preheader.i:                                     ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !noundef !4
  %.not.i1 = icmp eq i64 %i.b, 0
  br i1 %.not.i1, label %_RNvXs3_NtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.0.01.i = phi i64 [ %i.h, %.lr.ph.i ], [ 0, %.preheader.i ] ; 3 uses
  %i.f = getelementptr inbounds nuw [24 x i8], ptr %i.e, i64 %.sroa.0.01.i
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %.sroa.0.01.i
  tail call void @_RNvXs4_NtCsexYYUdYSQU6_5alloc6stringNtB5_6StringNtNtCskKLDkoKarTP_4core5clone5Clone10clone_from(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
  %i.h = add nuw nsw i64 %.sroa.0.01.i, 1         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.b
  br i1 %exitcond.not.i, label %_RNvXs3_NtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7gfv9tzbXmh_6yara_x.exit, label %.lr.ph.i

_RNvXs3_NtCskKLDkoKarTP_4core5sliceSNtNtCsexYYUdYSQU6_5alloc6string6StringINtB5_13CloneFromSpecBx_E15spec_clone_fromCs7gfv9tzbXmh_6yara_x.exit: ; preds = %.lr.ph.i, %.preheader.i
  %i.i = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %i.b
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %0, i64 %1
  tail call void @_RNvXs1_NtNtCsexYYUdYSQU6_5alloc3vec11spec_extendINtB7_3VecNtNtB9_6string6StringEINtB5_10SpecExtendRBU_INtNtNtCskKLDkoKarTP_4core5slice4iter4IterBU_EE11spec_extendCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull %i.i, ptr noundef nonnull %i.j)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs5_NtNtCs3d3aqnH98pt_6flate23ffi1cINtB5_6StreamNtB5_13DirDecompressENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !noundef !4
  %i.b = tail call noundef i32 @_RNvXs7_NtNtCs3d3aqnH98pt_6flate23ffi1cNtB5_13DirDecompressNtB5_9Direction7destroy(ptr noundef %i.a) ; 0 uses
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs5_NtNtCskKLDkoKarTP_4core3num5errorNtB5_15TryFromIntErrorNtNtB9_3fmt5Debug3fmt(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @556, i64 noundef 15, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @555)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules5macho6parserNtNtNtB9_6protos5macho7SegmentINtNtCskKLDkoKarTP_4core7convert4FromRNtB5_7SegmentE4from(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([160 x i8]) align 8 captures(none) dereferenceable(160) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(88) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [160 x i8], align 8               ; 28 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  store i64 -1, ptr %i.c, align 8
  store i64 0, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store i64 0, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 0, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48 ; 2 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 112 ; 2 uses
  store i32 0, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 116
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  store i32 0, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 124
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 128 ; 2 uses
  store i32 0, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 132
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 136 ; 2 uses
  store i32 0, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 140
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  store i64 0, ptr %i.s, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.t, i8 0, i64 16, i1 false)
  %i.v = load ptr, ptr %i.u, align 8, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = load i64, ptr %i.w, align 8, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs7gfv9tzbXmh_6yara_x(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.x, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a, %bb.c, %bb.f
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho7SegmentEBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.b) #34
          to label %bb.j unwind label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.z = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %i.aa = trunc nuw i64 %i.z to i1
  %i.ab = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !range !31, !noundef !4 ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.aa, label %bb.c, label %bb.d, !prof !16

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.ad, align 8
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ac, i64 %i.ae) #37
          to label %bb.h unwind label %.body

bb.d:                                             ; preds = %bb.b
  %i.af = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ag = icmp ule i64 %i.x, %i.ac
  tail call void @llvm.assume(i1 %i.ag)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq i64 %i.x, 0
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.af, ptr nonnull align 1 %i.v, i64 %i.x, i1 false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  store i64 %i.ac, ptr %i.c, align 8, !alias.scope !6987
  %.sroa.5.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.af, ptr %.sroa.5.0..sroa_idx11, align 8, !alias.scope !6987
  %.sroa.6.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store i64 %i.x, ptr %.sroa.6.0..sroa_idx13, align 8, !alias.scope !6987
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !4
  store i64 1, ptr %i.b, align 8
  store i64 %i.ai, ptr %i.d, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !4
  store i64 1, ptr %i.e, align 8
  store i64 %i.ak, ptr %i.f, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.am = load i64, ptr %i.al, align 8, !noundef !4
  store i64 1, ptr %i.g, align 8
  store i64 %i.am, ptr %i.h, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ao = load i64, ptr %i.an, align 8, !noundef !4
  store i64 1, ptr %i.i, align 8
  store i64 %i.ao, ptr %i.j, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.aq = load i32, ptr %i.ap, align 8, !noundef !4
  store i32 1, ptr %i.k, align 8
  store i32 %i.aq, ptr %i.l, align 4
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 76
  %i.as = load i32, ptr %i.ar, align 4, !noundef !4
  store i32 1, ptr %i.m, align 8
  store i32 %i.as, ptr %i.n, align 4
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.au = load i32, ptr %i.at, align 8, !noundef !4
  store i32 1, ptr %i.o, align 8
  store i32 %i.au, ptr %i.p, align 4
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 84
  %i.aw = load i32, ptr %i.av, align 4, !noundef !4
  store i32 1, ptr %i.q, align 8
  store i32 %i.aw, ptr %i.r, align 4
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ba = load i64, ptr %i.az, align 8, !noundef !4
  %i.bb = getelementptr inbounds nuw [88 x i8], ptr %i.ay, i64 %i.ba
  invoke void @_RINvMsk_NtCsexYYUdYSQU6_5alloc3vecINtB6_3VecNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho7SectionE14extend_trustedINtNtNtNtCskKLDkoKarTP_4core4iter8adapters3map3MapINtNtNtB22_5slice4iter4IterNtNtNtBM_5macho6parser7SectionENCNvXs5_B3a_NtBI_7SegmentINtNtB22_7convert4FromRNtB3a_7SegmentE4from0EEBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull %i.ay, ptr noundef nonnull %i.bb)
          to label %bb.g unwind label %.body

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %i.b, i64 160, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.h:                                             ; preds = %bb.c
  unreachable

bb.i:                                             ; preds = %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.y
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !7010, !noundef !4
  %switch.tableidx = add nsw i8 %i.b, -1
  %switch.idx.cast = zext i8 %switch.tableidx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7011)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB2y_10ModuleTypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2E_(ptr noundef nonnull align 8 @_RNvNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB7_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !7011 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !14, !noalias !7011, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1                 ; 3 uses
  br i1 %i.f, label %bb.a, label %_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.e, align 8, !noalias !7011, !nonnull !4, !noundef !4
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !7011
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.j = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ]
  %.sroa.5.0.i = load ptr, ptr %i.e, align 8, !noalias !7011, !nonnull !4, !noundef !4 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !7011, !noundef !4
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !7011
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.m, align 8, !alias.scope !7011
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !7011
  invoke void @_RNvMs3_NtNtCsg2CeFYmfPbl_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.idx.cast)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.d, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !7012
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #35
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor.exit
  br i1 %i.f, label %bb.g, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !7013
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArcNtNtNtNtCsg2CeFYmfPbl_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #35
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorECs7gfv9tzbXmh_6yara_x.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB5_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCs69rhaJXEXoX_9once_cell4syncINtB6_8OnceCellNtNtNtCsg2CeFYmfPbl_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB2y_10ModuleTypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEB2E_(ptr noundef nonnull align 8 @_RNvNvXs5_NtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vbaNtB7_10ModuleTypeNtNtCsg2CeFYmfPbl_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !14, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !4
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.5.0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.i, ptr %i.k, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.trap()
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos2pe2PEENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @557)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3crx3CrxENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @559)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3dex3DexENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @560)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3elf3ELFENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @561)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3lnk3LnkENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @562)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3msi3MsiENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @563)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos3vba3VbaENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @564)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho10MinVersionENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @565)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs6_NtCsg2CeFYmfPbl_8protobuf13message_fieldINtB5_12MessageFieldNtNtNtNtCs7gfv9tzbXmh_6yara_x7modules6protos5macho12BuildVersionENtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @558, i64 noundef 12, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @566)
end_hunk_1
