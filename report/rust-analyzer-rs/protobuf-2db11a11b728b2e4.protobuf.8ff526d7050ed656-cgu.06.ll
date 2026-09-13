Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/protobuf-2db11a11b728b2e4.protobuf.8ff526d7050ed656-cgu.06?download=true
inline.NumInlined: 1046
inline.NumDeleted: 409
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5ValueINtB5_14SlicePartialEqBC_E17equal_same_lengthBI_:bb.a
; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2e_NtCscmhy3HNZezq_8protobuf10descriptorNtB6_15DescriptorProtoNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [176 x i8], align 8               ; 25 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 224
  store ptr %i.l, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @154, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @160, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @160, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @157, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @158, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @200, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @201, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @202, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @203, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @155, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.a, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @163, ptr %i.ag, align 8
  %i.ah = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @211, i64 noundef 15, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @210, i64 noundef 11, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ah
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2o_NtCscmhy3HNZezq_8protobuf10descriptorNtB6_20FieldDescriptorProtoNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [192 x i8], align 8               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 136
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 176
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 160
  store ptr %i.m, ptr %i.a, align 8
  store ptr %0, ptr %i.b, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @154, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @178, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @212, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @213, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @154, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.g, ptr %i.w, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @154, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  store ptr %i.h, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  store ptr @154, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store ptr %i.i, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  store ptr @178, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 128
  store ptr %i.j, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 136
  store ptr @154, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store ptr %i.k, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.b, i64 152
  store ptr @214, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store ptr %i.l, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 168
  store ptr @187, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 176
  store ptr %i.a, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 184
  store ptr @163, ptr %i.aj, align 8
  %i.ak = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @224, i64 noundef 20, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @223, i64 noundef 12, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 12)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.ak
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2t_NtCscmhy3HNZezq_8protobuf10descriptorNtB6_20OneofDescriptorProtoNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @226, i64 noundef 20, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @154, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef 7, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @225, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs2y_NtCscmhy3HNZezq_8protobuf10descriptorNtB6_19EnumDescriptorProtoNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [96 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr %i.g, ptr %i.a, align 8
  store ptr %i.c, ptr %i.b, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @154, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @227, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.d, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store ptr @228, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %i.e, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr @229, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.f, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr @155, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %i.a, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store ptr @163, ptr %i.r, align 8
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_fields_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @232, i64 noundef 19, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) @231, i64 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.b, i64 noundef 6)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.s
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !21, !noundef !7
  %switch.tableidx = add nsw i8 %i.b, -1
  %switch.idx.cast = zext nneg i8 %switch.tableidx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2407)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs3_NtNtBW_10descriptor22field_descriptor_protoNtB2y_5LabelNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB7_5LabelNtNtBb_9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !2407 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noalias !2407, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1                 ; 3 uses
  br i1 %i.f, label %bb.a, label %_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.e, align 8, !noalias !2407, !nonnull !7, !noundef !7
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !2407
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.j = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ]
  %.sroa.5.0.i = load ptr, ptr %i.e, align 8, !noalias !2407, !nonnull !7, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !2407, !noundef !7
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !2407
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.m, align 8, !alias.scope !2407
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !2407
  invoke void @_RNvMs3_NtNtCscmhy3HNZezq_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.idx.cast)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2408
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor.exit
  br i1 %i.f, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2409
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB5_5LabelNtNtB9_9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs3_NtNtBW_10descriptor22field_descriptor_protoNtB2y_5LabelNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs3_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB7_5LabelNtNtBb_9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
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

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable
define internal fastcc void @_RNvXs3_NtNtCshzWfHUSfYae_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher5writeCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #15 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  %i.c = add i64 %i.b, %2
  store i64 %i.c, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !7 ; 4 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = sub i64 8, %i.e                          ; 3 uses
  %..i = tail call noundef range(i64 0, -9223372036854775808) i64 @llvm.umin.i64(i64 range(i64 9, 8) %i.g, i64 range(i64 0, -9223372036854775808) %2) ; 3 uses
  %i.h = icmp samesign ugt i64 %..i, 3
  br i1 %i.h, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %.sroa.014.0.copyload.i = load i32, ptr %1, align 1, !alias.scope !2418
  %i.i = zext i32 %.sroa.014.0.copyload.i to i64
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.i = phi i64 [ 4, %bb.c ], [ 0, %bb.b ] ; 5 uses
  %.sroa.0.0.i = phi i64 [ %i.i, %bb.c ], [ 0, %bb.b ] ; 2 uses
  %i.j = or disjoint i64 %.sroa.03.0.i, 1
  %i.k = icmp samesign ult i64 %i.j, %..i
  br i1 %i.k, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr i8, ptr %1, i64 %.sroa.03.0.i
  %.sroa.015.0.copyload.i = load i16, ptr %i.l, align 1, !alias.scope !2418
  %i.m = zext i16 %.sroa.015.0.copyload.i to i64
  %i.n = shl nuw nsw i64 %.sroa.03.0.i, 3
  %i.o = shl nuw nsw i64 %i.m, %i.n
  %i.p = or i64 %i.o, %.sroa.0.0.i
  %i.q = or disjoint i64 %.sroa.03.0.i, 2
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %.sroa.03.1.i = phi i64 [ %i.q, %bb.e ], [ %.sroa.03.0.i, %bb.d ] ; 3 uses
  %.sroa.0.1.i = phi i64 [ %i.p, %bb.e ], [ %.sroa.0.0.i, %bb.d ] ; 2 uses
  %i.r = icmp samesign ult i64 %.sroa.03.1.i, %..i
  br i1 %i.r, label %bb.g, label %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit

