Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tt-074ab6a9494814c0.tt.ca9dd2c6b789c2-cgu.1?download=true
inline.NumInlined: 233
inline.NumDeleted: 138
begin_hunk_0_@_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor3end:bb.a
  store i64 %i.s, ptr %i.c, align 8
  %i.t = load i64, ptr %i.r, align 8, !range !9, !noundef !5
  %i.u = icmp samesign ult i64 %i.s, %i.t
  tail call void @llvm.assume(i1 %i.u)
  %i.v = icmp ult i64 %i.d, 1152921504606846977
  tail call void @llvm.assume(i1 %i.v)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor4bump(ptr noalias nofree noundef align 8 dereferenceable(72) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !314)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !314, !noalias !315, !noundef !5 ; 2 uses
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 64
  %.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !314, !noalias !315, !nonnull !5, !noundef !5
  %i.h = getelementptr [8 x i8], ptr %i.g, i64 %i.e
  %i.i = getelementptr i8, ptr %i.h, i64 -8
  %.val.i = load i64, ptr %i.i, align 8, !noalias !316, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !317
  call fastcc void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor2at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i64 noundef %.val.i), !noalias !318
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 44
  %i.k = load i8, ptr %i.j, align 4, !range !4, !noalias !317, !noundef !5
  %switch.i.i = icmp ugt i8 %i.k, -3
  br i1 %switch.i.i, label %bb.c, label %bb.d, !prof !13

bb.c:                                             ; preds = %bb.b
  call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_(ptr noalias nofree noundef align 8 dereferenceable(48) %i.a), !noalias !317
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @2, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23, !noalias !317
  unreachable

bb.d:                                             ; preds = %bb.b
  %.sroa.5.8.copyload = load i32, ptr %i.a, align 8, !noalias !314
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !317
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.l = zext i32 %.sroa.5.8.copyload to i64
  %i.m = add i64 %.val.i, 1
  %i.n = add i64 %i.m, %i.l                       ; 2 uses
  store i64 %i.n, ptr %i.c, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %bb.e, !prof !7

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.o, ptr noundef nonnull @9, ptr nonnull inttoptr (i64 105 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #23
  unreachable

bb.g:                                             ; preds = %._crit_edge, %bb.e
  %i.r = phi i64 [ %.pre, %._crit_edge ], [ %i.p, %bb.e ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 3 uses
  call fastcc void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor2at(ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %0, i64 noundef %i.r)
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.u = load i8, ptr %i.t, align 4, !range !4, !noundef !5 ; 2 uses
  %switch = icmp ugt i8 %i.u, -3
  br i1 %switch, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %i.v = icmp eq i8 %i.u, -2
  br i1 %i.v, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !320)
  %.val.i.i = load i32, ptr %i.b, align 8, !range !6, !alias.scope !321, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i = load ptr, ptr %i.w, align 8, !alias.scope !321
  tail call fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt4LeafEBD_(i32 %.val.i.i, ptr %.val1.i.i), !noalias !321
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit

bb.j:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.y = load i64, ptr %i.s, align 8, !noundef !5
  %i.z = load i64, ptr %i.d, align 8, !alias.scope !322, !noundef !5 ; 3 uses
  %i.aa = load i64, ptr %i.x, align 8, !range !9, !alias.scope !322, !noundef !5
  %i.ab = icmp eq i64 %i.z, %i.aa
  br i1 %i.ab, label %bb.k, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit9

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsldOuP8y2tPE_15crossbeam_utils(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.x) #28
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit9

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit9: ; preds = %bb.k, %bb.j
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !322, !nonnull !5, !noundef !5
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.z
  store i64 %i.y, ptr %i.ae, align 8
  %i.af = add i64 %i.z, 1
  store i64 %i.af, ptr %i.d, align 8, !alias.scope !322
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit: ; preds = %bb.i, %bb.h, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_.exit9
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = load i64, ptr %i.s, align 8, !noundef !5
  %i.ah = add i64 %i.ag, 1
  store i64 %i.ah, ptr %i.s, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor7crossed(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.b = load i64, ptr %i.a, align 8, !noundef !5 ; 2 uses
  %i.c = icmp ult i64 %i.b, 1152921504606846976
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 32, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #23
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !326, !noalias !327, !noundef !5
  %.not.i.i.i = icmp ugt i64 %i.f, %i.h
  br i1 %.not.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load i64, ptr %1, align 8, !range !14, !alias.scope !326, !noalias !327, !noundef !5
  %.sroa.7.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.7.0.i = load ptr, ptr %.sroa.7.0.in.i, align 8, !alias.scope !326, !noalias !327, !nonnull !5, !align !12, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !5, !align !15, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !noundef !5
  store i64 %i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.7.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.k, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.m, ptr %i.o, align 8
  ret void

bb.e:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #23
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCs4dcH4YgJDq_2tt(ptr noalias nofree noundef nonnull readonly captures(none) %0, i64 noundef range(i64 0, -9223372036854775808) %1, ptr noalias nofree noundef nonnull readonly captures(none) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #3 {
bb.a:
  %.not = icmp samesign ult i64 %1, %3
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a, %bb.c
  %.sroa.0.0 = phi i1 [ %i.a, %bb.c ], [ false, %bb.a ]
  ret i1 %.sroa.0.0

bb.c:                                             ; preds = %bb.a
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly %2, ptr nonnull readonly %0, i64 range(i64 0, -9223372036854775808) %3)
  %i.a = icmp eq i32 %bcmp.i, 0
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i1 } @_RNvMs2_NtCs3gqD4ldeioo_8indexmap3mapINtB5_8IndexMapNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE11insert_fullBR_(ptr noalias nofree noundef align 8 dereferenceable(56) %0, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(12) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load i32, ptr %1, align 4, !alias.scope !377, !noalias !378, !noundef !5 ; 3 uses
  %i.d = zext i32 %i.c to i64
  %i.e = mul i64 %i.d, -1065810590584100411
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.g = load i32, ptr %i.f, align 4, !alias.scope !377, !noalias !378, !noundef !5 ; 3 uses
  %i.h = zext i32 %i.g to i64
  %i.i = add i64 %i.e, %i.h
  %i.j = mul i64 %i.i, -1065810590584100411
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.l = load i32, ptr %i.k, align 4, !alias.scope !377, !noalias !378, !noundef !5 ; 3 uses
  %i.m = zext i32 %i.l to i64
  %i.n = add i64 %i.j, %i.m
  %i.o = mul i64 %i.n, -1065810590584100411       ; 2 uses
  %i.p = tail call noundef i64 @llvm.fshl.i64(i64 %i.o, i64 %i.o, i64 26) ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !379)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !379, !noalias !380, !nonnull !5, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !379, !noalias !380, !noundef !5 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !381, !noalias !382, !noundef !5
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.b, label %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.y = tail call { i64, i64 } @_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE14reserve_rehashNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1U_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.u, i64 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %i.r, i64 noundef %i.t, i1 noundef zeroext true) #28, !noalias !383 ; 0 uses
  br label %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i

