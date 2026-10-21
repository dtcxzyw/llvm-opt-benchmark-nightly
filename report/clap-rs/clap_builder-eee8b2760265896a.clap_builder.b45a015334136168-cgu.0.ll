Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph:bb.a
_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i15: ; preds = %bb.j, %.loopexit.i14
  %i.bp = phi ptr [ %i.ba, %.loopexit.i14 ], [ %.pre.i21, %bb.j ] ; 2 uses
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bp, i64 %i.ap ; 5 uses
  store i64 0, ptr %i.bq, align 8, !noalias !6217
  %.sroa.4.0..sroa_idx.i16 = getelementptr inbounds nuw i8, ptr %i.bq, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i16, align 8, !noalias !6217
  %.sroa.5.0..sroa_idx11.i17 = getelementptr inbounds nuw i8, ptr %i.bq, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx11.i17, align 8, !noalias !6217
  %.sroa.612.0..sroa_idx.i18 = getelementptr inbounds nuw i8, ptr %i.bq, i64 24
  store ptr %i.ax, ptr %.sroa.612.0..sroa_idx.i18, align 8, !noalias !6217
  %.sroa.7.0..sroa_idx.i19 = getelementptr inbounds nuw i8, ptr %i.bq, i64 32
  store i64 %i.az, ptr %.sroa.7.0..sroa_idx.i19, align 8, !noalias !6215
  %i.br = add nuw nsw i64 %i.ap, 1                ; 2 uses
  store i64 %i.br, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6215
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit25

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit25: ; preds = %bb.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i15
  %i.bs = phi ptr [ %i.ba, %bb.i ], [ %i.bp, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i15 ]
  %i.bt = phi i64 [ %i.ap, %bb.i ], [ %i.br, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i15 ] ; 2 uses
  %.sroa.0.0.i20 = phi i64 [ %.sroa.02.010.i.i11, %bb.i ], [ %i.ap, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i15 ] ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.02.037, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %.sroa.02.037, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !10 ; 2 uses
  %.idx39 = shl nuw nsw i64 %i.bx, 4
  %i.by = getelementptr inbounds nuw i8, ptr %i.bv, i64 %.idx39
  %i.bz = icmp eq i64 %i.bx, 0
  br i1 %i.bz, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit25
  %.pre46 = load i64, ptr %i.a, align 8, !range !11, !alias.scope !6218
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit
  %i.ca = phi ptr [ %i.cj, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit ], [ %i.bs, %.lr.ph.preheader ]
  %i.cb = phi i64 [ %i.ck, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit ], [ %.pre46, %.lr.ph.preheader ] ; 2 uses
  %i.cc = phi i64 [ %i.cm, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit ], [ %i.bt, %.lr.ph.preheader ] ; 6 uses
  %.sroa.04.036 = phi ptr [ %i.cd, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit ], [ %i.bv, %.lr.ph.preheader ] ; 3 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.04.036, i64 16 ; 2 uses
  %i.ce = load ptr, ptr %.sroa.04.036, align 8, !nonnull !10, !noundef !10
  %i.cf = getelementptr inbounds nuw i8, ptr %.sroa.04.036, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noundef !10
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6219)
  %i.ch = icmp ult i64 %i.cc, 230584300921369396
  tail call void @llvm.assume(i1 %i.ch)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6220)
  %i.ci = icmp eq i64 %i.cc, %i.cb
  br i1 %i.ci, label %bb.k, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i26

bb.k:                                             ; preds = %.lr.ph
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBR_2id2IdEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !6221
  %.pre = load i64, ptr %i.a, align 8, !range !11, !alias.scope !6218
  %.pre47 = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !6218
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i26

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i26: ; preds = %bb.k, %.lr.ph
  %i.cj = phi ptr [ %.pre47, %bb.k ], [ %i.ca, %.lr.ph ] ; 3 uses
  %i.ck = phi i64 [ %.pre, %bb.k ], [ %i.cb, %.lr.ph ]
  %i.cl = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %i.cc ; 5 uses
  store i64 0, ptr %i.cl, align 8, !noalias !6222
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !noalias !6222
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx3.i, align 8, !noalias !6222
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.cl, i64 24
  store ptr %i.ce, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !6222
  %.sroa.7.0..sroa_idx.i27 = getelementptr inbounds nuw i8, ptr %i.cl, i64 32
  store i64 %i.cg, ptr %.sroa.7.0..sroa_idx.i27, align 8, !noalias !6218
  %i.cm = add nuw nsw i64 %i.cc, 1                ; 4 uses
  store i64 %i.cm, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !6218
  %.not.i = icmp samesign ugt i64 %.sroa.0.0.i20, %i.cc
  br i1 %.not.i, label %bb.n, label %bb.l

bb.l:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i26
  %i.cn = getelementptr inbounds nuw [40 x i8], ptr %i.cj, i64 %.sroa.0.0.i20 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6223)
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 16 ; 2 uses
  %i.cp = load i64, ptr %i.co, align 8, !alias.scope !6223, !noalias !6219, !noundef !10 ; 3 uses
  %i.cq = load i64, ptr %i.cn, align 8, !range !11, !alias.scope !6223, !noalias !6219, !noundef !10
  %i.cr = icmp eq i64 %i.cp, %i.cq
  br i1 %i.cr, label %bb.m, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecjE8grow_oneCsfu0rQaTkGUu_12clap_builder(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn) #42, !noalias !6219
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit

bb.n:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i26
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i20, i64 noundef %i.cm, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @224) #44, !noalias !6219
  unreachable

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE12insert_childB8_.exit: ; preds = %bb.l, %bb.m
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !6223, !noalias !6219, !nonnull !10, !noundef !10
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %i.cp
  store i64 %i.cc, ptr %i.cu, align 8, !noalias !6224
  %i.cv = add i64 %i.cp, 1
  store i64 %i.cv, ptr %i.co, align 8, !alias.scope !6223, !noalias !6219
  %i.cw = icmp eq ptr %i.cd, %i.by
  br i1 %i.cw, label %.loopexit, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14write_help_err(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 708
  %.val = load i8, ptr %i.d, align 4, !range !33
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6234)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6235)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6237)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !6238, !nonnull !10, !noundef !10 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 240
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !6238, !noundef !10 ; 2 uses
  %.idx = shl nuw nsw i64 %i.h, 4
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.0.01.i.i.i7, i64 16 ; 2 uses
  %i.l = add i64 %.sroa.8.0.i.i.i6, 1
  %i.m = icmp eq ptr %i.k, %i.i
  br i1 %i.m, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.sroa.0.01.i.i.i7 = phi ptr [ %i.k, %bb.b ], [ %i.f, %bb.a ] ; 2 uses
  %.sroa.8.0.i.i.i6 = phi i64 [ %i.l, %bb.b ], [ 0, %bb.a ] ; 4 uses
  %.val.i.i.i = load i128, ptr %.sroa.0.01.i.i.i7, align 8, !noalias !6239
  %i.n = icmp eq i128 %.val.i.i.i, -100310019091698447603793328749864812255
  br i1 %i.n, label %bb.c, label %bb.b

bb.c:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6238, !noundef !10 ; 2 uses
  %i.q = icmp ult i64 %.sroa.8.0.i.i.i6, %i.p
  br i1 %i.q, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.0.i.i.i6, i64 noundef %i.p, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !6239
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !6238, !nonnull !10, !noundef !10
  %i.t = getelementptr inbounds nuw [32 x i8], ptr %i.s, i64 %.sroa.8.0.i.i.i6 ; 2 uses
  %.val5.i.i = load ptr, ptr %i.t, align 8, !noalias !6240, !nonnull !10, !noundef !10
  %i.u = getelementptr i8, ptr %i.t, i64 8
  %.val6.i.i = load ptr, ptr %i.u, align 8, !noalias !6240, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 16
  %i.w = load i64, ptr %i.v, align 8, !range !17, !invariant.load !10, !noalias !6240
  %i.x = add nsw i64 %i.w, -1
  %i.y = and i64 %i.x, -16
  %i.z = getelementptr inbounds nuw i8, ptr %.val5.i.i, i64 %i.y
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6240
  %i.ab = getelementptr inbounds nuw i8, ptr %.val6.i.i, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !invariant.load !10, !noalias !6240, !nonnull !10
  call void %i.ac(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.aa) #45, !noalias !6240, !inline_history !0
  %i.ad = load i128, ptr %i.a, align 16, !noalias !6240, !noundef !10
  %.not.i.i = icmp eq i128 %i.ad, -100310019091698447603793328749864812255
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6240
  br i1 %.not.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit, label %bb.f, !prof !15

bb.f:                                             ; preds = %bb.e
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #44, !noalias !6240
  unreachable

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB2_5Usage3new.exit: ; preds = %bb.b, %bb.a, %bb.e
  %.sroa.0.0.i.i = phi ptr [ %i.aa, %bb.e ], [ null, %bb.a ], [ null, %bb.b ] ; 2 uses
  %i.ae = trunc nuw i8 %.val to i1
  %.sroa.0.0 = select i1 %2, i1 %i.ae, i1 false
  %.not.i = icmp eq ptr %.sroa.0.0.i.i, null
  %..i = select i1 %.not.i, ptr @99, ptr %.sroa.0.0.i.i
  store ptr %1, ptr %i.c, align 8, !alias.scope !6234
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %..i, ptr %i.af, align 8, !alias.scope !6234
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.ag, align 8, !alias.scope !6234
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !6241
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !6241
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !6241
  call void @_RNvNtNtCsfu0rQaTkGUu_12clap_builder6output4help10write_help(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, i1 noundef zeroext %.sroa.0.0) #43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(712) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43
  %i.c = tail call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #43 ; 5 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %.lr.ph23, !prof !32

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #46
  unreachable

.lr.ph23:                                         ; preds = %bb.a
  store ptr %2, ptr %i.c, align 8
  store i64 1, ptr %i.b, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 0, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 208
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.l = load i64, ptr %i.k, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.l, 96
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.idx
  %i.n = icmp eq i64 %i.l, 0
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 136
  %.val7 = load ptr, ptr %i.o, align 8, !nonnull !10 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 144
  %.val8 = load i64, ptr %i.p, align 8            ; 2 uses
  %.idx.i10 = mul nuw nsw i64 %.val8, 600
  %i.q = getelementptr inbounds nuw i8, ptr %.val7, i64 %.idx.i10
  %i.r = icmp eq i64 %.val8, 0
  br i1 %i.n, label %.lr.ph23.split.us, label %.lr.ph.i

.lr.ph23.split.us:                                ; preds = %.lr.ph23
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  br label %.loopexit19

.loopexit18.loopexit:                             ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit
  %.pre27.a = load i64, ptr %i.f, align 8
  br label %.loopexit18

.loopexit18:                                      ; preds = %.loopexit18.loopexit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit
  %i.s = phi i64 [ %.pre27.a, %.loopexit18.loopexit ], [ %i.ah, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 2 uses
  %i.t = phi ptr [ %i.cm, %.loopexit18.loopexit ], [ %i.ab, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ]
  %i.u = phi ptr [ %i.cn, %.loopexit18.loopexit ], [ %i.ac, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ]
  %i.v = phi i64 [ %i.co, %.loopexit18.loopexit ], [ %i.ad, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ]
  %i.w = phi ptr [ %i.cp, %.loopexit18.loopexit ], [ %i.ae, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ]
  %i.x = phi ptr [ %i.cq, %.loopexit18.loopexit ], [ %i.af, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ]
  %i.y = icmp eq i64 %i.s, 0
  br i1 %i.y, label %._crit_edge, label %.lr.ph.i

._crit_edge:                                      ; preds = %.loopexit18
  %.val.pre = load i64, ptr %i.b, align 8, !range !11 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.z = icmp eq i64 %.val.pre, 0
  br i1 %i.z, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  %.val6 = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.aa = shl nuw i64 %.val.pre, 3
  tail call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 8) #43
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit: ; preds = %._crit_edge, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

.lr.ph.i:                                         ; preds = %.lr.ph23, %.loopexit18
  %i.ab = phi ptr [ %i.t, %.loopexit18 ], [ %i.c, %.lr.ph23 ] ; 2 uses
  %i.ac = phi ptr [ %i.u, %.loopexit18 ], [ inttoptr (i64 8 to ptr), %.lr.ph23 ] ; 2 uses
  %i.ad = phi i64 [ %i.v, %.loopexit18 ], [ 0, %.lr.ph23 ] ; 2 uses
  %i.ae = phi ptr [ %i.w, %.loopexit18 ], [ inttoptr (i64 8 to ptr), %.lr.ph23 ] ; 2 uses
  %i.af = phi ptr [ %i.x, %.loopexit18 ], [ %i.c, %.lr.ph23 ] ; 3 uses
  %i.ag = phi i64 [ %i.s, %.loopexit18 ], [ 1, %.lr.ph23 ] ; 2 uses
  %i.ah = add nsw i64 %i.ag, -1                   ; 4 uses
  store i64 %i.ah, ptr %i.f, align 8
  %3 = load i64, ptr %i.b, align 8, !range !11, !noundef !10
  %i.ai = icmp samesign ult i64 %i.ah, %3
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = icmp samesign ult i64 %i.ag, 1152921504606846977
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ah
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6261)
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !6261, !noundef !10 ; 2 uses
  %i.ao = load ptr, ptr %i.al, align 8, !alias.scope !6261, !nonnull !10
  br label %bb.d

bb.d:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i, %.lr.ph.i
  %i.ap = phi ptr [ %i.j, %.lr.ph.i ], [ %i.aq, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i ] ; 5 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 96 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.ap, i64 80
  %i.as = load i64, ptr %i.ar, align 8, !noalias !6262, !noundef !10
  %i.at = icmp eq i64 %i.as, %i.an
  br i1 %i.at, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i: ; preds = %bb.d
  %i.au = getelementptr inbounds nuw i8, ptr %i.ap, i64 72
  %i.av = load ptr, ptr %i.au, align 8, !noalias !6262, !nonnull !10, !noundef !10
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull %i.av, ptr nonnull %i.ao, i64 %i.an), !noalias !6262
  %i.aw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.aw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i, %bb.d
  %i.ax = icmp eq ptr %i.aq, %i.m
  br i1 %i.ax, label %.loopexit19, label %bb.d

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.i
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ap, i64 8
  %i.az = load ptr, ptr %i.ay, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !noundef !10 ; 2 uses
  %.idx24 = shl nuw nsw i64 %i.bb, 4
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 %.idx24
  %i.bd = icmp eq i64 %i.bb, 0
  br i1 %i.bd, label %.loopexit18, label %.lr.ph

