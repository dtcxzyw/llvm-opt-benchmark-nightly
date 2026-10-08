Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/serde-json-rs/original/serde_json-91101fda7f3b469c.serde_json.68cc3255a7a81b66-cgu.2?download=true
inline.NumInlined: 202
inline.NumDeleted: 121
begin_hunk_0_@_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQNtNvXs_B5_BH_NtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB1O_15PrettyFormatterEEB7_:bb.a
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer14serialize_unitB7_.exit

bb.i:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.u = tail call noundef align 8 ptr @_RINvYQINtNtCs8ZPNfZ0ciAA_10serde_json3ser10SerializerQNtNvXs_NtB9_5valueNtBX_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB7_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer11collect_seqRINtNtCsbqH9stoieM8_5alloc3vec3VecB18_EEB9_(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer14serialize_unitB7_.exit

bb.j:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !74, !noalias !75, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76)
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !77, !noalias !75, !noundef !4 ; 2 uses
  %i.z = add i64 %i.y, 1
  store i64 %i.z, ptr %i.x, align 8, !alias.scope !77, !noalias !75
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 32
  store i8 0, ptr %i.aa, align 8, !alias.scope !77, !noalias !75
  %i.ab = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @3, i64 noundef 1), !noalias !78 ; 2 uses
  %.not.i46 = icmp eq ptr %i.ab, null
  br i1 %.not.i46, label %bb.k, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.j
  %i.ac = icmp eq i64 %i.w, 0
  br i1 %i.ac, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i, label %bb.m

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i: ; preds = %bb.k
  tail call void @llvm.experimental.noalias.scope.decl(metadata !79)
  store i64 %i.y, ptr %i.x, align 8, !alias.scope !80, !noalias !75
  %i.ad = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1), !noalias !81 ; 2 uses
  %.not10.i = icmp eq ptr %i.ad, null
  br i1 %.not10.i, label %bb.m, label %bb.l, !prof !13

_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer14serialize_unitB7_.exit: ; preds = %bb.h, %bb.g, %bb.e, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter10write_boolQNtNvXs_NtB7_5valueNtB1r_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i, %bb.c, %bb.b, %bb.v, %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit, %bb.i, %bb.f
  %.sroa.0.0 = phi ptr [ %.sroa.0.0.i50, %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit ], [ null, %bb.b ], [ %i.m, %bb.f ], [ null, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter10write_boolQNtNvXs_NtB7_5valueNtB1r_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i ], [ %i.u, %bb.i ], [ %.sroa.0.1, %bb.v ], [ %i.e, %bb.c ], [ %i.k, %bb.e ], [ %i.s, %bb.h ], [ null, %bb.g ]
  ret ptr %.sroa.0.0

bb.l:                                             ; preds = %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i, %bb.j
  %.sink18.i = phi ptr [ %i.ab, %bb.j ], [ %i.ad, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i ]
  %i.ae = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink18.i), !noalias !82
  br label %bb.v

bb.m:                                             ; preds = %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i, %bb.k
  %.sink.i.ph = phi i8 [ 1, %bb.k ], [ 0, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i ]
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.b, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i8 %.sink.i.ph, ptr %i.ag, align 8
  %i.ah = load ptr, ptr %i.af, align 8, !noundef !4 ; 3 uses
  %.not = icmp ne ptr %i.ah, null                 ; 3 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aj = load i64, ptr %i.ai, align 8
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.aj, i64 undef ; 2 uses
  %.sroa.07.sroa.0.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.w, i64 0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.07.sroa.0.0, ptr %i.a, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.ah, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.07.sroa.0.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.ah, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.ak = call { ptr, ptr } @_RNvXsk_NtNtNtCsbqH9stoieM8_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtNtCs8Chj7Szqq0n_4core4iter6traits8iterator8Iterator4nextB1s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.al = extractvalue { ptr, ptr } %i.ak, 0      ; 2 uses
  %.not39 = icmp eq ptr %i.al, null
  br i1 %.not39, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.am = extractvalue { ptr, ptr } %i.ak, 1      ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  %i.an = call noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.al, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.am) ; 2 uses
  %.not40 = icmp eq ptr %i.an, null
  br i1 %.not40, label %bb.n, label %bb.u

