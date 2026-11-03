Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/clap_builder-30cbe4f1c73b6c1c.clap_builder.7b6dbbbaa4b59d1c-cgu.02?download=true
inline.NumInlined: 384
inline.NumDeleted: 194
begin_hunk_0_@_RNvMNtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB2_7Command16render_long_help:bb.a

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB2_7Command19render_long_version(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(688) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !238)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !239
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 600
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !238, !noundef !4 ; 3 uses
  %.not37.i = icmp eq ptr %i.e, null              ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 608
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !238 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 584
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !238, !noundef !4 ; 2 uses
  %.not38.i = icmp eq ptr %i.i, null
  br i1 %.not38.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not37.i, label %bb.d, label %_RNvMs3_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.c:                                             ; preds = %bb.a
  %spec.select57.i = select i1 %.not37.i, ptr inttoptr (i64 1 to ptr), ptr %i.e
  %spec.select58.i = select i1 %.not37.i, i64 0, i64 %i.g
  br label %_RNvMs3_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 592
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !238, !noundef !4
  br label %_RNvMs3_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

_RNvMs3_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command15__render_version.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink53.i = phi ptr [ %i.i, %bb.d ], [ %spec.select57.i, %bb.c ], [ %i.e, %bb.b ]
  %.sink51.i = phi i64 [ %i.k, %bb.d ], [ %spec.select58.i, %bb.c ], [ %i.g, %bb.b ]
  store ptr %.sink53.i, ptr %i.c, align 8, !noalias !239, !captures !10
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink51.i, ptr %i.l, align 8, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !239
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 272
  %i.n = load i64, ptr %i.m, align 8, !range !5, !alias.scope !238, !noundef !4
  %.not42.i = icmp eq i64 %i.n, -1                ; 2 uses
  %..i = select i1 %.not42.i, i64 536, i64 280
  %.56.i = select i1 %.not42.i, i64 544, i64 288
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 %.56.i
  %.sink.i = load i64, ptr %i.p, align 8, !alias.scope !238, !noundef !4
  %.sink47.i = load ptr, ptr %i.o, align 8, !alias.scope !238, !nonnull !4, !noundef !4
  store ptr %.sink47.i, ptr %i.b, align 8, !noalias !239
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %.sink.i, ptr %i.q, align 8, !noalias !239
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !239
  store ptr %i.b, ptr %i.a, align 8, !noalias !239
  %.sroa.424.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsaB0tVqiIPBo_12clap_builder, ptr %.sroa.424.0..sroa_idx.i, align 8, !noalias !239
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.r, align 8, !noalias !239
  %.sroa.428.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCsaB0tVqiIPBo_12clap_builder, ptr %.sroa.428.0..sroa_idx.i, align 8, !noalias !239
  call void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @11, ptr noundef nonnull %i.a), !noalias !238
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !239
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !239
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([688 x i8]) align 8 captures(none) dereferenceable(688) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(688) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(688) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [688 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !range !6, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.g = load i64, ptr %2, align 8, !range !6, !alias.scope !245, !noundef !4
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsaB0tVqiIPBo_12clap_builder.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8
  store i64 1, ptr %2, align 8, !alias.scope !245
  store i64 %i.f, ptr %i.i, align 8, !alias.scope !245
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsaB0tVqiIPBo_12clap_builder.exit

bb.d:                                             ; preds = %bb.a, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsaB0tVqiIPBo_12clap_builder.exit
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 176 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.a, ptr noundef nonnull align 8 dereferenceable(688) %2, i64 688, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 192 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !246, !noundef !4 ; 3 uses
  %i.m = load i64, ptr %i.j, align 8, !range !7, !alias.scope !246, !noundef !4
  %i.n = icmp eq i64 %i.l, %i.m
  br i1 %i.n, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder7builder7command7CommandE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.h unwind label %bb.f, !noalias !247

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef nonnull align 8 dereferenceable(688) %i.a) #19
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsaB0tVqiIPBo_12clap_builder.exit: ; preds = %bb.c, %bb.b
  %i.q = add i64 %i.f, 1
  store i64 %i.q, ptr %i.d, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !246, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw [688 x i8], ptr %i.s, i64 %i.l
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %i.t, ptr noundef nonnull align 8 dereferenceable(688) %2, i64 688, i1 false)
  %i.u = add i64 %i.l, 1
  store i64 %i.u, ptr %i.k, align 8, !alias.scope !246
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(688) %0, ptr noundef nonnull align 8 dereferenceable(688) %1, i64 688, i1 false)
  ret void

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCsaB0tVqiIPBo_12clap_builder7builder7command7CommandEBH_(ptr noalias nofree noundef align 8 dereferenceable(688) %1) #19
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.o
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command22get_arg_conflicts_with(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(600) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 592
  %i.f = load i32, ptr %i.e, align 8, !noundef !4
  %i.g = and i32 %i.f, 2
  %.not = icmp eq i32 %i.g, 0
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.l = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.m = load i64, ptr %i.l, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.m, 4
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 %.idx ; 3 uses
  %i.o = icmp eq i64 %i.m, 0
  br i1 %i.o, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !267, !nonnull !4, !noundef !4 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !267, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.s, 600
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx.i ; 2 uses
  %i.u = icmp eq i64 %i.s, 0                      ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.w = load ptr, ptr %i.v, align 8, !nonnull !4 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.y = load i64, ptr %i.x, align 8
  %.fr34 = freeze i64 %i.y                        ; 2 uses
  %.idx.i10 = mul nuw nsw i64 %.fr34, 96
  %i.z = getelementptr inbounds nuw i8, ptr %i.w, i64 %.idx.i10 ; 2 uses
  %i.aa = icmp eq i64 %.fr34, 0
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.aa, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.u, label %.loopexit19.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us
  %i.af = phi i64 [ %i.ax, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.sroa.0.025.us = phi ptr [ %i.ag, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us ], [ %i.k, %.lr.ph.split.us ] ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us, i64 8
  %i.ai = load i64, ptr %i.ah, align 8, !alias.scope !268, !noalias !269, !noundef !4 ; 2 uses
  %i.aj = load ptr, ptr %.sroa.0.025.us, align 8, !alias.scope !268, !nonnull !4
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.i.i.us
  %i.ak = phi ptr [ %i.q, %.lr.ph.i.i.us ], [ %i.al, %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 600 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 544
  %i.an = load i64, ptr %i.am, align 8, !noalias !270, !noundef !4
  %i.ao = icmp eq i64 %i.an, %i.ai
  br i1 %i.ao, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us: ; preds = %bb.c
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ak, i64 536
  %i.aq = load ptr, ptr %i.ap, align 8, !noalias !270, !nonnull !4, !noundef !4
  %bcmp.i.i.i.us = call i32 @bcmp(ptr nonnull %i.aq, ptr nonnull %i.aj, i64 %i.ai), !noalias !270
  %i.ar = icmp eq i32 %bcmp.i.i.i.us, 0
  br i1 %i.ar, label %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit.us, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, %bb.c
  %i.as = icmp eq ptr %i.al, %i.t
  br i1 %i.as, label %.loopexit19.us, label %bb.c

_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit.us: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us
  %i.at = load i64, ptr %i.d, align 8, !range !7, !alias.scope !271, !noundef !4
  %i.au = icmp eq i64 %i.af, %i.at
  br i1 %i.au, label %bb.d, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us

bb.d:                                             ; preds = %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us: ; preds = %bb.d, %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  %i.av = load ptr, ptr %i.h, align 8, !alias.scope !271, !nonnull !4, !noundef !4
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.af
  store ptr %i.ak, ptr %i.aw, align 8, !noalias !272, !captures !10
  %i.ax = add i64 %i.af, 1                        ; 2 uses
  store i64 %i.ax, ptr %i.i, align 8, !alias.scope !271
  %i.ay = icmp eq ptr %i.ag, %i.n
  br i1 %i.ay, label %._crit_edge, label %.lr.ph.i.i.us

.loopexit19.us:                                   ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.u, label %.lr.ph.i.i11.us, label %.lr.ph.i.i

.lr.ph.i.i11.us:                                  ; preds = %.lr.ph.split, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.us
  %.sroa.0.025.us27 = phi ptr [ %i.az, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.us ], [ %i.k, %.lr.ph.split ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.025.us27, i64 8
  %i.bb = load i64, ptr %i.ba, align 8, !alias.scope !275, !noundef !4 ; 2 uses
  %i.bc = load ptr, ptr %.sroa.0.025.us27, align 8, !alias.scope !275, !nonnull !4
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us, %.lr.ph.i.i11.us
  %i.bd = phi ptr [ %i.w, %.lr.ph.i.i11.us ], [ %i.be, %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us ] ; 4 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 96 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 80
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !276, !noundef !4
  %i.bh = icmp eq i64 %i.bg, %i.bb
  br i1 %i.bh, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us: ; preds = %bb.e
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !276, !nonnull !4, !noundef !4
  %bcmp.i.i.i13.us = call i32 @bcmp(ptr nonnull %i.bj, ptr nonnull %i.bc, i64 %i.bb), !noalias !276
  %i.bk = icmp eq i32 %bcmp.i.i.i13.us, 0
  br i1 %i.bk, label %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us, %bb.e
  %i.bl = icmp eq ptr %i.be, %i.z
  br i1 %i.bl, label %.loopexit, label %bb.e

_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.bm)
          to label %bb.f unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us
  %i.bn = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.bo = load i64, ptr %i.ac, align 8, !noundef !4
  %i.bp = getelementptr inbounds nuw [16 x i8], ptr %i.bn, i64 %i.bo
  store ptr %i.bn, ptr %i.c, align 8
  store ptr %i.bp, ptr %i.ad, align 8
  store ptr %1, ptr %i.ae, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.g unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %.split32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.us unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.us: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bq = icmp eq ptr %i.az, %i.n
  br i1 %i.bq, label %._crit_edge, label %.lr.ph.i.i11.us

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !277)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !278
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 112
  %i.bs = load ptr, ptr %i.br, align 8, !alias.scope !277, !nonnull !4, !noundef !4 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %2, i64 120
  %i.bu = load i64, ptr %i.bt, align 8, !alias.scope !277, !noundef !4
  %i.bv = getelementptr inbounds nuw [16 x i8], ptr %i.bs, i64 %i.bu
  store ptr %i.bs, ptr %i.a, align 8, !noalias !278
  %i.bw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bv, ptr %i.bw, align 8, !noalias !278
  %i.bx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.bx, align 8, !noalias !278
  %i.by = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.by, align 8, !noalias !278
  call void @_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB2w_5slice4iter4IterNtNtNtB1a_4util2id2IdENCNvMs2_NtB18_7commandNtB46_7Command29get_global_arg_conflicts_with0EE9from_iterB1a_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !278
  br label %bb.u

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %bb.m
  %.sroa.0.025 = phi ptr [ %i.bz, %bb.m ], [ %i.k, %.lr.ph.split ] ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !267)
  call void @llvm.experimental.noalias.scope.decl(metadata !268)
  %i.ca = getelementptr inbounds nuw i8, ptr %.sroa.0.025, i64 8
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !268, !noalias !269, !noundef !4 ; 4 uses
  %i.cc = load ptr, ptr %.sroa.0.025, align 8, !alias.scope !268, !nonnull !4 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %i.cd = phi ptr [ %i.q, %.lr.ph.i.i ], [ %i.ce, %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ] ; 4 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 600 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.cd, i64 544
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !270, !noundef !4
  %i.ch = icmp eq i64 %i.cg, %i.cb
  br i1 %i.ch, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %bb.j
  %i.ci = getelementptr inbounds nuw i8, ptr %i.cd, i64 536
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !270, !nonnull !4, !noundef !4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.cj, ptr nonnull %i.cc, i64 %i.cb), !noalias !270
  %i.ck = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ck, label %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %bb.j
  %i.cl = icmp eq ptr %i.ce, %i.t
  br i1 %i.cl, label %.loopexit19, label %bb.j

