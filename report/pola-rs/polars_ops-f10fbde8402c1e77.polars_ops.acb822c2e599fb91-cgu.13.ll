Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_ops-f10fbde8402c1e77.polars_ops.acb822c2e599fb91-cgu.13?download=true
inline.NumInlined: 15820
inline.NumDeleted: 4915
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_list:bb.a
  %i.fi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !257540, !noalias !257119
  unreachable, !dbg !257540

_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by23repeat_by_generic_innerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8ListTypeEB6_.exit: ; preds = %bb.as, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ad), !dbg !257160, !noalias !257119
  %i.fj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !257541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.fj, ptr noundef nonnull align 8 dereferenceable(56) %i.ak, i64 56, i1 false), !dbg !257541
  store i64 18, ptr %0, align 8, !dbg !257541
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ak), !dbg !257542
  br label %bb.bd, !dbg !257543

bb.ax:                                            ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !dbg !257544
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !257545
  %i.fk = tail call fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull readonly align 8 %2, i64 noundef 0) #44, !dbg !257545, !noalias !257547 ; 2 uses
  %i.fl = extractvalue { i32, i32 } %i.fk, 0, !dbg !257545
  %i.fm = trunc i32 %i.fl to i1, !dbg !257550
  br i1 %i.fm, label %bb.ay, label %bb.az, !dbg !257550

bb.ay:                                            ; preds = %bb.ax
  %i.fn = extractvalue { i32, i32 } %i.fk, 1, !dbg !257545
  %.not.i = icmp eq i64 %i.an, 0, !dbg !257551
  %..i = select i1 %.not.i, i32 undef, i32 %i.fn, !dbg !257555
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNmEE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %i.an, i32 %..i), !dbg !257556, !noalias !257547
  call void @_RNvXsZ_NtCs1LHh8CLbVkQ_11polars_core10named_fromINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeEINtB5_9NamedFromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmESmE3newCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aj, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !dbg !257560
  br label %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit, !dbg !257561

bb.az:                                            ; preds = %bb.ax
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !257562, !noalias !257547
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) @12, i64 24, i1 false), !dbg !257562, !noalias !257547
  call void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4fullINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeENtB6_13ChunkFullNull9full_nullCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i64 noundef %i.an), !dbg !257562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !257562, !noalias !257547
  br label %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit, !dbg !257561

_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit: ; preds = %bb.ay, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !257563
  invoke fastcc void @_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_list(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %1, ptr noundef nonnull align 8 %i.aj)
          to label %bb.bc unwind label %bb.bb, !dbg !257564

bb.ba:                                            ; preds = %bb.d
  br i1 %i.at, label %bb.bf, label %bb.bg, !dbg !257113, !prof !7465

bb.bb:                                            ; preds = %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit
  %i.fo = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.aj) #41
          to label %common.resume unwind label %bb.be, !dbg !257566

bb.bc:                                            ; preds = %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.aj), !dbg !257566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj), !dbg !257566
  br label %bb.bd, !dbg !257566

bb.bd:                                            ; preds = %bb.bi, %bb.bc, %_RINvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by23repeat_by_generic_innerNtNtCs1LHh8CLbVkQ_11polars_core9datatypes8ListTypeEB6_.exit, %bb.b
  ret void, !dbg !257111

bb.be:                                            ; preds = %bb.bh, %bb.bb
  %i.fp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !257567
  unreachable, !dbg !257567

bb.bf:                                            ; preds = %bb.ba
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !257568
  call void @_RNvXs4_NtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3opsINtB7_12ChunkedArrayNtNtB9_9datatypes8ListTypeEINtB5_18ChunkExpandAtIndexB1d_E14new_from_index(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.ai, ptr noundef nonnull align 8 %1, i64 noundef 0, i64 noundef %i.ap), !dbg !257569
  invoke fastcc void @_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_list(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noundef nonnull align 8 %i.ai, ptr noundef nonnull align 8 %2)
          to label %bb.bi unwind label %bb.bh, !dbg !257570

bb.bg:                                            ; preds = %bb.ba
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @184) #42, !dbg !257572
  unreachable, !dbg !257572