.loopexit19:                                      ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command20unroll_args_in_group0Bb_.exit.thread.i, %.lr.ph23.split.us
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13expect_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 99, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @221) #44
  unreachable

.lr.ph:                                           ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit
  %i.be = phi ptr [ %i.cm, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ab, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 3 uses
  %i.bf = phi ptr [ %i.cn, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ac, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 3 uses
  %i.bg = phi i64 [ %i.co, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ad, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 7 uses
  %i.bh = phi ptr [ %i.cp, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.ae, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 4 uses
  %i.bi = phi ptr [ %i.cq, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.af, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 2 uses
  %.sroa.01.022 = phi ptr [ %i.bj, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit ], [ %i.az, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs5_NtBU_7commandNtB2I_7Command20unroll_args_in_group0EBW_.exit ] ; 4 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.01.022, i64 16 ; 2 uses
  %.sroa.01.0.val = load ptr, ptr %.sroa.01.022, align 8 ; 3 uses
  %i.bk = getelementptr i8, ptr %.sroa.01.022, i64 8
  %.sroa.01.0.val9 = load i64, ptr %i.bk, align 8 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6263)
  %.idx.i = shl nuw nsw i64 %i.bg, 4
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.idx.i
  %.not.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i, label %.loopexit17, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i
  %i.bm = phi ptr [ %i.bn, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i ], [ %i.bh, %.lr.ph ] ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 16 ; 2 uses
  %i.bo = getelementptr i8, ptr %i.bm, i64 8
  %.val3.i.i = load i64, ptr %i.bo, align 8, !alias.scope !6263, !noalias !6264, !noundef !10
  %i.bp = icmp eq i64 %.val3.i.i, %.sroa.01.0.val9
  br i1 %i.bp, label %.split.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i

.split.i.i:                                       ; preds = %.lr.ph.i.i
  %.val2.i.i = load ptr, ptr %i.bm, align 8, !alias.scope !6263, !noalias !6264, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly %.val2.i.i, ptr nonnull readonly %.sroa.01.0.val, i64 %.sroa.01.0.val9), !noalias !6265
  %i.bq = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.bq, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i: ; preds = %.split.i.i, %.lr.ph.i.i
  %.not7.i.i = icmp eq ptr %i.bn, %i.bl
  br i1 %.not7.i.i, label %.loopexit17, label %.lr.ph.i.i

.loopexit17:                                      ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BK_.exit.backedge.i.i, %.lr.ph
  br i1 %i.r, label %.loopexit, label %.lr.ph.i.i11

.lr.ph.i.i11:                                     ; preds = %.loopexit17, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i
  %i.br = phi ptr [ %i.bs, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i ], [ %.val7, %.loopexit17 ] ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.br, i64 600 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 544
  %i.bu = load i64, ptr %i.bt, align 8, !noalias !6266, !noundef !10
  %i.bv = icmp eq i64 %i.bu, %.sroa.01.0.val9
  br i1 %i.bv, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i: ; preds = %.lr.ph.i.i11
  %i.bw = getelementptr inbounds nuw i8, ptr %i.br, i64 536
  %i.bx = load ptr, ptr %i.bw, align 8, !noalias !6266, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull %i.bx, ptr nonnull %.sroa.01.0.val, i64 %.sroa.01.0.val9), !noalias !6266
  %i.by = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.by, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i, %.lr.ph.i.i11
  %i.bz = icmp eq ptr %i.bs, %i.q
  br i1 %i.bz, label %.loopexit, label %.lr.ph.i.i11

.loopexit:                                        ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i, %.loopexit17
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6267)
  %i.ca = load i64, ptr %i.f, align 8, !alias.scope !6267, !noundef !10 ; 3 uses
  %i.cb = load i64, ptr %i.b, align 8, !range !11, !alias.scope !6267, !noundef !10
  %i.cc = icmp eq i64 %i.ca, %i.cb
  br i1 %i.cc, label %bb.e, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit

bb.e:                                             ; preds = %.loopexit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !6268
  %.pre26 = load ptr, ptr %i.e, align 8, !alias.scope !6267
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit: ; preds = %.loopexit, %bb.e
  %i.cd = phi ptr [ %i.be, %.loopexit ], [ %.pre26, %bb.e ] ; 3 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.ca
  store ptr %.sroa.01.022, ptr %i.ce, align 8, !noalias !6269, !captures !21
  %i.cf = add i64 %i.ca, 1
  store i64 %i.cf, ptr %i.f, align 8, !alias.scope !6267
  br label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6270)
  %i.cg = load i64, ptr %i.a, align 8, !range !11, !alias.scope !6270, !noundef !10
  %i.ch = icmp eq i64 %i.bg, %i.cg
  br i1 %i.ch, label %bb.f, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit

bb.f:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !6271
  %.pre.a = load ptr, ptr %i.g, align 8, !alias.scope !6270
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit, %bb.f
  %i.ci = phi ptr [ %i.bf, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit ], [ %.pre.a, %bb.f ] ; 3 uses
  %i.cj = getelementptr inbounds nuw [16 x i8], ptr %i.ci, i64 %i.bg ; 2 uses
  store ptr %.sroa.01.0.val, ptr %i.cj, align 8, !noalias !6272
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  store i64 %.sroa.01.0.val9, ptr %i.ck, align 8, !noalias !6270
  %i.cl = add i64 %i.bg, 1                        ; 2 uses
  store i64 %i.cl, ptr %i.h, align 8, !alias.scope !6270
  br label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBI_.exit: ; preds = %.split.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit
  %i.cm = phi ptr [ %i.be, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.cd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.be, %.split.i.i ] ; 2 uses
  %i.cn = phi ptr [ %i.ci, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bf, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bf, %.split.i.i ] ; 2 uses
  %i.co = phi i64 [ %i.cl, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bg, %.split.i.i ] ; 2 uses
  %i.cp = phi ptr [ %i.ci, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.bh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bh, %.split.i.i ] ; 2 uses
  %i.cq = phi ptr [ %i.bi, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit ], [ %i.cd, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit ], [ %i.bi, %.split.i.i ] ; 2 uses
  %i.cr = icmp eq ptr %i.bj, %i.bc
  br i1 %i.cr, label %.loopexit18.loopexit, label %.lr.ph
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output13help_templateNtB4_12HelpTemplate20write_templated_help(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
.lr.ph.split.preheader.i.i:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 9 uses
  %i.f = alloca [24 x i8], align 8                ; 9 uses
  %i.g = alloca [24 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 8 uses
  %i.i = alloca [24 x i8], align 8                ; 10 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [712 x i8], align 8               ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [16 x i8], align 8                ; 5 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [16 x i8], align 8                ; 5 uses
  %i.r = alloca [32 x i8], align 8                ; 7 uses
  %i.s = alloca [16 x i8], align 8                ; 5 uses
  %i.t = alloca [1 x i8], align 1                 ; 8 uses
  %i.u = alloca [8 x i8], align 8                 ; 4 uses
  %i.v = alloca [8 x i8], align 8                 ; 7 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 6 uses
  %i.y = alloca [24 x i8], align 8                ; 6 uses
  %i.z = alloca [24 x i8], align 8                ; 6 uses
  %i.aa = alloca [16 x i8], align 8               ; 5 uses
  %i.ab = alloca [32 x i8], align 8               ; 7 uses
  %i.ac = alloca [16 x i8], align 8               ; 5 uses
  %i.ad = alloca [14 x i8], align 2               ; 4 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [72 x i8], align 8               ; 25 uses
  br label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %bb.c, %.lr.ph.split.preheader.i.i
  %i.ag = phi i64 [ %i.au, %bb.c ], [ 0, %.lr.ph.split.preheader.i.i ] ; 6 uses
  %i.ah = sub nuw i64 %2, %i.ag                   ; 4 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 %i.ag ; 2 uses
  %i.aj = icmp samesign ult i64 %i.ah, 16
  br i1 %i.aj, label %.preheader.i.i.i, label %bb.a

.preheader.i.i.i:                                 ; preds = %.lr.ph.split.i.i
  %.not.i.i.i = icmp eq i64 %2, %i.ag
  br i1 %.not.i.i.i, label %_RNvXs_NtNtCsj6eKBz9Db1c_4core3str7patternNtB4_12CharSearcherNtB4_8Searcher10next_match.exit.i, label %.lr.ph.i.i.i

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage15write_arg_usage:bb.a
  store ptr %i.af, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad)
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ai, i64 56
  store ptr %i.ak, ptr %i.ad, align 8
  store ptr %i.ad, ptr %i.ae, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac)
  %i.al = load ptr, ptr %0, align 8, !nonnull !10, !align !16, !noundef !10 ; 21 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 488
  %i.an = load i64, ptr %i.am, align 8, !range !12, !noundef !10
  %.not = icmp eq i64 %i.an, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ao = getelementptr inbounds nuw i8, ptr %i.al, i64 496
  %i.ap = load ptr, ptr %i.ao, align 8, !nonnull !10, !noundef !10
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 504
  %i.ar = load i64, ptr %i.aq, align 8, !noundef !10 ; 2 uses
  store ptr %i.ap, ptr %i.ac, align 8, !captures !21
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  store i64 %i.ar, ptr %i.as, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 296
  %i.au = load i64, ptr %i.at, align 8, !range !12, !noundef !10
  %.not34 = icmp eq i64 %i.au, -1
  %i.av = getelementptr inbounds nuw i8, ptr %i.ac, i64 8 ; 2 uses
  br i1 %.not34, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aw = getelementptr inbounds nuw i8, ptr %i.al, i64 304
  %i.ax = load ptr, ptr %i.aw, align 8, !nonnull !10, !noundef !10
  %i.ay = getelementptr inbounds nuw i8, ptr %i.al, i64 312
  %i.az = load i64, ptr %i.ay, align 8, !noundef !10 ; 2 uses
  store ptr %i.ax, ptr %i.ac, align 8
  store i64 %i.az, ptr %i.av, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 560
  %i.bb = load ptr, ptr %i.ba, align 8, !nonnull !10, !noundef !10
  %i.bc = getelementptr inbounds nuw i8, ptr %i.al, i64 568
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !10 ; 2 uses
  store ptr %i.bb, ptr %i.ac, align 8
  store i64 %i.bd, ptr %i.av, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %i.be = phi i64 [ %i.bd, %bb.e ], [ %i.az, %bb.d ], [ %i.ar, %bb.b ]
  %i.bf = icmp eq i64 %i.be, 0
  br i1 %i.bf, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ab)
  store ptr %i.ag, ptr %i.ab, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtRRNtNtCscy4Zx2DW6cp_7anstyle5style5StyleNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.42.0..sroa_idx, align 8
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  store ptr %i.ac, ptr %i.bg, align 8
  %.sroa.46.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  store ptr @_RNvXs1i_NtCsj6eKBz9Db1c_4core3fmtReNtB6_7Display3fmtCsfu0rQaTkGUu_12clap_builder, ptr %.sroa.46.0..sroa_idx, align 8
  %i.bh = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @101, ptr noundef nonnull @233, ptr noundef nonnull %i.ab) #43 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.bi = icmp eq i64 %3, 0
  br i1 %i.bi, label %bb.ct, label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread44

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread44: ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMs_NtNtBW_6output5usageNtB2G_5Usage17needs_options_tag0EBW_.exit.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread, %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !7249)
  call void @llvm.experimental.noalias.scope.decl(metadata !7250)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !7251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !7251
  store ptr %i.aj, ptr %i.y, align 8, !noalias !7251
  store ptr %i.y, ptr %i.z, align 8, !noalias !7251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !7251
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !7249, !align !16, !noundef !10 ; 2 uses
  %.not148.i = icmp eq ptr %i.bk, null            ; 2 uses
  br i1 %.not148.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread44
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command14required_graph(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.x, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.al) #43, !noalias !7252
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread44
  %.sroa.0.0.i = phi ptr [ %i.x, %bb.i ], [ %i.bk, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6output5usageNtB4_5Usage17needs_options_tag.exit.thread44 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !7251
  store i64 0, ptr %i.w, align 8, !noalias !7251
  %i.bl = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bl, align 8, !noalias !7251
  %i.bm = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 6 uses
  store i64 0, ptr %i.bm, align 8, !noalias !7251
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.bo = load ptr, ptr %i.bn, align 8, !noalias !7252, !nonnull !10, !noundef !10 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 16
  %i.bq = load i64, ptr %i.bp, align 8, !noalias !7252, !noundef !10 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.bq, 40
  %i.br = getelementptr inbounds nuw i8, ptr %i.bo, i64 %.idx.i
  %i.bs = icmp eq i64 %i.bq, 0
  br i1 %i.bs, label %._crit_edge479.i, label %.lr.ph478.i

.lr.ph478.i:                                      ; preds = %bb.j
  %i.bt = getelementptr i8, ptr %i.al, i64 136
  %i.bu = getelementptr i8, ptr %i.al, i64 144
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 4 uses
  br label %bb.k

bb.k:                                             ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i, %.lr.ph478.i
  %.sroa.03.0476.i = phi ptr [ %i.bo, %.lr.ph478.i ], [ %i.cb, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i ] ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0476.i, i64 40 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.03.0476.i, i64 24 ; 3 uses
  %.val174.i = load ptr, ptr %i.bt, align 8, !noalias !7252 ; 5 uses
  %.val175.i = load i64, ptr %i.bu, align 8, !noalias !7252
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7253
  store i64 0, ptr %i.c, align 8, !noalias !7253
  store ptr inttoptr (i64 8 to ptr), ptr %i.bv, align 8, !noalias !7253
  store i64 0, ptr %i.bw, align 8, !noalias !7253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7253
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !7254
  %i.cd = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #43, !noalias !7254 ; 6 uses
  %i.ce = icmp eq ptr %i.cd, null
  br i1 %i.ce, label %bb.l, label %.lr.ph.i.i, !prof !32

bb.l:                                             ; preds = %bb.k
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #46, !noalias !7255
  unreachable

.lr.ph.i.i:                                       ; preds = %bb.k
  %.144.val.fr.i.i = freeze i64 %.val175.i        ; 2 uses
  store ptr %i.cc, ptr %i.cd, align 8, !noalias !7254
  store i64 1, ptr %i.b, align 8, !noalias !7253
  store ptr %i.cd, ptr %i.bx, align 8, !noalias !7253
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7253
  store i64 0, ptr %i.a, align 8, !noalias !7253
  store ptr inttoptr (i64 8 to ptr), ptr %i.bz, align 8, !noalias !7253
  store i64 0, ptr %i.ca, align 8, !noalias !7253
  %.idx.i20.i.i = mul nuw nsw i64 %.144.val.fr.i.i, 600
  %i.cf = getelementptr inbounds nuw i8, ptr %.val174.i, i64 %.idx.i20.i.i ; 2 uses
  %i.cg = icmp eq i64 %.144.val.fr.i.i, 0
  br i1 %i.cg, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i, label %.lr.ph.split.i.i

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i: ; preds = %.lr.ph.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7256)
  call void @llvm.experimental.noalias.scope.decl(metadata !7257)
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #42, !noalias !7258
  %.pre28.i.i.a = load ptr, ptr %i.bv, align 8, !alias.scope !7257, !noalias !7253
  store ptr %i.cc, ptr %.pre28.i.i.a, align 8, !noalias !7259, !captures !21
  call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val174.i) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7253
  br label %bb.m

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i: ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i
  %.sroa.0.0.copyload.pre.i = load i64, ptr %i.a, align 8, !noalias !7261 ; 2 uses
  %.sroa.4.0.copyload.pre.i = load ptr, ptr %i.bz, align 8, !noalias !7261 ; 2 uses
  %.sroa.5.0.copyload.pre.i = load i64, ptr %i.ca, align 8, !noalias !7261 ; 2 uses
  %.val12.i.pre.i = load i64, ptr %i.b, align 8, !range !11, !noalias !7253 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7253
  %i.ch = icmp eq i64 %.val12.i.pre.i, 0
  br i1 %i.ch, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge: ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i
  %.val13.i.i.pre = load ptr, ptr %i.bx, align 8, !noalias !7253
  %i.ci = shl nuw i64 %.val12.i.pre.i, 3
  br label %bb.m

