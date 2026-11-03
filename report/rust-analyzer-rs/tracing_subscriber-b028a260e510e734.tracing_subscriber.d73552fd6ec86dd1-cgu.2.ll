Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/tracing_subscriber-b028a260e510e734.tracing_subscriber.d73552fd6ec86dd1-cgu.2?download=true
inline.NumInlined: 207
inline.NumDeleted: 145
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry11start_close:bb.a
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, i32 } @_RNvNtNtCsity1gTxgZvF_18tracing_subscriber3fmt4time6uptime() unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, i32 } @_RNvMNtCscAsMj0W7j8b_3std4timeNtB2_7Instant3now()
  ret { i64, i32 } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write10write_charCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !78, !noundef !4 ; 4 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp samesign ult i32 %1, 128
  br i1 %i.e, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp samesign ult i32 %1, 2048           ; 2 uses
  %i.g = icmp samesign ult i32 %1, 65536          ; 2 uses
  %..i.i = select i1 %i.g, i64 3, i64 4
  %.sroa.0.0.ph.i.i = select i1 %i.f, i64 2, i64 %..i.i
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %.sroa.0.0.ph.i.i)
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !78, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.c ; 9 uses
  %i.k = trunc i32 %1 to i8
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 3 uses
  %i.n = lshr i32 %1, 6
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128                ; 2 uses
  %i.r = lshr i32 %1, 12
  %i.s = trunc i32 %i.r to i8                     ; 2 uses
  %i.t = and i8 %i.s, 63
  %i.u = or disjoint i8 %i.t, -128
  %i.v = lshr i32 %1, 18
  %i.w = trunc nuw nsw i32 %i.v to i8
  %i.x = or disjoint i8 %i.w, -16
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef 1)
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !78, !nonnull !4, !noundef !4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.c
  %i.ab = trunc nuw nsw i32 %1 to i8
  store i8 %i.ab, ptr %i.aa, align 1
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit

bb.d:                                             ; preds = %bb.b
  %i.ac = or disjoint i8 %i.o, -64
  store i8 %i.ac, ptr %i.j, align 1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.m, ptr %i.ad, align 1
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit

bb.e:                                             ; preds = %bb.b
  br i1 %i.g, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ae = or disjoint i8 %i.s, -32
  store i8 %i.ae, ptr %i.j, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.q, ptr %i.af, align 1
  %i.ag = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.m, ptr %i.ag, align 1
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.x, ptr %i.j, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  store i8 %i.u, ptr %i.ah, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  store i8 %i.q, ptr %i.ai, align 1
  %i.aj = getelementptr inbounds nuw i8, ptr %i.j, i64 3
  store i8 %i.m, ptr %i.aj, align 1
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write10write_char.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.03.i.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  %i.ak = add nuw i64 %.sroa.0.03.i.i, %i.c
  store i64 %i.ak, ptr %i.b, align 8, !alias.scope !78
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_fmtCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 {
_RNvYNtNtCsbSS6DM8SDEO_5alloc6string6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_fmtCsity1gTxgZvF_18tracing_subscriber.exit:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4
  %i.b = tail call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @40, ptr noundef nonnull %1, ptr noundef nonnull %2), !inline_history !79
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXNtCshzWfHUSfYae_4core3fmtQNtNtCsbSS6DM8SDEO_5alloc6string6StringNtB2_5Write9write_strCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !align !5, !noundef !4 ; 3 uses
  tail call void @_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VechE7reserveCsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %2), !noalias !88
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !89, !noundef !4 ; 3 uses
  %i.d = icmp sgt i64 %i.c, -1
  tail call void @llvm.assume(i1 %i.d)
  %.not.i.i.i = icmp eq i64 %2, 0
  br i1 %.not.i.i.i, label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !89, !nonnull !4, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 %i.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.g, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %.pre.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !89
  br label %_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit

_RNvXsZ_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt5Write9write_str.exit: ; preds = %bb.a, %bb.b
  %i.h = phi i64 [ %.pre.i.i.i, %bb.b ], [ %i.c, %bb.a ]
  %i.i = add i64 %i.h, %2
  store i64 %i.i, ptr %i.b, align 8, !alias.scope !89
  ret i1 false
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtCsity1gTxgZvF_18tracing_subscriber8registryINtB2_5ScopeNtNtB2_7sharded8RegistryENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextB4_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load i64, ptr %i.c, align 8        ; 2 uses
  %.not19 = icmp eq i64 %.promoted, 0
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %1, align 8, !nonnull !4, !align !5, !noundef !4 ; 2 uses
  %.sroa.7.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.sroa.04.01820 = phi i64 [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !96
  %i.i = add i64 %.sroa.04.01820, -1
  call void @_RNvMs_NtCs4gx7repjoPU_12sharded_slab4poolINtB4_4PoolNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE3getBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.d, i64 noundef %i.i), !noalias !96
  %i.j = load ptr, ptr %i.a, align 8, !noalias !96, !noundef !4 ; 4 uses
  %.not.i.i = icmp eq ptr %i.j, null
  br i1 %.not.i.i, label %bb.c, label %bb.e

._crit_edge:                                      ; preds = %bb.f, %bb.a, %bb.c
  store ptr null, ptr %0, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  br label %._crit_edge

bb.d:                                             ; preds = %bb.g, %._crit_edge
  ret void

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx2.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !96
  store ptr %i.d, ptr %i.b, align 8
  store ptr %i.j, ptr %i.g, align 8
  store i64 %i.f, ptr %i.h, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !4 ; 3 uses
  store i64 %i.l, ptr %i.c, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.n = load i64, ptr %i.m, align 8, !noundef !4
  %i.o = and i64 %i.n, %i.f
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq i64 %i.l, 0
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB2_12GenericShuntINtNtB2_3map3MapINtNtNtB6_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1i_6traits7FromStr8from_strEINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtB1J_10ParseErrorEENtNtNtB4_6traits8iterator8Iterator4nextB1N_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.410.i.i.i.i.i = alloca [48 x i8], align 8 ; 10 uses
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %.sroa.6.i.i.i = alloca [48 x i8], align 8      ; 8 uses
  %.sroa.5 = alloca [48 x i8], align 8            ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !132)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load ptr, ptr %1, align 8, !alias.scope !132, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !133)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !134)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !135)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.d, align 1, !alias.scope !136
  %.promoted20.i.i.i = load i64, ptr %i.b, align 8, !alias.scope !137 ; 4 uses
  %i.e = trunc nuw i8 %.promoted.i.i.i to i1
  br i1 %i.e, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !136, !nonnull !4, !noundef !4 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !136, !noundef !4 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !138, !noundef !4 ; 6 uses
  %.not.i.i.i.i.i.i = icmp ugt i64 %i.j, %.val1.i.i.i.i.i
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.m = load i8, ptr %i.l, align 8, !alias.scope !137 ; 2 uses
  %i.n = zext nneg i8 %i.m to i64                 ; 4 uses
  %i.o = icmp ult i8 %i.m, 5
  %i.p = getelementptr i8, ptr %i.k, i64 %i.n
  %i.q = getelementptr i8, ptr %i.p, i64 -1
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.s = load i8, ptr %i.r, align 8, !range !10, !alias.scope !137
  %i.t = trunc nuw i8 %i.s to i1                  ; 2 uses
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !137 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.410.32..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.410.i.i.i.i.i, i64 24 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i, label %.lr.ph.split.preheader.i.i.i

