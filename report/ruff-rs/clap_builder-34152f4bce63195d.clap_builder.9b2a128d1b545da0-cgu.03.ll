Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ruff-rs/original/clap_builder-34152f4bce63195d.clap_builder.9b2a128d1b545da0-cgu.03?download=true
inline.NumInlined: 545
inline.NumDeleted: 233
begin_hunk_0_@_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB2_7Command16render_long_help:bb.a
; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB2_7Command19render_long_version(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(776) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !595)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !596
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.e = load i64, ptr %i.d, align 8, !range !9, !alias.scope !595, !noundef !4
  %cond52.i = icmp eq i64 %i.e, 2                 ; 3 uses
  %.sroa.017.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !alias.scope !595, !nonnull !4 ; 2 uses
  %.sroa.518.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.sroa.518.0.i = load i64, ptr %.sroa.518.0.in.i, align 8, !alias.scope !595 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.g = load i64, ptr %i.f, align 8, !range !9, !alias.scope !595, !noundef !4
  %cond56.i = icmp eq i64 %i.g, 2
  br i1 %cond56.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %spec.select69.i = select i1 %cond52.i, ptr inttoptr (i64 1 to ptr), ptr %.sroa.017.0.i
  %spec.select70.i = select i1 %cond52.i, i64 0, i64 %.sroa.518.0.i
  br label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.c:                                             ; preds = %bb.a
  br i1 %cond52.i, label %bb.d, label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

bb.d:                                             ; preds = %bb.c
  %.sroa.019.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.019.0.i = load ptr, ptr %.sroa.019.0.in.i, align 8, !alias.scope !595, !nonnull !4, !noundef !4
  %.sroa.520.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.520.0.i = load i64, ptr %.sroa.520.0.in.i, align 8, !alias.scope !595, !noundef !4
  br label %_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15__render_version.exit

_RNvMs3_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command15__render_version.exit: ; preds = %bb.b, %bb.c, %bb.d
  %.sink60.i = phi ptr [ %.sroa.017.0.i, %bb.c ], [ %spec.select69.i, %bb.b ], [ %.sroa.019.0.i, %bb.d ]
  %.sink.i = phi i64 [ %.sroa.518.0.i, %bb.c ], [ %spec.select70.i, %bb.b ], [ %.sroa.520.0.i, %bb.d ]
  store ptr %.sink60.i, ptr %i.c, align 8, !noalias !596
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sink.i, ptr %i.h, align 8, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !596
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 464
  %i.j = load i64, ptr %i.i, align 8, !range !5, !alias.scope !595, !noundef !4
  %.not50.i = icmp eq i64 %i.j, -1                ; 2 uses
  %..i = select i1 %.not50.i, i64 8, i64 472
  %.68.i = select i1 %.not50.i, i64 16, i64 480
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 %..i
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !595, !nonnull !4, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %.68.i
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !595, !noundef !4
  store ptr %i.l, ptr %i.b, align 8, !noalias !596
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %i.n, ptr %i.o, align 8, !noalias !596
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !596
  store ptr %i.b, ptr %i.a, align 8, !noalias !596
  %.sroa.432.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.432.0..sroa_idx.i, align 8, !noalias !596
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %i.p, align 8, !noalias !596
  %.sroa.436.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtReNtB6_7Display3fmtCsdjW2DEjcQy2_12clap_builder, ptr %.sroa.436.0..sroa_idx.i, align 8, !noalias !596
  call void @_RNvNvNtCscdodAO9FK5_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noundef nonnull @12, ptr noundef nonnull %i.a), !noalias !595
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !596
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !596
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB2_7Command19subcommand_internal(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([776 x i8]) align 8 captures(none) dereferenceable(776) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(776) %1, ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(776) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [776 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = load i64, ptr %i.b, align 8, !range !3, !noundef !4
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.e = trunc nuw i64 %i.c to i1
  br i1 %i.e, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.f = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !range !3, !alias.scope !602, !noundef !4
  %i.i = trunc nuw i64 %i.h to i1
  br i1 %i.i, label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsdjW2DEjcQy2_12clap_builder.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32
  store i64 1, ptr %i.g, align 8, !alias.scope !602
  store i64 %i.f, ptr %i.j, align 8, !alias.scope !602
  br label %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsdjW2DEjcQy2_12clap_builder.exit

bb.d:                                             ; preds = %bb.a, %_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsdjW2DEjcQy2_12clap_builder.exit
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 368 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.a, ptr noundef nonnull align 8 dereferenceable(776) %2, i64 776, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 384 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !603, !noundef !4 ; 3 uses
  %i.n = load i64, ptr %i.k, align 8, !range !6, !alias.scope !603, !noundef !4
  %i.o = icmp eq i64 %i.m, %i.n
  br i1 %i.o, label %bb.e, label %bb.h

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandE8grow_oneBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
          to label %bb.h unwind label %bb.f, !noalias !604

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEBH_(ptr noalias noundef nonnull align 8 dereferenceable(776) %i.a) #20
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

_RINvMNtCs4NRVxsYgnAr_4core6optionINtB3_6OptionjE18get_or_insert_withNCNvB2_13get_or_insert0ECsdjW2DEjcQy2_12clap_builder.exit: ; preds = %bb.c, %bb.b
  %i.r = add i64 %i.f, 1
  store i64 %i.r, ptr %i.d, align 8
  br label %bb.d

bb.h:                                             ; preds = %bb.e, %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 376
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !603, !nonnull !4, !noundef !4
  %i.u = getelementptr inbounds nuw [776 x i8], ptr %i.t, i64 %i.m
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %i.u, ptr noundef nonnull align 8 dereferenceable(776) %2, i64 776, i1 false)
  %i.v = add i64 %i.m, 1
  store i64 %i.v, ptr %i.l, align 8, !alias.scope !603
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(776) %0, ptr noundef nonnull align 8 dereferenceable(776) %1, i64 776, i1 false)
  ret void