bb.m:                                             ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i
  %.val13.i.i = phi ptr [ %i.cd, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i ], [ %.val13.i.i.pre, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge ]
  %.sroa.0.0.copyload619.i = phi i64 [ 0, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i ], [ %.sroa.0.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge ]
  %.sroa.4.0.copyload617.i = phi ptr [ inttoptr (i64 8 to ptr), %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i ], [ %.sroa.4.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge ]
  %.sroa.5.0.copyload615.i = phi i64 [ 0, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i ], [ %.sroa.5.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge ]
  %.val12.i614.i = phi i64 [ 8, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.thread.i ], [ %i.ci, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i._crit_edge ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i, i64 noundef %.val12.i614.i, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !7255
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i: ; preds = %bb.m, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i
  %.sroa.0.0.copyload620.i = phi i64 [ %.sroa.0.0.copyload619.i, %bb.m ], [ %.sroa.0.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i ] ; 2 uses
  %.sroa.4.0.copyload618.i = phi ptr [ %.sroa.4.0.copyload617.i, %bb.m ], [ %.sroa.4.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i ] ; 4 uses
  %.sroa.5.0.copyload616.i = phi i64 [ %.sroa.5.0.copyload615.i, %bb.m ], [ %.sroa.5.0.copyload.pre.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7253
  %.val.i.i = load i64, ptr %i.c, align 8, !range !11, !noalias !7253, !noundef !10 ; 2 uses
  %i.cj = icmp eq i64 %.val.i.i, 0
  br i1 %i.cj, label %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMs_NtNtBa_6output5usageNtB1x_5Usage10write_args0EBa_.exit.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i
  %.val11.i.i = load ptr, ptr %i.bv, align 8, !noalias !7253, !nonnull !10, !noundef !10
  %i.ck = shl nuw i64 %.val.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i, i64 noundef %i.ck, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !7255
  br label %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMs_NtNtBa_6output5usageNtB1x_5Usage10write_args0EBa_.exit.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i
  %i.cl = phi ptr [ %7, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ %i.cd, %.lr.ph.i.i ] ; 4 uses
  %i.cm = phi ptr [ %8, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i ] ; 2 uses
  %i.cn = phi i64 [ %9, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ 0, %.lr.ph.i.i ] ; 6 uses
  %i.co = phi ptr [ %10, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i ] ; 3 uses
  %i.cp = phi ptr [ %11, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ %i.cd, %.lr.ph.i.i ] ; 5 uses
  %i.cq = phi i64 [ %i.es, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i ], [ 1, %.lr.ph.i.i ] ; 2 uses
  %5 = add nsw i64 %i.cq, -1                      ; 3 uses
  store i64 %5, ptr %i.by, align 8, !noalias !7253
  %6 = load i64, ptr %i.b, align 8, !range !11, !noalias !7253, !noundef !10
  %i.cr = icmp samesign ult i64 %5, %6
  call void @llvm.assume(i1 %i.cr)
  %i.cs = icmp samesign ult i64 %i.cq, 1152921504606846977
  call void @llvm.assume(i1 %i.cs)
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.cp, i64 %5
  %i.cu = load ptr, ptr %i.ct, align 8, !noalias !7255, !nonnull !10, !align !16, !noundef !10 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7256)
  %.idx.i.i.i = shl nuw nsw i64 %i.cn, 3
  %i.cv = getelementptr inbounds nuw i8, ptr %i.co, i64 %.idx.i.i.i
  %.not.i.i.i.i = icmp eq i64 %i.cn, 0
  br i1 %.not.i.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.split.i.i
  %i.cw = getelementptr i8, ptr %i.cu, i64 8
  %.val3.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !noalias !7262, !noundef !10 ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.cx = phi ptr [ %i.co, %.lr.ph.i.i.i.i ], [ %i.cy, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i ] ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 8 ; 2 uses
  %.val2.i.i.i.i = load ptr, ptr %i.cx, align 8, !alias.scope !7256, !noalias !7263, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.cz = getelementptr i8, ptr %.val2.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i = load i64, ptr %i.cz, align 8, !noalias !7262, !noundef !10
  %i.da = icmp eq i64 %.val1.i.i.i.i.i.i, %.val3.i.i.i.i.i.i
  br i1 %i.da, label %.split.i.i.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i

.split.i.i.i.i:                                   ; preds = %bb.o
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.cu, align 8, !noalias !7262, !nonnull !10, !noundef !10
  %.val.i.i.i.i.i.i = load ptr, ptr %.val2.i.i.i.i, align 8, !noalias !7262, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i), !noalias !7262
  %i.db = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i, %bb.o
  %.not6.i.i.i.i = icmp eq ptr %i.cy, %i.cv
  br i1 %.not6.i.i.i.i, label %.loopexit.i.i, label %bb.o

.loopexit.i.i:                                    ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i, %.lr.ph.split.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7257)
  %i.dc = load i64, ptr %i.c, align 8, !range !11, !alias.scope !7257, !noalias !7253, !noundef !10
  %i.dd = icmp eq i64 %i.cn, %i.dc
  br i1 %i.dd, label %bb.p, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i

bb.p:                                             ; preds = %.loopexit.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.c) #42, !noalias !7258
  %.pre.i.i.a = load ptr, ptr %i.bv, align 8, !alias.scope !7257, !noalias !7253
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i: ; preds = %bb.p, %.loopexit.i.i
  %i.de = phi ptr [ %i.cm, %.loopexit.i.i ], [ %.pre.i.i.a, %bb.p ] ; 9 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.de, i64 %i.cn
  store ptr %i.cu, ptr %i.df, align 8, !noalias !7259, !captures !21
  %i.dg = add i64 %i.cn, 1                        ; 5 uses
  store i64 %i.dg, ptr %i.bw, align 8, !alias.scope !7257, !noalias !7253
  call void @llvm.experimental.noalias.scope.decl(metadata !7260)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val174.i) ]
  %i.dh = getelementptr inbounds nuw i8, ptr %i.cu, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !alias.scope !7260, !noalias !7264, !noundef !10 ; 2 uses
  %i.dj = load ptr, ptr %i.cu, align 8, !alias.scope !7260, !noalias !7255, !nonnull !10
  br label %bb.q

bb.q:                                             ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i
  %i.dk = phi ptr [ %.val174.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i ], [ %i.dl, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ] ; 5 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 600 ; 2 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dk, i64 544
  %i.dn = load i64, ptr %i.dm, align 8, !noalias !7265, !noundef !10
  %i.do = icmp eq i64 %i.dn, %i.di
  br i1 %i.do, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i: ; preds = %bb.q
  %i.dp = getelementptr inbounds nuw i8, ptr %i.dk, i64 536
  %i.dq = load ptr, ptr %i.dp, align 8, !noalias !7265, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.dq, ptr nonnull %i.dj, i64 %i.di), !noalias !7266
  %i.dr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.dr, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, %bb.q
  %i.ds = icmp eq ptr %i.dl, %i.cf
  br i1 %i.ds, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i, label %bb.q

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dk, i64 184
  %i.du = load ptr, ptr %i.dt, align 8, !noalias !7254, !nonnull !10, !noundef !10 ; 2 uses
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dk, i64 192
  %i.dw = load i64, ptr %i.dv, align 8, !noalias !7254, !noundef !10 ; 2 uses
  %.idx487.i.a = shl nuw nsw i64 %i.dw, 5
  %i.dx = getelementptr inbounds nuw i8, ptr %i.du, i64 %.idx487.i.a ; 2 uses
  %i.dy = icmp eq i64 %i.dw, 0
  br i1 %i.dy, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i, label %.lr.ph.i.i.preheader.i

.lr.ph.i.i.preheader.i:                           ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i
  %.sroa.01.0.i473.i = phi ptr [ %i.ed, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.du, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ]
  %i.dz = phi ptr [ %i.fg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.cp, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ] ; 3 uses
  %i.ea = phi ptr [ %i.ff, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.cl, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ] ; 4 uses
  br label %.lr.ph.i.i.i

bb.r:                                             ; preds = %.lr.ph.i.i.i
  %i.eb = icmp eq ptr %i.ed, %i.dx
  br i1 %i.eb, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.r, %.lr.ph.i.i.preheader.i
  %i.ec = phi ptr [ %i.ed, %bb.r ], [ %.sroa.01.0.i473.i, %.lr.ph.i.i.preheader.i ] ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.ec, i64 32 ; 4 uses
  %i.ee = load ptr, ptr %i.ec, align 8, !alias.scope !7267, !noalias !7268, !noundef !10
  %.not.i.i.i = icmp eq ptr %i.ee, null
  br i1 %.not.i.i.i, label %.lr.ph.i.i23.preheader.i.i, label %bb.r

.lr.ph.i.i23.preheader.i.i:                       ; preds = %.lr.ph.i.i.i
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 24
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !7267, !noalias !7268 ; 3 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.ei = load ptr, ptr %i.eh, align 8, !alias.scope !7267, !noalias !7268, !nonnull !10 ; 2 uses
  br label %.lr.ph.i.i23.i.i

.lr.ph.i.i23.i.i:                                 ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i, %.lr.ph.i.i23.preheader.i.i
  %i.ej = phi ptr [ %i.ek, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i ], [ %.val174.i, %.lr.ph.i.i23.preheader.i.i ] ; 5 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %i.ej, i64 600 ; 2 uses
  %i.el = getelementptr inbounds nuw i8, ptr %i.ej, i64 544
  %i.em = load i64, ptr %i.el, align 8, !noalias !7269, !noundef !10
  %i.en = icmp eq i64 %i.em, %i.eg
  br i1 %i.en, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i26.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i26.i.i: ; preds = %.lr.ph.i.i23.i.i
  %i.eo = getelementptr inbounds nuw i8, ptr %i.ej, i64 536
  %i.ep = load ptr, ptr %i.eo, align 8, !noalias !7269, !nonnull !10, !noundef !10
  %bcmp.i.i.i27.i.i = call i32 @bcmp(ptr nonnull %i.ep, ptr nonnull %i.ei, i64 %i.eg), !noalias !7270
  %i.eq = icmp eq i32 %bcmp.i.i.i27.i.i, 0
  br i1 %i.eq, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i26.i.i, %.lr.ph.i.i23.i.i
  %i.er = icmp eq ptr %i.ek, %i.cf
  br i1 %i.er, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i, label %.lr.ph.i.i23.i.i

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i: ; preds = %.split.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i, %bb.r, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i
  %7 = phi ptr [ %i.cl, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %i.ea, %bb.r ], [ %i.ff, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.cl, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ], [ %i.cl, %.split.i.i.i.i ]
  %8 = phi ptr [ %i.de, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %i.de, %bb.r ], [ %i.de, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.de, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ], [ %i.cm, %.split.i.i.i.i ]
  %9 = phi i64 [ %i.dg, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %i.dg, %bb.r ], [ %i.dg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.dg, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ], [ %i.cn, %.split.i.i.i.i ]
  %10 = phi ptr [ %i.de, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %i.de, %bb.r ], [ %i.de, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.de, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ], [ %i.co, %.split.i.i.i.i ]
  %11 = phi ptr [ %i.cp, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %i.dz, %bb.r ], [ %i.fg, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i ], [ %i.cp, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i ], [ %i.cp, %.split.i.i.i.i ]
  %i.es = load i64, ptr %i.by, align 8, !noalias !7253, !noundef !10 ; 2 uses
  %i.et = icmp eq i64 %i.es, 0
  br i1 %i.et, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i, label %.lr.ph.split.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i26.i.i
  %i.eu = getelementptr inbounds nuw i8, ptr %i.ej, i64 536
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ej, i64 192
  %i.ew = load i64, ptr %i.ev, align 8, !noalias !7254, !noundef !10 ; 2 uses
  %i.ex = icmp ult i64 %i.ew, 288230376151711744
  call void @llvm.assume(i1 %i.ex)
  %i.ey = icmp eq i64 %i.ew, 0
  br i1 %i.ey, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i, label %bb.s

