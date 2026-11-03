Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.05?download=true
inline.NumInlined: 492
inline.NumDeleted: 280
begin_hunk_0_@_RNvXs1a_NtCsgCecv3eZDcN_5alloc4syncINtB6_3ArceEINtNtCsf3Ta7LF998c_4core7convert4FromNtNtB8_6string6StringE4from:bb.a
  invoke void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable

common.resume:                                    ; preds = %bb.e, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.o, %bb.g ], [ %i.l, %bb.e ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtCsgCecv3eZDcN_5alloc6string6StringECscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.f
  %i.q = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i.i.i.i, 0
  %i.r = insertvalue { ptr, i64 } %i.q, i64 %i.d, 1
  tail call void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0)
  ret { ptr, i64 } %i.r

bb.i:                                             ; preds = %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #24
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsf3Ta7LF998c_4core3fmtRNtNtCsgCecv3eZDcN_5alloc6string18FromUtf16ErrorKindNtB6_5Debug3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val = load i8, ptr %i.a, align 1, !range !4, !noundef !5
  %i.b = trunc nuw i8 %.val to i1                 ; 2 uses
  %..i = select i1 %i.b, i64 8, i64 13
  %.1.i = select i1 %i.b, ptr @193, ptr @192
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.1.i, i64 noundef %..i)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArceENtB6_7Display3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !20, !noundef !5 ; 2 uses
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr i8, ptr %i.a, i64 8
  %.val1 = load i64, ptr %i.b, align 8, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.d = tail call noundef zeroext i1 @_RNvXsi_NtCsf3Ta7LF998c_4core3fmteNtB5_7Display3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.c, i64 noundef %.val1, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs7_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_4NodeNtNtCsf3Ta7LF998c_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvMs6_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_4Node10debug_impl(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1, i64 noundef 0)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #7 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @198, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsW_NtCsgCecv3eZDcN_5alloc4syncINtB5_3ArceENtNtCsf3Ta7LF998c_4core3fmt5Debug3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.e = tail call noundef zeroext i1 @_RNvXsh_NtCsf3Ta7LF998c_4core3fmteNtB5_5Debug3fmt(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #7 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !836, !noundef !5 ; 4 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i32 %1, 128
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.f = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i = select i1 %i.f, i64 3, i64 4
  %.sroa.0.0.ph.i = select i1 %i.e, i64 2, i64 %..i
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.ph.i)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !836, !nonnull !5, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 %i.b ; 9 uses
  %i.j = trunc i32 %1 to i8
  %i.k = and i8 %i.j, 63
  %i.l = or disjoint i8 %i.k, -128                ; 3 uses
  %i.m = lshr i32 %1, 6
  %i.n = trunc i32 %i.m to i8                     ; 2 uses
  %i.o = and i8 %i.n, 63
  %i.p = or disjoint i8 %i.o, -128                ; 2 uses
  %i.q = lshr i32 %1, 12
  %i.r = trunc i32 %i.q to i8                     ; 2 uses
  %i.s = and i8 %i.r, 63
  %i.t = or disjoint i8 %i.s, -128
  %i.u = lshr i32 %1, 18
  %i.v = trunc nuw nsw i32 %i.u to i8
  %i.w = or disjoint i8 %i.v, -16
  br i1 %i.e, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef 1)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !836, !nonnull !5, !noundef !5
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.b
  %i.aa = trunc nuw nsw i32 %1 to i8
  store i8 %i.aa, ptr %i.z, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.d:                                             ; preds = %bb.b
  %i.ab = or disjoint i8 %i.n, -64
  store i8 %i.ab, ptr %i.i, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.l, ptr %i.ac, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ad = or disjoint i8 %i.r, -32
  store i8 %i.ad, ptr %i.i, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.p, ptr %i.ae, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.l, ptr %i.af, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.w, ptr %i.i, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  store i8 %i.t, ptr %i.ag, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store i8 %i.p, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  store i8 %i.l, ptr %i.ai, align 1
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String4push.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.aj = add nuw i64 %.sroa.0.03.i, %i.b
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !836
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !842
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !843, !noundef !5 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !843, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !843
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !843
  ret i1 false
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden noundef i64 @_RNvXs_NvNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator10advance_byNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtB4_13SpecAdvanceBy15spec_advance_byB1h_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(160) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2v_13SpecAdvanceBy15spec_advance_by0INtNtBW_6option6OptionB1S_EEB7_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.a = load i64, ptr %0, align 8, !range !13, !alias.scope !851, !noundef !5
  %.not.i.i = icmp eq i64 %i.a, -1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  br i1 %.not.i.i, label %.split.us.i, label %.split.i

.split.us.i:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  br label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2v_13SpecAdvanceBy15spec_advance_by0INtNtBW_6option6OptionB1S_EEB7_.exit

.split.i:                                         ; preds = %bb.b
  %.promoted10.i = load i64, ptr %i.d, align 8, !alias.scope !850
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !850 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !850, !nonnull !5, !align !20
  %i.g = load ptr, ptr %i.f, align 8, !noalias !851, !nonnull !5, !noundef !5 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.i = load i64, ptr %i.h, align 8, !noalias !851, !noundef !5 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %umax.i = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %.promoted.i) ; 2 uses
  %i.k = add i64 %.promoted.i, %1
  %i.l = sub i64 %i.k, %umax.i
  br label %bb.c

