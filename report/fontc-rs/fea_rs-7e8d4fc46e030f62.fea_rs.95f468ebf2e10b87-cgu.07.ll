Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fontc-rs/original/fea_rs-7e8d4fc46e030f62.fea_rs.95f468ebf2e10b87-cgu.07?download=true
inline.NumInlined: 1709
inline.NumDeleted: 791
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs9_NtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10contextualNtB5_17SubContextBuilderNtB7_8RemapIds9remap_ids:bb.a
  %i.z = tail call { i64, i64 } @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_11LookupIdMap3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef %i.w, i64 %i.y), !noalias !4144 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  store i64 %i.aa, ptr %.sroa.0.02.i.i, align 8, !alias.scope !4143, !noalias !4141
  store i64 %i.ab, ptr %i.x, align 8, !alias.scope !4143, !noalias !4141
  %i.ac = icmp eq ptr %i.v, %i.t
  br i1 %i.ac, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit.i, label %.lr.ph.i.i

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit.i: ; preds = %.lr.ph.i.i, %.lr.ph.i
  %i.ad = icmp eq ptr %i.o, %i.m
  br i1 %i.ad, label %.loopexit.i, label %.lr.ph.i

_RNvXsa_NtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10contextualNtB5_14ContextBuilderNtB7_8RemapIds9remap_ids.exit: ; preds = %.loopexit.i, %bb.a
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsK_NtCsf3Ta7LF998c_4core3fmtNtB5_5ErrorNtB5_5Debug3fmt(ptr noalias nofree nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #15 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCsf3Ta7LF998c_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @62, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: write) uwtable
define hidden void @_RNvXsV_NtCsf3Ta7LF998c_4core5arrayAhja_NtNtB7_7default7Default7defaultCscScJTt9VrQp_6fea_rs(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([10 x i8]) align 1 captures(none) dereferenceable(10) initializes((0, 10)) %0) unnamed_addr #16 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %0, i8 0, i64 10, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write10write_char(ptr noalias nofree noundef align 8 dereferenceable(24) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4147, !noundef !4 ; 4 uses
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
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !4147, !nonnull !4, !noundef !4
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
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !4147, !nonnull !4, !noundef !4
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
  store i64 %i.aj, ptr %i.a, align 8, !alias.scope !4147
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsZ_NtCsgCecv3eZDcN_5alloc6stringNtB5_6StringNtNtCsf3Ta7LF998c_4core3fmt5Write9write_str(ptr noalias nofree noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #15 {
bb.a:
  tail call void @_RNvMs_NtCsgCecv3eZDcN_5alloc3vecINtB4_3VechE7reserveCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %2), !noalias !4153
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !4154, !noalias !4153, !noundef !4 ; 3 uses
  %i.c = icmp sgt i64 %i.b, -1
  tail call void @llvm.assume(i1 %i.c)
  %.not.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i, label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !4154, !noalias !4153, !nonnull !4, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.f, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i = load i64, ptr %i.a, align 8, !alias.scope !4154, !noalias !4153
  br label %_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit

_RNvMNtCsgCecv3eZDcN_5alloc6stringNtB2_6String8push_str.exit: ; preds = %bb.a, %bb.b
  %i.g = phi i64 [ %.pre.i.i, %bb.b ], [ %i.b, %bb.a ]
  %i.h = add i64 %i.g, %2
  store i64 %i.h, ptr %i.a, align 8, !alias.scope !4154, !noalias !4153
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsa_NtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10contextualNtB5_14ContextBuilderNtB7_8RemapIds9remap_ids(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %.idx8 = mul nuw nsw i64 %i.d, 72
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx8
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %._crit_edge, label %.lr.ph7

.loopexit:                                        ; preds = %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit, %.lr.ph7
  %i.g = icmp eq ptr %i.h, %i.e
  br i1 %i.g, label %._crit_edge, label %.lr.ph7

.lr.ph7:                                          ; preds = %bb.a, %.loopexit
  %.sroa.0.06 = phi ptr [ %i.h, %.loopexit ], [ %i.b, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 72 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.06, i64 40
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 2 uses
  %.idx9 = mul nuw nsw i64 %i.l, 48
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx9
  %i.n = icmp eq i64 %i.l, 0
  br i1 %i.n, label %.loopexit, label %.lr.ph

._crit_edge:                                      ; preds = %.loopexit, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph7, %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit
  %.sroa.02.05 = phi ptr [ %i.o, %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit ], [ %i.j, %.lr.ph7 ] ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.02.05, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.02.05, i64 32
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.02.05, i64 40
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.s, 4
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %i.u = icmp eq i64 %i.s, 0
  br i1 %i.u, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.0.02.i = phi ptr [ %i.v, %.lr.ph.i ], [ %i.q, %.lr.ph ] ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4157)
  %i.w = load i64, ptr %.sroa.0.02.i, align 8, !range !20, !alias.scope !4157, !noundef !4
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.0.02.i, i64 8 ; 2 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !4157
  %i.z = tail call { i64, i64 } @_RNvMs9_NtNtCscScJTt9VrQp_6fea_rs7compile7lookupsNtB5_11LookupIdMap3get(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, i64 noundef %i.w, i64 %i.y), !noalias !4157 ; 2 uses
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  store i64 %i.aa, ptr %.sroa.0.02.i, align 8, !alias.scope !4157
  store i64 %i.ab, ptr %i.x, align 8, !alias.scope !4157
  %i.ac = icmp eq ptr %i.v, %i.t
  br i1 %i.ac, label %_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit, label %.lr.ph.i

_RINvXs2Q_NtNtCsf3Ta7LF998c_4core5slice4iterINtB7_7IterMutNtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups8LookupIdENtNtNtNtBb_4iter6traits8iterator8Iterator8for_eachNCNvXsa_NtBV_10contextualNtB2G_14ContextBuilderNtBV_8RemapIds9remap_ids0EBZ_.exit: ; preds = %.lr.ph.i, %.lr.ph
  %i.ad = icmp eq ptr %i.o, %i.m
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos14PositionLookupKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4160
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4160 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos14PositionLookupE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos14PositionLookupECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos14PositionLookupE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos17CursivePosFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4163
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4163 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17CursivePosFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17CursivePosFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17CursivePosFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos17ExtensionSubtableKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4166
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4166 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17ExtensionSubtableE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17ExtensionSubtableECscScJTt9VrQp_6fea_rs(i64 %.val, ptr %.val1) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17ExtensionSubtableE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos17MarkLigPosFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4169
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4169 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17MarkLigPosFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17MarkLigPosFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos17MarkLigPosFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos18MarkBasePosFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4172
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4172 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkBasePosFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkBasePosFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkBasePosFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos18MarkMarkPosFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4175
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4175 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkMarkPosFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkMarkPosFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos18MarkMarkPosFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos7PairPosKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4178
  %i.a = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4178 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos7PairPosE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos7PairPosECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos7PairPosE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gpos9SinglePosKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(64) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4181
  %i.a = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 64, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4181 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos9SinglePosE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 64) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos9SinglePosECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(64) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gpos9SinglePosE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %0, i64 64, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub11SingleSubstKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4184
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4184 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub11SingleSubstE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub11SingleSubstECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub11SingleSubstE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub17ExtensionSubtableKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4187
  %i.a = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4187 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub17ExtensionSubtableE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  %.val = load i64, ptr %0, align 8, !range !4188, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.d, align 8
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub17ExtensionSubtableECscScJTt9VrQp_6fea_rs(i64 %.val, ptr %.val1) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub17ExtensionSubtableE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub18SubstitutionLookupKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(40) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4191
  %i.a = tail call noundef align 8 dereferenceable_or_null(40) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 40, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4191 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub18SubstitutionLookupE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 40) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub18SubstitutionLookupECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub18SubstitutionLookupE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub20LigatureSubstFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4194
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4194 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20LigatureSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20LigatureSubstFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20LigatureSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub20MultipleSubstFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4197
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4197 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20MultipleSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20MultipleSubstFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub20MultipleSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub21AlternateSubstFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4200
  %i.a = tail call noundef align 8 dereferenceable_or_null(32) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 32, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4200 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub21AlternateSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 32) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub21AlternateSubstFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub21AlternateSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables4gsub30ReverseChainSingleSubstFormat1Kj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4203
  %i.a = tail call noundef align 8 dereferenceable_or_null(80) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 80, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4203 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub30ReverseChainSingleSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 80) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub30ReverseChainSingleSubstFormat1ECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables4gsub30ReverseChainSingleSubstFormat1E3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.a, ptr noundef nonnull align 8 dereferenceable(80) %0, i64 80, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables6layout15SequenceContextKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4206
  %i.a = tail call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 48, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4206 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout15SequenceContextE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 48) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout15SequenceContextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout15SequenceContextE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %0, i64 48, i1 false)
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef nonnull align 8 ptr @_RNvXsb_NtCs6WnK4nVnpEz_11write_fonts7offsetsINtB5_12OffsetMarkerNtNtNtB7_6tables6layout22ChainedSequenceContextKj2_EINtNtCsf3Ta7LF998c_4core7convert4FromB10_E4fromCscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsh0WfaQiVYm0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35, !noalias !4209
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCsh0WfaQiVYm0_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 96, i64 noundef range(i64 1, -9223372036854775807) 8) #35, !noalias !4209 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout22ChainedSequenceContextE3newCscScJTt9VrQp_6fea_rs.exit, !prof !21

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsgCecv3eZDcN_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 96) #39
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsf3Ta7LF998c_4core3ptr9drop_glueNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout22ChainedSequenceContextECscScJTt9VrQp_6fea_rs(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) %0) #37
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsf3Ta7LF998c_4core9panicking16panic_in_cleanup() #38
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.c