._crit_edge:                                      ; preds = %bb.m, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit.us, %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit.us, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

.body:                                            ; preds = %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp103, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp106, %.split32.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgEEB1f_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.d) #19
          to label %bb.t unwind label %bb.r

.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us, %bb.h, %bb.d, %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit, %bb.k, %bb.p, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.cm = load i64, ptr %i.i, align 8, !alias.scope !271, !noundef !4 ; 3 uses
  %i.cn = load i64, ptr %i.d, align 8, !range !7, !alias.scope !271, !noundef !4
  %i.co = icmp eq i64 %i.cm, %i.cn
  br i1 %i.co, label %bb.k, label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit

bb.k:                                             ; preds = %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit
  invoke void @_RNvMs4_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d) #23
          to label %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit: ; preds = %bb.k, %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command4find.exit
  %i.cp = load ptr, ptr %i.h, align 8, !alias.scope !271, !nonnull !4, !noundef !4
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %i.cm
  store ptr %i.cd, ptr %i.cq, align 8, !noalias !272, !captures !10
  %i.cr = add i64 %i.cm, 1
  store i64 %i.cr, ptr %i.i, align 8, !alias.scope !271
  br label %bb.m

.loopexit19:                                      ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !273)
  call void @llvm.experimental.noalias.scope.decl(metadata !274)
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %.loopexit19
  %i.cs = phi ptr [ %i.w, %.loopexit19 ], [ %i.ct, %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i ] ; 4 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cs, i64 96 ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cs, i64 80
  %i.cv = load i64, ptr %i.cu, align 8, !noalias !276, !noundef !4
  %i.cw = icmp eq i64 %i.cv, %i.cb
  br i1 %i.cw, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i: ; preds = %bb.l
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  %i.cy = load ptr, ptr %i.cx, align 8, !noalias !276, !nonnull !4, !noundef !4
  %bcmp.i.i.i13 = call i32 @bcmp(ptr nonnull %i.cy, ptr nonnull %i.cc, i64 %i.cb), !noalias !276
  %i.cz = icmp eq i32 %bcmp.i.i.i13, 0
  br i1 %i.cz, label %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit, label %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, %bb.l
  %i.da = icmp eq ptr %i.ct, %i.z
  br i1 %i.da, label %.loopexit, label %bb.l