.body:                                            ; preds = %bb.f
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCsdjW2DEjcQy2_12clap_builder7builder7command7CommandEBH_(ptr noalias noundef align 8 dereferenceable(776) %1) #20
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %.body
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.j:                                             ; preds = %.body
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs2_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command22get_arg_conflicts_with(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(672) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [24 x i8], align 8                ; 13 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 664
  %i.f = load i32, ptr %i.e, align 8, !noundef !4
  %i.g = and i32 %i.f, 2
  %i.h = icmp eq i32 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  store i64 0, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.n = load i64, ptr %i.m, align 8, !noundef !4 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 24
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx ; 3 uses
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 328
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !624, !nonnull !4, !noundef !4 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 336
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !624, !noundef !4 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.t, 672
  %i.u = getelementptr inbounds nuw i8, ptr %i.r, i64 %.idx.i ; 2 uses
  %i.v = icmp eq i64 %i.t, 0                      ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 400
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !4 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 408
  %i.z = load i64, ptr %i.y, align 8
  %.fr41 = freeze i64 %i.z                        ; 2 uses
  %.idx.i9 = mul nuw nsw i64 %.fr41, 104
  %i.aa = getelementptr inbounds nuw i8, ptr %i.x, i64 %.idx.i9 ; 2 uses
  %i.ab = icmp eq i64 %.fr41, 0
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.ab, label %.lr.ph.split.us, label %.lr.ph.split

.lr.ph.split.us:                                  ; preds = %.lr.ph
  br i1 %i.v, label %.loopexit26.us, label %.lr.ph.i.i.us

.lr.ph.i.i.us:                                    ; preds = %.lr.ph.split.us, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us
  %i.ag = phi i64 [ %i.ar, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %.sroa.0.032.us = phi ptr [ %i.ah, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us ], [ %i.l, %.lr.ph.split.us ] ; 3 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %.sroa.53.0.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us, i64 16
  %.sroa.53.0.i.i.i.us = load i64, ptr %.sroa.53.0.in.i.i.i.us, align 8, !alias.scope !625, !noalias !626, !noundef !4 ; 2 uses
  %.sroa.02.0.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us, i64 8
  %.sroa.02.0.i.i.i.us = load ptr, ptr %.sroa.02.0.in.i.i.i.us, align 8, !alias.scope !625, !nonnull !4
  br label %bb.c

bb.c:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.i.i.us
  %i.ai = phi ptr [ %i.r, %.lr.ph.i.i.us ], [ %i.aj, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us ] ; 4 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 672 ; 2 uses
  %.sroa.5.0.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.5.0.i.i.i.us = load i64, ptr %.sroa.5.0.in.i.i.i.us, align 8, !noalias !627, !noundef !4
  %i.ak = icmp eq i64 %.sroa.5.0.i.i.i.us, %.sroa.53.0.i.i.i.us
  br i1 %i.ak, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us: ; preds = %bb.c
  %.sroa.01.0.in.i.i.i.us = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.01.0.i.i.i.us = load ptr, ptr %.sroa.01.0.in.i.i.i.us, align 8, !noalias !627, !nonnull !4, !noundef !4
  %bcmp.i.i.i.us = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i.us, ptr nonnull %.sroa.02.0.i.i.i.us, i64 %.sroa.53.0.i.i.i.us), !noalias !627
  %i.al = icmp eq i32 %bcmp.i.i.i.us, 0
  br i1 %i.al, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit.us, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us, %bb.c
  %i.am = icmp eq ptr %i.aj, %i.u
  br i1 %i.am, label %.loopexit26.us, label %bb.c

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit.us: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.us
  %i.an = load i64, ptr %i.d, align 8, !range !6, !alias.scope !628, !noundef !4
  %i.ao = icmp eq i64 %i.ag, %i.an
  br i1 %i.ao, label %bb.d, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us

bb.d:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us: ; preds = %bb.d, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit.us
  %i.ap = load ptr, ptr %i.i, align 8, !alias.scope !628, !nonnull !4, !noundef !4
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.ag
  store ptr %i.ai, ptr %i.aq, align 8, !noalias !629
  %i.ar = add i64 %i.ag, 1                        ; 2 uses
  store i64 %i.ar, ptr %i.j, align 8, !alias.scope !628
  %i.as = icmp eq ptr %i.ah, %i.o
  br i1 %i.as, label %._crit_edge, label %.lr.ph.i.i.us

.loopexit26.us:                                   ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.us, %.lr.ph.split.us
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  br label %.loopexit

.lr.ph.split:                                     ; preds = %.lr.ph
  br i1 %i.v, label %.lr.ph.i.i10.us, label %.lr.ph.i.i

.lr.ph.i.i10.us:                                  ; preds = %.lr.ph.split, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit.us
  %.sroa.0.032.us34 = phi ptr [ %i.at, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit.us ], [ %i.l, %.lr.ph.split ] ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us34, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  %.sroa.53.0.in.i.i.i11.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us34, i64 16
  %.sroa.53.0.i.i.i12.us = load i64, ptr %.sroa.53.0.in.i.i.i11.us, align 8, !alias.scope !632, !noundef !4 ; 2 uses
  %.sroa.02.0.in.i.i.i13.us = getelementptr inbounds nuw i8, ptr %.sroa.0.032.us34, i64 8
  %.sroa.02.0.i.i.i14.us = load ptr, ptr %.sroa.02.0.in.i.i.i13.us, align 8, !alias.scope !632, !nonnull !4
  br label %bb.e

bb.e:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us, %.lr.ph.i.i10.us
  %i.au = phi ptr [ %i.x, %.lr.ph.i.i10.us ], [ %i.av, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us ] ; 4 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 104 ; 2 uses
  %.sroa.5.0.in.i.i.i15.us = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.5.0.i.i.i16.us = load i64, ptr %.sroa.5.0.in.i.i.i15.us, align 8, !noalias !633, !noundef !4
  %i.aw = icmp eq i64 %.sroa.5.0.i.i.i16.us, %.sroa.53.0.i.i.i12.us
  br i1 %i.aw, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us: ; preds = %bb.e
  %.sroa.01.0.in.i.i.i18.us = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.01.0.i.i.i19.us = load ptr, ptr %.sroa.01.0.in.i.i.i18.us, align 8, !noalias !633, !nonnull !4, !noundef !4
  %bcmp.i.i.i20.us = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i19.us, ptr nonnull %.sroa.02.0.i.i.i14.us, i64 %.sroa.53.0.i.i.i12.us), !noalias !633
  %i.ax = icmp eq i32 %bcmp.i.i.i20.us, 0
  br i1 %i.ax, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us, %bb.e
  %i.ay = icmp eq ptr %i.av, %i.aa
  br i1 %i.ay, label %.loopexit, label %bb.e

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.us
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au)
          to label %bb.f unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.f:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us
  %i.az = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ba = load i64, ptr %i.ad, align 8, !noundef !4
  %i.bb = getelementptr inbounds nuw [24 x i8], ptr %i.az, i64 %i.ba
  store ptr %i.az, ptr %i.c, align 8
  store ptr %i.bb, ptr %i.ae, align 8
  store ptr %1, ptr %i.af, align 8
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterNtNtNtBM_4util2id2IdENCNvMs2_NtBK_7commandNtB3t_7Command22get_arg_conflicts_with0EEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.g unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.h unwind label %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit.us unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit.us: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.bc = icmp eq ptr %i.at, %i.o
  br i1 %i.bc, label %._crit_edge, label %.lr.ph.i.i10.us