bb.p:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ao = load ptr, ptr %i.b, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.ap = load i8, ptr %i.ag, align 8, !range !12, !noundef !4
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %i.aq = icmp eq i8 %i.ap, 0
  br i1 %i.aq, label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  %.val.i47 = load ptr, ptr %i.ao, align 8, !alias.scope !83 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !84)
  %i.as = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 2 uses
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !85, !noundef !4
  %i.au = add i64 %i.at, -1                       ; 3 uses
  store i64 %i.au, ptr %i.as, align 8, !alias.scope !85
  %i.av = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  %i.aw = load i8, ptr %i.av, align 8, !range !11, !alias.scope !85, !noundef !4
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %bb.r, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i47) ]
  %i.ay = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !noalias !85 ; 2 uses
  %.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i, label %bb.s, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i

bb.s:                                             ; preds = %bb.r
  %i.az = load ptr, ptr %i.ar, align 8, !alias.scope !85, !nonnull !4, !noundef !4
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !85, !noundef !4
  %exitcond.not.i.i69 = icmp eq i64 %i.au, 0
  br i1 %exitcond.not.i.i69, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48, label %.lr.ph

bb.t:                                             ; preds = %.lr.ph
  %i.bc = add i64 %.sroa.06.0.i.i70, 1            ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.bc, %i.au
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s, %bb.t
  %.sroa.06.0.i.i70 = phi i64 [ %i.bc, %bb.t ], [ 0, %bb.s ]
  %i.bd = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.az, i64 noundef range(i64 0, -9223372036854775808) %i.bb), !noalias !85 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.bd, null
  br i1 %.not8.i.i, label %bb.t, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48: ; preds = %bb.t, %bb.s, %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i47) ]
  %i.be = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i47, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @1, i64 noundef 1), !noalias !85 ; 2 uses
  %.not.i49 = icmp eq ptr %i.be, null
  br i1 %.not.i49, label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i, !prof !13

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i: ; preds = %.lr.ph, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48, %bb.r
  %.sroa.0.0.i5.i = phi ptr [ %i.be, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48 ], [ %i.ay, %bb.r ], [ %i.bd, %.lr.ph ]
  %i.bf = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sroa.0.0.i5.i), !noalias !83
  br label %_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit

_RNvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB5_8CompoundQNtNvXs_NtB7_5valueNtBY_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap3endB7_.exit: ; preds = %bb.p, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i
  %.sroa.0.0.i50 = phi ptr [ null, %bb.p ], [ %i.bf, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.thread.i ], [ null, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter10end_objectQNtNvXs_NtB8_5valueNtB1x_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i48 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer14serialize_unitB7_.exit

bb.u:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.l
  %.sroa.0.1 = phi ptr [ %i.ae, %bb.l ], [ %i.an, %bb.u ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer14serialize_unitB7_.exit
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs4_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB6_6NumberNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQNtNvXs_NtB8_5valueNtB2g_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEEB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  switch i64 %i.d, label %default.unreachable10 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.i
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.f, ptr noalias nofree noundef nonnull dereferenceable(20) %i.c) ; 2 uses
  %i.h = sub nuw i64 20, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp slt i64 %i.l, 0
  %.sroa.07.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.l, i1 false)
  %i.n = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.m, label %bb.e, label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %i.p = icmp ult i64 %i.o, 20
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 45, ptr %i.q, align 1, !alias.scope !88
  br label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22
  unreachable