bb.m:                                             ; preds = %_RNvMsG_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE8push_mutBM_.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtNtNtCsaB0tVqiIPBo_12clap_builder4util2id2IdEEB1e_.exit
  %i.db = icmp eq ptr %i.bz, %i.n
  br i1 %i.db, label %._crit_edge, label %.lr.ph.i.i

_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cs, i64 72
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(688) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dc)
          to label %bb.n unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %_RNCNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us, %.loopexit19.us
  invoke void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 177 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #22
          to label %bb.s unwind label %.loopexit20.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_RNvMs5_NtNtCsaB0tVqiIPBo_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  %i.dd = load ptr, ptr %i.ab, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.de = load i64, ptr %i.ac, align 8, !noundef !4
  %i.df = getelementptr inbounds nuw [16 x i8], ptr %i.dd, i64 %i.de
  store ptr %i.dd, ptr %i.c, align 8
  store ptr %i.df, ptr %i.ad, align 8
  store ptr %1, ptr %i.ae, align 8
  invoke void @_RINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6_3VecRNtNtNtCsaB0tVqiIPBo_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1V_5slice4iter4IterNtNtNtBN_4util2id2IdENCNvMs2_NtBL_7commandNtB3u_7Command22get_arg_conflicts_with0EEBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.o unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.n
end_hunk_0