.lr.ph.split.preheader.i.i.i:                     ; preds = %.lr.ph.i.i.i
  %.promoted24.i.i.i = load i64, ptr %i.h, align 8, !alias.scope !138
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.d, align 1, !alias.scope !139
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted20.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.t, i1 true, i1 %.not.i3.i.i.us.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted20.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted20.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  call void @_RNvXsb_NtNtCsity1gTxgZvF_18tracing_subscriber6filter9directiveNtB5_15StaticDirectiveNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.w), !noalias !144
  %.sroa.0.0.copyload.i.us.us.i.i.i = load i64, ptr %i.a, align 8, !noalias !145 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.x = icmp eq i64 %.sroa.0.0.copyload.i.us.us.i.i.i, -2
  br i1 %i.x, label %.split.us.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.us.us.i.i.i

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.us.us.i.i.i: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.i.i.i.i.i, i64 48, i1 false), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  %.not.i.us.us.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.us.us.i.i.i, -3
  br i1 %.not.i.us.us.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit.sink.split, label %.loopexit

.lr.ph.split.i.i.i:                               ; preds = %bb.n, %.lr.ph.split.preheader.i.i.i
  %i.y = phi i64 [ %i.av, %bb.n ], [ %.promoted24.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 3 uses
  %.pre.i2.i.i2223.i.i.i = phi i64 [ %.pre.i2.i.i21.i.i.i, %bb.n ], [ %.promoted20.i.i.i, %.lr.ph.split.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !140)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !141)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.z = icmp ult i64 %i.j, %i.y
  br i1 %i.z, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, label %.lr.ph.split.preheader.i.i.i.i.i.i

.lr.ph.split.preheader.i.i.i.i.i.i:               ; preds = %.lr.ph.split.i.i.i
  tail call void @llvm.assume(i1 %i.o)
  %.pre.i.i.i.i.i.i = load i8, ptr %i.q, align 1, !alias.scope !138 ; 2 uses
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %bb.e, %.lr.ph.split.preheader.i.i.i.i.i.i
  %i.aa = phi i64 [ %i.ap, %bb.e ], [ %i.y, %.lr.ph.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.ab = sub nuw i64 %i.j, %i.aa                 ; 5 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.aa ; 2 uses
  %i.ad = icmp samesign ult i64 %i.ab, 16
  br i1 %i.ad, label %.preheader.i.i.i.i.i.i.i, label %bb.b

.preheader.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ab, 0
  br i1 %.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

bb.b:                                             ; preds = %.lr.ph.split.i.i.i.i.i.i
  %i.ae = tail call { i64, i64 } @_RNvNtNtCshzWfHUSfYae_4core5slice6memchr14memchr_aligned(i8 noundef %.pre.i.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ac, i64 noundef range(i64 0, -9223372036854775808) %i.ab), !noalias !147
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i:                        ; preds = %bb.c, %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i
  %.sroa.01.0.lcssa.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ %i.ab, %bb.c ], [ %.sroa.01.05.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ]
  %.sroa.0.1.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i ], [ 0, %bb.c ], [ 1, %.lr.ph.i.i.i.i.i.i.i ]
  %i.af = insertvalue { i64, i64 } poison, i64 %.sroa.0.1.i.i.i.i.i.i.i, 0
  %i.ag = insertvalue { i64, i64 } %i.af, i64 %.sroa.01.0.lcssa.i.i.i.i.i.i.i, 1
  br label %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i.i, %bb.c
  %.sroa.01.05.i.i.i.i.i.i.i = phi i64 [ %i.ak, %bb.c ], [ 0, %.preheader.i.i.i.i.i.i.i ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.01.05.i.i.i.i.i.i.i
  %i.ai = load i8, ptr %i.ah, align 1, !alias.scope !148, !noalias !147, !noundef !4
  %i.aj = icmp eq i8 %i.ai, %.pre.i.i.i.i.i.i
  br i1 %i.aj, label %._crit_edge.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ak = add nuw nsw i64 %.sroa.01.05.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.ak, %i.ab
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i: ; preds = %._crit_edge.i.i.i.i.i.i.i, %bb.b
  %.merged.i.i.i.i.i.i.i = phi { i64, i64 } [ %i.ag, %._crit_edge.i.i.i.i.i.i.i ], [ %i.ae, %bb.b ] ; 2 uses
  %i.al = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 0
  %i.am = trunc nuw i64 %i.al to i1
  br i1 %i.am, label %bb.d, label %.split.us.i.i.i.i.i.i

bb.d:                                             ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  %i.an = extractvalue { i64, i64 } %.merged.i.i.i.i.i.i.i, 1
  %i.ao = add i64 %i.aa, 1
  %i.ap = add i64 %i.ao, %i.an                    ; 10 uses
  store i64 %i.ap, ptr %i.h, align 8, !alias.scope !138
  %.not11.i.i.i.i.i.i = icmp ult i64 %i.ap, %i.n
  %.not12.i.i.i.i.i.i = icmp ugt i64 %i.ap, %.val1.i.i.i.i.i
  %or.cond.i.i.i.i.i.i = or i1 %.not11.i.i.i.i.i.i, %.not12.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i, label %bb.e, label %bb.f

.split.us.i.i.i.i.i.i:                            ; preds = %_RNvNtNtCshzWfHUSfYae_4core5slice6memchr6memchr.exit.i.i.i.i.i.i
  store i64 %i.j, ptr %i.h, align 8, !alias.scope !138
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i

bb.e:                                             ; preds = %bb.f, %bb.d
  %i.aq = icmp ult i64 %i.j, %i.ap
  br i1 %i.aq, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, label %.lr.ph.split.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.d
  %i.ar = sub nuw i64 %i.ap, %i.n                 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %i.ar
  %bcmp.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull %i.as, ptr nonnull %i.k, i64 %i.n), !noalias !149
  %i.at = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.at, label %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i, label %bb.e