bb.i:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !634)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !635
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 232
  %i.be = load ptr, ptr %i.bd, align 8, !alias.scope !634, !nonnull !4, !noundef !4 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 240
  %i.bg = load i64, ptr %i.bf, align 8, !alias.scope !634, !noundef !4
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.be, i64 %i.bg
  store ptr %i.be, ptr %i.a, align 8, !noalias !635
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.bh, ptr %i.bi, align 8, !noalias !635
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.bj, align 8, !noalias !635
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %2, ptr %i.bk, align 8, !noalias !635
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEINtB4_18SpecFromIterNestedB12_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB2v_5slice4iter4IterNtNtNtB19_4util2id2IdENCNvMs2_NtB17_7commandNtB45_7Command29get_global_arg_conflicts_with0EE9from_iterB19_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !635
  br label %bb.u

.lr.ph.i.i:                                       ; preds = %.lr.ph.split, %bb.m
  %.sroa.0.032 = phi ptr [ %i.bl, %bb.m ], [ %i.l, %.lr.ph.split ] ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 24 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !624)
  call void @llvm.experimental.noalias.scope.decl(metadata !625)
  %.sroa.53.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 16
  %.sroa.53.0.i.i.i = load i64, ptr %.sroa.53.0.in.i.i.i, align 8, !alias.scope !625, !noalias !626, !noundef !4 ; 4 uses
  %.sroa.02.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.032, i64 8
  %.sroa.02.0.i.i.i = load ptr, ptr %.sroa.02.0.in.i.i.i, align 8, !alias.scope !625, !nonnull !4 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.lr.ph.i.i
  %i.bm = phi ptr [ %i.r, %.lr.ph.i.i ], [ %i.bn, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ] ; 4 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 672 ; 2 uses
  %.sroa.5.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 16
  %.sroa.5.0.i.i.i = load i64, ptr %.sroa.5.0.in.i.i.i, align 8, !noalias !627, !noundef !4
  %i.bo = icmp eq i64 %.sroa.5.0.i.i.i, %.sroa.53.0.i.i.i
  br i1 %i.bo, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %bb.j
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.bm, i64 8
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i, align 8, !noalias !627, !nonnull !4, !noundef !4
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i, ptr nonnull %.sroa.02.0.i.i.i, i64 %.sroa.53.0.i.i.i), !noalias !627
  %i.bp = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.bp, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %bb.j
  %i.bq = icmp eq ptr %i.bn, %i.u
  br i1 %i.bq, label %.loopexit26, label %bb.j