bb.g:                                             ; preds = %bb.f
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.03.1.i
  %i.t = load i8, ptr %i.s, align 1, !alias.scope !2418, !noundef !7
  %i.u = zext i8 %i.t to i64
  %i.v = shl nuw nsw i64 %.sroa.03.1.i, 3
  %i.w = shl nuw nsw i64 %i.u, %i.v
  %i.x = or i64 %i.w, %.sroa.0.1.i
  br label %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit

_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit: ; preds = %bb.f, %bb.g
  %.sroa.0.2.i = phi i64 [ %i.x, %bb.g ], [ %.sroa.0.1.i, %bb.f ]
  %i.y = shl i64 %i.e, 3
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %.sroa.0.2.i, %i.z
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !7
  %i.ad = or i64 %i.ac, %i.aa                     ; 3 uses
  store i64 %i.ad, ptr %i.ab, align 8
  %i.ae = icmp ult i64 %2, %i.g
  br i1 %i.ae, label %bb.j, label %bb.i

bb.h:                                             ; preds = %bb.a, %bb.i
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ %i.g, %bb.i ] ; 4 uses
  %i.af = sub nsw i64 %2, %.sroa.0.0              ; 2 uses
  %i.ag = and i64 %i.af, 7                        ; 4 uses
  %i.ah = and i64 %i.af, -8                       ; 2 uses
  %i.ai = icmp ult i64 %.sroa.0.0, %i.ah
  br i1 %i.ai, label %.lr.ph, label %bb.k

.lr.ph:                                           ; preds = %bb.h
  %.promoted = load i64, ptr %0, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted19 = load i64, ptr %i.aj, align 8
  %.promoted20 = load i64, ptr %i.ak, align 8, !alias.scope !2419
  %.promoted22 = load i64, ptr %i.al, align 8, !alias.scope !2419
  br label %bb.q

bb.i:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core4hash3sip9u8to64_le.exit
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.an = load i64, ptr %i.am, align 8, !noundef !7
  %i.ao = xor i64 %i.an, %i.ad                    ; 3 uses
  %i.ap = load i64, ptr %0, align 8, !alias.scope !2420, !noundef !7
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !2420, !noundef !7 ; 3 uses
  %i.as = add i64 %i.ar, %i.ap                    ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !alias.scope !2420, !noundef !7