_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i: ; preds = %bb.f
  store i64 %i.ap, ptr %i.b, align 8, !alias.scope !136
  br label %select.unfold.i.i.i

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i: ; preds = %bb.e, %.split.us.i.i.i.i.i.i, %.lr.ph.split.i.i.i
  %i.au = phi i64 [ %i.y, %.lr.ph.split.i.i.i ], [ %i.j, %.split.us.i.i.i.i.i.i ], [ %i.ap, %bb.e ]
  store i8 1, ptr %i.d, align 1, !alias.scope !139
  %.not.i3.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.pre.i2.i.i2223.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.t, i1 true, i1 %.not.i3.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit

select.unfold.i.i.i:                              ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i
  %i.av = phi i64 [ %i.ap, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %i.au, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.pre.i2.i.i21.i.i.i = phi i64 [ %i.ap, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre.i2.i.i2223.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %i.aw = phi i1 [ false, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ true, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.pn.i.i.i = phi i64 [ %i.ar, %_RNvXs_NtNtCshzWfHUSfYae_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i.i.i.i.i ], [ %.pre2.i.i.i.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn.i.i.i, %.pre.i2.i.i2223.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i2.i.i2223.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !143
  call void @_RNvXsb_NtNtCsity1gTxgZvF_18tracing_subscriber6filter9directiveNtB5_15StaticDirectiveNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.i.i.i, i64 noundef %.sroa.4.1.i.i.i.i.i), !noalias !144
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.a, align 8, !noalias !145 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  %i.ax = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -2
  br i1 %i.ax, label %.split.us.i.i.i, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.i.i.i

.split.us.i.i.i:                                  ; preds = %select.unfold.i.i.i, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.us.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  %i.ay = load i64, ptr %i.c, align 8, !range !8, !alias.scope !151, !noalias !152, !noundef !4 ; 2 uses
  %i.az = icmp eq i64 %i.ay, -1
  br i1 %i.az, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit, label %bb.g

bb.g:                                             ; preds = %.split.us.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ba = icmp eq i64 %i.ay, 0
  br i1 %i.ba, label %bb.h, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit

bb.h:                                             ; preds = %bb.g
  %i.bb = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bb, align 8, !alias.scope !156, !noalias !152 ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.bc, align 8, !alias.scope !156, !noalias !152, !nonnull !4, !align !5, !noundef !4 ; 5 uses
  %i.bd = load ptr, ptr %.val1.i.i.i.i.i.i.i.i.i, align 8, !invariant.load !4, !noalias !157 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bd, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  invoke void %i.bd(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i)
          to label %bb.j unwind label %bb.l, !noalias !157

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.be = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bf = load i64, ptr %i.be, align 8, !range !6, !invariant.load !4, !noalias !157 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, 0
  br i1 %i.bg, label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bh = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !range !7, !invariant.load !4, !noalias !157
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i.i.i.i) ]
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bf, i64 noundef range(i64 1, 536870913) %i.bi) #24, !noalias !157
  br label %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit

bb.l:                                             ; preds = %bb.i
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 8
  %i.bl = load i64, ptr %i.bk, align 8, !range !6, !invariant.load !4, !noalias !157 ; 2 uses
  %i.bm = icmp eq i64 %i.bl, 0
  br i1 %i.bm, label %.body.i.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bn = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i.i.i.i.i.i, i64 16
  %i.bo = load i64, ptr %i.bn, align 8, !range !7, !invariant.load !4, !noalias !157
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775808) %i.bl, i64 noundef range(i64 1, 536870913) %i.bo) #24, !noalias !157
  br label %.body.i.i.i.i.i

.body.i.i.i.i.i:                                  ; preds = %bb.m, %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !158
  resume { ptr, i32 } %i.bj

_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.i.i.i: ; preds = %select.unfold.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.32..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.v, i64 24, i1 false), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.410.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !145
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.410.i.i.i.i.i, i64 48, i1 false), !noalias !146
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i.i.i, -3
  br i1 %.not.i.i.i.i, label %bb.n, label %.loopexit

bb.n:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit, label %.lr.ph.split.i.i.i

_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit: ; preds = %.split.us.i.i.i, %bb.g, %bb.j, %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.u, i64 24, i1 false), !noalias !158
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.410.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !143
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit.sink.split

.loopexit:                                        ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.us.us.i.i.i
  %.sroa.0.0.copyload.i17.i.i.i.ph = phi i64 [ %.sroa.0.0.copyload.i.us.us.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.us.us.i.i.i ], [ %.sroa.0.0.copyload.i.i.i.i, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.i.i.i ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i.i, i64 48, i1 false), !noalias !132
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.5, i64 48, i1 false)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit: ; preds = %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i, %bb.n, %.lr.ph.split.us.i.i.i, %bb.a, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit.sink.split, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i17.i.i.i.ph, %.loopexit ], [ -2, %bb.a ], [ -2, %.lr.ph.split.us.i.i.i ], [ -2, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit.sink.split ], [ -2, %bb.n ], [ -2, %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalcE7get_endCsity1gTxgZvF_18tracing_subscriber.exit.i.i.i.i.i ]
  store i64 %storemerge, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit.sink.split: ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map12map_try_foldReINtNtBa_6result6ResultNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtB1p_10ParseErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2U_B1n_EENvYB1n_NtNtNtBa_3str6traits7FromStr8from_strNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB3U_4iter5SplitcEB3J_EIB12_NtNtBa_7convert10InfallibleB2z_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB67_12try_for_each4callB1n_B3y_NcNtB3y_5Break0E0B3y_E0E0B1t_.exit.us.us.i.i.i, %_RINvXNtNtCshzWfHUSfYae_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtB7_3str4iter5SplitcENvYNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveNtNtB1j_6traits7FromStr8from_strEINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtB1K_10ParseErrorEENtNtNtB5_6traits8iterator8Iterator8try_folduNCINvNvB4y_12try_for_each4callB1I_INtNtNtB7_3ops12control_flow11ControlFlowB1I_ENcNtB5O_5Break0E0B5O_EB1O_.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtB4_3ops12control_flow11ControlFlowNtNtNtCsity1gTxgZvF_18tracing_subscriber6filter9directive15StaticDirectiveEEB1m_.exit
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB2_8RegistryNtNtCshzWfHUSfYae_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([544 x i8]) align 8 captures(none) dereferenceable(544) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs2_NtCs4gx7repjoPU_12sharded_slab5shardINtB5_5ArrayNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerNtNtB7_3cfg13DefaultConfigE3newBX_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(504) %i.a, i8 0, i64 504, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 528
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 536
  store i8 0, ptr %i.b, align 8
  ret void
}