bb.s:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7271)
  %i.ez = load i64, ptr %i.by, align 8, !alias.scope !7271, !noalias !7253, !noundef !10 ; 3 uses
  %i.fa = load i64, ptr %i.b, align 8, !range !11, !alias.scope !7271, !noalias !7253, !noundef !10
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br i1 %i.fb, label %bb.t, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i

bb.t:                                             ; preds = %bb.s
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b) #42, !noalias !7272
  %.pre27.i.i = load ptr, ptr %i.bx, align 8, !alias.scope !7271, !noalias !7253
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i: ; preds = %bb.t, %bb.s
  %i.fc = phi ptr [ %i.ea, %bb.s ], [ %.pre27.i.i, %bb.t ] ; 3 uses
  %i.fd = getelementptr inbounds nuw [8 x i8], ptr %i.fc, i64 %i.ez
  store ptr %i.eu, ptr %i.fd, align 8, !noalias !7273, !captures !21
  %i.fe = add i64 %i.ez, 1
  store i64 %i.fe, ptr %i.by, align 8, !alias.scope !7271, !noalias !7253
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i
  %i.ff = phi ptr [ %i.fc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i ], [ %i.ea, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i ], [ %i.ea, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i ] ; 2 uses
  %i.fg = phi ptr [ %i.fc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit29.i.i ], [ %i.dz, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.i.i ], [ %i.dz, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i24.i.i ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !7274)
  %i.fh = load i64, ptr %i.ca, align 8, !alias.scope !7274, !noalias !7253, !noundef !10 ; 3 uses
  %i.fi = load i64, ptr %i.a, align 8, !range !11, !alias.scope !7274, !noalias !7253, !noundef !10
  %i.fj = icmp eq i64 %i.fh, %i.fi
  br i1 %i.fj, label %bb.u, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

bb.u:                                             ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #42, !noalias !7275
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i: ; preds = %bb.u, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit28.thread.i.i
  %i.fk = load ptr, ptr %i.bz, align 8, !alias.scope !7274, !noalias !7253, !nonnull !10, !noundef !10
  %i.fl = getelementptr inbounds nuw [16 x i8], ptr %i.fk, i64 %i.fh ; 2 uses
  store ptr %i.ei, ptr %i.fl, align 8, !noalias !7276
  %i.fm = getelementptr inbounds nuw i8, ptr %i.fl, i64 8
  store i64 %i.eg, ptr %i.fm, align 8, !noalias !7277
  %i.fn = add i64 %i.fh, 1
  store i64 %i.fn, ptr %i.ca, align 8, !alias.scope !7274, !noalias !7253
  %i.fo = icmp eq ptr %i.ed, %i.dx
  br i1 %i.fo, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i, label %.lr.ph.i.i.preheader.i

_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMs_NtNtBa_6output5usageNtB1x_5Usage10write_args0EBa_.exit.i: ; preds = %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7253
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload618.i) ]
  %i.fp = icmp ult i64 %.sroa.5.0.copyload616.i, 576460752303423488
  call void @llvm.assume(i1 %i.fp)
  %.idx488.i.a = shl nuw nsw i64 %.sroa.5.0.copyload616.i, 4
  %i.fq = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload618.i, i64 %.idx488.i.a
  %i.fr = icmp eq i64 %.sroa.5.0.copyload616.i, 0
  br i1 %i.fr, label %._crit_edge.i, label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMs_NtNtBa_6output5usageNtB1x_5Usage10write_args0EBa_.exit.i
  %.pre.i = load i64, ptr %i.bm, align 8, !alias.scope !7278, !noalias !7251
  %.pre531.i = load i64, ptr %i.w, align 8, !range !11, !alias.scope !7278, !noalias !7251
  br label %.lr.ph.i

._crit_edge479.i:                                 ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i, %bb.j
  %i.fs = phi i64 [ 0, %bb.j ], [ %i.gy, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i ]
  %i.ft = phi ptr [ inttoptr (i64 8 to ptr), %bb.j ], [ %i.gv, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !7251
  store i64 0, ptr %i.v, align 8, !noalias !7251
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !7251
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 16 ; 3 uses
  store i64 0, ptr %.sroa.548.0..sroa_idx.i, align 8, !noalias !7251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !7251
  store i64 0, ptr %i.u, align 8, !noalias !7251
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 5 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.450.0..sroa_idx.i, align 8, !noalias !7251
  %.sroa.551.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 5 uses
  store i64 0, ptr %.sroa.551.0..sroa_idx.i, align 8, !noalias !7251
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %i.fs
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %2, i64 %3 ; 2 uses
  %i.fw = getelementptr i8, ptr %i.al, i64 208
  %i.fx = getelementptr i8, ptr %i.al, i64 216
  %i.fy = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.fz = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.44.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.outer

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.outer: ; preds = %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit.i, %._crit_edge479.i
  %.val185.i.ph = phi i64 [ %.pre11.i541.i, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit.i ], [ 0, %._crit_edge479.i ] ; 5 uses
  %.pre.i333.i.ph = phi ptr [ %.pre.i333536.i, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit.i ], [ inttoptr (i64 8 to ptr), %._crit_edge479.i ] ; 3 uses
  %.sroa.7346.0.i.ph = phi ptr [ %.sroa.7346.1.ph.i, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit.i ], [ %2, %._crit_edge479.i ]
  %.sroa.0344.0.i.ph = phi ptr [ %.sroa.0344.1392.ph.i, %_RINvXs2_NtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB6_7FlatSetNtNtB8_2id2IdEINtNtNtNtCsj6eKBz9Db1c_4core4iter6traits7collect6ExtendB14_E6extendINtNtCs4wP2HXfJTCR_5alloc3vec3VecB14_EEBa_.exit.i ], [ %i.ft, %._crit_edge479.i ]
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i

.lr.ph.i:                                         ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i, %.lr.ph.preheader.i
  %i.ga = phi i64 [ %i.gh, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %.pre531.i, %.lr.ph.preheader.i ] ; 2 uses
  %i.gb = phi i64 [ %i.gl, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %.pre.i, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.4341.0475.i = phi ptr [ %i.gc, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i ], [ %.sroa.4.0.copyload618.i, %.lr.ph.preheader.i ] ; 3 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %.sroa.4341.0475.i, i64 16 ; 2 uses
  %i.gd = load ptr, ptr %.sroa.4341.0475.i, align 8, !noalias !7279, !nonnull !10, !noundef !10
  %i.ge = getelementptr inbounds nuw i8, ptr %.sroa.4341.0475.i, i64 8
  %i.gf = load i64, ptr %i.ge, align 8, !noalias !7279, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !7278)
  %i.gg = icmp eq i64 %i.gb, %i.ga
  br i1 %i.gg, label %bb.v, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

bb.v:                                             ; preds = %.lr.ph.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #42, !noalias !7280
  %.pre530.i = load i64, ptr %i.w, align 8, !range !11, !alias.scope !7278, !noalias !7251
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i: ; preds = %bb.v, %.lr.ph.i
  %i.gh = phi i64 [ %i.ga, %.lr.ph.i ], [ %.pre530.i, %bb.v ]
  %i.gi = load ptr, ptr %i.bl, align 8, !alias.scope !7278, !noalias !7251, !nonnull !10, !noundef !10
  %i.gj = getelementptr inbounds nuw [16 x i8], ptr %i.gi, i64 %i.gb ; 2 uses
  store ptr %i.gd, ptr %i.gj, align 8, !noalias !7281
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 8
  store i64 %i.gf, ptr %i.gk, align 8, !noalias !7282
  %i.gl = add i64 %i.gb, 1                        ; 2 uses
  store i64 %i.gl, ptr %i.bm, align 8, !alias.scope !7278, !noalias !7251
  %i.gm = icmp eq ptr %i.gc, %i.fq
  br i1 %i.gm, label %._crit_edge.i, label %.lr.ph.i

._crit_edge.i:                                    ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i, %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMs_NtNtBa_6output5usageNtB1x_5Usage10write_args0EBa_.exit.i
  %i.gn = icmp eq i64 %.sroa.0.0.copyload620.i, 0
  br i1 %i.gn, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i, label %bb.w

bb.w:                                             ; preds = %._crit_edge.i
  %i.go = shl nuw i64 %.sroa.0.0.copyload620.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload618.i, i64 noundef %i.go, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !7283
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i: ; preds = %bb.w, %._crit_edge.i
  %i.gp = load ptr, ptr %i.cc, align 8, !noalias !7252, !nonnull !10, !noundef !10
  %i.gq = getelementptr inbounds nuw i8, ptr %.sroa.03.0476.i, i64 32
  %i.gr = load i64, ptr %i.gq, align 8, !noalias !7252, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !7284)
  %i.gs = load i64, ptr %i.bm, align 8, !alias.scope !7284, !noalias !7251, !noundef !10 ; 3 uses
  %i.gt = load i64, ptr %i.w, align 8, !range !11, !alias.scope !7284, !noalias !7251, !noundef !10
  %i.gu = icmp eq i64 %i.gs, %i.gt
  br i1 %i.gu, label %bb.x, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i

bb.x:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.w) #42, !noalias !7285
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit192.i: ; preds = %bb.x, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i
  %i.gv = load ptr, ptr %i.bl, align 8, !alias.scope !7284, !noalias !7251, !nonnull !10, !noundef !10 ; 2 uses
  %i.gw = getelementptr inbounds nuw [16 x i8], ptr %i.gv, i64 %i.gs ; 2 uses
  store ptr %i.gp, ptr %i.gw, align 8, !noalias !7286
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 8
  store i64 %i.gr, ptr %i.gx, align 8, !noalias !7287
  %i.gy = add i64 %i.gs, 1                        ; 2 uses
  store i64 %i.gy, ptr %i.bm, align 8, !alias.scope !7284, !noalias !7251
  %i.gz = icmp eq ptr %i.cb, %i.br
  br i1 %i.gz, label %._crit_edge479.i, label %bb.k

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.outer
  %.sroa.7346.0.i = phi ptr [ %.sroa.7346.0.i.ph, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.outer ], [ %.sroa.7346.1.ph.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge ] ; 4 uses
  %.sroa.0344.0.i = phi ptr [ %.sroa.0344.0.i.ph, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.outer ], [ %.sroa.0344.1392.ph.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge ] ; 4 uses
  %.not.i.i = icmp eq ptr %.sroa.0344.0.i, null
  %i.ha = icmp eq ptr %.sroa.0344.0.i, %i.fu
  %or.cond.i = select i1 %.not.i.i, i1 true, i1 %i.ha
  br i1 %or.cond.i, label %select.unfold.i, label %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i

_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i: ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i
  %i.hb = getelementptr inbounds nuw i8, ptr %.sroa.0344.0.i, i64 16
  br label %bb.z

select.unfold.i:                                  ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i
  %i.hc = icmp eq ptr %.sroa.7346.0.i, %i.fv
  br i1 %i.hc, label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i, label %bb.y

bb.y:                                             ; preds = %select.unfold.i
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.7346.0.i, i64 16
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i
  %.sroa.0344.1392.ph.i = phi ptr [ %i.hb, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i ], [ null, %bb.y ] ; 2 uses
  %.sroa.7346.1.ph.i = phi ptr [ %.sroa.7346.0.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i ], [ %i.hd, %bb.y ] ; 2 uses
  %.sroa.0.0.i195.ph.i = phi ptr [ %.sroa.0344.0.i, %_RINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters5chain17and_then_or_clearINtNtNtB8_5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdERB1u_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB1A_.exit.i ], [ %.sroa.7346.0.i, %bb.y ] ; 4 uses
  %.val178.i = load ptr, ptr %i.fw, align 8, !noalias !7252, !nonnull !10, !noundef !10 ; 2 uses
  %.val179.i = load i64, ptr %i.fx, align 8, !noalias !7252, !noundef !10 ; 2 uses
  %.val180.i = load ptr, ptr %.sroa.0.0.i195.ph.i, align 8, !noalias !7252
  %i.he = getelementptr i8, ptr %.sroa.0.0.i195.ph.i, i64 8
  %.val181.i = load i64, ptr %i.he, align 8, !noalias !7252 ; 2 uses
  %.idx.i.i = mul nuw nsw i64 %.val179.i, 96
  %i.hf = getelementptr inbounds nuw i8, ptr %.val178.i, i64 %.idx.i.i
  %i.hg = icmp eq i64 %.val179.i, 0
  br i1 %i.hg, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge, label %.lr.ph.i.i197.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i, %bb.z
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i