_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i: ; preds = %bb.b, %bb.a
  %.val.i.i = load ptr, ptr %i.u, align 8, !alias.scope !384, !noalias !385, !nonnull !5, !noundef !5 ; 8 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.val5.i.i = load i64, ptr %i.z, align 8, !alias.scope !384, !noalias !385, !noundef !5 ; 4 uses
  %i.aa = lshr i64 %i.p, 57
  %i.ab = trunc nuw nsw i64 %i.aa to i8           ; 3 uses
  %i.ac = insertelement <16 x i8> poison, i8 %i.ab, i64 0
  %i.ad = shufflevector <16 x i8> %i.ac, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.h, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i
  %.pn.i.i.i = phi i64 [ %i.p, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i ], [ %i.bm, %bb.h ]
  %.sroa.4.0.i.i.i = phi i64 [ undef, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i ], [ %.sroa.4.125.i.i.i, %bb.h ]
  %.sroa.01.0.i.i.i = phi i64 [ 0, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i ], [ %.sroa.01.127.i.i.i, %bb.h ]
  %i.ae = phi i64 [ 0, %_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_.exit.i.i ], [ %i.bl, %bb.h ]
  %.sroa.0.021.i.i.i = and i64 %.pn.i.i.i, %.val5.i.i ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.0.021.i.i.i
  %.sroa.0.0.copyload.i32.i.i.i = load <16 x i8>, ptr %i.af, align 1, !noalias !386 ; 3 uses
  %i.ag = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i, %i.ad
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not37.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not37.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.c, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i
  %.sroa.05.038.i.i.i = phi i16 [ %i.bb, %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i ], [ %i.ah, %bb.c ] ; 3 uses
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.038.i.i.i, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.0.021.i.i.i, %i.aj
  %i.al = and i64 %i.ak, %.val5.i.i
  %i.am = sub nsw i64 0, %i.al
  %i.an = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.am
  %i.ao = getelementptr inbounds i8, ptr %i.an, i64 -8
  %.val.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !387, !noundef !5 ; 6 uses
  %i.ap = icmp ult i64 %.val.i.i.i.i, %i.t
  br i1 %i.ap, label %bb.d, label %bb.f

bb.d:                                             ; preds = %.lr.ph.i.i.i
  %i.aq = getelementptr inbounds nuw [24 x i8], ptr %i.r, i64 %.val.i.i.i.i ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load i32, ptr %i.ar, align 4, !alias.scope !388, !noalias !389, !noundef !5
  %i.at = icmp eq i32 %i.c, %i.as
  br i1 %i.at, label %bb.e, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i, !prof !390

bb.e:                                             ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 12
  %i.av = load i32, ptr %i.au, align 4, !alias.scope !388, !noalias !389, !noundef !5
  %i.aw = icmp eq i32 %i.g, %i.av
  br i1 %i.aw, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.i.i.i, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i, !prof !390

bb.f:                                             ; preds = %.lr.ph.i.i.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.t, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #23, !noalias !391
  unreachable

_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.i.i.i: ; preds = %bb.e
  %i.ax = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ay = load i32, ptr %i.ax, align 4, !alias.scope !388, !noalias !389, !noundef !5
  %i.az = icmp eq i32 %i.l, %i.ay
  br i1 %i.az, label %bb.s, label %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i, !prof !392

._crit_edge.i.i.i:                                ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i, %bb.c
  %.not11.i.i.i = icmp eq i64 %.sroa.01.0.i.i.i, 1
  br i1 %.not11.i.i.i, label %.thread.i.i.i, label %bb.g, !prof !7

_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.thread.i.i.i: ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.i.i.i, %bb.e, %bb.d
  %i.ba = add i16 %.sroa.05.038.i.i.i, -1
  %i.bb = and i16 %i.ba, %.sroa.05.038.i.i.i      ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.bb, 0
  br i1 %.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.g:                                             ; preds = %._crit_edge.i.i.i
  %i.bc = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i.i, zeroinitializer
  %i.bd = bitcast <16 x i1> %i.bc to i16          ; 2 uses
  %.not.i.i.i.i = icmp eq i16 %i.bd, 0
  br i1 %.not.i.i.i.i, label %bb.h, label %.thread29.i.i.i, !prof !7