._crit_edge:                                      ; preds = %bb.m, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit.us, %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit.us, %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.u

.body:                                            ; preds = %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp107, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp110, %.split39.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgEEB1e_(ptr noalias noundef align 8 dereferenceable(24) %i.d) #20
          to label %bb.t unwind label %bb.r

.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit.us, %bb.h, %bb.d, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit, %bb.k, %bb.p, %.loopexit
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  %i.br = load i64, ptr %i.j, align 8, !alias.scope !628, !noundef !4 ; 3 uses
  %i.bs = load i64, ptr %i.d, align 8, !range !6, !alias.scope !628, !noundef !4
  %i.bt = icmp eq i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.k, label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit

bb.k:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8grow_oneBS_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d)
          to label %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit: ; preds = %bb.k, %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command4find.exit
  %i.bu = load ptr, ptr %i.i, align 8, !alias.scope !628, !nonnull !4, !noundef !4
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.bu, i64 %i.br
  store ptr %i.bm, ptr %i.bv, align 8, !noalias !629
  %i.bw = add i64 %i.br, 1
  store i64 %i.bw, ptr %i.j, align 8, !alias.scope !628
  br label %bb.m

.loopexit26:                                      ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !630)
  call void @llvm.experimental.noalias.scope.decl(metadata !631)
  br label %bb.l