_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.r = sub nuw i64 20, %.sroa.0.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.i:                                             ; preds = %bb.a
  %i.v = load double, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %cond.i = fcmp ueq double %i.w, +inf
  br i1 %cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.x = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i5, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = call { ptr, i64 } @_RINvMs6_CshejLTejVTJS_4zmijNtB6_6Buffer13format_finitedECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.v) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.aa) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.m, !prof !6

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1q_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i ], [ null, %bb.b ], [ %i.k, %bb.c ], [ %i.u, %bb.h ], [ null, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ null, %bb.k ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs4_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB6_6NumberNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQNtNvXs_NtB8_5valueNtB2g_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB1N_15PrettyFormatterEEB8_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.val = load ptr, ptr %1, align 8               ; 8 uses
  switch i64 %i.d, label %default.unreachable10 [
    i64 0, label %bb.b
    i64 1, label %bb.d
    i64 2, label %bb.i
  ]

default.unreachable10:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.f, ptr noalias nofree noundef nonnull dereferenceable(20) %i.c) ; 2 uses
  %i.h = sub nuw i64 20, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.j = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef range(i64 0, -9223372036854775808) %i.h) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.d:                                             ; preds = %bb.a
  %i.l = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = icmp slt i64 %i.l, 0
  %.sroa.07.0.i.i.i = tail call i64 @llvm.abs.i64(i64 %i.l, i1 false)
  %i.n = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i.i.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.m, label %bb.e, label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i

bb.e:                                             ; preds = %bb.d
  %i.o = add i64 %i.n, -1                         ; 4 uses
  %i.p = icmp ult i64 %i.o, 20
  br i1 %i.p, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.o
  store i8 45, ptr %i.q, align 1, !alias.scope !91
  br label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i

bb.g:                                             ; preds = %bb.e
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.o, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22
  unreachable

_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.i.i.i = phi i64 [ %i.o, %bb.f ], [ %i.n, %bb.d ] ; 2 uses
  %i.r = sub nuw i64 20, %.sroa.0.0.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.t = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef range(i64 0, -9223372036854775808) %i.r) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i3 = icmp eq ptr %i.t, null
  br i1 %.not.i3, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.h, !prof !6

bb.h:                                             ; preds = %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i
  %i.u = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.t)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.i:                                             ; preds = %bb.a
  %i.v = load double, ptr %i.e, align 8, !noundef !4 ; 2 uses
  %i.w = tail call double @llvm.fabs.f64(double %i.v)
  %cond.i = fcmp ueq double %i.w, +inf
  br i1 %cond.i, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.x = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @10, i64 noundef 4) ; 2 uses
  %.not.i5 = icmp eq ptr %i.x, null
  br i1 %.not.i5, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.l, !prof !6

bb.k:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.y = call { ptr, i64 } @_RINvMs6_CshejLTejVTJS_4zmijNtB6_6Buffer13format_finitedECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.v) ; 2 uses
  %i.z = extractvalue { ptr, i64 } %i.y, 0
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.ab = call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.aa) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not6.i = icmp eq ptr %i.ab, null
  br i1 %.not6.i, label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit, label %bb.m, !prof !6

bb.l:                                             ; preds = %bb.j
  %i.ac = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.x)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

bb.m:                                             ; preds = %bb.k
  %i.ad = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.ab)
  br label %_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit

_RNvXs1_NtCs8ZPNfZ0ciAA_10serde_json3serQINtB5_10SerializerQNtNvXs_NtB7_5valueNtB12_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB5_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer13serialize_u64B7_.exit: ; preds = %bb.m, %bb.l, %bb.k, %bb.j, %bb.h, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i, %bb.c, %bb.b
  %.sroa.0.0 = phi ptr [ null, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser15PrettyFormatterNtB5_9Formatter9write_i64QNtNvXs_NtB7_5valueNtB1p_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i ], [ null, %bb.b ], [ %i.k, %bb.c ], [ %i.u, %bb.h ], [ null, %bb.j ], [ %i.ac, %bb.l ], [ %i.ad, %bb.m ], [ null, %bb.k ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !102, !nonnull !4, !align !5, !noundef !4 ; 8 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.f = load i8, ptr %i.e, align 8, !range !12, !alias.scope !102, !noundef !4
  %i.g = icmp eq i8 %i.f, 1
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !102, !nonnull !4, !noundef !4 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !103)
  br i1 %i.g, label %.split.i.i, label %.split8.i.i