.thread29.i.i.i:                                  ; preds = %bb.g
  %i.be = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.bd, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = add i64 %.sroa.0.021.i.i.i, %i.bf
  %i.bh = and i64 %i.bg, %.val5.i.i
  br label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %.thread29.i.i.i, %._crit_edge.i.i.i
  %.sroa.4.126.i.i.i = phi i64 [ %i.bh, %.thread29.i.i.i ], [ %.sroa.4.0.i.i.i, %._crit_edge.i.i.i ] ; 3 uses
  %i.bi = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i.i, splat (i8 -1)
  %i.bj = bitcast <16 x i1> %i.bi to i16
  %i.bk = icmp eq i16 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %bb.i, !prof !7

bb.h:                                             ; preds = %.thread.i.i.i, %bb.g
  %.sroa.01.127.i.i.i = phi i64 [ 1, %.thread.i.i.i ], [ 0, %bb.g ]
  %.sroa.4.125.i.i.i = phi i64 [ %.sroa.4.126.i.i.i, %.thread.i.i.i ], [ undef, %bb.g ]
  %i.bl = add i64 %i.ae, 16                       ; 2 uses
  %i.bm = add i64 %i.bl, %.sroa.0.021.i.i.i
  br label %bb.c

bb.i:                                             ; preds = %.thread.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.4.126.i.i.i
  %i.bo = load i8, ptr %i.bn, align 1, !noalias !383, !noundef !5 ; 2 uses
  %i.bp = icmp sgt i8 %i.bo, -1
  br i1 %i.bp, label %bb.j, label %bb.k, !prof !7

bb.j:                                             ; preds = %bb.i
  %.val62.i.i.i.i = load <16 x i8>, ptr %.val.i.i, align 16, !noalias !383
  %i.bq = icmp slt <16 x i8> %.val62.i.i.i.i, zeroinitializer
  %i.br = bitcast <16 x i1> %i.bq to i16          ; 2 uses
  %.not.i22.i.i.i = icmp ne i16 %i.br, 0
  %i.bs = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.br, i1 true)
  %i.bt = zext nneg i16 %i.bs to i64              ; 2 uses
  tail call void @llvm.assume(i1 %.not.i22.i.i.i)
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.bt
  %.pre.i = load i8, ptr %.phi.trans.insert.i, align 1, !noalias !393
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.bu = phi i8 [ %.pre.i, %bb.j ], [ %i.bo, %bb.i ]
  %.sroa.3.0.i.ph.i.i = phi i64 [ %i.bt, %bb.j ], [ %.sroa.4.126.i.i.i, %bb.i ] ; 3 uses
  %i.bv = load i64, ptr %i.s, align 8, !alias.scope !379, !noalias !380, !noundef !5 ; 3 uses
  %i.bw = icmp ult i64 %i.bv, 384307168202282326
  tail call void @llvm.assume(i1 %i.bw)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !394)
  %i.bx = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.sroa.3.0.i.ph.i.i
  %i.by = and i8 %i.bu, 1
  %i.bz = zext nneg i8 %i.by to i64
  %i.ca = add i64 %.sroa.3.0.i.ph.i.i, -16
  %i.cb = and i64 %i.ca, %.val5.i.i
  store i8 %i.ab, ptr %i.bx, align 1, !noalias !393
  %i.cc = getelementptr i8, ptr %.val.i.i, i64 %i.cb
  %i.cd = getelementptr i8, ptr %i.cc, i64 16
  store i8 %i.ab, ptr %i.cd, align 1, !noalias !393
  %i.ce = load <2 x i64>, ptr %i.v, align 8, !alias.scope !395, !noalias !380
  %i.cf = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bz, i64 0
  %i.cg = sub <2 x i64> %i.ce, %i.cf
  store <2 x i64> %i.cg, ptr %i.v, align 8, !alias.scope !395, !noalias !380
  %i.ch = sub nsw i64 0, %.sroa.3.0.i.ph.i.i
  %i.ci = getelementptr inbounds [8 x i8], ptr %.val.i.i, i64 %i.ch
  %i.cj = getelementptr inbounds i8, ptr %i.ci, i64 -8
  store i64 %i.bv, ptr %i.cj, align 8, !noalias !393
  tail call void @llvm.experimental.noalias.scope.decl(metadata !396)
  %i.ck = load i64, ptr %i.s, align 8, !alias.scope !397, !noalias !398, !noundef !5 ; 9 uses
  %i.cl = icmp ult i64 %i.ck, 384307168202282326
  tail call void @llvm.assume(i1 %i.cl)
  %i.cm = load i64, ptr %0, align 8, !range !9, !alias.scope !397, !noalias !398, !noundef !5
  %i.cn = icmp eq i64 %i.ck, %i.cm
  br i1 %i.cn, label %bb.l, label %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit_crit_edge.i

._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit_crit_edge.i: ; preds = %bb.k
  %.pre19.i = load ptr, ptr %i.q, align 8, !alias.scope !399, !noalias !400
  br label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i