bb.l:                                             ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %.loopexit26
  %i.bx = phi ptr [ %i.x, %.loopexit26 ], [ %i.by, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i ] ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 104 ; 2 uses
  %.sroa.5.0.in.i.i.i15 = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.sroa.5.0.i.i.i16 = load i64, ptr %.sroa.5.0.in.i.i.i15, align 8, !noalias !633, !noundef !4
  %i.bz = icmp eq i64 %.sroa.5.0.i.i.i16, %.sroa.53.0.i.i.i
  br i1 %i.bz, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i: ; preds = %bb.l
  %.sroa.01.0.in.i.i.i18 = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %.sroa.01.0.i.i.i19 = load ptr, ptr %.sroa.01.0.in.i.i.i18, align 8, !noalias !633, !nonnull !4, !noundef !4
  %bcmp.i.i.i20 = call i32 @bcmp(ptr nonnull %.sroa.01.0.i.i.i19, ptr nonnull %.sroa.02.0.i.i.i, i64 %.sroa.53.0.i.i.i), !noalias !633
  %i.ca = icmp eq i32 %bcmp.i.i.i20, 0
  br i1 %i.ca, label %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit, label %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i, %bb.l
  %i.cb = icmp eq ptr %i.by, %i.aa
  br i1 %i.cb, label %.loopexit, label %bb.l

bb.m:                                             ; preds = %_RNvMsF_NtCscdodAO9FK5_5alloc3vecINtB5_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE8push_mutBL_.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCsdjW2DEjcQy2_12clap_builder4util2id2IdEEB1d_.exit
  %i.cc = icmp eq ptr %i.bl, %i.o
  br i1 %i.cc, label %._crit_edge, label %.lr.ph.i.i

_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit: ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(776) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bx)
          to label %bb.n unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i, %_RNCNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.us, %.loopexit26.us
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 177 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #23
          to label %bb.s unwind label %.loopexit27.split.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %_RNvMs5_NtNtCsdjW2DEjcQy2_12clap_builder7builder7commandNtB5_7Command10find_group.exit
  %i.cd = load ptr, ptr %i.ac, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.ce = load i64, ptr %i.ad, align 8, !noundef !4
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.cd, i64 %i.ce
  store ptr %i.cd, ptr %i.c, align 8
  store ptr %i.cf, ptr %i.ae, align 8
  store ptr %1, ptr %i.af, align 8
  invoke void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecRNtNtNtCsdjW2DEjcQy2_12clap_builder7builder3arg3ArgE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1U_5slice4iter4IterNtNtNtBM_4util2id2IdENCNvMs2_NtBK_7commandNtB3t_7Command22get_arg_conflicts_with0EEBM_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.o unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.f, %bb.n
end_hunk_0