_RNvMNtCsgCecv3eZDcN_5alloc5boxedINtB2_3BoxNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout22ChainedSequenceContextE3newCscScJTt9VrQp_6fea_rs.exit: ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.a, ptr noundef nonnull align 8 dereferenceable(96) %0, i64 96, i1 false)
  ret ptr %i.a
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsce_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_9ConditionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #17 {
bb.a:
  %i.a = load i16, ptr %0, align 8, !range !17, !noundef !4 ; 2 uses
  %i.b = load i16, ptr %1, align 8, !range !17, !noundef !4
  %i.c = icmp eq i16 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i16 [ %i.bg, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr626 = phi ptr [ %i.bf, %tailrecurse ], [ %1, %bb.a ] ; 12 uses
  %.tr25 = phi ptr [ %i.be, %tailrecurse ], [ %0, %bb.a ] ; 12 uses
  switch i16 %i.d, label %default.unreachable62 [
    i16 0, label %bb.b
    i16 1, label %bb.c
    i16 2, label %bb.d
    i16 3, label %bb.g
    i16 4, label %tailrecurse
  ]

_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph29, %.lr.ph34, %bb.a, %bb.i, %bb.f, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c, %bb.j, %bb.b, %bb.l, %bb.k
  %.sroa.0.0.shrunk = phi i1 [ %i.bs, %bb.k ], [ %i.ag, %.lr.ph34 ], [ %i.bx, %bb.l ], [ false, %bb.j ], [ false, %bb.c ], [ false, %bb.g ], [ false, %bb.h ], [ false, %bb.b ], [ false, %bb.e ], [ false, %bb.d ], [ true, %bb.i ], [ false, %bb.a ], [ true, %bb.f ], [ %i.ba, %.lr.ph29 ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable62:                            ; preds = %.lr.ph
  unreachable

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr25, i64 2
  %i.f = load i16, ptr %i.e, align 2, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %.tr626, i64 2
  %i.h = load i16, ptr %i.g, align 2, !noundef !4
  %i.i = icmp eq i16 %i.f, %i.h
  br i1 %i.i, label %bb.j, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr25, i64 8
  %i.k = load i16, ptr %i.j, align 4, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %.tr626, i64 8
  %i.m = load i16, ptr %i.l, align 4, !noundef !4
  %i.n = icmp eq i16 %i.k, %i.m
  br i1 %i.n, label %bb.l, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4227)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4228)
  %i.o = getelementptr inbounds nuw i8, ptr %.tr25, i64 32
  %i.p = load i8, ptr %i.o, align 8, !alias.scope !4227, !noalias !4228, !noundef !4
  %i.q = getelementptr inbounds nuw i8, ptr %.tr626, i64 32
  %i.r = load i8, ptr %i.q, align 8, !alias.scope !4228, !noalias !4227, !noundef !4
  %i.s = icmp eq i8 %i.p, %i.r
  br i1 %i.s, label %bb.e, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.tr25, i64 24
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !4227, !noalias !4228, !noundef !4 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.tr626, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !4228, !noalias !4227, !noundef !4
  %i.x = icmp eq i64 %i.u, %i.w
  br i1 %i.x, label %bb.f, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %bb.e
  %i.y = getelementptr inbounds nuw i8, ptr %.tr626, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !4228, !noalias !4227, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr25, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !4227, !noalias !4228, !nonnull !4, !noundef !4
  %.not532.not = icmp eq i64 %i.u, 0
  br i1 %.not532.not, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.f, %.lr.ph34
  %.sroa.01.0.i33 = phi i64 [ %i.ah, %.lr.ph34 ], [ 0, %bb.f ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.01.0.i33
  %i.ad = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %.sroa.01.0.i33
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4229)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4230)
  %i.ae = load ptr, ptr %i.ac, align 8, !alias.scope !4229, !noalias !4231, !nonnull !4, !noundef !4
  %i.af = load ptr, ptr %i.ad, align 8, !alias.scope !4230, !noalias !4232, !nonnull !4, !noundef !4
  %i.ag = tail call fastcc noundef zeroext i1 @_RNvXsce_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_9ConditionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ae, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.af) #40, !noalias !4233, !inline_history !4216 ; 2 uses
  %i.ah = add nuw i64 %.sroa.01.0.i33, 1          ; 2 uses
  %exitcond56.not = icmp ne i64 %i.ah, %i.u
  %or.cond.not = select i1 %i.ag, i1 %exitcond56.not, i1 false
  br i1 %or.cond.not, label %.lr.ph34, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4235)
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr25, i64 32
  %i.aj = load i8, ptr %i.ai, align 8, !alias.scope !4234, !noalias !4235, !noundef !4
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr626, i64 32
  %i.al = load i8, ptr %i.ak, align 8, !alias.scope !4235, !noalias !4234, !noundef !4
  %i.am = icmp eq i8 %i.aj, %i.al
  br i1 %i.am, label %bb.h, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %bb.g
  %i.an = getelementptr inbounds nuw i8, ptr %.tr25, i64 24
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !4234, !noalias !4235, !noundef !4 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr626, i64 24
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !4235, !noalias !4234, !noundef !4
  %i.ar = icmp eq i64 %i.ao, %i.aq
  br i1 %i.ar, label %bb.i, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.as = getelementptr inbounds nuw i8, ptr %.tr626, i64 16
  %i.at = load ptr, ptr %i.as, align 8, !alias.scope !4235, !noalias !4234, !nonnull !4, !noundef !4
  %i.au = getelementptr inbounds nuw i8, ptr %.tr25, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !4234, !noalias !4235, !nonnull !4, !noundef !4
  %.not27.not = icmp eq i64 %i.ao, 0
  br i1 %.not27.not, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit, label %.lr.ph29