bb.bh:                                            ; preds = %bb.bf
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.ai) #41
          to label %common.resume unwind label %bb.be, !dbg !257573

bb.bi:                                            ; preds = %bb.bf
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes8ListTypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.ai), !dbg !257573
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !257573
  br label %bb.bd, !dbg !257573
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr nofree noundef nonnull readonly align 8 captures(none) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !257574 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [152 x i8], align 8               ; 9 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 5 uses
  %i.h = alloca [8 x i8], align 8                 ; 5 uses
  %i.i = alloca [72 x i8], align 8                ; 4 uses
  %i.j = alloca [72 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 5 uses
  %i.l = alloca [104 x i8], align 8               ; 6 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [72 x i8], align 8                ; 8 uses
  %i.o = alloca [72 x i8], align 8                ; 6 uses
  %i.p = alloca [16 x i8], align 8                ; 9 uses
  %i.q = alloca [56 x i8], align 8                ; 7 uses
  %i.r = alloca [48 x i8], align 16               ; 5 uses
  %i.s = alloca [48 x i8], align 16               ; 5 uses
  %i.t = alloca [104 x i8], align 8               ; 4 uses
  %i.u = alloca [24 x i8], align 8                ; 7 uses
  %i.v = alloca [24 x i8], align 8                ; 6 uses
  %i.w = alloca [56 x i8], align 8                ; 4 uses
  %i.x = alloca [32 x i8], align 8                ; 4 uses
  %i.y = alloca [72 x i8], align 8                ; 5 uses
  %i.z = alloca [24 x i8], align 8                ; 5 uses
  %i.aa = alloca [32 x i8], align 8               ; 4 uses
  %i.ab = alloca [32 x i8], align 8               ; 6 uses
  %i.ac = alloca [104 x i8], align 8              ; 6 uses
  %i.ad = alloca [152 x i8], align 8              ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 11 uses
  %i.af = alloca [56 x i8], align 8               ; 12 uses
  %i.ag = alloca [32 x i8], align 8               ; 4 uses
  %i.ah = alloca [72 x i8], align 8               ; 6 uses
  %i.ai = alloca [72 x i8], align 8               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !dbg !257575
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !257576
  %i.ak = load i64, ptr %i.aj, align 8, !dbg !257576, !noundef !13 ; 7 uses
  %i.al = getelementptr inbounds nuw i8, ptr %2, i64 32, !dbg !257582 ; 4 uses
  %i.am = load i64, ptr %i.al, align 8, !dbg !257582, !noundef !13 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !257585), !dbg !257575
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.ak, ptr %i.h, align 8, !noalias !257585
  store i64 %i.am, ptr %i.g, align 8, !noalias !257585
  %i.an = icmp eq i64 %i.ak, %i.am, !dbg !257588  ; 2 uses
  %i.ao = icmp eq i64 %i.am, 1, !dbg !257590      ; 2 uses
  %i.ap = or i1 %i.an, %i.ao, !dbg !257588
  %i.aq = icmp eq i64 %i.ak, 1, !dbg !257591      ; 2 uses
  %i.ar = or i1 %i.aq, %i.ap, !dbg !257588
  br i1 %i.ar, label %bb.c, label %bb.b, !dbg !257588, !prof !7465

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !257592, !noalias !257585
  store ptr %i.h, ptr %i.e, align 8, !dbg !257592, !noalias !257585
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !257592
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i, align 8, !dbg !257592, !noalias !257585
  %i.as = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !257592
  store ptr %i.g, ptr %i.as, align 8, !dbg !257592, !noalias !257585
  %.sroa.46.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !257592
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.46.0..sroa_idx.i, align 8, !dbg !257592, !noalias !257585
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, ptr noundef nonnull @181, ptr noundef nonnull %i.e), !dbg !257593, !noalias !257585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !257597, !noalias !257585
  %.sroa.412.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 8, !dbg !257597
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.412.0..sroa_idx.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @182), !dbg !257598
  store i64 10, ptr %i.ai, align 8, !dbg !257600, !alias.scope !257585
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !257601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !257601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !257601
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.ai, i64 72, i1 false), !dbg !257602
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !257604
  br label %bb.l, !dbg !257605

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !257601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !257601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !257601
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai), !dbg !257604
  br i1 %i.an, label %bb.e, label %bb.d, !dbg !257606