.lr.ph.i.i197.i:                                  ; preds = %bb.z, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i
  %i.hh = phi ptr [ %i.hi, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i ], [ %.val178.i, %bb.z ] ; 3 uses
  %i.hi = getelementptr inbounds nuw i8, ptr %i.hh, i64 96 ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 80
  %i.hk = load i64, ptr %i.hj, align 8, !noalias !7288, !noundef !10
  %i.hl = icmp eq i64 %i.hk, %.val181.i
  br i1 %i.hl, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i: ; preds = %.lr.ph.i.i197.i
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 72
  %i.hn = load ptr, ptr %i.hm, align 8, !noalias !7288, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i = call i32 @bcmp(ptr nonnull %i.hn, ptr nonnull readonly %.val180.i, i64 %.val181.i), !noalias !7288
  %i.ho = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.ho, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i, %.lr.ph.i.i197.i
  %i.hp = icmp eq ptr %i.hi, %i.hf
  br i1 %i.hp, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.thread.i.backedge, label %.lr.ph.i.i197.i

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i: ; preds = %select.unfold.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !7251
  store i64 0, ptr %i.r, align 8, !noalias !7251
  %.sroa.453.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.453.0..sroa_idx.i, align 8, !noalias !7251
  %.sroa.554.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  store i64 0, ptr %.sroa.554.0..sroa_idx.i, align 8, !noalias !7251
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !7251
  store i64 0, ptr %i.q, align 8, !noalias !7251
  %i.hq = getelementptr inbounds nuw i8, ptr %i.q, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.hq, align 8, !noalias !7251
  %i.hr = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 6 uses
  store i64 0, ptr %i.hr, align 8, !noalias !7251
  %i.hs = load ptr, ptr %i.bl, align 8, !noalias !7251, !nonnull !10, !noundef !10 ; 2 uses
  %i.ht = load i64, ptr %i.bm, align 8, !noalias !7251, !noundef !10
  %i.hu = getelementptr inbounds nuw [16 x i8], ptr %i.hs, i64 %i.ht
  %i.hv = getelementptr i8, ptr %i.al, i64 136    ; 2 uses
  %i.hw = getelementptr i8, ptr %i.al, i64 144    ; 2 uses
  %.val184.i = load ptr, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !7251, !nonnull !10 ; 2 uses
  %.idx.i297.i = shl nuw nsw i64 %.val185.i.ph, 4
  %i.hx = getelementptr inbounds nuw i8, ptr %.val184.i, i64 %.idx.i297.i
  %.not.i298.i = icmp eq i64 %.val185.i.ph, 0
  %i.hy = zext i1 %4 to i8
  %i.hz = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ia = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  br label %_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB3_7FlatSetNtNtB5_2id2IdE8containsB11_EB7_.exit308.i.outer

_RINvMNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_setINtB3_7FlatSetNtNtB5_2id2IdE8containsB11_EB7_.exit308.i.outer: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i.i, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i
  %.val1.i.i258.i.ph = phi i64 [ %i.so, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i.i ], [ 0, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i ] ; 10 uses
  %.ph = phi ptr [ %i.sm, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i.i ], [ inttoptr (i64 8 to ptr), %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i ] ; 3 uses
  %.sroa.7353.0.i.ph = phi ptr [ %.sroa.7353.1.ph.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i.i ], [ %2, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i ]
  %.sroa.0351.0.i.ph = phi ptr [ %.sroa.0351.1407.ph.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder7builder10styled_str9StyledStrE8push_mutBL_.exit.i.i ], [ %i.hs, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB1I_5ChainINtNtNtB5_5slice4iter4IterBJ_EB2o_ENtNtNtB1M_6traits8iterator8Iterator4next0EBP_.exit.i ]
  %.idx.i309.i = mul nuw nsw i64 %.val1.i.i258.i.ph, 24
end_hunk_1
begin_hunk_2_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i, i64 noundef %i.cfo, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10591
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i: ; preds = %bb.pa, %.lr.ph.i.i.i.i.i.i
  %i.cfp = icmp eq i64 %i.cfl, %.val1.i2.i.i.i
  br i1 %i.cfp, label %_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i, label %.lr.ph.i.i.i.i.i.i

_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecIBw_NtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBP_.exit.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i.i
  %.val2.i.i.i.i = load i64, ptr %i.cfg, align 8, !range !11, !alias.scope !10586, !noalias !10553, !noundef !10 ; 2 uses
  %i.cfq = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.cfq, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator8validate.exit.sink.split

bb.pb:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filterINtB5_6FilterINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB17_2id2IdNtNtNtNtB19_6parser7matches11matched_arg10MatchedArgENCNvMNtB2e_9validatorNtB34_9Validator8validate0ENtNtNtB9_6traits8iterator8Iterator5countB19_.exit.i, %bb.ov
  %i.cfr = and i32 %.val28.i, 512
  %.not.i32.i = icmp ne i32 %i.cfr, 0
  %i.cfs = and i32 %.val29.i, 512
  %i.cft = icmp ne i32 %i.cfs, 0
  %.sroa.0.0.i33.i = select i1 %.not.i32.i, i1 true, i1 %i.cft
  br i1 %.sroa.0.0.i33.i, label %bb.pe, label %bb.pd

bb.pc:                                            ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts9with_args.exit.i
  %i.cfu = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not18.i = icmp eq ptr %i.cfu, null
  br i1 %.not18.i, label %bb.vc, label %bb.oy

bb.pd:                                            ; preds = %bb.pb
  %i.cfv = call fastcc noundef align 8 ptr @_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator18validate_conflicts(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei) #43 ; 2 uses
  %.not16.i = icmp eq ptr %i.cfv, null
  br i1 %.not16.i, label %bb.pg, label %bb.oy

bb.pe:                                            ; preds = %bb.pb
  %i.cfw = getelementptr inbounds nuw i8, ptr %i.cdv, i64 296
  %i.cfx = load i64, ptr %i.cfw, align 8, !range !12, !alias.scope !10592, !noalias !10552, !noundef !10
  %.not.i34.i = icmp eq i64 %i.cfx, -1            ; 2 uses
  %.sroa.3.0.in.v.i.i = select i1 %.not.i34.i, i64 568, i64 312
  %.sroa.3.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.3.0.in.v.i.i
  %.sroa.0.0.in.v.i.i = select i1 %.not.i34.i, i64 560, i64 304
  %.sroa.0.0.in.i.i = getelementptr inbounds nuw i8, ptr %i.cdv, i64 %.sroa.0.0.in.v.i.i
  %.sroa.0.0.i35.i = load ptr, ptr %.sroa.0.0.in.i.i, align 8, !alias.scope !10592, !noalias !10552, !nonnull !10, !noundef !10
  %.sroa.3.0.i36.i = load i64, ptr %.sroa.3.0.in.i.i, align 8, !alias.scope !10592, !noalias !10552, !noundef !10 ; 7 uses
  %.not.i37.i = icmp slt i64 %.sroa.3.0.i36.i, 0
  br i1 %.not.i37.i, label %bb.ub, label %bb.pf, !prof !20

bb.pf:                                            ; preds = %bb.pe
  %i.cfy = icmp eq i64 %.sroa.3.0.i36.i, 0
  br i1 %i.cfy, label %_RNvMs5_NtCs4wP2HXfJTCR_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsfu0rQaTkGUu_12clap_builder.exit.thread156.i, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.pf
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10593
  %i.cfz = call noundef ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) %.sroa.3.0.i36.i, i64 noundef range(i64 1, 9) 1) #43, !noalias !10593 ; 3 uses
  %i.cga = icmp eq ptr %i.cfz, null
  br i1 %i.cga, label %bb.ub, label %bb.vb

bb.pg:                                            ; preds = %bb.vc, %bb.pd
  call void @llvm.experimental.noalias.scope.decl(metadata !10594)
  call void @llvm.experimental.noalias.scope.decl(metadata !10595)
  %i.cgb = getelementptr inbounds nuw i8, ptr %i.eb, i64 8 ; 3 uses
  %i.cgc = getelementptr inbounds nuw i8, ptr %i.eb, i64 16 ; 2 uses
  %i.cgd = getelementptr inbounds nuw i8, ptr %i.ea, i64 8 ; 3 uses
  %i.cge = getelementptr inbounds nuw i8, ptr %i.ea, i64 16 ; 4 uses
  %i.cgf = getelementptr inbounds nuw i8, ptr %i.dz, i64 8 ; 3 uses
  %i.cgg = getelementptr inbounds nuw i8, ptr %i.dz, i64 16 ; 4 uses
  %i.cgh = getelementptr inbounds nuw i8, ptr %i.dy, i64 8
  %i.cgi = getelementptr inbounds nuw i8, ptr %i.dy, i64 16
  %i.cgj = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.cgk = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.cgl = getelementptr inbounds nuw i8, ptr %i.gb, i64 8 ; 5 uses
  %i.cgm = getelementptr inbounds nuw i8, ptr %i.gb, i64 16 ; 5 uses
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, %bb.pg
  %i.cgn = phi ptr [ %i.ccs, %bb.pg ], [ %i.cgs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 6 uses
  %i.cgo = phi ptr [ %i.ccn, %bb.pg ], [ %i.cgr, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge ] ; 4 uses
  %i.cgp = icmp eq ptr %i.cgo, %i.ccq
  br i1 %i.cgp, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i, label %bb.ph

bb.ph:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i
  %i.cgq = icmp eq ptr %i.cgn, %i.ccv
  br i1 %i.cgq, label %bb.pi, label %bb.pj, !prof !18

bb.pi:                                            ; preds = %bb.ph
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10596
  unreachable

bb.pj:                                            ; preds = %bb.ph
  %i.cgr = getelementptr inbounds nuw i8, ptr %i.cgo, i64 16
  %i.cgs = getelementptr inbounds nuw i8, ptr %i.cgn, i64 104
  %i.cgt = getelementptr inbounds nuw i8, ptr %i.cgn, i64 97
  %i.cgu = load i8, ptr %i.cgt, align 1, !range !38, !alias.scope !10597, !noalias !10598, !noundef !10
  %cond.i.i.i.not.i.i.i.i.i = icmp eq i8 %i.cgu, 0
  br i1 %cond.i.i.i.not.i.i.i.i.i, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %bb.pk

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i, %bb.pj, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i, %bb.qc, %._crit_edge.i.i.i, %.loopexit.i.i.i
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i

bb.pk:                                            ; preds = %bb.pj
  %i.cgv = load ptr, ptr %i.cck, align 8, !alias.scope !10599, !nonnull !10, !align !16, !noundef !10 ; 4 uses
  %i.cgw = getelementptr i8, ptr %i.cgv, i64 136
  %.val.i.i40.i = load ptr, ptr %i.cgw, align 8, !noalias !10600, !nonnull !10, !noundef !10 ; 4 uses
  %i.cgx = getelementptr i8, ptr %i.cgv, i64 144
  %.val20.i.i.i = load i64, ptr %i.cgx, align 8, !noalias !10600, !noundef !10 ; 2 uses
  %.idx.i.i.i.i = mul nuw nsw i64 %.val20.i.i.i, 600
  %i.cgy = getelementptr inbounds nuw i8, ptr %.val.i.i40.i, i64 %.idx.i.i.i.i ; 3 uses
  %i.cgz = icmp eq i64 %.val20.i.i.i, 0
  %.val25.pre.i.i.i = load ptr, ptr %i.cgo, align 8, !noalias !10600 ; 2 uses
  %.phi.trans.insert.i.i.i = getelementptr i8, ptr %i.cgo, i64 8
  %.val26.pre.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i, align 8, !noalias !10600 ; 4 uses
  br i1 %i.cgz, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.pk, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i
  %i.cha = phi ptr [ %i.chb, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i ], [ %.val.i.i40.i, %bb.pk ] ; 4 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.cha, i64 600 ; 2 uses
  %i.chc = getelementptr inbounds nuw i8, ptr %i.cha, i64 544
  %i.chd = load i64, ptr %i.chc, align 8, !noalias !10601, !noundef !10
  %i.che = icmp eq i64 %i.chd, %.val26.pre.i.i.i
  br i1 %i.che, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i
  %i.chf = getelementptr inbounds nuw i8, ptr %i.cha, i64 536
  %i.chg = load ptr, ptr %i.chf, align 8, !noalias !10601, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.chg, ptr nonnull %.val25.pre.i.i.i, i64 %.val26.pre.i.i.i), !noalias !10601
  %i.chh = icmp eq i32 %bcmp.i.i.i.i.i.i, 0
  br i1 %i.chh, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i, %.lr.ph.i.i.i.i.i
  %i.chi = icmp eq ptr %i.chb, %i.cgy
  br i1 %i.chi, label %.loopexit.i.i.i, label %.lr.ph.i.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10602)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.eb), !noalias !10603
  store i64 0, ptr %i.eb, align 8, !noalias !10603
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgb, align 8, !noalias !10603
  store i64 0, ptr %i.cgc, align 8, !noalias !10603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ea), !noalias !10603
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #43, !noalias !10604
  %i.chj = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 8, i64 noundef range(i64 1, 9) 8) #43, !noalias !10604 ; 5 uses
  %i.chk = icmp eq ptr %i.chj, null
  br i1 %i.chk, label %bb.pl, label %.lr.ph.i.i.i.i, !prof !32

bb.pl:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i
  call void @_RNvNtCs4wP2HXfJTCR_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 8) #46, !noalias !10605
  unreachable

.lr.ph.i.i.i.i:                                   ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i
  %i.chl = getelementptr inbounds nuw i8, ptr %i.cha, i64 536
  store ptr %i.chl, ptr %i.chj, align 8, !noalias !10604
  store i64 1, ptr %i.ea, align 8, !noalias !10603
  store ptr %i.chj, ptr %i.cgd, align 8, !noalias !10603
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dz), !noalias !10603
  store i64 0, ptr %i.dz, align 8, !noalias !10603
  store ptr inttoptr (i64 8 to ptr), ptr %i.cgf, align 8, !noalias !10603
  store i64 0, ptr %i.cgg, align 8, !noalias !10603
  %i.chm = getelementptr inbounds nuw i8, ptr %i.cgn, i64 80
  %i.chn = load ptr, ptr %i.chm, align 8, !alias.scope !10602, !noalias !10600, !nonnull !10 ; 3 uses
  %i.cho = getelementptr inbounds nuw i8, ptr %i.cgn, i64 88
  %i.chp = load i64, ptr %i.cho, align 8, !alias.scope !10602, !noalias !10600
  %.fr.i.i.i.i = freeze i64 %i.chp                ; 2 uses
  %.idx17.i.i.i.i.i = mul nuw nsw i64 %.fr.i.i.i.i, 24
  %i.chq = getelementptr inbounds nuw i8, ptr %i.chn, i64 %.idx17.i.i.i.i.i ; 2 uses
  %.not.not.not.i.not.not.i.i.i.i.i.i15.i.i.i.i.i = icmp eq i64 %.fr.i.i.i.i, 0
  %i.chr = getelementptr inbounds nuw i8, ptr %i.cgn, i64 96
  %i.chs = load i8, ptr %i.chr, align 8, !range !33, !alias.scope !10602, !noalias !10600
  %.fr39.i.i.i.i = freeze i8 %i.chs
  %i.cht = trunc i8 %.fr39.i.i.i.i to i1
  br label %.lr.ph.split.i.i.i.i

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i.i.i: ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i
  %.sroa.064.0.copyload.i.i.i = load i64, ptr %i.dz, align 8, !noalias !10606 ; 2 uses
  %.sroa.465.0.copyload.i.i.i = load ptr, ptr %i.cgf, align 8, !noalias !10606 ; 4 uses
  %.sroa.566.0.copyload.i.i.i = load i64, ptr %i.cgg, align 8, !noalias !10606 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dz), !noalias !10603
  %.val12.i.i.i.i = load i64, ptr %i.ea, align 8, !range !11, !noalias !10603, !noundef !10 ; 2 uses
  %i.chu = icmp eq i64 %.val12.i.i.i.i, 0
  br i1 %i.chu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i.i.i, label %bb.pm