.lr.ph29:                                         ; preds = %bb.i, %.lr.ph29
  %.sroa.01.0.i328 = phi i64 [ %i.bb, %.lr.ph29 ], [ 0, %bb.i ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.sroa.01.0.i328
  %i.ax = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.sroa.01.0.i328
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4237)
  %i.ay = load ptr, ptr %i.aw, align 8, !alias.scope !4236, !noalias !4238, !nonnull !4, !noundef !4
  %i.az = load ptr, ptr %i.ax, align 8, !alias.scope !4237, !noalias !4239, !nonnull !4, !noundef !4
  %i.ba = tail call fastcc noundef zeroext i1 @_RNvXsce_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_9ConditionNtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ay, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.az) #40, !noalias !4240, !inline_history !4223 ; 2 uses
  %i.bb = add nuw i64 %.sroa.01.0.i328, 1         ; 2 uses
  %exitcond.not = icmp ne i64 %i.bb, %i.ao
  %or.cond90.not = select i1 %i.ba, i1 %exitcond.not, i1 false
  br i1 %or.cond90.not, label %.lr.ph29, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr25, i64 8
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr626, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4241)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4242)
  %i.be = load ptr, ptr %i.bc, align 8, !alias.scope !4241, !noalias !4242, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = load ptr, ptr %i.bd, align 8, !alias.scope !4242, !noalias !4241, !nonnull !4, !noundef !4 ; 2 uses
  %i.bg = load i16, ptr %i.be, align 8, !range !17, !noundef !4 ; 2 uses
  %i.bh = load i16, ptr %i.bf, align 8, !range !17, !noundef !4
  %i.bi = icmp eq i16 %i.bg, %i.bh
  br i1 %i.bi, label %.lr.ph, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %.tr25, i64 4
  %i.bk = load i16, ptr %i.bj, align 2, !noundef !4
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr626, i64 4
  %i.bm = load i16, ptr %i.bl, align 2, !noundef !4
  %i.bn = icmp eq i16 %i.bk, %i.bm
  br i1 %i.bn, label %bb.k, label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.j
  %i.bo = getelementptr inbounds nuw i8, ptr %.tr25, i64 6
  %i.bp = load i16, ptr %i.bo, align 2, !noundef !4
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr626, i64 6
  %i.br = load i16, ptr %i.bq, align 2, !noundef !4
  %i.bs = icmp eq i16 %i.bp, %i.br
  br label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.c
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr626, i64 4
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr25, i64 4
  %i.bv = load i32, ptr %i.bu, align 4, !noundef !4
  %i.bw = load i32, ptr %i.bt, align 4, !noundef !4
  %i.bx = icmp eq i32 %i.bv, %i.bw
  br label %_RNvXscF_NtNtCs6WnK4nVnpEz_11write_fonts6tables6layoutNtB6_16ConditionFormat3NtNtCsf3Ta7LF998c_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10contextualNtB5_22PosChainContextBuilderNtNtNtNtCs6WnK4nVnpEz_11write_fonts6tables6layout8builders7Builder5build(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(128) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call fastcc void @_RNvMsc_NtNtNtCscScJTt9VrQp_6fea_rs7compile7lookups10contextualNtB5_19ChainContextBuilder5build(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext true)
end_hunk_0