bb.c:                                             ; preds = %bb.k, %.split.i
  %i.m = phi i64 [ %.promoted10.i, %.split.i ], [ %i.af, %bb.k ]
  %i.n = phi i64 [ %.promoted.i, %.split.i ], [ %i.ae, %bb.k ] ; 4 uses
  %.sroa.01.0.i = phi i64 [ %1, %.split.i ], [ %i.ag, %bb.k ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %.not.i = icmp ult i64 %i.n, %i.i
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !853)
  br label %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i

bb.e:                                             ; preds = %bb.c
  %i.o = load ptr, ptr %i.j, align 8, !noalias !851, !nonnull !5, !noundef !5
  %i.p = getelementptr inbounds nuw [32 x i8], ptr %i.o, i64 %i.n ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 28
  %i.r = load i16, ptr %i.q, align 4, !range !11, !noalias !854, !noundef !5
  %.not.i.i.i = icmp eq i16 %i.r, -1
  br i1 %.not.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.s = load i8, ptr %i.p, align 8, !range !12, !noalias !854, !noundef !5 ; 2 uses
  %i.t = icmp samesign ugt i8 %i.s, 23
  %i.u = zext nneg i8 %i.s to i64                 ; 2 uses
  %i.v = add nsw i64 %i.u, -23
  %i.w = select i1 %i.t, i64 %i.v, i64 0
  switch i64 %i.w, label %bb.h [
    i64 0, label %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i
    i64 1, label %bb.i
    i64 2, label %bb.j
  ]

bb.g:                                             ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 12
  %i.y = load i32, ptr %i.x, align 4, !noalias !854, !noundef !5
  %i.z = zext i32 %i.y to i64
  br label %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i

bb.h:                                             ; preds = %bb.f
  unreachable

bb.i:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !noalias !854, !noundef !5
  br label %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i

bb.j:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %i.ad = load i64, ptr %i.ac, align 8, !noalias !854, !noundef !5
  br label %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i

_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i: ; preds = %bb.j, %bb.i, %bb.g, %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ 0, %bb.d ], [ %i.z, %bb.g ], [ %i.ab, %bb.i ], [ %i.ad, %bb.j ], [ %i.u, %bb.f ]
  store i8 1, ptr %i.c, align 8, !alias.scope !854
  %i.ae = add i64 %i.n, 1                         ; 2 uses
  store i64 %i.ae, ptr %i.b, align 8, !alias.scope !854
  %i.af = add i64 %.sroa.0.0.i.i.i, %i.m          ; 2 uses
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !854
  %exitcond.not.i = icmp eq i64 %i.n, %umax.i
  br i1 %exitcond.not.i, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2v_13SpecAdvanceBy15spec_advance_by0INtNtBW_6option6OptionB1S_EEB7_.exit, label %bb.k

bb.k:                                             ; preds = %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i
  %i.ag = add i64 %.sroa.01.0.i, -1               ; 2 uses
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2v_13SpecAdvanceBy15spec_advance_by0INtNtBW_6option6OptionB1S_EEB7_.exit, label %bb.c

_RINvYNtNtCscScJTt9VrQp_6fea_rs10token_tree9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator8try_foldINtNtNtBW_3num7nonzero7NonZerojENCNvXs_NvBO_10advance_byB3_NtB2v_13SpecAdvanceBy15spec_advance_by0INtNtBW_6option6OptionB1S_EEB7_.exit: ; preds = %bb.k, %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i, %.split.us.i, %bb.a
  %.sroa.0.1 = phi i64 [ 0, %bb.a ], [ %1, %.split.us.i ], [ 0, %bb.k ], [ %i.l, %_RNvXs0_NtCscScJTt9VrQp_6fea_rs10token_treeNtB5_9ChildIterNtNtNtNtCsf3Ta7LF998c_4core4iter6traits8iterator8Iterator4next.exit.i ]
  ret i64 %.sroa.0.1
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsz_NtNtCscScJTt9VrQp_6fea_rs5parse6sourceNtB5_15SourceLoadErrorNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8, !captures !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !5
  store ptr %i.f, ptr %i.b, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.h, ptr %i.i, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1b_NtCs5Xr050g3D4S_3std4pathNtB6_7DisplayNtNtCsf3Ta7LF998c_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.j, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtRINtNtCsgCecv3eZDcN_5alloc4sync3ArceENtB6_7Display3fmtCscScJTt9VrQp_6fea_rs, ptr %.sroa.47.0..sroa_idx, align 8
  %i.k = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !5, !align !20, !noundef !5
  %i.n = call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.m, ptr noundef nonnull @199, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.n
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef nonnull ptr @_RNvYNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBb_11RandomState3new4KEYS0s_0INtNtNtCsf3Ta7LF998c_4core3ops8function6FnOnceTINtNtB1l_6option6OptionQIB20_INtNtB1l_4cell4CellTyyEEEEEE9call_onceCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address_is_null) dereferenceable_or_null(24) %0) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call align 8 ptr @llvm.threadlocal.address.p0(ptr @_RNvNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtBa_11RandomState3new4KEYS0s_023___RUST_STD_INTERNAL_VAL) ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.c = load i8, ptr %i.b, align 8, !range !4, !noalias !859, !noundef !5
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscScJTt9VrQp_6fea_rs.exit, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef ptr @_RINvMs0_NtNtNtNtCs5Xr050g3D4S_3std3sys12thread_local6native4lazyINtB6_7StorageINtNtCsf3Ta7LF998c_4core4cell4CellTyyEEzE16get_or_init_slowNvNvNvMNtNtBe_4hash6randomNtB2i_11RandomState3new4KEYS27___rust_std_internal_init_fnECscScJTt9VrQp_6fea_rs(ptr noundef nonnull align 8 %i.a, ptr noalias nofree noundef align 8 dereferenceable_or_null(24) %0) ; 0 uses
  br label %_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscScJTt9VrQp_6fea_rs.exit

