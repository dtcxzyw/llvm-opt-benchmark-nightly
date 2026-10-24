Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_io-49c95113d69d0886.polars_io.f964ffef671f36be-cgu.03?download=true
inline.NumInlined: 3287
inline.NumDeleted: 1477
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RNvMs_NtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB4_16CompressedReader7try_new:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(264) %.sroa.12.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(264) %i.g, i64 264, i1 false), !dbg !38056
  br label %bb.o, !dbg !38057

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !38058
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 24, !dbg !38059
  store i64 0, ptr %i.ad, align 8, !dbg !38059
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate22gz7bufreadINtB5_9GzDecoderINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([304 x i8]) align 8 captures(none) dereferenceable(304) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.f), !dbg !38060
  %i.ae = getelementptr inbounds nuw i8, ptr %i.a, i64 296, !dbg !38061
  store i8 1, ptr %i.ae, align 8, !dbg !38061
  %.sroa.011.0.copyload = load i64, ptr %i.a, align 8, !dbg !38062
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38062
  %.sroa.4.sroa.0.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !38062
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38062
  %.sroa.4.sroa.4.0.copyload = load ptr, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !38062
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !38062
  %i.af = load <2 x i64>, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8, !dbg !38062
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !38063
  br label %bb.i, !dbg !38064

bb.k:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38042
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !38066
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !38067
  store i64 0, ptr %i.ag, align 8, !dbg !38067
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate24zlib7bufreadINtB5_11ZlibDecoderINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([176 x i8]) align 8 captures(none) dereferenceable(176) %i.e, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.d), !dbg !38065
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !38068
  %.sroa.8.sroa.0.0.copyload22 = load i64, ptr %i.e, align 8, !dbg !38069
  %.sroa.8.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !38069
  %.sroa.8.sroa.8.0.copyload25 = load ptr, ptr %.sroa.8.sroa.8.0..sroa_idx, align 8, !dbg !38069
  %.sroa.8.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !38069
  %i.ah = load <2 x i64>, ptr %.sroa.8.sroa.9.0..sroa_idx, align 8, !dbg !38069
  %.sroa.12.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32, !dbg !38069
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.g, ptr noundef nonnull align 8 dereferenceable(144) %.sroa.12.8..sroa_idx, i64 144, i1 false), !dbg !38069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !38070
  br label %bb.i, !dbg !38070

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !38044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !38043
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !38071
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 24, !dbg !38072
  store i64 0, ptr %i.ai, align 8, !dbg !38072
  call void @_RNvMs_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB4_7DecoderINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEEE15with_dictionaryCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !38073
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !38074
  %i.aj = load i64, ptr %i.c, align 8, !dbg !38075, !range !1532, !noundef !1321 ; 2 uses
  %i.ak = icmp eq i64 %i.aj, 2, !dbg !38075
  %i.al = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !38076
  %i.am = load ptr, ptr %i.al, align 8, !dbg !38076 ; 2 uses
  br i1 %i.ak, label %bb.m, label %bb.n, !dbg !38077

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38078
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38079
  call void @_RNvXs5_CsgjwxzEoLG5s_12polars_errorNtB5_11PolarsErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE4from(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.an, ptr noundef nonnull %i.am), !dbg !38080
  store i64 -9223372036854775799, ptr %0, align 8, !dbg !38079
  br label %bb.o, !dbg !38057

bb.n:                                             ; preds = %bb.l
  %.sroa.639.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16, !dbg !38081
  %i.ao = load <2 x i64>, ptr %.sroa.639.0..sroa_idx, align 8, !dbg !38081
  %.sroa.8.0..sroa_idx40 = getelementptr inbounds nuw i8, ptr %i.c, i64 32, !dbg !38081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx40, i64 24, i1 false), !dbg !38081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !38078
  br label %bb.i, !dbg !38082

bb.o:                                             ; preds = %bb.m, %bb.i
  ret void, !dbg !38083
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable
define internal fastcc noundef i64 @_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner17find_insert_index(ptr nofree readonly captures(none) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #9 !dbg !1234 {
bb.a:
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %.sroa.0.07 = and i64 %0, %.8.val, !dbg !38109  ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.07, !dbg !38110
  %.sroa.0.0.copyload.i68 = load <16 x i8>, ptr %i.a, align 1, !dbg !38111, !noalias !38106
  %i.b = icmp slt <16 x i8> %.sroa.0.0.copyload.i68, zeroinitializer, !dbg !38112
  %i.c = bitcast <16 x i1> %i.b to i16, !dbg !38112 ; 2 uses
  %.not.i9 = icmp eq i16 %i.c, 0, !dbg !38113
  br i1 %.not.i9, label %.lr.ph, label %._crit_edge, !dbg !38114, !prof !1988

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %.sroa.0.07, %bb.a ], [ %.sroa.0.0, %.lr.ph ], !dbg !38109
  %.lcssa = phi i16 [ %i.c, %bb.a ], [ %i.t, %.lr.ph ], !dbg !38112
  %i.d = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true), !dbg !38115
  %i.e = zext nneg i16 %i.d to i64, !dbg !38116
  %i.f = add i64 %.sroa.0.0.lcssa, %i.e, !dbg !38117
  %i.g = and i64 %i.f, %.8.val, !dbg !38117       ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.g, !dbg !38118
  %i.i = load i8, ptr %i.h, align 1, !dbg !38119, !noundef !1321
  %i.j = icmp sgt i8 %i.i, -1, !dbg !38120
  br i1 %i.j, label %bb.b, label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !dbg !38120, !prof !1333

bb.b:                                             ; preds = %._crit_edge
  %.val72.i = load <16 x i8>, ptr %.0.val, align 16, !dbg !38121
  %i.k = icmp slt <16 x i8> %.val72.i, zeroinitializer, !dbg !38122
  %i.l = bitcast <16 x i1> %i.k to i16, !dbg !38122 ; 2 uses
  %.not.i6 = icmp ne i16 %i.l, 0, !dbg !38123
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.l, i1 true), !dbg !38124
  %i.n = zext nneg i16 %i.m to i64, !dbg !38124
  tail call void @llvm.assume(i1 %.not.i6), !dbg !38125
  br label %_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit, !dbg !38126

_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner16fix_insert_index.exit: ; preds = %._crit_edge, %bb.b
  %.sroa.0.0.i5 = phi i64 [ %i.n, %bb.b ], [ %i.g, %._crit_edge ]
  ret i64 %.sroa.0.0.i5, !dbg !38127

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.sroa.0.010 = phi i64 [ %.sroa.0.0, %.lr.ph ], [ %.sroa.0.07, %bb.a ]
  %i.o = phi i64 [ %i.p, %.lr.ph ], [ 0, %bb.a ]
  %i.p = add i64 %i.o, 16, !dbg !38128            ; 2 uses
  %i.q = add i64 %i.p, %.sroa.0.010, !dbg !38129
  %.sroa.0.0 = and i64 %i.q, %.8.val, !dbg !38109 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.0.val, i64 %.sroa.0.0, !dbg !38110
  %.sroa.0.0.copyload.i6 = load <16 x i8>, ptr %i.r, align 1, !dbg !38111, !noalias !38106
  %i.s = icmp slt <16 x i8> %.sroa.0.0.copyload.i6, zeroinitializer, !dbg !38112
  %i.t = bitcast <16 x i1> %i.s to i16, !dbg !38112 ; 2 uses
  %.not.i = icmp eq i16 %i.t, 0, !dbg !38113
  br i1 %.not.i, label %.lr.ph, label %._crit_edge, !dbg !38114, !prof !1989
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvNtCsgZ49sUHp3tW_5alloc3fmt6format(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #7 personality ptr @rust_eh_personality !dbg !995 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = ptrtoint ptr %2 to i64, !dbg !38172      ; 2 uses
  %i.c = and i64 %i.b, 1, !dbg !38173
  %.not = icmp eq i64 %i.c, 0, !dbg !38173
  %i.d = lshr i64 %i.b, 1, !dbg !38173            ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38165), !dbg !38174
  br i1 %.not, label %bb.e, label %bb.b, !dbg !38175

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38166), !dbg !38176
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38167), !dbg !38177
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38178, !noalias !38168
  call void @_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) %i.d, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !dbg !38178, !noalias !38168
  %i.e = load i64, ptr %i.a, align 8, !dbg !38178, !range !1368, !noalias !38168, !noundef !1321
  %i.f = trunc nuw i64 %i.e to i1, !dbg !38179
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38180
  %i.h = load i64, ptr %i.g, align 8, !dbg !38180, !range !1344, !noalias !38168, !noundef !1321 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38180 ; 2 uses
  br i1 %i.f, label %bb.c, label %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i.i.i, !dbg !38179, !prof !1333