bb.pm:                                            ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i.i.i
  %.val13.i.i.i.i = load ptr, ptr %i.cgd, align 8, !noalias !10603, !nonnull !10, !noundef !10
  %i.chv = shl nuw i64 %.val12.i.i.i.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val13.i.i.i.i, i64 noundef %i.chv, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10605
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i.i.i: ; preds = %bb.pm, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ea), !noalias !10603
  %.val.i.i.i42.i = load i64, ptr %i.eb, align 8, !range !11, !noalias !10603, !noundef !10 ; 2 uses
  %i.chw = icmp eq i64 %.val.i.i.i42.i, 0
  br i1 %i.chw, label %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_.exit.i.i.i, label %bb.pn

bb.pn:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i.i.i
  %.val11.i.i.i.i = load ptr, ptr %i.cgb, align 8, !noalias !10603, !nonnull !10, !noundef !10
  %i.chx = shl nuw i64 %.val.i.i.i42.i, 3
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val11.i.i.i.i, i64 noundef %i.chx, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10605
  br label %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_.exit.i.i.i

.lr.ph.split.i.i.i.i:                             ; preds = %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i, %.lr.ph.i.i.i.i
  %i.chy = phi ptr [ %i.clz, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ %i.chj, %.lr.ph.i.i.i.i ] ; 3 uses
  %i.chz = phi ptr [ %i.cma, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i ] ; 2 uses
  %i.cia = phi i64 [ %i.cmb, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i ] ; 6 uses
  %i.cib = phi ptr [ %i.cmc, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ inttoptr (i64 8 to ptr), %.lr.ph.i.i.i.i ] ; 3 uses
  %i.cic = phi ptr [ %i.cmd, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ %i.chj, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.cid = phi i64 [ %i.cme, %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i ], [ 1, %.lr.ph.i.i.i.i ] ; 2 uses
  %4 = add nsw i64 %i.cid, -1                     ; 3 uses
  store i64 %4, ptr %i.cge, align 8, !noalias !10603
  %5 = load i64, ptr %i.ea, align 8, !range !11, !noalias !10603, !noundef !10
  %i.cie = icmp samesign ult i64 %4, %5
  call void @llvm.assume(i1 %i.cie)
  %i.cif = icmp samesign ult i64 %i.cid, 1152921504606846977
  call void @llvm.assume(i1 %i.cif)
  %i.cig = getelementptr inbounds nuw [8 x i8], ptr %i.cic, i64 %4
  %i.cih = load ptr, ptr %i.cig, align 8, !noalias !10605, !nonnull !10, !align !16, !noundef !10 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10607)
  %.idx.i.i.i.i.i = shl nuw nsw i64 %i.cia, 3
  %i.cii = getelementptr inbounds nuw i8, ptr %i.cib, i64 %.idx.i.i.i.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.cia, 0
  br i1 %.not.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i.i41.i

.lr.ph.i.i.i.i.i41.i:                             ; preds = %.lr.ph.split.i.i.i.i
  %i.cij = getelementptr i8, ptr %i.cih, i64 8
  %.val3.i.i.i.i.i.i.i.i = load i64, ptr %i.cij, align 8, !noalias !10608, !noundef !10 ; 2 uses
  br label %bb.po

bb.po:                                            ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i41.i
  %i.cik = phi ptr [ %i.cib, %.lr.ph.i.i.i.i.i41.i ], [ %i.cil, %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i ] ; 2 uses
  %i.cil = getelementptr inbounds nuw i8, ptr %i.cik, i64 8 ; 2 uses
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.cik, align 8, !alias.scope !10607, !noalias !10609, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.cim = getelementptr i8, ptr %.val2.i.i.i.i.i.i, i64 8
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.cim, align 8, !noalias !10608, !noundef !10
  %i.cin = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, %.val3.i.i.i.i.i.i.i.i
  br i1 %i.cin, label %.split.i.i.i.i.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %bb.po
  %.val2.i.i.i.i.i.i.i.i = load ptr, ptr %i.cih, align 8, !noalias !10608, !nonnull !10, !noundef !10
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %.val2.i.i.i.i.i.i, align 8, !noalias !10608, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val2.i.i.i.i.i.i.i.i, i64 %.val3.i.i.i.i.i.i.i.i), !noalias !10608
  %i.cio = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cio, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i, label %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i

_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %bb.po
  %.not6.i.i.i.i.i.i = icmp eq ptr %i.cil, %i.cii
  br i1 %.not6.i.i.i.i.i.i, label %.loopexit.i.i.i.i, label %bb.po

.loopexit.i.i.i.i:                                ; preds = %_RNCNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB7_13SliceContains14slice_contains0BL_.exit.backedge.i.i.i.i.i.i, %.lr.ph.split.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10610)
  %i.cip = load i64, ptr %i.eb, align 8, !range !11, !alias.scope !10610, !noalias !10603, !noundef !10
  %i.ciq = icmp eq i64 %i.cia, %i.cip
  br i1 %i.ciq, label %bb.pp, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i.i.i

bb.pp:                                            ; preds = %.loopexit.i.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb) #42, !noalias !10611
  %.pre.i.i.i.i.a = load ptr, ptr %i.cgb, align 8, !alias.scope !10610, !noalias !10603
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i.i.i: ; preds = %bb.pp, %.loopexit.i.i.i.i
  %i.cir = phi ptr [ %i.chz, %.loopexit.i.i.i.i ], [ %.pre.i.i.i.i.a, %bb.pp ] ; 5 uses
  %i.cis = getelementptr inbounds nuw [8 x i8], ptr %i.cir, i64 %i.cia
  store ptr %i.cih, ptr %i.cis, align 8, !noalias !10612, !captures !21
  %i.cit = add i64 %i.cia, 1                      ; 3 uses
  store i64 %i.cit, ptr %i.cgc, align 8, !alias.scope !10610, !noalias !10603
  call void @llvm.experimental.noalias.scope.decl(metadata !10613)
  %i.ciu = getelementptr inbounds nuw i8, ptr %i.cih, i64 8
  %i.civ = load i64, ptr %i.ciu, align 8, !alias.scope !10613, !noalias !10614, !noundef !10 ; 2 uses
  %i.ciw = load ptr, ptr %i.cih, align 8, !alias.scope !10613, !noalias !10605, !nonnull !10
  br label %bb.pq

bb.pq:                                            ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i.i.i
  %i.cix = phi ptr [ %.val.i.i40.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit.i.i.i.i ], [ %i.ciy, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ] ; 5 uses
  %i.ciy = getelementptr inbounds nuw i8, ptr %i.cix, i64 600 ; 2 uses
  %i.ciz = getelementptr inbounds nuw i8, ptr %i.cix, i64 544
  %i.cja = load i64, ptr %i.ciz, align 8, !noalias !10615, !noundef !10
  %i.cjb = icmp eq i64 %i.cja, %i.civ
  br i1 %i.cjb, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i: ; preds = %bb.pq
  %i.cjc = getelementptr inbounds nuw i8, ptr %i.cix, i64 536
  %i.cjd = load ptr, ptr %i.cjc, align 8, !noalias !10615, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cjd, ptr nonnull %i.ciw, i64 %i.civ), !noalias !10616
  %i.cje = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.cje, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i, %bb.pq
  %i.cjf = icmp eq ptr %i.ciy, %i.cgy
  br i1 %i.cjf, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i, label %bb.pq

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i
  %i.cjg = getelementptr inbounds nuw i8, ptr %i.cix, i64 184
  %i.cjh = load ptr, ptr %i.cjg, align 8, !noalias !10604, !nonnull !10, !noundef !10 ; 2 uses
  %i.cji = getelementptr inbounds nuw i8, ptr %i.cix, i64 192
  %i.cjj = load i64, ptr %i.cji, align 8, !noalias !10604, !noundef !10
  %i.cjk = getelementptr inbounds nuw [32 x i8], ptr %i.cjh, i64 %i.cjj ; 8 uses
  br label %bb.pr

bb.pr:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i
  %i.cjl = phi ptr [ %i.chy, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i ], [ %i.cmr, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i ] ; 4 uses
  %i.cjm = phi ptr [ %i.cic, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i ], [ %i.cms, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i ] ; 3 uses
  %.sroa.01.0.i.i.i.i = phi ptr [ %i.cjh, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i ], [ %.sroa.01.1.i.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i ] ; 4 uses
  %i.cjn = icmp eq ptr %.sroa.01.0.i.i.i.i, %i.cjk
  br i1 %i.cjn, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i, label %.preheader.i.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.pr
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i15.i.i.i.i.i, label %.preheader.split.us.i.i.i.i, label %.preheader.split.i.i.i.i

.preheader.split.us.i.i.i.i:                      ; preds = %.preheader.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i
  %i.cjo = phi ptr [ %i.cjp, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i ], [ %.sroa.01.0.i.i.i.i, %.preheader.i.i.i.i ] ; 3 uses
  %i.cjp = getelementptr inbounds nuw i8, ptr %i.cjo, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10617)
  call void @llvm.experimental.noalias.scope.decl(metadata !10618)
  call void @llvm.experimental.noalias.scope.decl(metadata !10619)
  call void @llvm.experimental.noalias.scope.decl(metadata !10620)
  %i.cjq = load ptr, ptr %i.cjo, align 8, !alias.scope !10621, !noalias !10622, !noundef !10
  %.not5.i.i.i.i.i.us.i.i.i.i = icmp eq ptr %i.cjq, null
  br i1 %.not5.i.i.i.i.i.us.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i: ; preds = %.preheader.split.us.i.i.i.i
  %i.cjr = icmp eq ptr %i.cjp, %i.cjk
  br i1 %i.cjr, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i, label %.preheader.split.us.i.i.i.i, !llvm.loop !9457

.preheader.split.i.i.i.i:                         ; preds = %.preheader.i.i.i.i
  br i1 %i.cht, label %.preheader.split.split.us.i.i.i.i, label %.preheader.split.split.i.i.i.i

.preheader.split.split.us.i.i.i.i:                ; preds = %.preheader.split.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i
  %i.cjs = phi ptr [ %i.cjt, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i ], [ %.sroa.01.0.i.i.i.i, %.preheader.split.i.i.i.i ] ; 6 uses
  %i.cjt = getelementptr inbounds nuw i8, ptr %i.cjs, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10617)
  call void @llvm.experimental.noalias.scope.decl(metadata !10618)
  call void @llvm.experimental.noalias.scope.decl(metadata !10619)
  call void @llvm.experimental.noalias.scope.decl(metadata !10620)
  %i.cju = load ptr, ptr %i.cjs, align 8, !alias.scope !10621, !noalias !10622, !noundef !10
  %.not5.i.i.i.i.i.us28.i.i.i.i = icmp eq ptr %i.cju, null
  br i1 %.not5.i.i.i.i.i.us28.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, label %.lr.ph.i.us.i.i.i.i

.lr.ph.i.us.i.i.i.i:                              ; preds = %.preheader.split.split.us.i.i.i.i
  %i.cjv = getelementptr inbounds nuw i8, ptr %i.cjs, i64 8
  br label %bb.ps

bb.ps:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i, %.lr.ph.i.us.i.i.i.i
  %i.cjw = phi ptr [ %i.chn, %.lr.ph.i.us.i.i.i.i ], [ %i.cjx, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i ] ; 3 uses
  %i.cjx = getelementptr inbounds nuw i8, ptr %i.cjw, i64 24 ; 2 uses
  %i.cjy = getelementptr i8, ptr %i.cjw, i64 8
  %.val6.i.i.i.i.i.i.i.i.us.us.i.i.i.i = load ptr, ptr %i.cjy, align 8, !noalias !10623, !nonnull !10, !noundef !10 ; 2 uses
  %i.cjz = getelementptr i8, ptr %i.cjw, i64 16
  %.val7.i.i.i.i.i.i.i.i.us.us.i.i.i.i = load i64, ptr %i.cjz, align 8, !noalias !10623, !noundef !10 ; 2 uses
  %.idx.i22.us.us.i.i.i.i = mul nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.us.us.i.i.i.i, 24
  %i.cka = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.us.us.i.i.i.i, i64 %.idx.i22.us.us.i.i.i.i
  %.not.i.i.i.us.us.i.i.i.i = icmp eq i64 %.val7.i.i.i.i.i.i.i.i.us.us.i.i.i.i, 0
  br i1 %.not.i.i.i.us.us.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i, label %.lr.ph.split.i.i.i.us.us.i.i.i.i