bb.d:                                             ; preds = %bb.c
  br i1 %i.ao, label %bb.f, label %bb.i, !dbg !257607

bb.e:                                             ; preds = %bb.c
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8, !dbg !257608 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !dbg !257608, !nonnull !13, !noundef !13 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !257626 ; 2 uses
  %i.aw = load i64, ptr %i.av, align 8, !dbg !257626, !noundef !13
  %i.ax = getelementptr inbounds nuw [16 x i8], ptr %i.au, i64 %i.aw, !dbg !257627
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !257636, !noalias !257652
  store i64 0, ptr %i.d, align 8, !dbg !257655, !noalias !257652
  %.sroa.3.8..sroa.5.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64, !dbg !257655
  store i64 0, ptr %.sroa.3.8..sroa.5.0..sroa_idx6.i.sroa_idx, align 8, !dbg !257655
  %.sroa.4105.8..sroa.5.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 128, !dbg !257655
  store ptr %i.au, ptr %.sroa.4105.8..sroa.5.0..sroa_idx6.i.sroa_idx, align 8, !dbg !257655
  %.sroa.5106.8..sroa.5.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 136, !dbg !257655
  store ptr %i.ax, ptr %.sroa.5106.8..sroa.5.0..sroa_idx6.i.sroa_idx, align 8, !dbg !257655
  %.sroa.6.8..sroa.5.0..sroa_idx6.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 144, !dbg !257655
  store i64 %i.ak, ptr %.sroa.6.8..sroa.5.0..sroa_idx6.i.sroa_idx, align 8, !dbg !257655
  %i.ay = call fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.d) #44, !dbg !257662, !noalias !257652 ; 2 uses
  %i.az = extractvalue { i32, i32 } %i.ay, 0, !dbg !257671 ; 2 uses
  %.not11.i.i = icmp eq i32 %i.az, 2, !dbg !257671
  br i1 %.not11.i.i, label %_RINvXsI_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtB6_7FlatMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1h_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4f_12ChunkedArrayNtNtB4h_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1h_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIB2G_mEENtNtB6m_8iterator10BitmapIterENCNvMNtB4f_8iteratorB5a_4iter0EINtNtBc_6option6OptionmEEINtB8F_8IntoItermEENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB2s_8map_foldmjjNCNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null0NCINvXsK_NtB9o_5accumjNtBbG_3Sum3sumIB2q_INtB6_7FlattenB1c_EBaj_EE0E0EBar_.exit, label %.lr.ph.i.i, !dbg !257672

.lr.ph.i.i:                                       ; preds = %bb.e, %.lr.ph.i.i
  %i.ba = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %i.az, %bb.e ]
  %i.bb = phi { i32, i32 } [ %i.be, %.lr.ph.i.i ], [ %i.ay, %bb.e ]
  %.sroa.0.012.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.lr.ph.i.i ], [ 0, %bb.e ]
  %i.bc = extractvalue { i32, i32 } %i.bb, 1, !dbg !257671
  %i.bd = trunc nuw i32 %i.ba to i1, !dbg !257673
  %narrow.i.i.i = select i1 %i.bd, i32 %i.bc, i32 0, !dbg !257673
  %3 = zext i32 %narrow.i.i.i to i64, !dbg !257673
  %.sroa.0.0.i.i.i = add i64 %.sroa.0.012.i.i, %3, !dbg !257673 ; 2 uses
  %i.be = call fastcc { i32, i32 } @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB5_13FlattenCompatINtNtB7_3map3MapIB1c_INtNtNtBb_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB3u_12ChunkedArrayNtNtB3w_9datatypes10UInt32TypeE13downcast_iter0ENCNvMNtB3u_8iteratorB4p_4iter0EINtNtNtNtB2A_6bitmap5utils12zip_validity11ZipValiditymINtNtB7_6copied6CopiedIB1x_mEENtNtB66_8iterator10BitmapIterEENtNtNtB9_6traits8iterator8Iterator4nextCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(152) %i.d) #44, !dbg !257662, !noalias !257652 ; 2 uses
  %i.bf = extractvalue { i32, i32 } %i.be, 0, !dbg !257671 ; 2 uses
  %.not.i.i = icmp eq i32 %i.bf, 2, !dbg !257671
  br i1 %.not.i.i, label %_RINvXsI_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtB6_7FlatMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1h_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4f_12ChunkedArrayNtNtB4h_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1h_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIB2G_mEENtNtB6m_8iterator10BitmapIterENCNvMNtB4f_8iteratorB5a_4iter0EINtNtBc_6option6OptionmEEINtB8F_8IntoItermEENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB2s_8map_foldmjjNCNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null0NCINvXsK_NtB9o_5accumjNtBbG_3Sum3sumIB2q_INtB6_7FlattenB1c_EBaj_EE0E0EBar_.exit, label %.lr.ph.i.i, !dbg !257672