bb.c:                                             ; preds = %bb.b
  %i.j = load i64, ptr %i.i, align 8, !dbg !38181, !noalias !38168
  tail call void @_RNvNtCsgZ49sUHp3tW_5alloc7raw_vec12handle_error(i64 noundef %i.h, i64 %i.j) #36, !dbg !38182, !noalias !38168
  unreachable, !dbg !38182

_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i.i.i: ; preds = %bb.b
  %i.k = load ptr, ptr %i.i, align 8, !dbg !38183, !noalias !38168, !nonnull !1321, !noundef !1321 ; 2 uses
  %i.l = icmp ule i64 %i.d, %i.h, !dbg !38184
  tail call void @llvm.assume(i1 %i.l), !dbg !38185
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38186, !noalias !38168
  %.not.i.i.i.i = icmp eq i64 %i.d, 0, !dbg !38187
  br i1 %.not.i.i.i.i, label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCslpwjCj2YNBy_9polars_io.exit.i, label %bb.d, !dbg !38187

bb.d:                                             ; preds = %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.k, ptr nonnull readonly align 1 %1, i64 range(i64 0, -9223372036854775808) %i.d, i1 false), !dbg !38188, !noalias !38169
  br label %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCslpwjCj2YNBy_9polars_io.exit.i, !dbg !38189

_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCslpwjCj2YNBy_9polars_io.exit.i: ; preds = %bb.d, %_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io.exit.i.i.i.i
  store i64 %i.h, ptr %0, align 8, !dbg !38190, !alias.scope !38170
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38190
  store ptr %i.k, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !dbg !38190, !alias.scope !38170
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38190
  store i64 %i.d, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !dbg !38190, !alias.scope !38170
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit, !dbg !38176

bb.e:                                             ; preds = %bb.a
  tail call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull %1, ptr noundef nonnull %2), !dbg !38191, !noalias !38171
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit, !dbg !38192

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsgZ49sUHp3tW_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECslpwjCj2YNBy_9polars_io.exit: ; preds = %_RNvYNvYeNtNtCsgZ49sUHp3tW_5alloc6borrow7ToOwned8to_ownedINtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTReEE9call_onceCslpwjCj2YNBy_9polars_io.exit.i, %bb.e
  ret void, !dbg !38193
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, i64 noundef %1, i64 noundef %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38194 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 9 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %2, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38297
  %i.g = trunc nuw i64 %3 to i1, !dbg !38298
  br i1 %i.g, label %bb.c, label %bb.b, !dbg !38298

bb.b:                                             ; preds = %bb.a
  %i.h = tail call noundef i64 @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud18concurrency_config23get_download_chunk_size(), !dbg !38299
  br label %bb.c, !dbg !38299

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.2.8.load12 = phi i64 [ %i.h, %bb.b ], [ %4, %bb.a ] ; 5 uses
  store i64 %.sroa.2.8.load12, ptr %i.d, align 8, !dbg !38300
  %.sroa.010.0 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %1), !dbg !38301 ; 6 uses
  %i.i = icmp eq i64 %.sroa.2.8.load12, 0, !dbg !38302
  br i1 %i.i, label %bb.d, label %bb.e, !dbg !38302

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #38, !dbg !38302
  unreachable, !dbg !38302

bb.e:                                             ; preds = %bb.c
  %i.j = udiv i64 %.sroa.010.0, %.sroa.2.8.load12, !dbg !38302 ; 2 uses
  %i.k = urem i64 %.sroa.010.0, %.sroa.2.8.load12, !dbg !38303
  %.not = icmp ne i64 %i.k, 0, !dbg !38304
  %i.l = zext i1 %.not to i64, !dbg !38304
  %.sroa.07.0 = add i64 %i.j, %i.l, !dbg !38304
  %.sroa.0.0.i = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %.sroa.07.0, i64 1), !dbg !38305 ; 3 uses
  %.sroa.0.0.i61 = tail call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.j, i64 1), !dbg !38306
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !38307, !noalias !38269
  tail call void @llvm.experimental.noalias.scope.decl(metadata !38270), !dbg !38308
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !38309
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !38309
  store i64 2, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !38309, !alias.scope !38271, !noalias !38272
  %.sroa.5.0..sroa_idx65 = getelementptr inbounds nuw i8, ptr %i.a, i64 32, !dbg !38309
  store i64 %.sroa.0.0.i, ptr %.sroa.5.0..sroa_idx65, align 8, !dbg !38309, !alias.scope !38271, !noalias !38272
  %.sroa.6.0..sroa_idx66 = getelementptr inbounds nuw i8, ptr %i.a, i64 40, !dbg !38309
  store i64 %.sroa.0.0.i61, ptr %.sroa.6.0..sroa_idx66, align 8, !dbg !38309, !alias.scope !38271, !noalias !38272
  store ptr %i.e, ptr %i.a, align 8, !dbg !38309, !alias.scope !38273, !noalias !38269
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !38309
  store ptr %i.d, ptr %i.n, align 8, !dbg !38309, !alias.scope !38273, !noalias !38269
  store i64 1, ptr %i.m, align 8, !dbg !38310, !alias.scope !38274, !noalias !38269
  %i.o = udiv i64 %.sroa.010.0, %.sroa.0.0.i, !dbg !38311
  %i.p = sub nsw i64 %i.o, %.sroa.2.8.load12, !dbg !38312
  %.sroa.0.0.i.i3.i.i.i = call noundef range(i64 0, -9223372036854775808) i64 @llvm.abs.i64(i64 %i.p, i1 true), !dbg !38312
  %i.q = call { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterjKj2_ENCINvNvNtNtNtBa_6traits8iterator8Iterator10min_by_key3keyjjNCNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store11split_range0E0EB1E_4foldTjjENCINvNvB1E_6min_by4foldB3R_INvB1C_7comparejjEE0EB2C_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.a, i64 noundef %.sroa.0.0.i.i3.i.i.i, i64 noundef %.sroa.0.0.i), !dbg !38313, !noalias !38291
  %i.r = extractvalue { i64, i64 } %i.q, 1, !dbg !38314 ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !38315, !noalias !38269
  store i64 %i.r, ptr %i.c, align 8, !dbg !38316
  %i.s = icmp eq i64 %i.r, 0, !dbg !38317
  br i1 %i.s, label %bb.f, label %bb.g, !dbg !38317

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtNtCscgRAwXFJnXP_4core9panicking11panic_const23panic_const_div_by_zero(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @213) #38, !dbg !38317
  unreachable, !dbg !38317

bb.g:                                             ; preds = %bb.e
  %i.t = udiv i64 %.sroa.010.0, %i.r, !dbg !38317
  %.sroa.0.0.i63 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.t, i64 1), !dbg !38318 ; 3 uses
  %i.u = udiv i64 %.sroa.010.0, %.sroa.0.0.i63, !dbg !38319
  %i.v = urem i64 %.sroa.010.0, %.sroa.0.0.i63, !dbg !38320
  %.sroa.0.0.i64 = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 %i.u, i64 1), !dbg !38321 ; 2 uses
  store i64 %.sroa.0.0.i64, ptr %i.b, align 8, !dbg !38322
  %i.w = icmp eq i64 %i.r, %.sroa.0.0.i64, !dbg !38323
  br i1 %i.w, label %bb.i, label %bb.h, !dbg !38323, !prof !1588

bb.h:                                             ; preds = %bb.g
  call void @_RINvNtCscgRAwXFJnXP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noundef null, ptr undef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @214) #38, !dbg !38324
  unreachable, !dbg !38324