.split8.i.i:                                      ; preds = %bb.a
  %i.h = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @4, i64 noundef 2), !noalias !104
  br label %bb.b

.split.i.i:                                       ; preds = %bb.a
  %i.i = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 1), !noalias !104
  br label %bb.b

bb.b:                                             ; preds = %.split.i.i, %.split8.i.i
  %phi.call.i.i = phi ptr [ %i.i, %.split.i.i ], [ %i.h, %.split8.i.i ] ; 2 uses
  %.not.i.i = icmp eq ptr %phi.call.i.i, null
  br i1 %.not.i.i, label %bb.c, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !103, !noalias !102, !noundef !4 ; 2 uses
  %i.l = load ptr, ptr %i.d, align 8, !alias.scope !103, !noalias !102, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !103, !noalias !102, !noundef !4
  %exitcond.not.i.i11 = icmp eq i64 %i.k, 0
  br i1 %exitcond.not.i.i11, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i, label %.lr.ph

bb.d:                                             ; preds = %.lr.ph
  %i.o = add i64 %.sroa.05.0.i.i12, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.o, %i.k
  br i1 %exitcond.not.i.i, label %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.d
  %.sroa.05.0.i.i12 = phi i64 [ %i.o, %bb.d ], [ 0, %bb.c ]
  %i.p = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.l, i64 noundef range(i64 0, -9223372036854775808) %i.n), !noalias !104 ; 2 uses
  %.not9.i.i = icmp eq ptr %i.p, null
  br i1 %.not9.i.i, label %bb.d, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit

_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i: ; preds = %bb.d, %bb.c
  store i8 2, ptr %i.e, align 8, !alias.scope !102
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.q = tail call noundef ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser18format_escaped_strQNtNvXs_NtB4_5valueNtB10_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB2_15PrettyFormatterEB4_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(40) %i.c, ptr noalias nofree nonnull readonly align 8 poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !102 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i.i.i, label %bb.e, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit, !prof !6

_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit: ; preds = %.lr.ph, %bb.b, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i
  %.sink.i = phi ptr [ %i.q, %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i ], [ %phi.call.i.i, %bb.b ], [ %i.p, %.lr.ph ]
  %i.r = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i), !noalias !102
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

bb.e:                                             ; preds = %_RINvXsd_NtCs8ZPNfZ0ciAA_10serde_json3serNtB6_15PrettyFormatterNtB6_9Formatter16begin_object_keyQNtNvXs_NtB8_5valueNtB1D_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB8_.exit.i
  %.val.i4 = load ptr, ptr %i.c, align 8, !noalias !105, !nonnull !4, !align !5, !noundef !4
  %i.s = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @5, i64 noundef 2), !noalias !105 ; 2 uses
  %.not.i = icmp eq ptr %i.s, null
  br i1 %.not.i, label %bb.g, label %bb.f, !prof !6

bb.f:                                             ; preds = %bb.e
  %i.t = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.s), !noalias !105, !inline_history !99
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = tail call fastcc noundef align 8 ptr @_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQNtNvXs_B5_BH_NtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB1O_15PrettyFormatterEEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(40) %i.c) #23, !noalias !106, !inline_history !99 ; 2 uses
  %.not8.i = icmp eq ptr %i.u, null
  br i1 %.not8.i, label %bb.h, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