_RINvXsI_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtB6_7FlatMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1h_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4f_12ChunkedArrayNtNtB4h_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1h_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIB2G_mEENtNtB6m_8iterator10BitmapIterENCNvMNtB4f_8iteratorB5a_4iter0EINtNtBc_6option6OptionmEEINtB8F_8IntoItermEENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB2s_8map_foldmjjNCNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null0NCINvXsK_NtB9o_5accumjNtBbG_3Sum3sumIB2q_INtB6_7FlattenB1c_EBaj_EE0E0EBar_.exit: ; preds = %.lr.ph.i.i, %bb.e
  %.sroa.03.0.i = phi i64 [ 0, %bb.e ], [ %.sroa.0.0.i.i.i, %.lr.ph.i.i ], !dbg !257677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !257636, !noalias !257652
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !dbg !257678
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag), !dbg !257680
  store i8 0, ptr %i.ag, align 8, !dbg !257680
  call void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow5array4nullNtB2_9NullArray3new(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.ah, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ag, i64 noundef %.sroa.03.0.i), !dbg !257681
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag), !dbg !257682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.af), !dbg !257683
  %i.bg = load i64, ptr %i.al, align 8, !dbg !257685, !noundef !13
  invoke void @_RNvMNtNtCs8774dFTUdNv_12polars_arrow6bitmap7builderNtB2_13BitmapBuilder13with_capacity(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.af, i64 noundef %i.bg)
          to label %bb.aa unwind label %.thread, !dbg !257687

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !dbg !257688
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !257689
  %i.bh = tail call fastcc { i32, i32 } @_RNvMs_NtCs1LHh8CLbVkQ_11polars_core13chunked_arrayINtB4_12ChunkedArrayNtNtB6_9datatypes10UInt32TypeE3getCsePnBjWcsLF5_10polars_ops(ptr noundef nonnull readonly align 8 %2, i64 noundef 0) #44, !dbg !257689, !noalias !257691 ; 2 uses
  %i.bi = extractvalue { i32, i32 } %i.bh, 0, !dbg !257689
  %i.bj = trunc i32 %i.bi to i1, !dbg !257694
  br i1 %i.bj, label %bb.g, label %bb.h, !dbg !257694

bb.g:                                             ; preds = %bb.f
  %i.bk = extractvalue { i32, i32 } %i.bh, 1, !dbg !257689
  %.not.i80 = icmp eq i64 %i.ak, 0, !dbg !257695
  %..i = select i1 %.not.i80, i32 undef, i32 %i.bk, !dbg !257699
  call void @_RNvXs_NtNtCsgZ49sUHp3tW_5alloc3vec21spec_from_iter_nestedINtB6_3VecmEINtB4_18SpecFromIterNestedmINtNtNtNtCscgRAwXFJnXP_4core4iter7sources8repeat_n7RepeatNmEE9from_iterCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.ak, i32 %..i), !dbg !257700, !noalias !257691
  call void @_RNvXsZ_NtCs1LHh8CLbVkQ_11polars_core10named_fromINtNtB7_13chunked_array12ChunkedArrayNtNtB7_9datatypes10UInt32TypeEINtB5_9NamedFromINtNtCsgZ49sUHp3tW_5alloc3vec3VecmESmE3newCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) @12, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c), !dbg !257704
  br label %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit, !dbg !257705

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !257706, !noalias !257691
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) @12, i64 24, i1 false), !dbg !257706, !noalias !257691
  call void @_RNvXs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops4fullINtB8_12ChunkedArrayNtNtBa_9datatypes10UInt32TypeENtB6_13ChunkFullNull9full_nullCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(address) dereferenceable(56) %i.q, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.ak), !dbg !257706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !257706, !noalias !257691
  br label %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit, !dbg !257705