.lr.ph.split.i.i.i.us.us.i.i.i.i:                 ; preds = %bb.ps, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.us.us.i.i.i.i
  %i.ckb = phi ptr [ %i.ckc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.us.us.i.i.i.i ], [ %.val6.i.i.i.i.i.i.i.i.us.us.i.i.i.i, %bb.ps ] ; 3 uses
  %i.ckc = getelementptr inbounds nuw i8, ptr %i.ckb, i64 24 ; 2 uses
  %i.ckd = getelementptr i8, ptr %i.ckb, i64 8
  %.val5.i.i.i.us.us.i.i.i.i = load ptr, ptr %i.ckd, align 8, !noalias !10624, !nonnull !10, !noundef !10
  %i.cke = getelementptr i8, ptr %i.ckb, i64 16
  %.val6.i.i.i.us.us.i.i.i.i = load i64, ptr %i.cke, align 8, !noalias !10624
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dy), !noalias !10625
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dy, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.val5.i.i.i.us.us.i.i.i.i, i64 noundef %.val6.i.i.i.us.us.i.i.i.i) #43, !noalias !10624
  %i.ckf = load i64, ptr %i.dy, align 8, !range !12, !noalias !10625, !noundef !10 ; 2 uses
  %i.ckg = load ptr, ptr %i.cgh, align 8, !noalias !10625 ; 2 uses
  %i.ckh = load i64, ptr %i.cgi, align 8, !noalias !10625
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dx), !noalias !10625
  %i.cki = load ptr, ptr %i.cjs, align 8, !noalias !10624, !nonnull !10, !noundef !10
  %i.ckj = load i64, ptr %i.cjv, align 8, !noalias !10624, !noundef !10
  call void @_RNvMNtCs4wP2HXfJTCR_5alloc6stringNtB2_6String15from_utf8_lossy(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.dx, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.cki, i64 noundef %i.ckj) #43, !noalias !10624
  %i.ckk = load i64, ptr %i.dx, align 8, !range !12, !noalias !10625, !noundef !10 ; 2 uses
  %i.ckl = load ptr, ptr %i.cgj, align 8, !noalias !10625 ; 2 uses
  %i.ckm = load i64, ptr %i.cgk, align 8, !noalias !10625
  %i.ckn = call fastcc noundef zeroext i1 @_RNvNtCsfu0rQaTkGUu_12clap_builder4util14eq_ignore_case(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ckg, i64 noundef %i.ckh, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ckl, i64 noundef %i.ckm) #43, !noalias !10624
  %i.cko = icmp sgt i64 %i.ckk, 0
  br i1 %i.cko, label %bb.pt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.us.us.i.i.i.i

bb.pt:                                            ; preds = %.lr.ph.split.i.i.i.us.us.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckl, i64 noundef %i.ckk, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10626
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.us.us.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.us.us.i.i.i.i: ; preds = %bb.pt, %.lr.ph.split.i.i.i.us.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dx), !noalias !10625
  %i.ckp = icmp sgt i64 %i.ckf, 0
  br i1 %i.ckp, label %bb.pu, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i

bb.pu:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.us.us.i.i.i.i
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckg, i64 noundef %i.ckf, i64 noundef range(i64 1, -9223372036854775807) 1) #43, !noalias !10627
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i: ; preds = %bb.pu, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit.i.i.i.i.i.i.us.us.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dy), !noalias !10625
  br i1 %i.ckn, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.us.us.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.us.us.i.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i
  %.not18.i.i.i.us.us.i.i.i.i = icmp eq ptr %i.ckc, %i.cka
  br i1 %.not18.i.i.i.us.us.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i, label %.lr.ph.split.i.i.i.us.us.i.i.i.i, !llvm.loop !1

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.i.i.i.us.us.i.i.i.i, %bb.ps
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.us.us.i.i.i.i = icmp eq ptr %i.cjx, %i.chq
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.us.us.i.i.i.i, label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i, label %bb.ps

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.us.us.i.i.i.i
  %i.ckq = icmp eq ptr %i.cjt, %i.cjk
  br i1 %i.ckq, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i, label %.preheader.split.split.us.i.i.i.i, !llvm.loop !9457

.preheader.split.split.i.i.i.i:                   ; preds = %.preheader.split.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i
  %i.ckr = phi ptr [ %i.cks, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i ], [ %.sroa.01.0.i.i.i.i, %.preheader.split.i.i.i.i ] ; 5 uses
  %i.cks = getelementptr inbounds nuw i8, ptr %i.ckr, i64 32 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10617)
  call void @llvm.experimental.noalias.scope.decl(metadata !10618)
  call void @llvm.experimental.noalias.scope.decl(metadata !10619)
  call void @llvm.experimental.noalias.scope.decl(metadata !10620)
  %i.ckt = load ptr, ptr %i.ckr, align 8, !alias.scope !10621, !noalias !10622, !noundef !10 ; 2 uses
  %.not5.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ckt, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, label %.lr.ph.i.i29.i.i.i

.lr.ph.i.i29.i.i.i:                               ; preds = %.preheader.split.split.i.i.i.i
  %i.cku = getelementptr inbounds nuw i8, ptr %i.ckr, i64 8
  br label %bb.pv

bb.pv:                                            ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i, %.lr.ph.i.i29.i.i.i
  %i.ckv = phi ptr [ %i.chn, %.lr.ph.i.i29.i.i.i ], [ %i.ckw, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i ] ; 3 uses
  %i.ckw = getelementptr inbounds nuw i8, ptr %i.ckv, i64 24 ; 2 uses
  %i.ckx = getelementptr i8, ptr %i.ckv, i64 8
  %.val6.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ckx, align 8, !noalias !10623, !nonnull !10, !noundef !10 ; 2 uses
  %i.cky = getelementptr i8, ptr %i.ckv, i64 16
  %.val7.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cky, align 8, !noalias !10623, !noundef !10 ; 2 uses
  %.idx.i22.i.i.i.i = mul nuw nsw i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i, 24
  %i.ckz = getelementptr inbounds nuw i8, ptr %.val6.i.i.i.i.i.i.i.i.i.i.i.i, i64 %.idx.i22.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i64 %.val7.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.pv
  %i.cla = load i64, ptr %i.cku, align 8, !noalias !10624, !noundef !10 ; 2 uses
  br label %bb.pw

bb.pw:                                            ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.clb = phi ptr [ %.val6.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ], [ %i.clc, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i ] ; 3 uses
  %i.clc = getelementptr inbounds nuw i8, ptr %i.clb, i64 24 ; 2 uses
  %i.cld = getelementptr i8, ptr %i.clb, i64 16
  %.val6.us.i.i.i.i.i.i.i = load i64, ptr %i.cld, align 8, !noalias !10624
  %i.cle = icmp eq i64 %.val6.us.i.i.i.i.i.i.i, %i.cla
  br i1 %i.cle, label %.split.us.i.i.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i:                          ; preds = %bb.pw
  %i.clf = getelementptr i8, ptr %i.clb, i64 8
  %.val5.us.i.i.i.i.i.i.i = load ptr, ptr %i.clf, align 8, !noalias !10624, !nonnull !10, !noundef !10
  %bcmp.i.i.i.us.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val5.us.i.i.i.i.i.i.i, ptr nonnull %i.ckt, i64 %i.cla), !noalias !10624
  %i.clg = icmp eq i32 %bcmp.i.i.i.us.i.i.i.i.i.i.i, 0
  br i1 %i.clg, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, label %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i: ; preds = %.split.us.i.i.i.i.i.i.i, %bb.pw
  %.not17.i.i.i.i.i.i.i = icmp eq ptr %i.clc, %i.ckz
  br i1 %.not17.i.i.i.i.i.i.i, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i, label %bb.pw

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i: ; preds = %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator3any5checkRNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringNCNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2y_10MatchedArg14check_explicits_0E0INtB7_5FnMutTuB1K_EE8call_mutB2E_.exit.backedge.us.i.i.i.i.i.i.i, %bb.pv
  %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ckw, %i.chq
  br i1 %.not.not.not.i.not.not.i.i.i.i.i.i.i.i.i.i.i, label %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i, label %bb.pv

_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i: ; preds = %.preheader.split.split.i.i.i.i, %.preheader.split.split.us.i.i.i.i, %.preheader.split.us.i.i.i.i, %.split.us.i.i.i.i.i.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i
  %i.clh = phi ptr [ %i.ckr, %.split.us.i.i.i.i.i.i.i ], [ %i.cjs, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i ], [ %i.cjo, %.preheader.split.us.i.i.i.i ], [ %i.cjs, %.preheader.split.split.us.i.i.i.i ], [ %i.ckr, %.preheader.split.split.i.i.i.i ] ; 2 uses
  %i.cli = phi ptr [ %i.cks, %.split.us.i.i.i.i.i.i.i ], [ %i.cjt, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc6borrow3CoweEECsfu0rQaTkGUu_12clap_builder.exit10.i.i.i.i.i.i.us.us.i.i.i.i ], [ %i.cjp, %.preheader.split.us.i.i.i.i ], [ %i.cjt, %.preheader.split.split.us.i.i.i.i ], [ %i.cks, %.preheader.split.split.i.i.i.i ]
  %.in9.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.clh, i64 16
  %i.clj = load ptr, ptr %.in9.i.i.i.i.i, align 8, !alias.scope !10628, !noalias !10622, !nonnull !10
  %.in.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.clh, i64 24
  %i.clk = load i64, ptr %.in.i.i.i.i.i, align 8, !alias.scope !10628, !noalias !10622
  %i.cll = insertvalue { ptr, i64 } poison, ptr %i.clj, 0
  %i.clm = insertvalue { ptr, i64 } %i.cll, i64 %i.clk, 1
  br label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i

_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i: ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterNtNtNtCsaKJjC64KgbL_3std3ffi6os_str8OsStringENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsfu0rQaTkGUu_12clap_builder.exit.sink.split.i.i.backedge.i.i.i.i.i
  %i.cln = icmp eq ptr %i.cks, %i.cjk
  br i1 %i.cln, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i, label %.preheader.split.split.i.i.i.i, !llvm.loop !9457

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i: ; preds = %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i, %bb.pr
  %.sroa.01.1.i.i.i.i = phi ptr [ %i.cjk, %bb.pr ], [ %i.cli, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i ], [ %i.cjk, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i ], [ %i.cjk, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i ], [ %i.cjk, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i ]
  %.merged.i.i.i.i.i = phi { ptr, i64 } [ { ptr null, i64 undef }, %bb.pr ], [ %i.clm, %_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQRNCNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtBU_9Validator15gather_requiress_0INtB7_5FnMutTRTNtNtNtBY_7builder13arg_predicate12ArgPredicateNtNtNtBY_4util2id2IdEEE8call_mutBY_.exit.i.i.i.i.i ], [ { ptr null, i64 undef }, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.us.i.i.i.i ], [ { ptr null, i64 undef }, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.us.us.i.i.i.i ], [ { ptr null, i64 undef }, %_RNvMNtNtNtCsfu0rQaTkGUu_12clap_builder6parser7matches11matched_argNtB2_10MatchedArg14check_explicit.exit.i.i.i.i.loopexit.split.i.i.i.i ] ; 2 uses
  %i.clo = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 0 ; 3 uses
  %i.clp = extractvalue { ptr, i64 } %.merged.i.i.i.i.i, 1 ; 3 uses
  %.not9.i.i.i.i = icmp eq ptr %i.clo, null
  br i1 %.not9.i.i.i.i, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i, label %.lr.ph.i.i25.i.i.i.i

.lr.ph.i.i25.i.i.i.i:                             ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i
  %i.clq = phi ptr [ %i.clr, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i ], [ %.val.i.i40.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ] ; 5 uses
  %i.clr = getelementptr inbounds nuw i8, ptr %i.clq, i64 600 ; 2 uses
  %i.cls = getelementptr inbounds nuw i8, ptr %i.clq, i64 544
  %i.clt = load i64, ptr %i.cls, align 8, !noalias !10629, !noundef !10
  %i.clu = icmp eq i64 %i.clt, %i.clp
  br i1 %i.clu, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i28.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i28.i.i.i.i: ; preds = %.lr.ph.i.i25.i.i.i.i
  %i.clv = getelementptr inbounds nuw i8, ptr %i.clq, i64 536
  %i.clw = load ptr, ptr %i.clv, align 8, !noalias !10629, !nonnull !10, !noundef !10
  %bcmp.i.i.i29.i.i.i.i = call i32 @bcmp(ptr nonnull %i.clw, ptr nonnull %i.clo, i64 %i.clp), !noalias !10630
  %i.clx = icmp eq i32 %bcmp.i.i.i29.i.i.i.i, 0
  br i1 %i.clx, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i28.i.i.i.i, %.lr.ph.i.i25.i.i.i.i
  %i.cly = icmp eq ptr %i.clr, %i.cgy
  br i1 %i.cly, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i, label %.lr.ph.i.i25.i.i.i.i

_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit.backedge.i.i.i.i: ; preds = %.split.i.i.i.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i
  %i.clz = phi ptr [ %i.chy, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %i.cjl, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ], [ %i.chy, %.split.i.i.i.i.i.i ]
  %i.cma = phi ptr [ %i.cir, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %i.cir, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ], [ %i.chz, %.split.i.i.i.i.i.i ]
  %i.cmb = phi i64 [ %i.cit, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %i.cit, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ], [ %i.cia, %.split.i.i.i.i.i.i ]
  %i.cmc = phi ptr [ %i.cir, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %i.cir, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ], [ %i.cib, %.split.i.i.i.i.i.i ]
  %i.cmd = phi ptr [ %i.cic, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i ], [ %i.cjm, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder7builder13arg_predicate12ArgPredicateNtNtNtBX_4util2id2IdEENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapB20_QRNCNvMNtNtBX_6parser9validatorNtB3l_9Validator15gather_requiress_0EBX_.exit.i.i.i.i ], [ %i.cic, %.split.i.i.i.i.i.i ]
  %i.cme = load i64, ptr %i.cge, align 8, !noalias !10603, !noundef !10 ; 2 uses
  %i.cmf = icmp eq i64 %i.cme, 0
  br i1 %i.cmf, label %_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtB5_13SliceContains14slice_containsBJ_.exit._crit_edge.i.i.i.i, label %.lr.ph.split.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i28.i.i.i.i
  %i.cmg = getelementptr inbounds nuw i8, ptr %i.clq, i64 536
  %i.cmh = getelementptr inbounds nuw i8, ptr %i.clq, i64 192
  %i.cmi = load i64, ptr %i.cmh, align 8, !noalias !10604, !noundef !10 ; 2 uses
  %i.cmj = icmp ult i64 %i.cmi, 288230376151711744
  call void @llvm.assume(i1 %i.cmj)
  %i.cmk = icmp eq i64 %i.cmi, 0
  br i1 %i.cmk, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i, label %bb.px