bb.i:                                             ; preds = %bb.g
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !38325
  store i64 0, ptr %i.x, align 8, !dbg !38325
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !38325
  store i64 %i.r, ptr %i.y, align 8, !dbg !38325
  store i64 %1, ptr %0, align 8, !dbg !38325
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38325
  store i64 %2, ptr %.sroa.49.0..sroa_idx, align 8, !dbg !38325
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38325
  store i64 %.sroa.0.0.i63, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !38325
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !38325
  store i64 %i.v, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !38325
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !38326
  ret void, !dbg !38327
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store12merge_ranges(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([232 x i8]) align 8 captures(none) dereferenceable(232) initializes((0, 8), (80, 88), (160, 232)) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef range(i64 0, 576460752303423488) %2, i64 noundef range(i64 0, 2) %3, i64 %4) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38328 {
bb.a:
  %i.a = trunc nuw i64 %3 to i1, !dbg !38361
  br i1 %i.a, label %bb.c, label %bb.b, !dbg !38361

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef i64 @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud18concurrency_config23get_download_chunk_size(), !dbg !38362
  br label %bb.c, !dbg !38362

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.02.0 = phi i64 [ %i.b, %bb.b ], [ %4, %bb.a ], !dbg !38363 ; 2 uses
  %.not = icmp eq i64 %2, 0, !dbg !38364
  br i1 %.not, label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orBJ_NvYBJ_NtNtB5_5clone5Clone5cloneECslpwjCj2YNBy_9polars_io.exit, label %bb.d, !dbg !38365

bb.d:                                             ; preds = %bb.c
  %.val.i = load i64, ptr %1, align 8, !dbg !38366, !alias.scope !38352, !noundef !1321
  %i.c = getelementptr i8, ptr %1, i64 8, !dbg !38366
  %.val5.i = load i64, ptr %i.c, align 8, !dbg !38366, !alias.scope !38353, !noundef !1321
  br label %_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orBJ_NvYBJ_NtNtB5_5clone5Clone5cloneECslpwjCj2YNBy_9polars_io.exit, !dbg !38367

_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtNtB5_3ops5range5RangejEE6map_orBJ_NvYBJ_NtNtB5_5clone5Clone5cloneECslpwjCj2YNBy_9polars_io.exit: ; preds = %bb.c, %bb.d
  %.sroa.3.0.i = phi i64 [ %.val5.i, %bb.d ], [ 0, %bb.c ], !dbg !38368 ; 2 uses
  %.sroa.02.0.i = phi i64 [ %.val.i, %bb.d ], [ 0, %bb.c ], !dbg !38368 ; 2 uses
  %.sroa.3.0 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.3.0.i, i64 %.sroa.02.0.i), !dbg !38369
  store i64 0, ptr %0, align 8, !dbg !38370
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 80, !dbg !38370
  store i64 0, ptr %.sroa.526.0..sroa_idx, align 8, !dbg !38370
  %.sroa.728.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160, !dbg !38370
  store ptr %1, ptr %.sroa.728.0..sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.4.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 168, !dbg !38370
  store i64 %2, ptr %.sroa.728.sroa.4.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.5.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176, !dbg !38370
  store i64 %.sroa.02.0.i, ptr %.sroa.728.sroa.5.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.6.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184, !dbg !38370
  store i64 %.sroa.3.0.i, ptr %.sroa.728.sroa.6.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.7.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 192, !dbg !38370
  store i64 %.sroa.02.0, ptr %.sroa.728.sroa.7.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.8.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200, !dbg !38370
  store i64 %.sroa.3.0, ptr %.sroa.728.sroa.8.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.9.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208, !dbg !38370
  store i64 0, ptr %.sroa.728.sroa.9.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.10.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216, !dbg !38370
  store i64 %2, ptr %.sroa.728.sroa.10.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  %.sroa.728.sroa.11.0..sroa.728.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224, !dbg !38370
  store i64 %.sroa.02.0, ptr %.sroa.728.sroa.11.0..sroa.728.0..sroa_idx.sroa_idx, align 8, !dbg !38370
  ret void, !dbg !38371
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtNtCslpwjCj2YNBy_9polars_io5utils11compression22maybe_decompress_bytes(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #1 personality ptr @rust_eh_personality !dbg !38372 {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 16               ; 5 uses
  %i.c = alloca [72 x i8], align 16               ; 5 uses
  %i.d = alloca [40 x i8], align 8                ; 7 uses
  %i.e = alloca [40 x i8], align 8                ; 10 uses
  %i.f = alloca [192 x i8], align 8               ; 10 uses
  %i.g = alloca [320 x i8], align 8               ; 12 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !38533 ; 2 uses
  %i.i = load i64, ptr %i.h, align 8, !dbg !38533, !noundef !1321 ; 2 uses
  %i.j = icmp sgt i64 %i.i, -1, !dbg !38534
  tail call void @llvm.assume(i1 %i.j), !dbg !38535
  %i.k = icmp eq i64 %i.i, 0, !dbg !38536
  br i1 %i.k, label %bb.b, label %bb.i, !dbg !38536, !prof !1588

bb.b:                                             ; preds = %bb.a
  %i.l = icmp samesign ult i64 %2, 4, !dbg !38537
  br i1 %i.l, label %bb.j, label %bb.c, !dbg !38537

bb.c:                                             ; preds = %bb.b
  %i.m = load i8, ptr %1, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  switch i8 %i.m, label %bb.j [
    i8 31, label %bb.d
    i8 120, label %bb.e
    i8 40, label %bb.f
  ], !dbg !38538

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !38538
  %i.o = load i8, ptr %i.n, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  %i.p = icmp eq i8 %i.o, -117, !dbg !38538
  br i1 %i.p, label %bb.k, label %bb.j, !dbg !38538

bb.e:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !38538
  %i.r = load i8, ptr %i.q, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  switch i8 %i.r, label %bb.j [
    i8 1, label %bb.l
    i8 94, label %bb.l
    i8 -100, label %bb.l
    i8 -38, label %bb.l
  ], !dbg !38538

bb.f:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 1, !dbg !38538
  %i.t = load i8, ptr %i.s, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  %i.u = icmp eq i8 %i.t, -75, !dbg !38538
  br i1 %i.u, label %bb.g, label %bb.j, !dbg !38538

bb.g:                                             ; preds = %bb.f
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 2, !dbg !38538
  %i.w = load i8, ptr %i.v, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  %i.x = icmp eq i8 %i.w, 47, !dbg !38538
  br i1 %i.x, label %bb.h, label %bb.j, !dbg !38538

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 3, !dbg !38538
  %i.z = load i8, ptr %i.y, align 1, !dbg !38538, !alias.scope !38494, !noundef !1321
  %i.aa = icmp eq i8 %i.z, -3, !dbg !38538
  br i1 %i.aa, label %_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit, label %bb.j, !dbg !38538

bb.i:                                             ; preds = %bb.a
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @215, i64 noundef 32, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @216) #38, !dbg !38539
  unreachable, !dbg !38539

bb.j:                                             ; preds = %bb.f, %bb.b, %bb.c, %bb.g, %bb.d, %bb.e, %bb.h
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !38540
  store ptr %1, ptr %i.ab, align 8, !dbg !38540
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !38540
  store i64 %2, ptr %i.ac, align 8, !dbg !38540
  store i64 18, ptr %0, align 8, !dbg !38540
  br label %bb.al, !dbg !38541

bb.k:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !38542
  call void @_RNvMs6_NtNtCs9VoZUfg37wD_6flate22gz4readINtB5_14MultiGzDecoderRShE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([320 x i8]) align 8 captures(none) dereferenceable(320) %i.g, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !38542
  %i.ad = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(320) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, i64 undef)
          to label %bb.n unwind label %bb.m, !dbg !38543 ; 2 uses

bb.l:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !38544
  call void @_RNvMs2_NtNtCs9VoZUfg37wD_6flate24zlib4readINtB5_11ZlibDecoderRShE3newCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([192 x i8]) align 8 captures(none) dereferenceable(192) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2), !dbg !38544
  %i.ae = invoke { i64, ptr } @_RINvNtCsh8eZTKRCwoO_3std2io19default_read_to_endINtNtNtCs9VoZUfg37wD_6flate24zlib4read11ZlibDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull align 8 dereferenceable(192) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %3, i64 noundef 0, i64 undef)
          to label %bb.y unwind label %bb.x, !dbg !38545 ; 2 uses