_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !257707
  invoke fastcc void @_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, ptr noundef nonnull align 8 %i.q)
          to label %bb.k unwind label %bb.j, !dbg !257708

bb.i:                                             ; preds = %bb.d
  br i1 %i.aq, label %bb.n, label %bb.o, !dbg !257607, !prof !7465

bb.j:                                             ; preds = %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit
  %i.bl = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.q) #41
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.m, !dbg !257710

bb.k:                                             ; preds = %_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by6new_by.exit
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtCs1LHh8CLbVkQ_11polars_core13chunked_array12ChunkedArrayNtNtBL_9datatypes10UInt32TypeEECsePnBjWcsLF5_10polars_ops(ptr noalias noundef align 8 dereferenceable(56) %i.q), !dbg !257710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !dbg !257710
  br label %bb.l, !dbg !257710

bb.l:                                             ; preds = %bb.bo, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit81, %bb.k, %bb.b
  ret void, !dbg !257605

bb.m:                                             ; preds = %bb.bw, %bb.br, %bb.q, %bb.bt, %bb.ch, %.thread162, %.body74, %bb.bx, %bb.bs, %bb.bp, %bb.j
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !257711
  unreachable, !dbg !257711

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit: ; preds = %bb.bs, %bb.ay, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsePnBjWcsLF5_10polars_ops.exit, %.body63, %bb.q, %bb.ch, %bb.z, %bb.j
  %.pn58.pn.pn.pn = phi { ptr, i32 } [ %.pn58.pn.pn116, %bb.ch ], [ %.pn58.pn.pn, %bb.z ], [ %i.bl, %bb.j ], [ %eh.lpad-body64, %bb.q ], [ %eh.lpad-body64, %.body63 ], [ %.pn55.ph, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrECsePnBjWcsLF5_10polars_ops.exit ], [ %i.dz, %bb.ay ], [ %.pn55.pn151, %bb.bs ]
  resume { ptr, i32 } %.pn58.pn.pn.pn, !dbg !257711

bb.n:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !dbg !257712
  %i.bn = tail call { ptr, ptr } @_RNvXs2_NtNtNtCs1LHh8CLbVkQ_11polars_core6series15implementations4nullNtB5_11NullChunkedNtNtB9_12series_trait11SeriesTrait14new_from_index(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %1, i64 noundef 0, i64 noundef %i.am), !dbg !257713 ; 2 uses
  %i.bo = extractvalue { ptr, ptr } %i.bn, 0, !dbg !257713
  %i.bp = extractvalue { ptr, ptr } %i.bn, 1, !dbg !257713
  store ptr %i.bo, ptr %i.p, align 8, !dbg !257713
  %i.bq = getelementptr inbounds nuw i8, ptr %i.p, i64 8, !dbg !257713
  store ptr %i.bp, ptr %i.bq, align 8, !dbg !257713
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !dbg !257714
  invoke void @_RNvMNtNtNtCs1LHh8CLbVkQ_11polars_core6series3ops8downcastNtB6_6Series4null(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p)
          to label %bb.r unwind label %bb.p, !dbg !257716

bb.o:                                             ; preds = %bb.i
  tail call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @37, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @186) #42, !dbg !257717
  unreachable, !dbg !257717

bb.p:                                             ; preds = %bb.w, %bb.n
  %i.br = landingpad { ptr, i32 }
          cleanup
  br label %.body63, !dbg !257718