bb.px:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10631)
  %i.cml = load i64, ptr %i.cge, align 8, !alias.scope !10631, !noalias !10603, !noundef !10 ; 3 uses
  %i.cmm = load i64, ptr %i.ea, align 8, !range !11, !alias.scope !10631, !noalias !10603, !noundef !10
  %i.cmn = icmp eq i64 %i.cml, %i.cmm
  br i1 %i.cmn, label %bb.py, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i

bb.py:                                            ; preds = %bb.px
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ea) #42, !noalias !10632
  %.pre70.i.i.i.i = load ptr, ptr %i.cgd, align 8, !alias.scope !10631, !noalias !10603
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i: ; preds = %bb.py, %bb.px
  %i.cmo = phi ptr [ %i.cjl, %bb.px ], [ %.pre70.i.i.i.i, %bb.py ] ; 3 uses
  %i.cmp = getelementptr inbounds nuw [8 x i8], ptr %i.cmo, i64 %i.cml
  store ptr %i.cmg, ptr %i.cmp, align 8, !noalias !10633, !captures !21
  %i.cmq = add i64 %i.cml, 1
  store i64 %i.cmq, ptr %i.cge, align 8, !alias.scope !10631, !noalias !10603
  br label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i
  %i.cmr = phi ptr [ %i.cmo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i ], [ %i.cjl, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i ], [ %i.cjl, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i ]
  %i.cms = phi ptr [ %i.cmo, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBM_.exit31.i.i.i.i ], [ %i.cjm, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.i.i.i.i ], [ %i.cjm, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i26.i.i.i.i ]
  call void @llvm.experimental.noalias.scope.decl(metadata !10634)
  %i.cmt = load i64, ptr %i.cgg, align 8, !alias.scope !10634, !noalias !10603, !noundef !10 ; 3 uses
  %i.cmu = load i64, ptr %i.dz, align 8, !range !11, !alias.scope !10634, !noalias !10603, !noundef !10
  %i.cmv = icmp eq i64 %i.cmt, %i.cmu
  br i1 %i.cmv, label %bb.pz, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i

bb.pz:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.dz) #42, !noalias !10635
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit.i.i.i.i: ; preds = %bb.pz, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit30.thread.i.i.i.i
  %i.cmw = load ptr, ptr %i.cgf, align 8, !alias.scope !10634, !noalias !10603, !nonnull !10, !noundef !10
  %i.cmx = getelementptr inbounds nuw [16 x i8], ptr %i.cmw, i64 %i.cmt ; 2 uses
  store ptr %i.clo, ptr %i.cmx, align 8, !noalias !10636
  %i.cmy = getelementptr inbounds nuw i8, ptr %i.cmx, i64 8
  store i64 %i.clp, ptr %i.cmy, align 8, !noalias !10637
  %i.cmz = add i64 %i.cmt, 1
  store i64 %i.cmz, ptr %i.cgg, align 8, !alias.scope !10634, !noalias !10603
  br label %bb.pr

_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_.exit.i.i.i: ; preds = %bb.pn, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1f_.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.eb), !noalias !10603
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.465.0.copyload.i.i.i) ]
  %i.cna = icmp ult i64 %.sroa.566.0.copyload.i.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.cna)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.566.0.copyload.i.i.i, 4
  %i.cnb = getelementptr inbounds nuw i8, ptr %.sroa.465.0.copyload.i.i.i, i64 %.idx.i.i.i
  %i.cnc = icmp eq i64 %.sroa.566.0.copyload.i.i.i, 0
  br i1 %i.cnc, label %._crit_edge.i.i.i, label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_.exit.i.i.i
  %.pre.i.i.i = load ptr, ptr %i.cgl, align 8, !alias.scope !10638
  %.pre180.i.i.i.a = load i64, ptr %i.cgm, align 8, !alias.scope !10638
  br label %.lr.ph.i.i43.i

.loopexit.i.i.i:                                  ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i, %bb.pk
  %i.cnd = getelementptr i8, ptr %i.cgv, i64 208
  %.val23.i.i.i = load ptr, ptr %i.cnd, align 8, !noalias !10600, !nonnull !10, !noundef !10 ; 2 uses
  %i.cne = getelementptr i8, ptr %i.cgv, i64 216
  %.val24.i.i.i = load i64, ptr %i.cne, align 8, !noalias !10600, !noundef !10 ; 2 uses
  %.idx.i30.i.i.i = mul nuw nsw i64 %.val24.i.i.i, 96
  %i.cnf = getelementptr inbounds nuw i8, ptr %.val23.i.i.i, i64 %.idx.i30.i.i.i
  %i.cng = icmp eq i64 %.val24.i.i.i, 0
  br i1 %i.cng, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %.lr.ph.i.i31.i.i.i

.lr.ph.i.i31.i.i.i:                               ; preds = %.loopexit.i.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i
  %i.cnh = phi ptr [ %i.cni, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i ], [ %.val23.i.i.i, %.loopexit.i.i.i ] ; 5 uses
  %i.cni = getelementptr inbounds nuw i8, ptr %i.cnh, i64 96 ; 2 uses
  %i.cnj = getelementptr inbounds nuw i8, ptr %i.cnh, i64 80
  %i.cnk = load i64, ptr %i.cnj, align 8, !noalias !10639, !noundef !10
  %i.cnl = icmp eq i64 %i.cnk, %.val26.pre.i.i.i
  br i1 %i.cnl, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i31.i.i.i
  %i.cnm = getelementptr inbounds nuw i8, ptr %i.cnh, i64 72
  %i.cnn = load ptr, ptr %i.cnm, align 8, !noalias !10639, !nonnull !10, !noundef !10
  %bcmp.i.i.i33.i.i.i = call i32 @bcmp(ptr nonnull %i.cnn, ptr nonnull readonly %.val25.pre.i.i.i, i64 %.val26.pre.i.i.i), !noalias !10639
  %i.cno = icmp eq i32 %bcmp.i.i.i33.i.i.i, 0
  br i1 %i.cno, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i, %.lr.ph.i.i31.i.i.i
  %i.cnp = icmp eq ptr %i.cni, %i.cnf
  br i1 %i.cnp, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %.lr.ph.i.i31.i.i.i

.lr.ph.i.i43.i:                                   ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i, %.lr.ph.preheader.i.i.i
  %i.cnq = phi i64 [ %i.con, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i ], [ %.pre180.i.i.i.a, %.lr.ph.preheader.i.i.i ] ; 8 uses
  %i.cnr = phi ptr [ %i.coo, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i ], [ %.pre.i.i.i, %.lr.ph.preheader.i.i.i ] ; 4 uses
  %.sroa.468.0131.i.i.i = phi ptr [ %i.cns, %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i ], [ %.sroa.465.0.copyload.i.i.i, %.lr.ph.preheader.i.i.i ] ; 3 uses
  %i.cns = getelementptr inbounds nuw i8, ptr %.sroa.468.0131.i.i.i, i64 16 ; 2 uses
  %i.cnt = load ptr, ptr %.sroa.468.0131.i.i.i, align 8, !noalias !10640, !nonnull !10, !noundef !10 ; 2 uses
  %i.cnu = getelementptr inbounds nuw i8, ptr %.sroa.468.0131.i.i.i, i64 8
  %i.cnv = load i64, ptr %i.cnu, align 8, !noalias !10640, !noundef !10 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10641)
  %.idx.i36.i.i.i = mul nuw nsw i64 %i.cnq, 40
  %i.cnw = getelementptr inbounds nuw i8, ptr %i.cnr, i64 %.idx.i36.i.i.i
  %i.cnx = icmp eq i64 %i.cnq, 0
  br i1 %i.cnx, label %.loopexit.i38.i.i.i, label %.lr.ph.i.i37.i.i.i

.lr.ph.i.i37.i.i.i:                               ; preds = %.lr.ph.i.i43.i, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i
  %.sroa.02.010.i.i.i.i.i = phi i64 [ %i.coe, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i ], [ 0, %.lr.ph.i.i43.i ] ; 2 uses
  %i.cny = phi ptr [ %i.cnz, %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i ], [ %i.cnr, %.lr.ph.i.i43.i ] ; 3 uses
  %i.cnz = getelementptr inbounds nuw i8, ptr %i.cny, i64 40 ; 2 uses
  %i.coa = getelementptr i8, ptr %i.cny, i64 32
  %.val7.i.i.i.i.i = load i64, ptr %i.coa, align 8, !noalias !10642, !noundef !10
  %i.cob = icmp eq i64 %.val7.i.i.i.i.i, %i.cnv
  br i1 %i.cob, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.i.i.i.i.i, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i

_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i37.i.i.i
  %i.coc = getelementptr i8, ptr %i.cny, i64 24
  %.val6.i.i.i.i.i = load ptr, ptr %i.coc, align 8, !noalias !10642, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull readonly %.val6.i.i.i.i.i, ptr nonnull readonly %i.cnt, i64 %i.cnv), !noalias !10643
  %i.cod = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %i.cod, label %bb.qa, label %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i

_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i: ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.i.i.i.i.i, %.lr.ph.i.i37.i.i.i
  %i.coe = add nuw nsw i64 %.sroa.02.010.i.i.i.i.i, 1
  %i.cof = icmp eq ptr %i.cnz, %i.cnw
  br i1 %i.cof, label %.loopexit.i38.i.i.i, label %.lr.ph.i.i37.i.i.i

bb.qa:                                            ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.i.i.i.i.i
  %i.cog = icmp ult i64 %.sroa.02.010.i.i.i.i.i, %i.cnq
  call void @llvm.assume(i1 %i.cog)
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i

.loopexit.i38.i.i.i:                              ; preds = %_RNCNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB6_10ChildGraphNtNtB8_2id2IdE6insert0Ba_.exit.thread.i.i.i.i.i, %.lr.ph.i.i43.i
  %i.coh = icmp ult i64 %i.cnq, 230584300921369396
  call void @llvm.assume(i1 %i.coh)
  call void @llvm.experimental.noalias.scope.decl(metadata !10644)
  %i.coi = load i64, ptr %i.gb, align 8, !range !11, !alias.scope !10645, !noundef !10
  %i.coj = icmp eq i64 %i.cnq, %i.coi
  br i1 %i.coj, label %bb.qb, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i

bb.qb:                                            ; preds = %.loopexit.i38.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBR_2id2IdEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb) #42, !noalias !10646
  %.pre.i40.i.i.i = load ptr, ptr %i.cgl, align 8, !alias.scope !10645
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i: ; preds = %bb.qb, %.loopexit.i38.i.i.i
  %i.cok = phi ptr [ %i.cnr, %.loopexit.i38.i.i.i ], [ %.pre.i40.i.i.i, %bb.qb ] ; 2 uses
  %i.col = getelementptr inbounds nuw [40 x i8], ptr %i.cok, i64 %i.cnq ; 5 uses
  store i64 0, ptr %i.col, align 8, !noalias !10647
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.col, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !10647
  %.sroa.5.0..sroa_idx11.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.col, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx11.i.i.i.i, align 8, !noalias !10647
  %.sroa.612.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.col, i64 24
  store ptr %i.cnt, ptr %.sroa.612.0..sroa_idx.i.i.i.i, align 8, !noalias !10647
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.col, i64 32
  store i64 %i.cnv, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 8, !noalias !10648
  %i.com = add nuw nsw i64 %i.cnq, 1              ; 2 uses
  store i64 %i.com, ptr %i.cgm, align 8, !alias.scope !10645
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i, %bb.qa
  %i.con = phi i64 [ %i.cnq, %bb.qa ], [ %i.com, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i ]
  %i.coo = phi ptr [ %i.cnr, %bb.qa ], [ %i.cok, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i.i.i.i ]
  %i.cop = icmp eq ptr %i.cns, %i.cnb
  br i1 %i.cop, label %._crit_edge.i.i.i, label %.lr.ph.i.i43.i

._crit_edge.i.i.i:                                ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit.i.i.i, %_RINvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB6_7Command19unroll_arg_requiresNCNvMNtNtBa_6parser9validatorNtB1v_9Validator15gather_requiress_0EBa_.exit.i.i.i
  %i.coq = icmp eq i64 %.sroa.064.0.copyload.i.i.i, 0
  br i1 %i.coq, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %bb.qc

bb.qc:                                            ; preds = %._crit_edge.i.i.i
  %i.cor = shl nuw i64 %.sroa.064.0.copyload.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.465.0.copyload.i.i.i, i64 noundef %i.cor, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10649
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i.i
  %i.cos = getelementptr inbounds nuw i8, ptr %i.cnh, i64 32
  %i.cot = load ptr, ptr %i.cos, align 8, !noalias !10600, !nonnull !10, !noundef !10 ; 2 uses
  %i.cou = getelementptr inbounds nuw i8, ptr %i.cnh, i64 40
  %i.cov = load i64, ptr %i.cou, align 8, !noalias !10600, !noundef !10 ; 2 uses
  %.idx134.i.i.i = shl nuw nsw i64 %i.cov, 4
  %i.cow = getelementptr inbounds nuw i8, ptr %i.cot, i64 %.idx134.i.i.i
  %i.cox = icmp eq i64 %i.cov, 0
  br i1 %i.cox, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %.lr.ph133.preheader.i.i.i

.lr.ph133.preheader.i.i.i:                        ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i.i
  %.pre182.i.i.i = load ptr, ptr %i.cgl, align 8, !alias.scope !10650
  %.pre183.i.i.i = load i64, ptr %i.cgm, align 8, !alias.scope !10650
  br label %.lr.ph133.i.i.i

.lr.ph133.i.i.i:                                  ; preds = %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i, %.lr.ph133.preheader.i.i.i
end_hunk_2