_RNvMNtNtCslpwjCj2YNBy_9polars_io5utils11compressionNtB2_20SupportedCompression5check.exit: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !38497
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !38497
  call void @_RNvMs_NtNtCsi0YuHEPkLKL_4zstd6stream4readINtB4_7DecoderRShE15with_dictionaryCslpwjCj2YNBy_9polars_io(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.d, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly captures(address, read_provenance) inttoptr (i64 1 to ptr), i64 noundef 0), !dbg !38546
  %i.af = load i64, ptr %i.d, align 8, !dbg !38547, !range !1532, !noundef !1321 ; 2 uses
  %i.ag = icmp eq i64 %i.af, 2, !dbg !38547
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !38548
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !38548 ; 2 uses
  br i1 %i.ag, label %bb.ad, label %bb.ae, !dbg !38549

bb.m:                                             ; preds = %bb.o, %bb.k
  %i.aj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs9VoZUfg37wD_6flate22gz4read14MultiGzDecoderRShEECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(320) %i.g) #35
          to label %common.resume unwind label %bb.w, !dbg !38550

bb.n:                                             ; preds = %bb.k
  %i.ak = extractvalue { i64, ptr } %i.ad, 0, !dbg !38543
  %i.al = trunc nuw i64 %i.ak to i1, !dbg !38551
  br i1 %i.al, label %bb.o, label %bb.p, !dbg !38551, !prof !1333

bb.o:                                             ; preds = %bb.n
  %i.am = extractvalue { i64, ptr } %i.ad, 1, !dbg !38543