; Function Attrs: cold noreturn nonlazybind uwtable
define void @_RNvXNvXs5_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB8_9DataInnerNtNtCshzWfHUSfYae_4core7default7Default7defaultNtB2_12NullCallsiteNtNtCsaMQbKjKCVRW_12tracing_core8callsite8Callsite12set_interest(ptr noalias nofree nonnull readonly captures(none) %0, i8 range(i8 0, 3) %1) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @12, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsity1gTxgZvF_18tracing_subscriber, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #27
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define noalias noundef nonnull align 8 ptr @_RNvXNvXs5_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB8_9DataInnerNtNtCshzWfHUSfYae_4core7default7Default7defaultNtB2_12NullCallsiteNtNtCsaMQbKjKCVRW_12tracing_core8callsite8Callsite8metadata(ptr noalias nofree nonnull readonly captures(none) %0) unnamed_addr #5 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @16, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsity1gTxgZvF_18tracing_subscriber, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @13, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #27
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber3fmt4timeFG0_QL1_INtNtB7_6format6WriterL0_EEINtNtCshzWfHUSfYae_4core6result6ResultuNtNtB1u_3fmt5ErrorENtB5_10FormatTime11format_time(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.b = tail call noundef zeroext i1 %i.a(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef range(i64 1, 0) i64 @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber10clone_span(ptr noundef nonnull align 8 %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %.val = load i64, ptr %1, align 8, !range !11, !noundef !4
  %i.g = add i64 %.val, -1
  call void @_RNvMs_NtCs4gx7repjoPU_12sharded_slab4poolINtB4_4PoolNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE3getBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %0, i64 noundef %i.g)
  %i.h = load ptr, ptr %i.d, align 8, !noundef !4
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %bb.c, label %bb.b, !prof !12

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.i = load ptr, ptr %i.e, align 8, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.k = atomicrmw add ptr %i.j, i64 1 monotonic, align 8 ; 2 uses
  store i64 %i.k, ptr %i.c, align 8
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %bb.d, label %bb.e, !prof !12

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.f, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsaMQbKjKCVRW_12tracing_core4span2IdNtB6_5Debug3fmtCsity1gTxgZvF_18tracing_subscriber, ptr %.sroa.42.0..sroa_idx, align 8
  call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @18, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #27
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.f, ptr %i.b, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCsaMQbKjKCVRW_12tracing_core4span2IdNtB6_5Debug3fmtCsity1gTxgZvF_18tracing_subscriber, ptr %.sroa.46.0..sroa_idx, align 8
  invoke void @_RINvNtCshzWfHUSfYae_4core9panicking13assert_failedjjEB4_(i8 noundef 1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @20, ptr noundef nonnull @21, ptr nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @22) #28
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.m = load i64, ptr %1, align 8, !range !11, !noundef !4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret i64 %i.m

bb.f:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs6_NtCs4gx7repjoPU_12sharded_slab4poolINtB5_3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4pool3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerEEB1n_.exit unwind label %bb.h

bb.g:                                             ; preds = %bb.d
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCs4gx7repjoPU_12sharded_slab4pool3RefNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerEEB1n_.exit: ; preds = %bb.f
  resume { ptr, i32 } %i.n
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB5_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12current_span(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @_RINvMs2_NtNtCscAsMj0W7j8b_3std6thread5localINtB6_8LocalKeyINtNtCshzWfHUSfYae_4core4cell4CellINtNtBZ_6option6OptionNtNtCs1bZVCNcVUvD_12thread_local9thread_id6ThreadEEE4withNCNvB1Q_3get0B1O_ECsity1gTxgZvF_18tracing_subscriber(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.e, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) @23)
  %i.g = call noundef align 8 ptr @_RNvMs2_Cs1bZVCNcVUvD_12thread_localINtB5_11ThreadLocalINtNtCshzWfHUSfYae_4core4cell7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackEE9get_innerB1x_(ptr noundef nonnull align 8 %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e) ; 11 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %.not = icmp eq ptr %i.g, null
  br i1 %.not, label %bb.h, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load i64, ptr %i.g, align 8, !noalias !166, !noundef !4 ; 2 uses
  %i.i = icmp ult i64 %i.h, 9223372036854775807
  br i1 %i.i, label %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_.exit.i, label %bb.c, !prof !9

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCshzWfHUSfYae_4core4cell30panic_already_mutably_borrowed(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1) #27, !noalias !167
  unreachable

_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_.exit.i: ; preds = %bb.b
  %i.j = add nuw nsw i64 %i.h, 1
  store i64 %i.j, ptr %i.g, align 8, !noalias !166
  %i.k = getelementptr i8, ptr %i.g, i64 16
  %.val10.i = load ptr, ptr %i.k, align 8, !noalias !167, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr i8, ptr %i.g, i64 24
  %.val11.i = load i64, ptr %i.l, align 8, !noalias !167, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !167
  %.idx = shl nuw nsw i64 %.val11.i, 4
  %i.m = getelementptr inbounds nuw i8, ptr %.val10.i, i64 %.idx ; 2 uses
  store ptr %.val10.i, ptr %i.b, align 8, !noalias !167
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.m, ptr %i.n, align 8, !noalias !167
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !167
  store ptr %i.o, ptr %i.a, align 8, !noalias !168
  %i.p = icmp eq i64 %.val11.i, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %.noexc.i
  %i.q = icmp eq ptr %.val10.i, %i.s
  br i1 %i.q, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_.exit.i, %bb.d
  %i.r = phi ptr [ %i.s, %bb.d ], [ %i.m, %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_.exit.i ]
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -16 ; 3 uses
  %i.t = invoke noundef align 8 ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stackNtBT_9SpanStack4iter0INtB7_5FnMutTRNtBT_9ContextIdEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.s)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167 ; 3 uses

.noexc.i:                                         ; preds = %.lr.ph
  %.not6.i.i.i = icmp eq ptr %i.t, null
  br i1 %.not6.i.i.i, label %bb.d, label %bb.e

bb.e:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !167
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !167
  %.val.i = load i64, ptr %i.t, align 8, !range !11, !noalias !167, !noundef !4
  %i.u = add i64 %.val.i, -1
  invoke void @_RNvMs_NtCs4gx7repjoPU_12sharded_slab4poolINtB4_4PoolNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry7sharded9DataInnerE3getBU_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull align 8 %1, i64 noundef %i.u)
          to label %_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry3get.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !167

._crit_edge:                                      ; preds = %bb.d, %_RNvMst_NtCshzWfHUSfYae_4core4cellINtB5_7RefCellNtNtNtCsity1gTxgZvF_18tracing_subscriber8registry5stack9SpanStackE6borrowBP_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !167
  br label %_RNCNvXs0_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB7_8RegistryNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10Subscriber12current_span0Bb_.exit.thread

_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry3get.exit.i: ; preds = %bb.e
  %i.v = load ptr, ptr %i.c, align 8, !noalias !167, !noundef !4
  %.not9.i = icmp eq ptr %i.v, null
  br i1 %.not9.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvMs_NtNtCsity1gTxgZvF_18tracing_subscriber8registry7shardedNtB4_8Registry3get.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !167
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !167
end_hunk_0