.body63:                                          ; preds = %bb.t, %bb.p
  %eh.lpad-body64 = phi { ptr, i32 } [ %i.br, %bb.p ], [ %i.bw, %bb.t ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !257719), !dbg !257718
  call void @llvm.experimental.noalias.scope.decl(metadata !257722), !dbg !257725
  call void @llvm.experimental.noalias.scope.decl(metadata !257727), !dbg !257730
  %i.bs = load ptr, ptr %i.p, align 8, !dbg !257732, !alias.scope !257736, !nonnull !13, !noundef !13
  %i.bt = atomicrmw sub ptr %i.bs, i64 1 release, align 8, !dbg !257737, !noalias !257736
  %i.bu = icmp eq i64 %i.bt, 1, !dbg !257740
  br i1 %i.bu, label %bb.q, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit, !dbg !257740

bb.q:                                             ; preds = %.body63
  fence acquire, !dbg !257741
  invoke void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #43
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit unwind label %bb.m, !dbg !257743

bb.r:                                             ; preds = %bb.n
  call void @llvm.experimental.noalias.scope.decl(metadata !257744), !dbg !257747
  %i.bv = load i64, ptr %i.o, align 8, !dbg !257748, !range !44991, !alias.scope !257744, !noalias !257751, !noundef !13
  %.not.i = icmp eq i64 %i.bv, 18, !dbg !257748
  br i1 %.not.i, label %bb.w, label %bb.s, !dbg !257753, !prof !7465

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !257754, !noalias !257755
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.o, i64 72, i1 false), !dbg !257754, !noalias !257751
  invoke void @_RNvNtCscgRAwXFJnXP_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @107, i64 noundef 43, ptr noundef nonnull %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @108, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @185) #39
          to label %bb.u unwind label %bb.t, !dbg !257756, !noalias !257744

bb.t:                                             ; preds = %bb.s
  %i.bw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.i) #41
          to label %.body63 unwind label %bb.v, !dbg !257758, !noalias !257744

bb.u:                                             ; preds = %bb.s
  unreachable

bb.v:                                             ; preds = %bb.t
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !257759, !noalias !257744
  unreachable, !dbg !257759

bb.w:                                             ; preds = %bb.r
  %i.by = getelementptr inbounds nuw i8, ptr %i.o, i64 8, !dbg !257760
  %i.bz = load ptr, ptr %i.by, align 8, !dbg !257760, !alias.scope !257744, !noalias !257751, !nonnull !13, !align !172, !noundef !13
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !dbg !257761
  invoke fastcc void @_RNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null(ptr noalias noundef align 8 captures(address) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.bz, ptr noundef nonnull align 8 %2)
          to label %bb.x unwind label %bb.p, !dbg !257762

bb.x:                                             ; preds = %bb.w
  call void @llvm.experimental.noalias.scope.decl(metadata !257764), !dbg !257718
  call void @llvm.experimental.noalias.scope.decl(metadata !257767), !dbg !257770
  call void @llvm.experimental.noalias.scope.decl(metadata !257772), !dbg !257775
  %i.ca = load ptr, ptr %i.p, align 8, !dbg !257777, !alias.scope !257781, !nonnull !13, !noundef !13
  %i.cb = atomicrmw sub ptr %i.ca, i64 1 release, align 8, !dbg !257782, !noalias !257781
  %i.cc = icmp eq i64 %i.cb, 1, !dbg !257785
  br i1 %i.cc, label %bb.y, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit81, !dbg !257785

bb.y:                                             ; preds = %bb.x
  fence acquire, !dbg !257786
  call void @_RNvMsn_NtCsgZ49sUHp3tW_5alloc4syncINtB5_3ArcDNtNtNtCs1LHh8CLbVkQ_11polars_core6series12series_trait11SeriesTraitEL_E9drop_slowBN_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.p) #43, !dbg !257788
  br label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit81, !dbg !257788

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit81: ; preds = %bb.x, %bb.y
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !dbg !257718
  br label %bb.l, !dbg !257718

bb.z:                                             ; preds = %.thread162, %bb.ab
  %.sroa.016.0 = phi i1 [ %.sroa.016.1121, %.thread162 ], [ %.sroa.016.3.ph, %bb.ab ], !dbg !257682
  %.pn58.pn.pn = phi { ptr, i32 } [ %.pn58.pn122, %.thread162 ], [ %.pn.pn.ph, %bb.ab ] ; 2 uses
  br i1 %.sroa.016.0, label %bb.ch, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtCs1LHh8CLbVkQ_11polars_core6series6SeriesECsePnBjWcsLF5_10polars_ops.exit, !dbg !257789