bb.h:                                             ; preds = %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i8 1, ptr %i.v, align 8, !alias.scope !107, !noalias !106
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit: ; preds = %bb.h, %bb.g, %bb.f, %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit
  %.sroa.0.0 = phi ptr [ %i.r, %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_15PrettyFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit ], [ %i.t, %bb.f ], [ null, %bb.h ], [ %i.u, %bb.g ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYINtNtCs8ZPNfZ0ciAA_10serde_json3ser8CompoundQNtNvXs_NtB8_5valueNtBT_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_entryNtNtCsbqH9stoieM8_5alloc6string6StringB14_EB8_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8             ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3 = load i64, ptr %i.b, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !114)
  %i.c = load ptr, ptr %0, align 8, !alias.scope !114, !nonnull !4, !align !5, !noundef !4 ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.e = load i8, ptr %i.d, align 8, !range !12, !alias.scope !114, !noundef !4
  %i.f = icmp eq i8 %i.e, 1
  br i1 %i.f, label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i, label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i

_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i: ; preds = %bb.a
  %.val.i = load ptr, ptr %i.c, align 8, !noalias !114, !nonnull !4, !noundef !4
  %i.g = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 1), !noalias !114 ; 2 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit, !prof !15

_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i: ; preds = %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i, %bb.a
  store i8 2, ptr %i.d, align 8, !alias.scope !114
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.h = tail call noundef ptr @_RINvNtCs8ZPNfZ0ciAA_10serde_json3ser18format_escaped_strQNtNvXs_NtB4_5valueNtB10_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB2_16CompactFormatterEB4_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(8) %i.c, ptr noalias nofree nonnull readonly poison, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val3), !noalias !114 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i.i, label %bb.b, label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit, !prof !6

_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit: ; preds = %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i
  %.sink.i = phi ptr [ %i.g, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.i ], [ %i.h, %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i ]
  %i.i = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %.sink.i), !noalias !114
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

bb.b:                                             ; preds = %_RINvYNtNtCs8ZPNfZ0ciAA_10serde_json3ser16CompactFormatterNtB5_9Formatter16begin_object_keyQNtNvXs_NtB7_5valueNtB1y_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEB7_.exit.thread.i
  %.val.i4 = load ptr, ptr %i.c, align 8, !noalias !115, !nonnull !4, !align !5, !noundef !4
  %i.j = tail call noundef ptr @_RNvYNtNvXs_NtCs8ZPNfZ0ciAA_10serde_json5valueNtB9_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtNtNtBW_2io5write5Write9write_allBb_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.val.i4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @12, i64 noundef 1), !noalias !115 ; 2 uses
  %.not.i5 = icmp eq ptr %i.j, null
  br i1 %.not.i5, label %bb.d, label %bb.c, !prof !6

bb.c:                                             ; preds = %bb.b
  %i.k = tail call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error2io(ptr noundef nonnull %i.j), !noalias !115, !inline_history !113
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

bb.d:                                             ; preds = %bb.b
  %i.l = tail call fastcc noundef align 8 ptr @_RINvXNtNtCs8ZPNfZ0ciAA_10serde_json5value3serNtB5_5ValueNtNtCsdnjrqM8ey3e_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQNtNvXs_B5_BH_NtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterEEB7_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %2, ptr noalias nofree noundef align 8 dereferenceable(8) %i.c) #23, !noalias !116, !inline_history !113
  br label %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit

_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap15serialize_valueB1a_EB8_.exit: ; preds = %bb.d, %bb.c, %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit
  %.sroa.0.0 = phi ptr [ %i.i, %_RINvXs6_NtCs8ZPNfZ0ciAA_10serde_json3serINtB6_8CompoundQNtNvXs_NtB8_5valueNtBZ_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterNtB6_16CompactFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser12SerializeMap13serialize_keyNtNtCsbqH9stoieM8_5alloc6string6StringEB8_.exit ], [ %i.k, %bb.c ], [ %i.l, %bb.d ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvYQINtNtCs8ZPNfZ0ciAA_10serde_json3ser10SerializerQNtNvXs_NtB9_5valueNtBX_5ValueNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt15WriterFormatterENtNtCsdnjrqM8ey3e_10serde_core3ser10Serializer11collect_seqRINtNtCsbqH9stoieM8_5alloc3vec3VecB18_EEB9_(ptr noalias nofree noundef align 8 dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.a, align 8, !nonnull !4, !noundef !4 ; 3 uses
end_hunk_0
begin_hunk_1_@_RNvMs5_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs8ZPNfZ0ciAA_10serde_json:bb.a

bb.d:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %3 to ptr
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.g, ptr %i.i, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  br i1 %2, label %bb.g, label %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit

bb.f:                                             ; preds = %bb.c, %bb.i, %bb.j, %bb.d
  %.sink = phi i64 [ 1, %bb.c ], [ 1, %bb.i ], [ 0, %bb.j ], [ 0, %bb.d ]
  store i64 %.sink, ptr %0, align 8
  ret void

bb.g:                                             ; preds = %bb.e
  %i.j = tail call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit: ; preds = %bb.e
  %i.k = tail call noundef ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %i.b, i64 noundef range(i64 1, -9223372036854775807) %3) #20
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit
  %.pn9 = phi ptr [ %i.j, %bb.g ], [ %i.k, %_RNvXs1_NtCsbqH9stoieM8_5alloc5allocNtB5_6GlobalNtNtCs8Chj7Szqq0n_4core5alloc9Allocator8allocate.exit ] ; 2 uses
  %i.l = icmp eq ptr %.pn9, null
  br i1 %i.l, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.b, ptr %i.n, align 8
  br label %bb.f

bb.j:                                             ; preds = %bb.h
  %i.o = icmp sgt i64 %1, -1
  tail call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.pn9, ptr %i.q, align 8
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbqH9stoieM8_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node12InternalNodeNtNtB6_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEE13new_uninit_inB1T_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(728) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 728, i64 noundef range(i64 1, -9223372036854775807) 8) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 728) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noalias noundef nonnull align 8 ptr @_RNvMs_NtCsbqH9stoieM8_5alloc5boxedINtB4_3BoxINtNtNtNtB6_11collections5btree4node8LeafNodeNtNtB6_6string6StringNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueEE13new_uninit_inB1O_() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.a = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #20 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !17

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 632) #21
  unreachable

bb.c:                                             ; preds = %bb.a
  ret ptr %i.a
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json3ser20key_must_be_a_string() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 17, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: cold nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvNtCs8ZPNfZ0ciAA_10serde_json3ser24float_key_must_be_finite() unnamed_addr #1 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 19, ptr %i.a, align 8
  %i.b = call noundef nonnull align 8 ptr @_RNvMs0_NtCs8ZPNfZ0ciAA_10serde_json5errorNtB5_5Error6syntax(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i64 noundef 0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNvXs5_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB8_6NumberNtNtCsdnjrqM8ey3e_10serde_core2de11Deserialize11deserializeNtB2_13NumberVisitorNtBV_7Visitor9expecting(ptr noalias nofree noundef nonnull readonly captures(none) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 13)
  ret i1 %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVecNtNtCs8ZPNfZ0ciAA_10serde_json5value5ValueENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  %i.c = shl nuw i64 %.val, 5
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %i.c, i64 noundef range(i64 1, -9223372036854775807) 8) #20
  br label %_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit

_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define hidden void @_RNvXs1_NtCsbqH9stoieM8_5alloc7raw_vecINtB5_6RawVechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #3 {
bb.a:
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.a = icmp eq i64 %.val, 0
  br i1 %i.a, label %_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #20
  br label %_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit

_RNvMs3_NtCsbqH9stoieM8_5alloc7raw_vecNtB5_11RawVecInner10deallocateCs8ZPNfZ0ciAA_10serde_json.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
switch.lookup:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %.val = load i8, ptr %i.a, align 1, !range !10, !noundef !4 ; 2 uses
  %i.b = zext nneg i8 %.val to i64
  %switch.gep = getelementptr inbounds nuw i8, ptr @switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json, i64 %i.b
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.c = zext nneg i8 %.val to i64
  %switch.gep1 = getelementptr inbounds nuw [8 x i8], ptr @switch.table._RNvXs1g_NtCs8Chj7Szqq0n_4core3fmtRNtNtNtB8_3num5error12IntErrorKindNtB6_5Debug3fmtCs8ZPNfZ0ciAA_10serde_json.82, i64 %i.c
  %switch.load2 = load ptr, ptr %switch.gep1, align 8
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %switch.load2, i64 noundef %switch.ext)
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberNtB6_7Display3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvXs2_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6NumberNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs2_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6NumberNtNtCs8Chj7Szqq0n_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 1                ; 3 uses
  %i.b = alloca [40 x i8], align 1                ; 5 uses
  %i.c = alloca [40 x i8], align 1                ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !14, !noundef !4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.g
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.g = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %i.f, ptr noalias nofree noundef nonnull dereferenceable(20) %i.c) ; 2 uses
  %i.h = sub nuw i64 20, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.g
  %i.j = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %i.k = load i64, ptr %i.e, align 8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.l = icmp slt i64 %i.k, 0
  %.sroa.07.0.i = tail call i64 @llvm.abs.i64(i64 %i.k, i1 false)
  %i.m = call noundef i64 @_RNvXsu_CsgnlcHz8PRH9_4itoayNtB5_8Unsigned3fmt(i64 noundef %.sroa.07.0.i, ptr noalias nofree noundef nonnull dereferenceable(20) %i.b) ; 2 uses
  br i1 %i.l, label %bb.d, label %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit

bb.d:                                             ; preds = %bb.c
  %i.n = add i64 %i.m, -1                         ; 4 uses
  %i.o = icmp ult i64 %i.n, 20
  br i1 %i.o, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.n
  store i8 45, ptr %i.p, align 1, !alias.scope !187
  br label %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit

bb.f:                                             ; preds = %bb.d
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking18panic_bounds_check(i64 noundef %i.n, i64 noundef 20, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #22
  unreachable

_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit: ; preds = %bb.c, %bb.e
  %.sroa.0.0.i = phi i64 [ %i.n, %bb.e ], [ %i.m, %bb.c ] ; 2 uses
  %i.q = sub nuw i64 20, %.sroa.0.0.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 %.sroa.0.0.i
  %i.s = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.r, i64 noundef %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  %i.t = load double, ptr %i.e, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.u = call { ptr, i64 } @_RINvMs6_CshejLTejVTJS_4zmijNtB6_6Buffer13format_finitedECs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull dereferenceable(24) %i.a, double noundef %i.t) ; 2 uses
  %i.v = extractvalue { ptr, i64 } %i.u, 0
  %i.w = extractvalue { ptr, i64 } %i.u, 1
  %i.x = call noundef zeroext i1 @_RNvMsa_NtCs8Chj7Szqq0n_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.v, i64 noundef %i.w)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.j, %bb.b ], [ %i.s, %_RNvXsi_CsgnlcHz8PRH9_4itoaxNtNtB5_7private6Sealed5write.exit ], [ %i.x, %bb.g ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs3_NtCs8ZPNfZ0ciAA_10serde_json6numberNtB5_6NumberNtNtCs8Chj7Szqq0n_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs8Chj7Szqq0n_4core3fmtRNtNtCs8ZPNfZ0ciAA_10serde_json6number6NumberNtB6_7Display3fmtBA_, ptr %.sroa.43.0..sroa_idx, align 8
  %i.c = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !4, !align !5, !noundef !4
  %i.f = call noundef zeroext i1 @_RNvNtCs8Chj7Szqq0n_4core3fmt5write(ptr noundef nonnull %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noundef nonnull @14, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json2deNtNtB7_6number6NumberNtNtNtCs8Chj7Szqq0n_4core3str6traits7FromStr8from_str(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 14 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %1, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %2, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  store i64 0, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store i8 -128, ptr %i.d, align 8
  invoke void @_RNvMs3_NtCs8ZPNfZ0ciAA_10serde_json2deINtB5_12DeserializerNtNtB7_4read7StrReadE23parse_any_signed_numberB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(none) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #24
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.b, align 8, !range !198, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %i.g, label %bb.d, label %switch.lookup

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !4, !align !5, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.i, ptr %i.j, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.e

switch.lookup:                                    ; preds = %bb.c
  %.sroa.48.0.copyload = load i64, ptr %i.h, align 8
  %switch.gep = getelementptr inbounds i8, ptr @switch.table._RNvXs4_NtCs8ZPNfZ0ciAA_10serde_json2deNtNtB7_6number6NumberNtNtNtCs8Chj7Szqq0n_4core3str6traits7FromStr8from_str, i64 %i.f
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  store i64 %switch.ext, ptr %0, align 8
  %.sroa.412.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.48.0.copyload, ptr %.sroa.412.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %switch.lookup, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  invoke void @_RNvXsp_NtCsbqH9stoieM8_5alloc3vecINtB5_3VechENtNtNtCs8Chj7Szqq0n_4core3ops4drop4Drop4dropCs8ZPNfZ0ciAA_10serde_json(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.a)
          to label %bb.h unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i = load i64, ptr %i.a, align 8, !alias.scope !199 ; 2 uses
  %i.l = icmp eq i64 %.val2.i.i, 0
  br i1 %i.l, label %common.resume, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val3.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !200, !nonnull !4, !noundef !4
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %.val2.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !201
  br label %common.resume

bb.h:                                             ; preds = %bb.e
  %.val.i.i = load i64, ptr %i.a, align 8, !alias.scope !199 ; 2 uses
  %i.m = icmp eq i64 %.val.i.i, 0
  br i1 %i.m, label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val1.i.i = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !200, !nonnull !4, !noundef !4
  call void @_RNvCsicpYtSlSgpD_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #20, !noalias !202
  br label %_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit

common.resume:                                    ; preds = %bb.b, %bb.f, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.k, %bb.f ], [ %i.k, %bb.g ], [ %i.e, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueINtNtCs8ZPNfZ0ciAA_10serde_json2de12DeserializerNtNtBG_4read7StrReadEEBG_.exit: ; preds = %bb.h, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #25
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RNvXse_NtNtCsbqH9stoieM8_5alloc5boxed7convertINtB7_3BoxDNtNtCs8Chj7Szqq0n_4core5error5ErrorNtNtBW_6marker4SyncNtB1t_4SendEL_EINtNtBW_7convert4FromNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorE4fromB2o_(ptr noalias noundef nonnull align 8 %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8, !noalias !205
  tail call void @_RNvCsicpYtSlSgpD_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #20
  %i.b = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCsicpYtSlSgpD_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef 8) #20 ; 3 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorE3newBI_.exit, !prof !17

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCsbqH9stoieM8_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #21
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs8Chj7Szqq0n_4core3ptr9drop_glueNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorEBF_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #24
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs8Chj7Szqq0n_4core9panicking16panic_in_cleanup() #25
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d

_RNvMNtCsbqH9stoieM8_5alloc5boxedINtB2_3BoxNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorE3newBI_.exit: ; preds = %bb.a
  store ptr %0, ptr %i.b, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = insertvalue { ptr, ptr } poison, ptr %i.b, 0
  %i.g = insertvalue { ptr, ptr } %i.f, ptr @16, 1
  ret { ptr, ptr } %i.g
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef { ptr, i64 } @_RNvYNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error11descriptionB6_(ptr noalias nofree readonly align 8 captures(none) %0) unnamed_addr #6 {
bb.a:
  ret { ptr, i64 } { ptr @25, i64 40 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvYNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7provideB6_(ptr noalias nofree readonly align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 8 captures(none) %2) unnamed_addr #6 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvYNtNtCs8ZPNfZ0ciAA_10serde_json5error5ErrorNtNtCs8Chj7Szqq0n_4core5error5Error7type_idB6_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @26, i64 16, i1 false)
  ret void
end_hunk_1