bb.l:                                             ; preds = %bb.k
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !402, !noalias !398, !noundef !5
  %i.cq = load i64, ptr %i.v, align 8, !alias.scope !402, !noalias !398, !noundef !5
  %i.cr = add i64 %i.cq, %i.cp                    ; 2 uses
  %..i.i.i.i = tail call noundef range(i64 0, 384307168202282326) i64 @llvm.umin.i64(i64 %i.cr, i64 384307168202282325) ; 3 uses
  %i.cs = sub nsw i64 %..i.i.i.i, %i.ck
  %i.ct = icmp ugt i64 %i.cs, 1
  br i1 %i.ct, label %bb.o, label %bb.m

bb.m:                                             ; preds = %bb.q, %bb.o, %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !404)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !405)
  %i.cu = add nuw nsw i64 %i.ck, 1                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !406
  %.val12.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !407, !noalias !398
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, i64 %i.ck, ptr %.val12.i.i.i.i.i.i, i64 noundef %i.cu, i64 noundef 8, i64 noundef 24), !noalias !408
  %i.cv = load i64, ptr %i.b, align 8, !range !10, !noalias !406, !noundef !5
  %i.cw = trunc nuw i64 %i.cv to i1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.cw, label %bb.n, label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.thread4.i.i

bb.n:                                             ; preds = %bb.m
  %i.cy = load i64, ptr %i.cx, align 8, !range !11, !noalias !406, !noundef !5
  %i.cz = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.da = load i64, ptr %i.cz, align 8, !noalias !406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.cy, i64 %i.da) #24, !noalias !409
  unreachable

_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.thread4.i.i: ; preds = %bb.m
  %i.db = load ptr, ptr %i.cx, align 8, !noalias !406, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !406
  br label %bb.r

bb.o:                                             ; preds = %bb.l
  tail call void @llvm.experimental.noalias.scope.decl(metadata !410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  %i.dc = icmp ult i64 %i.cr, %i.ck
  br i1 %i.dc, label %bb.m, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !412
  %.val12.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !413, !noalias !398
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.ck, ptr %.val12.i.i.i.i.i, i64 noundef %..i.i.i.i, i64 noundef 8, i64 noundef 24), !noalias !414
  %i.dd = load i64, ptr %i.a, align 8, !range !10, !noalias !412, !noundef !5
  %i.de = trunc nuw i64 %i.dd to i1
  br i1 %i.de, label %bb.q, label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.i.i

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !412
  br label %bb.m

_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.i.i: ; preds = %bb.p
  %i.df = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dg = load ptr, ptr %i.df, align 8, !noalias !412, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !412
  br label %bb.r

bb.r:                                             ; preds = %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.i.i, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.thread4.i.i
  %storemerge.i = phi ptr [ %i.dg, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.i.i ], [ %i.db, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.thread4.i.i ] ; 2 uses
  %..i.sink.i.i.i = phi i64 [ %..i.i.i.i, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.i.i ], [ %i.cu, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_.exit.thread4.i.i ]
  store ptr %storemerge.i, ptr %i.q, align 8, !alias.scope !402, !noalias !398
  store i64 %..i.sink.i.i.i, ptr %0, align 8, !alias.scope !402, !noalias !398
  br label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i

_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i: ; preds = %bb.r, %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit_crit_edge.i
  %2 = phi ptr [ %.pre19.i, %._RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit_crit_edge.i ], [ %storemerge.i, %bb.r ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !415)
  %i.dh = getelementptr inbounds nuw [24 x i8], ptr %2, i64 %i.ck ; 4 uses
  store i64 %i.p, ptr %i.dh, align 8, !noalias !416
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  store i32 %i.c, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !396
  %.sroa.4.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 12
  store i32 %i.g, ptr %.sroa.4.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 4, !noalias !396
  %.sroa.4.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  store i32 %i.l, ptr %.sroa.4.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx, align 8, !noalias !396
  %i.di = add nuw nsw i64 %i.ck, 1
  store i64 %i.di, ptr %i.s, align 8, !alias.scope !399, !noalias !400
  br label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_.exit

bb.s:                                             ; preds = %_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_.exit.i.i.i
  %i.dj = load i64, ptr %i.s, align 8, !alias.scope !379, !noalias !380, !noundef !5 ; 2 uses
  %i.dk = icmp ult i64 %.val.i.i.i.i, %i.dj
  br i1 %i.dk, label %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_.exit, label %bb.t

bb.t:                                             ; preds = %bb.s
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.val.i.i.i.i, i64 noundef %i.dj, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #23, !noalias !380
  unreachable

_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_.exit: ; preds = %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i, %bb.s
  %.sroa.3.0.i = phi i1 [ false, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i ], [ true, %bb.s ]
  %.sroa.0.0.i = phi i64 [ %i.bv, %_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_.exit.i ], [ %.val.i.i.i.i, %bb.s ]
  %i.dl = insertvalue { i64, i1 } poison, i64 %.sroa.0.0.i, 0
  %i.dm = insertvalue { i64, i1 } %i.dl, i1 %.sroa.3.0.i, 1
  ret { i64, i1 } %i.dm
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden { i64, i64 } @_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner16shrink_uncheckedCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %3) unnamed_addr #2 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val10 = load ptr, ptr %i.a, align 8           ; 3 uses
  %i.b = icmp eq i64 %3, 0
  %i.c = icmp eq i64 %.val, 0
  %or.cond.i = select i1 %i.b, i1 true, i1 %i.c
  br i1 %or.cond.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = mul nuw i64 %.val, %3                    ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val10) ]
  %i.e = icmp eq i64 %1, 0
  br i1 %i.e, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.b
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2) #25
  %i.f = inttoptr i64 %2 to ptr
  store ptr %i.f, ptr %i.a, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit
  store i64 %1, ptr %0, align 8
  br label %bb.e

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit: ; preds = %bb.b
  %i.g = mul nuw i64 %3, %1                       ; 3 uses
  %i.h = icmp ule i64 %i.g, %i.d
  tail call void @llvm.assume(i1 %i.h)
  %i.i = tail call noundef ptr @_RNvCsiZ68L5R9VjM_7___rustc14___rust_realloc(ptr noundef nonnull %.val10, i64 noundef %i.d, i64 noundef range(i64 1, -9223372036854775807) %2, i64 noundef %i.g) #25 ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit
  store ptr %i.i, ptr %i.a, align 8
  %i.k = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.k)
  br label %bb.c