end_hunk_0
begin_hunk_1_@_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionINtNtCscmhy3HNZezq_8protobuf15enum_or_unknown13EnumOrUnknownNtNtNtBP_10descriptor22field_descriptor_proto5LabelEENtNtB7_3fmt5Debug3fmtBP_:bb.a
bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtCsbSS6DM8SDEO_5alloc6string6StringENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !6, !noundef !7
  %.not = icmp eq i64 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @33)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionNtNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5value4KindENtNtB7_3fmt5Debug3fmtBS_(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 8, !range !9, !noundef !7
  %.not = icmp eq i8 %i.b, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @294)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionbENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly captures(address, read_provenance) dereferenceable(1) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !2443, !noundef !7
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @57)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptiondENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @59)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionlENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i32, ptr %0, align 4, !range !15, !noundef !7
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @62)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionxENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @64)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsR_NtCshzWfHUSfYae_4core6optionINtB5_6OptionyENtNtB7_3fmt5Debug3fmtCscmhy3HNZezq_8protobuf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !10, !noundef !7
  %i.c = trunc nuw i64 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @291, i64 noundef 4, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @65)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @290, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsU_NtNtCscmhy3HNZezq_8protobuf16well_known_types5type_NtB5_6OptionNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.c, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter26debug_struct_field3_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @296, i64 noundef 6, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @164, i64 noundef 4, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @281, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @230, i64 noundef 5, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @295, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @175, i64 noundef 14, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @163)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !21, !noundef !7
  %switch.tableidx = add nsw i8 %i.b, -1
  %switch.idx.cast = zext nneg i8 %switch.tableidx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2466)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs_NtNtBW_10descriptor12file_optionsNtB2x_12OptimizeModeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB6_12OptimizeModeNtNtBa_9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !2466 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noalias !2466, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1                 ; 3 uses
  br i1 %i.f, label %bb.a, label %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.e, align 8, !noalias !2466, !nonnull !7, !noundef !7
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !2466
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.j = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ]
  %.sroa.5.0.i = load ptr, ptr %i.e, align 8, !noalias !2466, !nonnull !7, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !2466, !noundef !7
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !2466
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.m, align 8, !alias.scope !2466
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !2466
  invoke void @_RNvMs3_NtNtCscmhy3HNZezq_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.idx.cast)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2467
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit
  br i1 %i.f, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2468
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB4_12OptimizeModeNtNtB8_9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs_NtNtBW_10descriptor12file_optionsNtB2x_12OptimizeModeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor12file_optionsNtB6_12OptimizeModeNtNtBa_9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
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

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull10descriptor(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(1) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = load i8, ptr %1, align 1, !range !20, !noundef !7
  %switch.tableidx = add nsw i8 %i.b, -1
  %switch.idx.cast = zext nneg i8 %switch.tableidx to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2491)
  %i.c = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs_NtNtBW_10descriptor22field_descriptor_protoNtB2x_4TypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB6_4TypeNtNtBa_9enum_full8EnumFull15enum_descriptor10descriptor), !noalias !2491 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !10, !noalias !2491, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.f = trunc nuw i64 %i.d to i1                 ; 3 uses
  br i1 %i.f, label %bb.a, label %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit

bb.a:                                             ; preds = %switch.lookup
  %i.g = load ptr, ptr %i.e, align 8, !noalias !2491, !nonnull !7, !noundef !7
  %i.h = atomicrmw add ptr %i.g, i64 1 monotonic, align 8, !noalias !2491
  %i.i = icmp slt i64 %i.h, 0
  br i1 %i.i, label %bb.b, label %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.trap()
  unreachable

_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit: ; preds = %switch.lookup, %bb.a
  %i.j = phi i64 [ 0, %switch.lookup ], [ 1, %bb.a ]
  %.sroa.5.0.i = load ptr, ptr %i.e, align 8, !noalias !2491, !nonnull !7, !noundef !7 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noalias !2491, !noundef !7
  store i64 %i.j, ptr %i.a, align 8, !alias.scope !2491
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr %.sroa.5.0.i, ptr %i.m, align 8, !alias.scope !2491
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.l, ptr %i.n, align 8, !alias.scope !2491
  invoke void @_RNvMs3_NtNtCscmhy3HNZezq_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a, i64 noundef %switch.idx.cast)
          to label %bb.f unwind label %bb.c

bb.c:                                             ; preds = %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  br i1 %i.f, label %bb.d, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.d:                                             ; preds = %bb.c
  %i.p = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2492
  %i.q = icmp eq i64 %i.p, 1
  br i1 %i.q, label %bb.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit

bb.e:                                             ; preds = %bb.d
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit unwind label %bb.i

bb.f:                                             ; preds = %_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor.exit
  br i1 %i.f, label %bb.g, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.g:                                             ; preds = %bb.f
  %i.r = atomicrmw sub ptr %.sroa.5.0.i, i64 1 release, align 8, !noalias !2493
  %i.s = icmp eq i64 %i.r, 1
  br i1 %i.s, label %bb.h, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