_RNCNKNvNvMNtNtCs5Xr050g3D4S_3std4hash6randomNtB8_11RandomState3new4KEYS0s_0CscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a, %bb.b
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvYNtNtCsgCecv3eZDcN_5alloc6string6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #1 {
_RNvXs_NvNtNtCsf3Ta7LF998c_4core3fmt5Write9write_fmtQNtNtCsgCecv3eZDcN_5alloc6string6StringNtB4_12SpecWriteFmt14spec_write_fmtCscScJTt9VrQp_6fea_rs.exit:
  %i.a = tail call noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @42, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !860
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden { ptr, ptr } @_RNvYNtNtNtCscScJTt9VrQp_6fea_rs5parse6source15SourceLoadErrorNtNtCsf3Ta7LF998c_4core5error5Error5causeB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %0) unnamed_addr #9 {
bb.a:
  ret { ptr, ptr } { ptr null, ptr undef }
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #10

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsB_Cs9NoVXegZYB5_8smol_strNtB5_4Repr3new(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtB9_4path4PathECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef i64 @_RINvYNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateNtNtCsf3Ta7LF998c_4core4hash11BuildHasher8hash_oneRNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEB1L_(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(4)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { i64, i64 } @_RNvNtCsgCecv3eZDcN_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #1

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef range(i64 1, -9223372036854775807), i64 noundef) unnamed_addr #14

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core9panicking19panic_cannot_unwind() unnamed_addr #13

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtCs5Xr050g3D4S_3std4path7PathBufNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropB1u_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs5parse6source6FileIdNtBR_6SourceEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsbDKHzkXHCUM_9hashbrown3rawINtB5_8RawTableTNtNtNtCscScJTt9VrQp_6fea_rs7compile15language_system14LanguageSystemuEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBV_(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCs5Xr050g3D4S_3std4path9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecNtNtNtCscScJTt9VrQp_6fea_rs5parse7context16IncludeStatementENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5token4KindjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBM_(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCsgCecv3eZDcN_5alloc3vecINtB5_3VecjRNtNtB7_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCs5Xr050g3D4S_3std4path9ComponentENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs10diagnostic10DiagnosticENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtCscScJTt9VrQp_6fea_rs10token_tree11NodeOrTokenENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs10token_tree6cursor7NodeRefENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecNtNtNtCscScJTt9VrQp_6fea_rs5parse7context16IncludeStatementENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecTNtNtNtCscScJTt9VrQp_6fea_rs10token_tree5token4KindjEENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropBT_(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVechENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCsgCecv3eZDcN_5alloc7raw_vecINtB5_6RawVecjRNtNtB7_5alloc6GlobalENtNtNtCsf3Ta7LF998c_4core3ops4drop4Drop4dropCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXsd_NtNtCsf3Ta7LF998c_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef align 8 dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCsf3Ta7LF998c_4core3fmt5write(ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvXs8_NtCsbDKHzkXHCUM_9hashbrown3setINtB6_7HashSetNtNtNtCscScJTt9VrQp_6fea_rs7compile15language_system14LanguageSystemNtNtNtCs5Xr050g3D4S_3std4hash6random11RandomStateEINtNtNtNtCsf3Ta7LF998c_4core4iter6traits7collect6ExtendBO_E6extendABO_j1_EBU_(ptr noalias nofree noundef align 8 dereferenceable(48), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXCsbDKHzkXHCUM_9hashbrownNtNtCs5Xr050g3D4S_3std4path4PathINtB2_10EquivalentNtBs_7PathBufE10equivalentCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare nonnull ptr @llvm.threadlocal.address.p0(ptr nonnull) #15

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1i_NtCsf3Ta7LF998c_4core3fmtReNtB6_7Display3fmtCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCsf3Ta7LF998c_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #12

; Function Attrs: nonlazybind uwtable
declare hidden { ptr, i64 } @_RINvMNtCsf3Ta7LF998c_4core3stre18trim_start_matchescECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, i32 noundef range(i32 0, 1114112)) unnamed_addr #1

end_hunk_0