bb.e:                                             ; preds = %bb.a, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit, %bb.c
  %.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %i.g, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i64 [ -1, %bb.c ], [ %2, %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator6shrink.exit ], [ -1, %bb.a ]
  %i.l = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.m = insertvalue { i64, i64 } %i.l, i64 %.sroa.4.0, 1
  ret { i64, i64 } %i.m
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEE8grow_oneB1n_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !419)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !419
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !419
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !419
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noalias !419, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !419, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !419
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !419, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !419
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !419
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !419
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !422
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !422
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 16), !noalias !422
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noalias !422, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !422, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !422
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !422, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !422
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !422
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !422
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !425)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !425
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !425
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 24), !noalias !425
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noalias !425, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !425, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !425
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !425, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !425
  store ptr %i.l, ptr %i.e, align 8, !alias.scope !425
  %i.m = icmp sgt i64 %i.d, -1
  tail call void @llvm.assume(i1 %i.m)
  store i64 %i.d, ptr %0, align 8, !alias.scope !425
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage96EE8grow_oneBR_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = load i64, ptr %0, align 8, !range !9, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !428)
  %i.c = shl nuw i64 %i.b, 1
  %i.d = tail call i64 @llvm.umax.i64(i64 %i.c, i64 4) ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !428
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val13.i = load ptr, ptr %i.e, align 8, !alias.scope !428
  call fastcc void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs4dcH4YgJDq_2tt(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.a, i64 %i.b, ptr %.val13.i, i64 noundef %i.d, i64 noundef 8, i64 noundef 32), !noalias !428
  %i.f = load i64, ptr %i.a, align 8, !range !10, !noalias !428, !noundef !5
  %i.g = trunc nuw i64 %i.f to i1
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br i1 %i.g, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %i.h, align 8, !range !11, !noalias !428, !noundef !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !428
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !428
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.i, i64 %i.k) #24
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %i.h, align 8, !noalias !428, !nonnull !5, !noundef !5
end_hunk_0
begin_hunk_1_@llvm.umin.i64
!162 = distinct !{!162, !161, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 1"}
!163 = distinct !{!163, !161, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 0"}
!164 = distinct !{!164, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_"}
!165 = distinct !{!165, !164, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 1"}
!166 = distinct !{!166, !164, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 0"}
!167 = distinct !{!167, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_"}
!168 = distinct !{!168, !167, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 1"}
!169 = distinct !{!169, !167, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage32NtB4_11SpanStorage4spanB6_: argument 0"}
!170 = distinct !{!170, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64E6to_apiB7_"}
!171 = distinct !{!171, !170, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64E6to_apiB7_: argument 1"}
!172 = distinct !{!172, !170, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64E6to_apiB7_: argument 2"}
!173 = distinct !{!173, !170, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage64E6to_apiB7_: argument 0"}
!174 = distinct !{!174, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_"}
!175 = distinct !{!175, !174, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 1"}
!176 = distinct !{!176, !174, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 0"}
!177 = distinct !{!177, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_"}
!178 = distinct !{!178, !177, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 1"}
!179 = distinct !{!179, !177, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 0"}
!180 = distinct !{!180, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_"}
!181 = distinct !{!181, !180, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 1"}
!182 = distinct !{!182, !180, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 0"}
!183 = distinct !{!183, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_"}
!184 = distinct !{!184, !183, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 1"}
!185 = distinct !{!185, !183, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 0"}
!186 = distinct !{!186, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_"}
!187 = distinct !{!187, !186, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 1"}
!188 = distinct !{!188, !186, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage64NtB4_11SpanStorage4spanB6_: argument 0"}
!189 = distinct !{!189, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96E6to_apiB7_"}
!190 = distinct !{!190, !189, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96E6to_apiB7_: argument 1"}
!191 = distinct !{!191, !189, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96E6to_apiB7_: argument 2"}
!192 = distinct !{!192, !189, !"_RNvMsa_NtCs4dcH4YgJDq_2tt7storageINtB5_9TokenTreeNtB5_13SpanStorage96E6to_apiB7_: argument 0"}
!193 = distinct !{!193, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_"}
!194 = distinct !{!194, !193, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 1"}
!195 = distinct !{!195, !193, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 2"}
!196 = distinct !{!196, !193, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 0"}
!197 = distinct !{!197, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_"}
!198 = distinct !{!198, !197, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 1"}
!199 = distinct !{!199, !197, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 2"}
!200 = distinct !{!200, !197, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 0"}
!201 = distinct !{!201, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_"}
!202 = distinct !{!202, !201, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 1"}
!203 = distinct !{!203, !201, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 2"}
!204 = distinct !{!204, !201, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 0"}
!205 = distinct !{!205, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_"}
!206 = distinct !{!206, !205, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 1"}
!207 = distinct !{!207, !205, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 2"}
!208 = distinct !{!208, !205, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 0"}
!209 = distinct !{!209, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_"}
!210 = distinct !{!210, !209, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 1"}
!211 = distinct !{!211, !209, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 2"}
!212 = distinct !{!212, !209, !"_RNvYNtNtCs4dcH4YgJDq_2tt7storage13SpanStorage96NtB4_11SpanStorage4spanB6_: argument 0"}
!213 = !{!152}
!214 = !{!153}
!215 = !{!154, !153}
!216 = !{i32 0, i32 1114112}
!217 = !{i8 0, i8 3}
!218 = !{!156}
!219 = !{!157, !156, !154, !152, !153}
!220 = !{!156, !153}
!221 = !{!157, !154, !152}
!222 = !{!159}
!223 = !{!160, !159, !154, !152, !153}
!224 = !{!159, !153}
!225 = !{!160, !154, !152}
!226 = !{!162}
!227 = !{!163, !162, !154, !152, !153}
!228 = !{!162, !153}
!229 = !{!163, !154, !152}
!230 = !{!165, !153}
!231 = !{!166, !154, !152}
!232 = !{i8 0, i8 11}
!233 = !{!168, !153}
!234 = !{!169, !154, !152}
!235 = !{i8 0, i8 2}
!236 = !{!171}
!237 = !{!172}
!238 = !{!173, !172}
!239 = !{!175}
!240 = !{!176, !175, !173, !171, !172}
!241 = !{!175, !172}
!242 = !{!176, !173, !171}
!243 = !{!178}
!244 = !{!179, !178, !173, !171, !172}
!245 = !{!178, !172}
!246 = !{!179, !173, !171}
!247 = !{!181}
!248 = !{!182, !181, !173, !171, !172}
!249 = !{!181, !172}
!250 = !{!182, !173, !171}
!251 = !{!184, !172}
!252 = !{!185, !173, !171}
!253 = !{!187, !172}
!254 = !{!188, !173, !171}
!255 = !{!190}
!256 = !{!191}
!257 = !{!192, !191}
!258 = !{!194}
!259 = !{!195}
!260 = !{!194, !190}
!261 = !{!196, !195, !192, !191}
!262 = !{!198}
!263 = !{!199}
!264 = !{!198, !190}
!265 = !{!200, !199, !192, !191}
!266 = !{!200, !198, !199, !192, !190, !191}
!267 = !{!199, !191}
!268 = !{!200, !198, !192, !190}
!269 = !{!202}
!270 = !{!203}
!271 = !{!202, !190}
!272 = !{!204, !203, !192, !191}
!273 = !{!206}
!274 = !{!207}
!275 = !{!206, !190}
!276 = !{!208, !207, !192, !191}
!277 = !{!208, !206, !207, !192, !190, !191}
!278 = !{!207, !191}
!279 = !{!208, !206, !192, !190}
!280 = !{!210}
!281 = !{!211}
!282 = !{!210, !190}
!283 = !{!212, !211, !192, !191}
!284 = !{!212, !210, !211, !192, !190, !191}
!285 = !{!211, !191}
!286 = !{!212, !210, !192, !190}
!287 = !{!195, !191}
!288 = !{!196, !194, !192, !190}
!289 = !{!203, !191}
!290 = !{!204, !202, !192, !190}
!291 = distinct !{!291, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree"}
!292 = distinct !{!292, !291, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree: argument 1"}
!293 = distinct !{!293, !291, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree: argument 0"}
!294 = distinct !{!294, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_"}
!295 = distinct !{!295, !294, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_: argument 1"}
!296 = distinct !{!296, !294, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_: argument 0"}
!297 = !{!292}
!298 = !{!293}
!299 = !{!293, !292}
!300 = !{!296, !295, !293, !292}
!301 = !{!296, !293}
!302 = distinct !{!302, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree"}
!303 = distinct !{!303, !302, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree: argument 1"}
!304 = distinct !{!304, !302, !"_RNvMNtCs4dcH4YgJDq_2tt6bufferNtB2_6Cursor12last_subtree: argument 0"}
!305 = distinct !{!305, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_"}
!306 = distinct !{!306, !305, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_: argument 1"}
!307 = distinct !{!307, !305, !"_RNCNvMNtCs4dcH4YgJDq_2tt6bufferNtB4_6Cursor12last_subtree0B6_: argument 0"}
!308 = distinct !{!308, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_"}
!309 = distinct !{!309, !308, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtCs4dcH4YgJDq_2tt9TokenTreeEEBZ_: argument 0"}
!310 = distinct !{!310, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_"}
!311 = distinct !{!311, !310, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_: argument 0"}
!312 = distinct !{!312, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjE8push_mutCs4dcH4YgJDq_2tt"}
!313 = distinct !{!313, !312, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecjE8push_mutCs4dcH4YgJDq_2tt: argument 0"}
!314 = !{!303}
!315 = !{!304}
!316 = !{!304, !303}
!317 = !{!307, !306, !304, !303}
!318 = !{!307, !304}
!319 = !{!309}
!320 = !{!311}
!321 = !{!311, !309}
!322 = !{!313}
!323 = distinct !{!323, !"_RINvMs2_Cs4dcH4YgJDq_2ttNtB6_17TokenTreesReprRef3getINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEEB6_"}
!324 = distinct !{!324, !323, !"_RINvMs2_Cs4dcH4YgJDq_2ttNtB6_17TokenTreesReprRef3getINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEEB6_: argument 1"}
!325 = distinct !{!325, !323, !"_RINvMs2_Cs4dcH4YgJDq_2ttNtB6_17TokenTreesReprRef3getINtNtNtCshzWfHUSfYae_4core3ops5range7RangeTojEEB6_: argument 0"}
!326 = !{!324}
!327 = !{!325}
!328 = distinct !{!328, !"_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEB1D_"}
!329 = distinct !{!329, !328, !"_RINvYNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherNtNtCshzWfHUSfYae_4core4hash11BuildHasher8hash_oneRNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartEB1D_: argument 0"}
!330 = distinct !{!330, !"_RINvXsk_NtCs4dcH4YgJDq_2tt7storageNtB6_18CompressedSpanPartNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB8_"}
!331 = distinct !{!331, !330, !"_RINvXsk_NtCs4dcH4YgJDq_2tt7storageNtB6_18CompressedSpanPartNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB8_: argument 0"}
!332 = distinct !{!332, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBJ_"}
!333 = distinct !{!333, !332, !"_RINvXs3_NtNtCshzWfHUSfYae_4core4hash5implsRNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartNtB8_4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEBJ_: argument 0"}
!334 = distinct !{!334, !330, !"_RINvXsk_NtCs4dcH4YgJDq_2tt7storageNtB6_18CompressedSpanPartNtNtCshzWfHUSfYae_4core4hash4Hash4hashNtCsh04pLiDBs3j_10rustc_hash8FxHasherEB8_: argument 1"}
!335 = distinct !{!335, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_"}
!336 = distinct !{!336, !335, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_: argument 0"}
!337 = distinct !{!337, !335, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE11insert_fullBO_: argument 1"}
!338 = distinct !{!338, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB24_E0NCINvB1n_8get_hashB24_uE0EB28_"}
!339 = distinct !{!339, !338, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 0"}
!340 = distinct !{!340, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_"}
!341 = distinct !{!341, !340, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_: argument 0"}
!342 = distinct !{!342, !338, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 2"}
!343 = distinct !{!343, !338, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB24_E0NCINvB1n_8get_hashB24_uE0EB28_: argument 1"}
!344 = distinct !{!344, !340, !"_RINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB6_8RawTablejE7reserveNCINvNtCs3gqD4ldeioo_8indexmap5inner8get_hashNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE0EB1M_: argument 1"}
!345 = distinct !{!345, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128"}
!346 = distinct !{!346, !345, !"_RNvNtNtNtCshzWfHUSfYae_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!347 = distinct !{!347, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_"}
!348 = distinct !{!348, !347, !"_RNCINvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB8_8RawTablejE25find_or_find_insert_indexNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuB26_E0NCINvB1p_8get_hashB26_uE0E0B2a_: argument 0"}
!349 = distinct !{!349, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartINtB2_10EquivalentBs_E10equivalentBw_"}
!350 = distinct !{!350, !349, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartINtB2_10EquivalentBs_E10equivalentBw_: argument 1"}
!351 = distinct !{!351, !"_RNvXsi_NtCs4dcH4YgJDq_2tt7storageNtB5_18CompressedSpanPartNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq"}
!352 = distinct !{!352, !351, !"_RNvXsi_NtCs4dcH4YgJDq_2tt7storageNtB5_18CompressedSpanPartNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 1"}
!353 = distinct !{!353, !"_RNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuBL_E0BP_"}
!354 = distinct !{!354, !353, !"_RNCINvNtCs3gqD4ldeioo_8indexmap5inner10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuBL_E0BP_: argument 0"}
!355 = distinct !{!355, !349, !"_RNvXCslbz2dGnOj3d_10equivalentNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartINtB2_10EquivalentBs_E10equivalentBw_: argument 0"}
!356 = distinct !{!356, !351, !"_RNvXsi_NtCs4dcH4YgJDq_2tt7storageNtB5_18CompressedSpanPartNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq: argument 0"}
!357 = distinct !{!357, !"_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCs4dcH4YgJDq_2tt"}
!358 = distinct !{!358, !357, !"_RNvMs6_NtCsaH4Z5sDJ4bD_9hashbrown3rawINtB5_8RawTablejE22insert_tagged_at_indexCs4dcH4YgJDq_2tt: argument 0"}
!359 = distinct !{!359, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_"}
!360 = distinct !{!360, !359, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_: argument 0"}
!361 = distinct !{!361, !359, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE10push_entryBO_: argument 1"}
!362 = distinct !{!362, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEE8push_mutB1g_"}
!363 = distinct !{!363, !362, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEE8push_mutB1g_: argument 0"}
!364 = distinct !{!364, !362, !"_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtCs3gqD4ldeioo_8indexmap6BucketNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuEE8push_mutB1g_: argument 1"}
!365 = distinct !{!365, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_"}
!366 = distinct !{!366, !365, !"_RNvMs_NtCs3gqD4ldeioo_8indexmap5innerINtB4_4CoreNtNtCs4dcH4YgJDq_2tt7storage18CompressedSpanPartuE15reserve_entriesBO_: argument 0"}
!367 = distinct !{!367, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs4dcH4YgJDq_2tt"}
!368 = distinct !{!368, !367, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCs4dcH4YgJDq_2tt: argument 0"}
!369 = distinct !{!369, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4dcH4YgJDq_2tt"}
!370 = distinct !{!370, !369, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4dcH4YgJDq_2tt: argument 0"}
!371 = distinct !{!371, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs4dcH4YgJDq_2tt"}
!372 = distinct !{!372, !371, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs4dcH4YgJDq_2tt: argument 0"}
!373 = distinct !{!373, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4dcH4YgJDq_2tt"}
!374 = distinct !{!374, !373, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner17try_reserve_exactCs4dcH4YgJDq_2tt: argument 0"}
!375 = distinct !{!375, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs4dcH4YgJDq_2tt"}
!376 = distinct !{!376, !375, !"_RNvMs2_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner10grow_exactCs4dcH4YgJDq_2tt: argument 0"}
!377 = !{!331, !329}
!378 = !{!334, !333}
!379 = !{!336}
!380 = !{!337}
!381 = !{!341, !339, !336}
!382 = !{!344, !343, !342, !337}
!383 = !{!343, !337}
!384 = !{!339, !336}
!385 = !{!343, !342, !337}
!386 = !{!346, !343, !337}
!387 = !{!348, !343, !337}
!388 = !{!352, !350}
!389 = !{!356, !355, !354, !348, !343, !337}
!390 = !{!"branch_weights", i32 2146410443, i32 1073205}
!391 = !{!354, !348, !343, !337}
!392 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!393 = !{!358, !337}
!394 = !{!358}
!395 = !{!358, !336}
!396 = !{!360}
!397 = !{!360, !336}
!398 = !{!361, !337}
!399 = !{!363, !360, !336}
!400 = !{!364, !361, !337}
!401 = !{!366}
!402 = !{!366, !360, !336}
!403 = !{!368}
!404 = !{!370}
!405 = !{!372}
!406 = !{!372, !370, !368, !366, !360, !361, !336, !337}
!407 = !{!372, !370, !368, !366, !360, !336}
!408 = !{!372, !370, !368, !366, !360, !361, !337}
!409 = !{!368, !366, !360, !361, !337}
!410 = !{!374}
!411 = !{!376}
!412 = !{!376, !374, !366, !360, !361, !336, !337}
!413 = !{!376, !374, !366, !360, !336}
!414 = !{!376, !374, !366, !360, !361, !337}
!415 = !{!363}
!416 = !{!363, !360, !361, !337}
!417 = distinct !{!417, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt"}
!418 = distinct !{!418, !417, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt: argument 0"}
!419 = !{!418}
!420 = distinct !{!420, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt"}
!421 = distinct !{!421, !420, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt: argument 0"}
!422 = !{!421}
!423 = distinct !{!423, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt"}
!424 = distinct !{!424, !423, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt: argument 0"}
!425 = !{!424}
!426 = distinct !{!426, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt"}
!427 = distinct !{!427, !426, !"_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner14grow_amortizedCs4dcH4YgJDq_2tt: argument 0"}
!428 = !{!427}
!429 = distinct !{!429, !"_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl8truncateBO_"}
!430 = distinct !{!430, !429, !"_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl8truncateBO_: argument 0"}
!431 = distinct !{!431, !"_RNvXs0_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl7set_lenBU_"}
!432 = distinct !{!432, !431, !"_RNvXs0_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl7set_lenBU_: argument 0"}
!433 = !{!430}
!434 = !{!432, !430}
!435 = distinct !{!435, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_"}
!436 = distinct !{!436, !435, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage32EEBH_: argument 0"}
!437 = distinct !{!437, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_"}
!438 = distinct !{!438, !437, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_: argument 0"}
!439 = distinct !{!439, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_"}
!440 = distinct !{!440, !439, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage32EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_: argument 0"}
!441 = !{!436}
!442 = !{!438}
!443 = !{!440}
!444 = distinct !{!444, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_"}
!445 = distinct !{!445, !444, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBF_13SpanStorage64EEBH_: argument 0"}
!446 = distinct !{!446, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_"}
!447 = distinct !{!447, !446, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_: argument 0"}
!448 = distinct !{!448, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_"}
!449 = distinct !{!449, !448, !"_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCs4dcH4YgJDq_2tt7storage9TokenTreeNtBP_13SpanStorage64EENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBR_: argument 0"}
!450 = !{!445}
!451 = !{!447}
!452 = !{!449}
!453 = distinct !{!453, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtCs4dcH4YgJDq_2tt9TokenTreeEBE_"}
!454 = distinct !{!454, !453, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueSNtCs4dcH4YgJDq_2tt9TokenTreeEBE_: argument 0"}
!455 = distinct !{!455, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_"}
!456 = distinct !{!456, !455, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_: argument 0"}
!457 = distinct !{!457, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_"}
!458 = distinct !{!458, !457, !"_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtCs4dcH4YgJDq_2tt9TokenTreeEBD_: argument 0"}
!459 = !{!454}
!460 = !{i8 -1, i8 4}
!461 = !{!456, !454}
!462 = !{!458, !454}
!463 = distinct !{!463, !"_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl14push_uncheckedBO_"}
!464 = distinct !{!464, !463, !"_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl14push_uncheckedBO_: argument 1"}
!465 = distinct !{!465, !463, !"_RNvYINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl14push_uncheckedBO_: argument 0"}
!466 = distinct !{!466, !"_RNvXs0_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl7set_lenBU_"}
!467 = distinct !{!467, !466, !"_RNvXs0_NtCs474hSbRjvii_8arrayvec8arrayvecINtB5_8ArrayVecNtCs4dcH4YgJDq_2tt5PunctKj3_ENtNtB7_13arrayvec_impl12ArrayVecImpl7set_lenBU_: argument 0"}
!468 = !{!464}
!469 = !{!465, !464}
!470 = !{!467, !465}
end_hunk_1