bb.h:                                             ; preds = %bb.g
  fence acquire
  call void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcNtNtNtNtCscmhy3HNZezq_8protobuf7reflect4file7dynamic21DynamicFileDescriptorE9drop_slowBO_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #36
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit2: ; preds = %bb.f, %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.i:                                             ; preds = %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #35
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorEBH_.exit: ; preds = %bb.d, %bb.c, %bb.e
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB4_4TypeNtNtB8_9enum_full8EnumFull15enum_descriptor(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef nonnull align 8 ptr @_RINvMs4_NtCsj0QONEI1KtQ_9once_cell4syncINtB6_8OnceCellNtNtNtCscmhy3HNZezq_8protobuf7reflect5enums14EnumDescriptorE15get_or_try_initNCINvB2_11get_or_initNCNvXs_NtNtBW_10descriptor22field_descriptor_protoNtB2x_4TypeNtNtBW_9enum_full8EnumFull15enum_descriptor0E0NtNvMs4_B6_IBC_pE11get_or_init4VoidEBW_(ptr noundef nonnull align 8 @_RNvNvXs_NtNtCscmhy3HNZezq_8protobuf10descriptor22field_descriptor_protoNtB6_4TypeNtNtBa_9enum_full8EnumFull15enum_descriptor10descriptor) ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !range !10, !noundef !7
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8
  %i.g = icmp slt i64 %i.f, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.b ]
  %.sroa.5.0 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = load i64, ptr %i.h, align 8, !noundef !7
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

; Function Attrs: nonlazybind uwtable
define void @_RNvXs_NtNtNtCscmhy3HNZezq_8protobuf7reflect8repeated4iterNtB4_19ReflectRepeatedIterNtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4next(ptr dead_on_unwind noalias nofree noundef writable sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !align !8, !noundef !7
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !7, !nonnull !7
  tail call void %i.e(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %0, ptr noundef nonnull %i.a) #37
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXsc_NtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_NtB5_9ListValueNtNtB9_7message7Message10merge_from(ptr noalias nofree noundef align 8 dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 6 uses
  %i.b = alloca [88 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 11 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call fastcc void @_RNvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB2_16CodedInputStream24read_raw_varint32_or_eof(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1) #37
  %i.d = load i32, ptr %i.c, align 8, !range !15, !noundef !7
  %i.e = trunc nuw i32 %i.d to i1
  br i1 %i.e, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.617.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  %.sroa.68.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.811.0..sroa_idx12 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  br label %bb.b

._crit_edge:                                      ; preds = %bb.l, %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !align !8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit

bb.b:                                             ; preds = %.lr.ph, %bb.l
  %i.m = load i32, ptr %i.f, align 4, !range !15, !noundef !7
  %i.n = load i32, ptr %i.g, align 8              ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.o = trunc nuw i32 %i.m to i1
  br i1 %i.o, label %bb.c, label %.loopexit

bb.c:                                             ; preds = %bb.b
  %i.p = icmp eq i32 %i.n, 10
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMNtCscmhy3HNZezq_8protobuf18coded_input_streamNtB3_16CodedInputStream12read_messageNtNtNtB5_16well_known_types7struct_5ValueEB5_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(none) dereferenceable(88) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1)
  %i.q = load i8, ptr %i.b, align 8, !range !19, !noundef !7 ; 2 uses
  %i.r = icmp eq i8 %i.q, -2
  br i1 %i.r, label %bb.f, label %bb.g

bb.e:                                             ; preds = %bb.c
  %i.s = tail call noundef align 8 ptr @_RNvNtNtCscmhy3HNZezq_8protobuf2rt16unknown_or_group26read_unknown_or_skip_group(i32 noundef %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.h) ; 2 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %bb.l, label %.loopexit

bb.f:                                             ; preds = %bb.d
  %i.t = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !nonnull !7, !align !8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

bb.g:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.66.0..sroa_idx7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.4.0..sroa_idx, i64 7, i1 false)
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.811.0..sroa_idx12, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.617.0..sroa_idx, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i8 %i.q, ptr %i.a, align 8
  store ptr %.sroa.5.0.copyload, ptr %.sroa.68.0..sroa_idx9, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  %i.u = load i64, ptr %i.i, align 8, !alias.scope !2497, !noalias !2498, !noundef !7 ; 3 uses
  %i.v = load i64, ptr %0, align 8, !range !12, !alias.scope !2497, !noalias !2498, !noundef !7
  %i.w = icmp eq i64 %i.u, %i.v
  br i1 %i.w, label %bb.h, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5ValueE8push_mutBL_.exit

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5ValueE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5ValueE8push_mutBL_.exit unwind label %bb.i, !noalias !2498

bb.i:                                             ; preds = %bb.h
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCscmhy3HNZezq_8protobuf16well_known_types7struct_5ValueEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.a) #34
          to label %bb.k unwind label %bb.j, !noalias !2497

end_hunk_1