.thread:                                          ; preds = %_RINvXsI_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtB6_7FlatMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1h_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4f_12ChunkedArrayNtNtB4h_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1h_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIB2G_mEENtNtB6m_8iterator10BitmapIterENCNvMNtB4f_8iteratorB5a_4iter0EINtNtBc_6option6OptionmEEINtB8F_8IntoItermEENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB2s_8map_foldmjjNCNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null0NCINvXsK_NtB9o_5accumjNtBbG_3Sum3sumIB2q_INtB6_7FlattenB1c_EBaj_EE0E0EBar_.exit
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %bb.ch, !dbg !257789

bb.aa:                                            ; preds = %_RINvXsI_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_13FlattenCompatINtNtCs8774dFTUdNv_12polars_arrow11trusted_len13TrustMyLengthINtB6_7FlatMapINtNtB8_3map3MapINtNtNtBc_5slice4iter4IterINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1h_5array5ArrayEL_EENCNvMs_NtNtNtCs1LHh8CLbVkQ_11polars_core13chunked_array3ops8downcastINtB4f_12ChunkedArrayNtNtB4h_9datatypes10UInt32TypeE13downcast_iter0EINtNtNtNtB1h_6bitmap5utils12zip_validity11ZipValiditymINtNtB8_6copied6CopiedIB2G_mEENtNtB6m_8iterator10BitmapIterENCNvMNtB4f_8iteratorB5a_4iter0EINtNtBc_6option6OptionmEEINtB8F_8IntoItermEENtNtNtBa_6traits8iterator8Iterator4foldjNCINvB2s_8map_foldmjjNCNvNtNtCsePnBjWcsLF5_10polars_ops13chunked_array9repeat_by14repeat_by_null0NCINvXsK_NtB9o_5accumjNtBbG_3Sum3sumIB2q_INtB6_7FlattenB1c_EBaj_EE0E0EBar_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae), !dbg !257790
  %i.ce = load i64, ptr %i.al, align 8, !dbg !257792, !noundef !13
  invoke void @_RNvMs4_NtCs8774dFTUdNv_12polars_arrow6offsetINtB5_7OffsetsxE13with_capacityCsePnBjWcsLF5_10polars_ops(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.ae, i64 noundef %i.ce)
          to label %bb.ac unwind label %.thread117, !dbg !257794

bb.ab:                                            ; preds = %bb.bx
  br i1 %.sroa.015.2.ph, label %.thread162, label %bb.z, !dbg !257795

.thread117:                                       ; preds = %bb.aa
  %i.cf = landingpad { ptr, i32 }
          cleanup
  br label %.thread162, !dbg !257795

bb.ac:                                            ; preds = %bb.aa
  %i.cg = load ptr, ptr %i.at, align 8, !dbg !257796, !nonnull !13, !noundef !13 ; 2 uses
  %i.ch = load i64, ptr %i.av, align 8, !dbg !257813, !noundef !13
  %i.ci = getelementptr inbounds nuw [16 x i8], ptr %i.cg, i64 %i.ch, !dbg !257814
  %i.cj = load i64, ptr %i.al, align 8, !dbg !257822, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !dbg !257824
  store i64 0, ptr %i.ad, align 8, !dbg !257824
  %.sroa.01.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 64, !dbg !257824
  store i64 0, ptr %.sroa.01.sroa.3.0..sroa_idx, align 8, !dbg !257824
  %.sroa.01.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 128, !dbg !257824
  store ptr %i.cg, ptr %.sroa.01.sroa.5.0..sroa_idx, align 8, !dbg !257824
  %.sroa.01.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 136, !dbg !257824
  store ptr %i.ci, ptr %.sroa.01.sroa.6.0..sroa_idx, align 8, !dbg !257824
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ad, i64 144, !dbg !257824
  store i64 %i.cj, ptr %.sroa.2.0..sroa_idx, align 8, !dbg !257824
end_hunk_0