end_hunk_0
begin_hunk_1_@_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCINvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB59_3ops5range5RangejENCNvB36_11split_ranges_0EE00EEE9drop_slowB3a_
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNCINvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB36_5inner17PolarsObjectStore28build_buffered_ranges_streamINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB59_3ops5range5RangejENCNvB36_11split_ranges_0EE00EEE9drop_slowB3a_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvXCs8RKTHBS4OBx_12object_storeNtNtB30_3aws8AmazonS3NtB30_14ObjectStoreExt9get_range0EEE9drop_slowB30_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvXCs8RKTHBS4OBx_12object_storeNtNtB30_3gcp18GoogleCloudStorageNtB30_14ObjectStoreExt9get_range0EEE9drop_slowB30_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvXCs8RKTHBS4OBx_12object_storeNtNtB30_4http9HttpStoreNtB30_14ObjectStoreExt9get_range0EEE9drop_slowB30_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtBN_15futures_ordered12OrderWrapperNCNvXCs8RKTHBS4OBx_12object_storeNtNtB30_5azure14MicrosoftAzureNtB30_14ObjectStoreExt9get_range0EEE9drop_slowB30_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcINtNtNtNtCslt8cbK4E2O5_12futures_util6stream17futures_unordered18ready_to_run_queue15ReadyToRunQueueINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleuEEE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs1lTGjXZLbkb_7reqwest8redirect6PolicyE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs2mZqlW55729_12polars_utils15python_function12PythonObjectE9drop_slowCslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical10CategoriesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs80wj1cxFixi_12polars_dtype11categorical16FrozenCategoriesE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs8RKTHBS4OBx_12object_store5local6ConfigE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCsh8eZTKRCwoO_3std2fs4FileE9drop_slowCskmDBXs7hs3c_5tokio(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCsh8eZTKRCwoO_3std4path4PathE9drop_slowCs1lTGjXZLbkb_7reqwest(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCslpwjCj2YNBy_9polars_io7metrics9IOMetricsE9drop_slowBK_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs1lTGjXZLbkb_7reqwest10async_impl6client9ClientRefE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs80wj1cxFixi_12polars_dtype11categorical7mapping18CategoricalMappingE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs8RKTHBS4OBx_12object_store3aws6client8S3ClientE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs8RKTHBS4OBx_12object_store3gcp6client24GoogleCloudStorageClientE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs8RKTHBS4OBx_12object_store4http6client6ClientE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCs8RKTHBS4OBx_12object_store5azure6client11AzureClientE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsfHnWouPsIOz_14regex_automata4util8captures14GroupInfoInnerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsgnq8QiykaSE_6rustls6client11client_conn12ClientConfigE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorE9drop_slowCsacIJNrSLJky_9quick_xml(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtCslpwjCj2YNBy_9polars_io5cloud11concurrency21ConcurrencyControllerE9drop_slowBM_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCs8kEbHi69UDY_5tower5retry6budget10tps_budget9TpsBudgetE9drop_slowCs1lTGjXZLbkb_7reqwest(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler14current_thread6HandleE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_store5inner5InnerE9drop_slowBO_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCsjMwOwejBKvo_10hyper_util6client6legacy7connect4http6ConfigE9drop_slowCs94uLOnCy307_12hyper_rustls(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtNtNtNtCskmDBXs7hs3c_5tokio7runtime9scheduler12multi_thread6handle6HandleE9drop_slowBQ_(ptr noalias noundef align 8 dereferenceable(8)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcSNtNtCshK0ivY6saku_5bytes5bytes5BytesE9drop_slowCs8RKTHBS4OBx_12object_store(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcShE9drop_slowCsbm5zPlkZccl_4pyo3(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #26

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArceE9drop_slowCsfHnWouPsIOz_14regex_automata(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden { i64, i64 } @_RINvMs2_NtNtCsh8eZTKRCwoO_3std6thread5localINtB6_8LocalKeyINtNtCscgRAwXFJnXP_4core4cell4CellTyyEEE4withNCNvMNtNtBa_4hash6randomNtB1I_11RandomState3new0B21_ECslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvXs4_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMs16_NtCsh8eZTKRCwoO_3std4pathNtB6_4Path11to_path_buf(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs8_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8UpperHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXs6_NtNtCscgRAwXFJnXP_4core3fmt3numjNtB7_8LowerHex3fmt(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCs9MrPpZx4smZ_7___rustc14___rust_dealloc(ptr allocptr noundef nonnull captures(address), i64 noundef, i64 noundef range(i64 1, -9223372036854775807)) unnamed_addr #32

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvNtCscgRAwXFJnXP_4core3fmt5write(ptr noundef nonnull, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noundef nonnull, ptr noundef nonnull) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6clonedINtB4_6ClonedINtNtNtBa_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB8_6traits8iterator8Iterator4nextCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXsV_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcNtNtCs8RKTHBS4OBx_12object_store5local6ConfigENtNtCscgRAwXFJnXP_4core3fmt5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRbNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsh_NtCscgRAwXFJnXP_4core3fmteNtB5_5Debug3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvXsi_NtCscgRAwXFJnXP_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: cold nonlazybind uwtable
declare void @_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4) unnamed_addr #21

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 16 ptr @_RNvMs_NtCsgZ49sUHp3tW_5alloc5boxedINtB4_3BoxNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtype8DataTypeE13new_uninit_inCslpwjCj2YNBy_9polars_io() unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTRejENtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tablejNtNtNtNtCs1Fl50FUbMSA_14allocator_api26stable5alloc6global6GlobalECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(32), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef, i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRuNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: noinline nonlazybind uwtable
declare void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #26

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsa_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENtNtCscgRAwXFJnXP_4core5clone5Clone5cloneCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare { ptr, ptr } @_RNvXNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9extensionNtB2_21ExtensionTypeInstanceNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef zeroext i1 @_RNvXs1g_NtCscgRAwXFJnXP_4core3fmtRNtNtCs2mZqlW55729_12polars_utils10pl_ref_str8PlRefStrNtB6_5Debug3fmtCslpwjCj2YNBy_9polars_io(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef nonnull ptr @_RNvXs6_CsgjwxzEoLG5s_12polars_errorNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorINtNtCscgRAwXFJnXP_4core7convert4FromNtB5_11PolarsErrorE4from(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter10debug_list(ptr dead_on_unwind noalias noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden noundef nonnull align 8 ptr @_RINvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB6_9DebugList7entriesRRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrINtNtNtBa_5slice4iter4IterB14_EECslpwjCj2YNBy_9polars_io(ptr noalias noundef align 8 dereferenceable(16), ptr noundef nonnull, ptr noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMs5_NtNtCscgRAwXFJnXP_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_RNvMsa_NtCscgRAwXFJnXP_4core3fmtNtB5_9Formatter3pad(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCsakNx6c7aNgo_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9poll_nextCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 8 captures(none) dereferenceable(96), ptr noalias noundef align 8 dereferenceable(144), ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtNtNtCslt8cbK4E2O5_12futures_util6stream10try_stream10try_filterINtB5_9TryFilterINtNtCscgRAwXFJnXP_4core3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCsakNx6c7aNgo_12futures_core6stream6Streamp4ItemINtNtB1t_6result6ResultNtCs8RKTHBS4OBx_12object_store10ObjectMetaNtB3J_5ErrorENtNtB1t_6marker4SendEL_EEINtNtNtBb_6future5ready5ReadybENCNvYNtNtB3J_4http9HttpStoreNtB3J_11ObjectStore16list_with_offset0EB2u_9size_hintCslpwjCj2YNBy_9polars_io(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(144)) unnamed_addr #1

; Function Attrs: nonlazybind uwtable
declare void @_RNvNtNtCslpwjCj2YNBy_9polars_io5cloud7options9to_io_err(ptr dead_on_unwind noalias noundef writable sret([72 x i8]) align 8 captures(none) dereferenceable(72), ptr noalias noundef nonnull align 8) unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #33

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #30

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #34

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #30

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.abs.i64(i64, i1 immarg) #24

attributes #0 = { cold inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nounwind nonlazybind memory(argmem: readwrite, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #14 = { alwaysinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #16 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #19 = { cold minsize nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { cold noreturn nounwind memory(inaccessiblemem: write) }
attributes #21 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #25 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #26 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #27 = { noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #28 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #29 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "alloc-variant-zeroed"="_RNvCs9MrPpZx4smZ_7___rustc19___rust_alloc_zeroed" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #30 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #31 = { mustprogress nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #32 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #33 = { nocallback nofree nosync nounwind nonlazybind willreturn memory(argmem: read) }
attributes #34 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #35 = { cold }
attributes #36 = { noreturn }
attributes #37 = { cold noreturn nounwind }
attributes #38 = { noinline noreturn }
attributes #39 = { nounwind }
attributes #40 = { inlinehint }
attributes #41 = { noinline }

!llvm.module.flags = !{!1313, !1314, !1315, !1316}
!llvm.ident = !{!1317}
!llvm.dbg.cu = !{!0}

!0 = distinct !DICompileUnit(language: DW_LANG_Rust, file: !1318, producer: "clang LLVM (rustc version 1.96.0-nightly (48cc71ee8 2026-03-31))", isOptimized: true, runtimeVersion: 0, emissionKind: LineTablesOnly, splitDebugInlining: false, nameTableKind: None)
!1 = distinct !DISubprogram(name: "expect<(), core::fmt::Error>", linkageName: "_RNvMNtCscgRAwXFJnXP_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6expectCslpwjCj2YNBy_9polars_io", scope: !1336, file: !1334, line: 1179, type: !1337, scopeLine: 1179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!2 = distinct !DILexicalBlock(scope: !1, file: !1334, line: 1185, column: 13)
!3 = distinct !DISubprogram(name: "drop_in_place<core::option::Option<alloc::string::String>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCsgZ49sUHp3tW_5alloc6string6StringEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!4 = distinct !DISubprogram(name: "drop_in_place<alloc::vec::Vec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc3vec3VechEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!5 = distinct !DISubprogram(name: "drop_in_place<alloc::string::String>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCsgZ49sUHp3tW_5alloc6string6StringECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!6 = distinct !DISubprogram(name: "drop_in_place<alloc::raw_vec::RawVec<u8, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc7raw_vec6RawVechEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!7 = distinct !DISubprogram(name: "drop_in_place<object_store::config::ConfigValue<object_store::aws::builder::RequesterPayer>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValueNtNtNtBL_3aws7builder14RequesterPayerEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!8 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsM_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromRBy_E4from", scope: !1350, file: !1323, line: 3137, type: !1322, scopeLine: 3137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!9 = distinct !DISubprogram(name: "into<&alloc::string::String, alloc::string::String>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertRNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoBz_E4intoCslpwjCj2YNBy_9polars_io", scope: !1340, file: !1338, line: 777, type: !1337, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!10 = distinct !DISubprogram(name: "with_capacity_in<alloc::alloc::Global>", linkageName: "_RNvMs4_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1353, file: !1351, line: 433, type: !1322, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!11 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1354, file: !1351, line: 175, type: !1322, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!12 = distinct !DISubprogram(name: "with_capacity_in<u8, alloc::alloc::Global>", linkageName: "_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VechE16with_capacity_inCslpwjCj2YNBy_9polars_io", scope: !1357, file: !1355, line: 976, type: !1322, scopeLine: 976, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!13 = distinct !DISubprogram(name: "to_vec<u8, alloc::alloc::Global>", linkageName: "_RINvXs_NvMNtCsgZ49sUHp3tW_5alloc5sliceSp9to_vec_inhNtB5_10ConvertVec6to_vecNtNtBa_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1362, file: !1358, line: 446, type: !1322, scopeLine: 446, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!14 = distinct !DILexicalBlock(scope: !13, file: !1358, line: 447, column: 17)
!15 = distinct !DISubprogram(name: "to_vec_in<u8, alloc::alloc::Global>", linkageName: "_RINvMNtCsgZ49sUHp3tW_5alloc5sliceSh9to_vec_inNtNtB5_5alloc6GlobalECslpwjCj2YNBy_9polars_io", scope: !1360, file: !1358, line: 396, type: !1322, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!16 = distinct !DISubprogram(name: "to_vec<u8>", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5sliceSh6to_vecCslpwjCj2YNBy_9polars_io", scope: !1360, file: !1358, line: 372, type: !1322, scopeLine: 372, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!17 = distinct !DISubprogram(name: "to_owned<u8>", linkageName: "_RNvXs7_NtCsgZ49sUHp3tW_5alloc5sliceShNtNtB7_6borrow7ToOwned8to_ownedCslpwjCj2YNBy_9polars_io", scope: !1363, file: !1358, line: 841, type: !1322, scopeLine: 841, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!18 = distinct !DISubprogram(name: "to_owned", linkageName: "_RNvXs2_NtCsgZ49sUHp3tW_5alloc3streNtNtB7_6borrow7ToOwned8to_owned", scope: !1366, file: !1364, line: 210, type: !1322, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!19 = distinct !DISubprogram(name: "from", linkageName: "_RNvXsK_NtCsgZ49sUHp3tW_5alloc6stringNtB5_6StringINtNtCscgRAwXFJnXP_4core7convert4FromReE4from", scope: !1367, file: !1323, line: 3113, type: !1322, scopeLine: 3113, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!20 = distinct !DISubprogram(name: "into<&str, alloc::string::String>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertReINtB5_4IntoNtNtCsgZ49sUHp3tW_5alloc6string6StringE4intoCslpwjCj2YNBy_9polars_io", scope: !1340, file: !1338, line: 777, type: !1337, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!21 = distinct !DILexicalBlock(scope: !10, file: !1351, line: 442, column: 13)
!22 = distinct !DISubprogram(name: "needs_to_grow<alloc::alloc::Global>", linkageName: "_RNvMs2_NtCsgZ49sUHp3tW_5alloc7raw_vecNtB5_11RawVecInner13needs_to_growCslpwjCj2YNBy_9polars_io", scope: !1353, file: !1351, line: 766, type: !1322, scopeLine: 766, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!23 = distinct !DILexicalBlock(scope: !10, file: !1351, line: 435, column: 13)
!24 = distinct !DISubprogram(name: "assert_unchecked", linkageName: "_RNvNtCscgRAwXFJnXP_4core4hint16assert_unchecked", scope: !1370, file: !1369, line: 202, type: !1322, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!25 = distinct !DILexicalBlock(scope: !14, file: !1358, line: 448, column: 17)
!26 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 531, type: !1322, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!27 = distinct !DISubprogram(name: "copy_to_nonoverlapping<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr9const_ptrPh22copy_to_nonoverlappingCslpwjCj2YNBy_9polars_io", scope: !1373, file: !1371, line: 1247, type: !1322, scopeLine: 1247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!28 = distinct !DISubprogram(name: "drop_in_place<object_store::config::ConfigValue<bool>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs8RKTHBS4OBx_12object_store6config11ConfigValuebEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!29 = distinct !DISubprogram(name: "full", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control3tagNtB2_3Tag4full", scope: !1388, file: !1385, line: 35, type: !1322, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!30 = distinct !DISubprogram(name: "find_inner", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner10find_inner", scope: !1389, file: !1382, line: 2008, type: !1322, scopeLine: 2008, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!31 = distinct !DILexicalBlock(scope: !29, file: !1385, line: 47, column: 9)
!32 = distinct !DISubprogram(name: "probe_seq", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner9probe_seq", scope: !1389, file: !1382, line: 2448, type: !1322, scopeLine: 2448, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!33 = distinct !DILexicalBlock(scope: !30, file: !1382, line: 2009, column: 9)
!34 = distinct !DISubprogram(name: "add<u8>", linkageName: "_RNvMNtNtCscgRAwXFJnXP_4core3ptr7mut_ptrOh3addCslpwjCj2YNBy_9polars_io", scope: !1392, file: !1390, line: 927, type: !1322, scopeLine: 927, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!35 = distinct !DISubprogram(name: "ctrl", linkageName: "_RNvMsa_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_13RawTableInner4ctrl", scope: !1389, file: !1382, line: 2621, type: !1322, scopeLine: 2621, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!36 = distinct !DILexicalBlock(scope: !33, file: !1382, line: 2010, column: 9)
!37 = distinct !DISubprogram(name: "copy_nonoverlapping<u8>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr19copy_nonoverlappinghECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 531, type: !1322, scopeLine: 531, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!38 = distinct !DISubprogram(name: "_mm_loadu_si128", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse215__mm_loadu_si128", scope: !1396, file: !1393, line: 1333, type: !1322, scopeLine: 1333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!39 = distinct !DILexicalBlock(scope: !38, file: !1393, line: 1334, column: 5)
!40 = distinct !DISubprogram(name: "load", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group4load", scope: !1400, file: !1397, line: 48, type: !1322, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!41 = distinct !DISubprogram(name: "_mm_cmpeq_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse214__mm_cmpeq_epi8", scope: !1396, file: !1393, line: 913, type: !1337, scopeLine: 913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!42 = distinct !DISubprogram(name: "match_tag", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group9match_tag", scope: !1400, file: !1397, line: 73, type: !1322, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!43 = distinct !DILexicalBlock(scope: !42, file: !1397, line: 82, column: 9)
!44 = distinct !DILexicalBlock(scope: !36, file: !1382, line: 2027, column: 13)
!45 = distinct !DISubprogram(name: "_mm_movemask_epi8", linkageName: "_RNvNtNtNtCscgRAwXFJnXP_4core9core_arch3x864sse217__mm_movemask_epi8", scope: !1396, file: !1393, line: 1611, type: !1337, scopeLine: 1611, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!46 = distinct !DILexicalBlock(scope: !45, file: !1393, line: 1613, column: 9)
!47 = distinct !DILexicalBlock(scope: !46, file: !1393, line: 1614, column: 9)
!48 = distinct !DILexicalBlock(scope: !43, file: !1397, line: 83, column: 13)
!49 = distinct !DISubprogram(name: "lowest_set_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask14lowest_set_bit", scope: !1403, file: !1401, line: 39, type: !1322, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!50 = distinct !DILexicalBlock(scope: !49, file: !1401, line: 40, column: 64)
!51 = distinct !DISubprogram(name: "next", linkageName: "_RNvXs0_NtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB5_11BitMaskIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next", scope: !1404, file: !1401, line: 102, type: !1322, scopeLine: 102, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!52 = distinct !DILexicalBlock(scope: !44, file: !1382, line: 2029, column: 13)
!53 = distinct !DILexicalBlock(scope: !42, file: !1397, line: 82, column: 9)
!54 = distinct !DISubprogram(name: "match_empty", linkageName: "_RNvMNtNtNtCs7tGzs63DEEy_9hashbrown7control5group4sse2NtB2_5Group11match_empty", scope: !1400, file: !1397, line: 91, type: !1322, scopeLine: 91, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!55 = distinct !DILexicalBlock(scope: !53, file: !1397, line: 83, column: 13)
!56 = distinct !DISubprogram(name: "likely", linkageName: "_RNvNtCs7tGzs63DEEy_9hashbrown4util6likely", scope: !1407, file: !1406, line: 12, type: !1322, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!57 = distinct !DISubprogram(name: "move_next", linkageName: "_RNvMs0_NtCs7tGzs63DEEy_9hashbrown3rawNtB5_8ProbeSeq9move_next", scope: !1408, file: !1382, line: 82, type: !1322, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!58 = distinct !DISubprogram(name: "trailing_zeros", linkageName: "_RNvMs10_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB6_7NonZerotE14trailing_zeros", scope: !1412, file: !1409, line: 639, type: !1322, scopeLine: 639, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!59 = distinct !DISubprogram(name: "nonzero_trailing_zeros", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask22nonzero_trailing_zeros", scope: !1403, file: !1401, line: 64, type: !1322, scopeLine: 64, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!60 = distinct !DILexicalBlock(scope: !52, file: !1382, line: 2029, column: 13)
!61 = distinct !DILexicalBlock(scope: !60, file: !1382, line: 2032, column: 17)
!62 = distinct !DISubprogram(name: "get<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE3getCslpwjCj2YNBy_9polars_io", scope: !1419, file: !1416, line: 656, type: !1337, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!63 = distinct !DILexicalBlock(scope: !62, file: !1416, line: 657, column: 9)
!64 = distinct !DISubprogram(name: "index<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvXs6_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index5IndexBN_E5indexCslpwjCj2YNBy_9polars_io", scope: !1420, file: !1416, line: 998, type: !1322, scopeLine: 998, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!65 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1F_6pl_str10PlSmallStrB2m_EEE3getCslpwjCj2YNBy_9polars_io", scope: !1425, file: !1422, line: 218, type: !1322, scopeLine: 218, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!66 = distinct !DISubprogram(name: "get<slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1c_6pl_str10PlSmallStrB1T_EE3getjECslpwjCj2YNBy_9polars_io", scope: !1427, file: !1426, line: 572, type: !1322, scopeLine: 572, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!67 = distinct !DISubprogram(name: "filter<&slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, slotmap::basic::{impl#5}::get::{closure_env#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionRINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E3get0ECslpwjCj2YNBy_9polars_io", scope: !1430, file: !1428, line: 1578, type: !1337, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!68 = distinct !DILexicalBlock(scope: !67, file: !1428, line: 1583, column: 31)
!69 = distinct !DISubprogram(name: "{closure#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBR_8LruEntryNtNtBT_6pl_str10PlSmallStrB1N_EE3get0CslpwjCj2YNBy_9polars_io", scope: !1433, file: !1416, line: 660, type: !1337, scopeLine: 660, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!70 = distinct !DISubprogram(name: "last_byte", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr9last_byte", scope: !1437, file: !1434, line: 609, type: !1322, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!71 = distinct !DISubprogram(name: "as_slice", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice", scope: !1437, file: !1434, line: 355, type: !1322, scopeLine: 355, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!72 = distinct !DILexicalBlock(scope: !71, file: !1434, line: 357, column: 9)
!73 = distinct !DILexicalBlock(scope: !72, file: !1434, line: 358, column: 9)
!74 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr6as_str", scope: !1437, file: !1434, line: 379, type: !1322, scopeLine: 379, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!75 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMCs7VARH73bmU_11compact_strNtB2_13CompactString6as_str", scope: !1439, file: !1438, line: 557, type: !1322, scopeLine: 557, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!76 = distinct !DISubprogram(name: "as_str", linkageName: "_RNvMNtCs2mZqlW55729_12polars_utils6pl_strNtB2_10PlSmallStr6as_str", scope: !1442, file: !1440, line: 66, type: !1322, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!77 = distinct !DISubprogram(name: "borrow", linkageName: "_RNvXs3_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrINtNtCscgRAwXFJnXP_4core6borrow6BorroweE6borrow", scope: !1443, file: !1440, line: 121, type: !1322, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!78 = distinct !DISubprogram(name: "wrapping_sub", linkageName: "_RNvMs4_NtCscgRAwXFJnXP_4core3numh12wrapping_sub", scope: !1446, file: !1445, line: 2547, type: !1322, scopeLine: 2547, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!79 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RNvYjNtNtCscgRAwXFJnXP_4core3cmp3Ord3minCslpwjCj2YNBy_9polars_io", scope: !1449, file: !1447, line: 1073, type: !1322, scopeLine: 1073, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!80 = distinct !DISubprogram(name: "min<usize>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3cmp3minjECslpwjCj2YNBy_9polars_io", scope: !1448, file: !1447, line: 1575, type: !1322, scopeLine: 1575, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!81 = distinct !DILexicalBlock(scope: !73, file: !1434, line: 364, column: 9)
!82 = distinct !DILexicalBlock(scope: !81, file: !1434, line: 368, column: 9)
!83 = distinct !DISubprogram(name: "eq<u8, u8>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core5slice3cmpShNtNtB6_3cmp9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1452, file: !1450, line: 20, type: !1322, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!84 = distinct !DILexicalBlock(scope: !83, file: !1450, line: 21, column: 9)
!85 = distinct !DISubprogram(name: "eq<[u8], [u8]>", linkageName: "_RNvXs7_NtNtCscgRAwXFJnXP_4core3cmp5implsRShNtB7_9PartialEq2eqCslpwjCj2YNBy_9polars_io", scope: !1454, file: !1447, line: 2123, type: !1322, scopeLine: 2123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!86 = distinct !DISubprogram(name: "eq", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3str6traitseNtNtB8_3cmp9PartialEq2eq", scope: !1458, file: !1455, line: 29, type: !1322, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!87 = distinct !DISubprogram(name: "equal_same_length<u8, u8>", linkageName: "_RNvXs3_NtNtCscgRAwXFJnXP_4core5slice3cmphINtB5_14SlicePartialEqhE17equal_same_lengthCslpwjCj2YNBy_9polars_io", scope: !1460, file: !1450, line: 152, type: !1322, scopeLine: 152, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!88 = distinct !DILexicalBlock(scope: !87, file: !1450, line: 157, column: 13)
!89 = distinct !DISubprogram(name: "get<u16>", linkageName: "_RNvMse_NtNtCscgRAwXFJnXP_4core3num7nonzeroINtB5_7NonZerotE3getCslpwjCj2YNBy_9polars_io", scope: !1412, file: !1409, line: 481, type: !1322, scopeLine: 481, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!90 = distinct !DISubprogram(name: "remove_lowest_bit", linkageName: "_RNvMNtNtCs7tGzs63DEEy_9hashbrown7control7bitmaskNtB2_7BitMask17remove_lowest_bit", scope: !1403, file: !1401, line: 27, type: !1322, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!91 = distinct !DILexicalBlock(scope: !51, file: !1401, line: 103, column: 9)
!92 = distinct !DISubprogram(name: "lru_list_unlink<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtB7_6pl_str10PlSmallStrBU_E15lru_list_unlinkCslpwjCj2YNBy_9polars_io", scope: !1377, file: !1374, line: 87, type: !1322, scopeLine: 87, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!93 = distinct !DISubprogram(name: "get_mut<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EE7get_mutCslpwjCj2YNBy_9polars_io", scope: !1419, file: !1416, line: 700, type: !1337, scopeLine: 700, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!94 = distinct !DILexicalBlock(scope: !93, file: !1416, line: 701, column: 9)
!95 = distinct !DILexicalBlock(scope: !92, file: !1374, line: 88, column: 9)
!96 = distinct !DILexicalBlock(scope: !95, file: !1374, line: 89, column: 76)
!97 = distinct !DISubprogram(name: "get_mut<slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>", linkageName: "_RNvXs0_NtNtCscgRAwXFJnXP_4core5slice5indexjINtB5_10SliceIndexSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1F_6pl_str10PlSmallStrB2m_EEE7get_mutCslpwjCj2YNBy_9polars_io", scope: !1425, file: !1422, line: 228, type: !1322, scopeLine: 228, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!98 = distinct !DISubprogram(name: "get_mut<slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, usize>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core5sliceSINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1c_6pl_str10PlSmallStrB1T_EE7get_mutjECslpwjCj2YNBy_9polars_io", scope: !1427, file: !1426, line: 599, type: !1322, scopeLine: 599, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!99 = distinct !DISubprogram(name: "{closure#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNCNvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB7_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBR_8LruEntryNtNtBT_6pl_str10PlSmallStrB1N_EE7get_mut0CslpwjCj2YNBy_9polars_io", scope: !1462, file: !1416, line: 704, type: !1337, scopeLine: 704, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!100 = distinct !DISubprogram(name: "filter<&mut slotmap::basic::Slot<polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>, slotmap::basic::{impl#5}::get_mut::{closure_env#0}<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionQINtNtCs5ERpa6sqwDS_7slotmap5basic4SlotINtNtCs2mZqlW55729_12polars_utils5cache8LruEntryNtNtB1q_6pl_str10PlSmallStrB27_EEE6filterNCNvMs3_BM_INtBM_7SlotMapNtB1o_6LruKeyB1l_E7get_mut0ECslpwjCj2YNBy_9polars_io", scope: !1430, file: !1428, line: 1578, type: !1337, scopeLine: 1578, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!101 = distinct !DILexicalBlock(scope: !100, file: !1428, line: 1583, column: 31)
!102 = distinct !DILexicalBlock(scope: !95, file: !1374, line: 94, column: 76)
!103 = distinct !DISubprogram(name: "lru_list_insert_mru<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr, foldhash::fast::RandomState>", linkageName: "_RNvMs1_NtCs2mZqlW55729_12polars_utils5cacheINtB5_8LruCacheNtNtB7_6pl_str10PlSmallStrBU_E19lru_list_insert_mruCslpwjCj2YNBy_9polars_io", scope: !1377, file: !1374, line: 101, type: !1322, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!104 = distinct !DILexicalBlock(scope: !103, file: !1374, line: 102, column: 9)
!105 = distinct !DILexicalBlock(scope: !104, file: !1374, line: 104, column: 85)
!106 = distinct !DISubprogram(name: "index_mut<polars_utils::cache::LruKey, polars_utils::cache::LruEntry<polars_utils::pl_str::PlSmallStr, polars_utils::pl_str::PlSmallStr>>", linkageName: "_RNvXs7_NtCs5ERpa6sqwDS_7slotmap5basicINtB5_7SlotMapNtNtCs2mZqlW55729_12polars_utils5cache6LruKeyINtBP_8LruEntryNtNtBR_6pl_str10PlSmallStrB1L_EEINtNtNtCscgRAwXFJnXP_4core3ops5index8IndexMutBN_E9index_mutCslpwjCj2YNBy_9polars_io", scope: !1463, file: !1416, line: 1007, type: !1337, scopeLine: 1007, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!107 = distinct !DILexicalBlock(scope: !104, file: !1374, line: 109, column: 9)
!108 = distinct !DISubprogram(name: "drop_in_place<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!109 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!110 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::boxed::Box<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!111 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!112 = distinct !DISubprogram(name: "dealloc_nonnull", linkageName: "_RNvNtCsgZ49sUHp3tW_5alloc5alloc15dealloc_nonnull", scope: !1472, file: !1471, line: 127, type: !1322, scopeLine: 127, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!113 = distinct !DISubprogram(name: "deallocate_impl_runtime", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global23deallocate_impl_runtime", scope: !1473, file: !1471, line: 219, type: !1322, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!114 = distinct !DISubprogram(name: "deallocate_impl", linkageName: "_RNvMNtCsgZ49sUHp3tW_5alloc5allocNtB2_6Global15deallocate_impl", scope: !1473, file: !1471, line: 343, type: !1322, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!115 = distinct !DISubprogram(name: "deallocate", linkageName: "_RNvXs_NtCsgZ49sUHp3tW_5alloc5allocNtB4_6GlobalNtNtCscgRAwXFJnXP_4core5alloc9Allocator10deallocate", scope: !1474, file: !1471, line: 460, type: !1337, scopeLine: 460, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!116 = distinct !DISubprogram(name: "drop<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<polars_buffer::buffer::Buffer<u8>, polars_error::PolarsError>>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEENtNtNtB29_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1477, file: !1475, line: 1913, type: !1337, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!117 = distinct !DILexicalBlock(scope: !116, file: !1475, line: 1916, column: 9)
!118 = distinct !DILexicalBlock(scope: !117, file: !1475, line: 1919, column: 13)
!119 = distinct !DISubprogram(name: "get<std::sys::thread_local::native::eager::State>", linkageName: "_RNvMs8_NtCscgRAwXFJnXP_4core4cellINtB5_4CellNtNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native5eager5StateE3getCslpwjCj2YNBy_9polars_io", scope: !1490, file: !1488, line: 552, type: !1322, scopeLine: 552, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!120 = distinct !DISubprogram(name: "get<tokio::runtime::context::Context>", linkageName: "_RNvMNtNtNtNtCsh8eZTKRCwoO_3std3sys12thread_local6native5eagerINtB2_7StorageNtNtNtCskmDBXs7hs3c_5tokio7runtime7context7ContextE3getCslpwjCj2YNBy_9polars_io", scope: !1497, file: !1491, line: 34, type: !1322, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!121 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00CslpwjCj2YNBy_9polars_io", scope: !1501, file: !1498, line: 63, type: !1337, scopeLine: 63, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!122 = distinct !DISubprogram(name: "call_once<tokio::runtime::context::CONTEXT::{constant#0}::{closure_env#0}, (core::option::Option<&mut core::option::Option<tokio::runtime::context::Context>>)>", linkageName: "_RNvYNCNKNvNtNtCskmDBXs7hs3c_5tokio7runtime7context7CONTEXT00INtNtNtCscgRAwXFJnXP_4core3ops8function6FnOnceTINtNtB13_6option6OptionQIB1I_NtB8_7ContextEEEE9call_onceCslpwjCj2YNBy_9polars_io", scope: !1505, file: !1502, line: 250, type: !1322, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!123 = distinct !DISubprogram(name: "drop_in_place<core::result::Result<tokio::task::coop::with_budget::ResetGuard, std::thread::local::AccessError>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNvNtNtCskmDBXs7hs3c_5tokio4task4coop11with_budget10ResetGuardNtNtNtCsh8eZTKRCwoO_3std6thread5local11AccessErrorEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!124 = distinct !DISubprogram(name: "drop_in_place<tokio::task::coop::with_budget::ResetGuard>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNvNtNtCskmDBXs7hs3c_5tokio4task4coop11with_budget10ResetGuardECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!125 = distinct !DISubprogram(name: "drop", linkageName: "_RNvXs8_NtNtCscgRAwXFJnXP_4core4task4wakeNtB5_5WakerNtNtNtB9_3ops4drop4Drop4drop", scope: !1521, file: !1478, line: 670, type: !1337, scopeLine: 670, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!126 = distinct !DISubprogram(name: "drop_in_place<core::task::wake::Waker>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtB4_4task4wake5WakerECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!127 = distinct !{null}
!128 = distinct !DISubprogram(name: "drop_in_place<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<(), std::io::error::Error>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!129 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<(), std::io::error::Error>>, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!130 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::boxed::Box<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<(), std::io::error::Error>>, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!131 = distinct !DISubprogram(name: "drop_in_place<tokio::runtime::task::join::JoinHandle<core::result::Result<(), std::io::error::Error>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtNtCskmDBXs7hs3c_5tokio7runtime4task4join10JoinHandleINtNtB4_6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEECslpwjCj2YNBy_9polars_io", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!132 = distinct !DISubprogram(name: "drop<polars_utils::async_utils::tokio_handle_ext::AbortOnDropHandle<core::result::Result<(), std::io::error::Error>>, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxINtNtNtCs2mZqlW55729_12polars_utils11async_utils16tokio_handle_ext17AbortOnDropHandleINtNtCscgRAwXFJnXP_4core6result6ResultuNtNtNtCsh8eZTKRCwoO_3std2io5error5ErrorEEENtNtNtB29_3ops4drop4Drop4dropCslpwjCj2YNBy_9polars_io", scope: !1477, file: !1475, line: 1913, type: !1337, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!133 = distinct !DILexicalBlock(scope: !132, file: !1475, line: 1916, column: 9)
!134 = distinct !DILexicalBlock(scope: !133, file: !1475, line: 1919, column: 13)
!135 = distinct !DISubprogram(name: "drop_in_place<polars_io::cloud::polars_object_store::{impl#6}::head::{async_fn_env#0}>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtBO_5inner17PolarsObjectStore4head0EBS_", scope: !1346, file: !1345, line: 810, type: !1322, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!136 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_io::cloud::polars_object_store::{impl#6}::head::{async_fn_env#0}, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB1n_5inner17PolarsObjectStore4head0EEB1r_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!137 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::boxed::Box<polars_io::cloud::polars_object_store::{impl#6}::head::{async_fn_env#0}, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtB1D_5inner17PolarsObjectStore4head0EEEB1H_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!138 = distinct !DILexicalBlock(scope: !135, file: !1523, line: 517, column: 35)
!139 = distinct !DILexicalBlock(scope: !138, file: !1523, line: 517, column: 35)
!140 = distinct !DILexicalBlock(scope: !139, file: !1523, line: 517, column: 35)
!141 = distinct !DISubprogram(name: "drop<polars_io::cloud::polars_object_store::{impl#6}::head::{async_fn_env#0}, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNvMs4_NtNtCslpwjCj2YNBy_9polars_io5cloud19polars_object_storeNtNtBP_5inner17PolarsObjectStore4head0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBT_", scope: !1477, file: !1475, line: 1913, type: !1337, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!142 = distinct !DILexicalBlock(scope: !141, file: !1475, line: 1916, column: 9)
!143 = distinct !DILexicalBlock(scope: !142, file: !1475, line: 1919, column: 13)
!144 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_io::utils::file::new_cloud_writer::{async_fn_env#0}, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvNtNtCslpwjCj2YNBy_9polars_io5utils4file16new_cloud_writer0EEB1n_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!145 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::boxed::Box<polars_io::utils::file::new_cloud_writer::{async_fn_env#0}, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvNtNtCslpwjCj2YNBy_9polars_io5utils4file16new_cloud_writer0EEEB1D_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!146 = distinct !DISubprogram(name: "drop<polars_io::utils::file::new_cloud_writer::{async_fn_env#0}, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNvNtNtCslpwjCj2YNBy_9polars_io5utils4file16new_cloud_writer0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBP_", scope: !1477, file: !1475, line: 1913, type: !1337, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!147 = distinct !DILexicalBlock(scope: !146, file: !1475, line: 1916, column: 9)
!148 = distinct !DILexicalBlock(scope: !147, file: !1475, line: 1919, column: 13)
!149 = distinct !DISubprogram(name: "drop_in_place<alloc::boxed::Box<polars_io::file_cache::file_fetcher::{impl#2}::fetch::{async_block_env#0}, alloc::alloc::Global>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache12file_fetcherNtB1n_16CloudFileFetcherNtB1n_11FileFetcher5fetch0EEB1r_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!150 = distinct !DISubprogram(name: "drop_in_place<core::pin::Pin<alloc::boxed::Box<polars_io::file_cache::file_fetcher::{impl#2}::fetch::{async_block_env#0}, alloc::alloc::Global>>>", linkageName: "_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_3pin3PinINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache12file_fetcherNtB1D_16CloudFileFetcherNtB1D_11FileFetcher5fetch0EEEB1H_", scope: !1346, file: !1345, line: 810, type: !1337, scopeLine: 810, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!151 = distinct !DISubprogram(name: "drop<polars_io::file_cache::file_fetcher::{impl#2}::fetch::{async_block_env#0}, alloc::alloc::Global>", linkageName: "_RNvXs8_NtCsgZ49sUHp3tW_5alloc5boxedINtB5_3BoxNCNvXs0_NtNtCslpwjCj2YNBy_9polars_io10file_cache12file_fetcherNtBP_16CloudFileFetcherNtBP_11FileFetcher5fetch0ENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropBT_", scope: !1477, file: !1475, line: 1913, type: !1337, scopeLine: 1913, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !1321)
!152 = distinct !DILexicalBlock(scope: !151, file: !1475, line: 1916, column: 9)
end_hunk_1
