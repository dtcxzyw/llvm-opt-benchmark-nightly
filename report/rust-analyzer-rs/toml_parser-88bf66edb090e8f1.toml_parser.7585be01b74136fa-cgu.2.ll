Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/toml_parser-88bf66edb090e8f1.toml_parser.7585be01b74136fa-cgu.2?download=true
inline.NumInlined: 104
inline.NumDeleted: 61
begin_hunk_0_@_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string21decode_literal_string:bb.a
  %i.e = alloca [88 x i8], align 8                ; 12 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.h(ptr noundef nonnull %1) #8
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i32 39, ptr %i.b, align 4
  %i.l = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 1)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 -1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @32, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.525.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 22, ptr %.sroa.525.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.522.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %i.f, align 8
  store i64 0, ptr %.sroa.522.0..sroa_idx, align 8
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.k, ptr %.sroa.528.0..sroa_idx, align 8
  store ptr @34, ptr %i.n, align 8
  store i64 1, ptr %i.o, align 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.522.0..sroa_idx23, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !4, !nonnull !4
  call void %i.r(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = add i64 %i.k, -1
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.10.0 = phi i64 [ %i.s, %bb.c ], [ %i.k, %bb.b ] ; 3 uses
  %.sroa.03.0 = phi ptr [ %i.t, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 39, ptr %i.a, align 4
  %i.u = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.10.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  br i1 %i.u, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.534.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 -1, ptr %i.v, align 8
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @32, ptr %.sroa.437.0..sroa_idx, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 22, ptr %.sroa.538.0..sroa_idx, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.x = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.y = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.534.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 1, ptr %i.e, align 8
  store i64 0, ptr %.sroa.534.0..sroa_idx, align 8
  %.sroa.541.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.k, ptr %.sroa.541.0..sroa_idx, align 8
  store ptr @34, ptr %i.w, align 8
  store i64 1, ptr %i.x, align 8
  store i64 1, ptr %i.y, align 8
  store i64 %i.k, ptr %.sroa.534.0..sroa_idx35, align 8
  %.sroa.544.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.k, ptr %.sroa.544.0..sroa_idx, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.aa = load ptr, ptr %i.z, align 8, !invariant.load !4, !nonnull !4
  call void %i.aa(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e) #8
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.ab = add i64 %.sroa.10.0, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.10.1 = phi i64 [ %i.ab, %bb.f ], [ %.sroa.10.0, %bb.e ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.10.1
  %i.ad = icmp samesign eq i64 %.sroa.10.1, 0
  br i1 %i.ad, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph: ; preds = %bb.g
  %i.ae = ptrtoint ptr %i.i to i64
  %.sroa.547.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.450.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.551.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ah = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.547.0..sroa_idx48 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.aj = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !4
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph, %bb.k
  %.sroa.0.076 = phi ptr [ %.sroa.03.0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph ], [ %i.al, %bb.k ] ; 2 uses
  %.sroa.7.075 = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph ], [ %i.am, %bb.k ] ; 4 uses
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.0.076, i64 1 ; 2 uses
  %i.am = add nuw i64 %.sroa.7.075, 1
  %i.an = load i8, ptr %.sroa.0.076, align 1, !alias.scope !85, !noalias !90, !noundef !4 ; 4 uses
  %i.ao = icmp eq i8 %i.an, 9
  %i.ap = add i8 %i.an, -32
  %or.cond.i = icmp ult i8 %i.ap, 7
  %or.cond28.i = or i1 %i.ao, %or.cond.i
  %i.aq = add i8 %i.an, -40
  %or.cond27.i = icmp ult i8 %i.aq, 87
  %or.cond29.i = or i1 %or.cond27.i, %or.cond28.i
  %.not.i8.i = icmp slt i8 %i.an, 0
  %.sroa.0.0.i68 = or i1 %.not.i8.i, %or.cond29.i
  br i1 %.sroa.0.0.i68, label %bb.k, label %bb.j

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread: ; preds = %bb.k, %bb.g
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.as = load ptr, ptr %i.ar, align 8, !invariant.load !4, !nonnull !4
  %i.at = call noundef zeroext i1 %i.as(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.03.0, i64 noundef %.sroa.10.1) #8
  br i1 %i.at, label %bb.i, label %bb.h

bb.h:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread
  store i64 0, ptr %i.c, align 8
  %i.au = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i64 -1, ptr %i.au, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr @22, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store i64 29, ptr %.sroa.564.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store ptr null, ptr %i.av, align 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.560.0..sroa_idx61 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store i64 1, ptr %i.aw, align 8
  store i64 0, ptr %.sroa.560.0..sroa_idx61, align 8
  %.sroa.567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.k, ptr %.sroa.567.0..sroa_idx, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !invariant.load !4, !nonnull !4
  call void %i.ay(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c) #8
  br label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread, %bb.h
  ret void

bb.j:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit
  %i.az = icmp ugt i64 %.sroa.7.075, %.sroa.10.1
  br i1 %i.az, label %bb.m, label %bb.l, !prof !92

bb.k:                                             ; preds = %bb.l, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit
  %i.ba = icmp eq ptr %i.al, %i.ac
  br i1 %i.ba, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit

bb.l:                                             ; preds = %bb.j
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.03.0, i64 %.sroa.7.075
  %i.bc = ptrtoint ptr %i.bb to i64
  %i.bd = sub i64 %i.bc, %i.ae                    ; 2 uses
  store i64 -1, ptr %i.af, align 8
  store ptr @32, ptr %.sroa.450.0..sroa_idx, align 8
  store i64 22, ptr %.sroa.551.0..sroa_idx, align 8
  store i64 1, ptr %i.d, align 8
  store i64 0, ptr %.sroa.547.0..sroa_idx, align 8
  store i64 %i.k, ptr %.sroa.554.0..sroa_idx, align 8
  store ptr @36, ptr %i.ag, align 8
  store i64 1, ptr %i.ah, align 8
  store i64 1, ptr %i.ai, align 8
  store i64 %i.bd, ptr %.sroa.547.0..sroa_idx48, align 8
  store i64 %i.bd, ptr %.sroa.557.0..sroa_idx, align 8
  call void %i.ak(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.d) #8
  br label %bb.k

bb.m:                                             ; preds = %bb.j
  call void @_RNvNtNtCshzWfHUSfYae_4core5slice5index16slice_index_fail(i64 noundef %.sroa.7.075, i64 noundef %.sroa.10.1, i64 noundef %.sroa.10.1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @38) #9
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string22decode_ml_basic_string(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 14 uses
  %i.b = alloca [88 x i8], align 8                ; 14 uses
  %i.c = alloca [88 x i8], align 8                ; 14 uses
  %i.d = alloca [4 x i8], align 4                 ; 4 uses
  %i.e = alloca [88 x i8], align 8                ; 9 uses
  %i.f = alloca [88 x i8], align 8                ; 12 uses
  %i.g = alloca [88 x i8], align 8                ; 9 uses
  %i.h = alloca [88 x i8], align 8                ; 12 uses
  %i.i = alloca [88 x i8], align 8                ; 9 uses
  %i.j = alloca [88 x i8], align 8                ; 9 uses
  %i.k = alloca [88 x i8], align 8                ; 12 uses
  %i.l = alloca [16 x i8], align 8                ; 14 uses
  %i.m = alloca [88 x i8], align 8                ; 11 uses
  %i.n = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.p = load i64, ptr %i.o, align 8, !noundef !4 ; 15 uses
  %i.q = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.n, i64 noundef %i.p, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 3)
  br i1 %i.q, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  store i64 -1, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 56
  store ptr @6, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.519.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 64
  store i64 31, ptr %.sroa.519.0..sroa_idx, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.m, i64 72
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  %i.u = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store i64 1, ptr %i.m, align 8
  store i64 0, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.522.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.p, ptr %.sroa.522.0..sroa_idx, align 8
  store ptr @21, ptr %i.s, align 8
  store i64 1, ptr %i.t, align 8
  store i64 1, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.516.0..sroa_idx17, i8 0, i64 16, i1 false)
  %i.w = load ptr, ptr %i.v, align 8, !invariant.load !4, !nonnull !4
  call void %i.w(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.m) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.x = add i64 %i.p, -3
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0 = phi i64 [ %i.x, %bb.c ], [ %i.p, %bb.b ] ; 5 uses
  %.sroa.01.0 = phi ptr [ %i.y, %bb.c ], [ %i.n, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !93
  store i32 10, ptr %i.d, align 4, !noalias !93
  %i.z = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.d, i64 noundef 1)
  %i.aa = add i64 %.sroa.6.0, -1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !93
  br i1 %i.z, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ac = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2), !noalias !96
  %i.ad = add i64 %.sroa.6.0, -2
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2
  %.sroa.0.0.i.i.i = select i1 %i.ac, ptr %i.ae, ptr null
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit: ; preds = %bb.d, %bb.e
  %.pn4.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.e ], [ %i.ab, %bb.d ] ; 2 uses
  %.pn2.i.i = phi i64 [ %i.ad, %bb.e ], [ %i.aa, %bb.d ]
  %.not.i = icmp eq ptr %.pn4.i.i, null           ; 2 uses
  %i.af = select i1 %.not.i, ptr %.sroa.01.0, ptr %.pn4.i.i ; 9 uses
  %i.ag = select i1 %.not.i, i64 %.sroa.6.0, i64 %.pn2.i.i ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.ah = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %i.ag, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @39, i64 noundef 3)
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit
  %.sroa.528.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  store i64 -1, ptr %i.ai, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store ptr @6, ptr %.sroa.431.0..sroa_idx, align 8
  %.sroa.532.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 31, ptr %.sroa.532.0..sroa_idx, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 80
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %.sroa.528.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i64 1, ptr %i.k, align 8
  store i64 0, ptr %.sroa.528.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.p, ptr %.sroa.535.0..sroa_idx, align 8
  store ptr @21, ptr %i.aj, align 8
  store i64 1, ptr %i.ak, align 8
  store i64 1, ptr %i.al, align 8
  store i64 %i.p, ptr %.sroa.528.0..sroa_idx29, align 8
  %.sroa.538.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 %i.p, ptr %.sroa.538.0..sroa_idx, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !invariant.load !4, !nonnull !4
  call void %i.an(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.k) #8
  br label %bb.h

bb.g:                                             ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit
  %i.ao = add i64 %i.ag, -3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sink = phi i64 [ %i.ao, %bb.g ], [ %i.ag, %bb.f ] ; 9 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !99)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sink
  %i.ar = icmp samesign eq i64 %.sink, 0
  br i1 %i.ar, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.h, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i
  %.sroa.02.07.i.i = phi i64 [ %i.ay, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i ], [ 0, %bb.h ] ; 3 uses
  %i.as = phi ptr [ %i.at, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i ], [ %i.af, %bb.h ] ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 1 ; 2 uses
  %.val.i.i = load i8, ptr %i.as, align 1, !alias.scope !102, !noalias !105, !noundef !4 ; 6 uses
  switch i8 %.val.i.i, label %bb.i [
    i8 33, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i
    i8 32, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i
    i8 9, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i
  ]

bb.i:                                             ; preds = %.lr.ph.i.i
  %i.au = add i8 %.val.i.i, -35
  %or.cond.i.i.i.i.i.i = icmp ult i8 %i.au, 57
  br i1 %or.cond.i.i.i.i.i.i, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i, label %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivecEINtB6_11RangeBoundscE8containscECsa5zhLZWy8nm_11toml_parser.exit.thread.i.i.i.i.i.i

_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivecEINtB6_11RangeBoundscE8containscECsa5zhLZWy8nm_11toml_parser.exit.thread.i.i.i.i.i.i: ; preds = %bb.i
  %i.av = add i8 %.val.i.i, -93
  %or.cond42.i.i.i.i.i.i = icmp ult i8 %i.av, 34
  %.not.i10.i.i.i.i.i.i = icmp slt i8 %.val.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %.not.i10.i.i.i.i.i.i, %or.cond42.i.i.i.i.i.i
  %i.aw = icmp eq i8 %.val.i.i, 34
  %or.cond4.i.i.i.i.i = or i1 %i.aw, %or.cond.i.i.i.i.i
  %i.ax = icmp eq i8 %.val.i.i, 10
  %or.cond5.i.i.i.i.i = or i1 %i.ax, %or.cond4.i.i.i.i.i
  br i1 %or.cond5.i.i.i.i.i, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i, label %bb.j

_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i: ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivecEINtB6_11RangeBoundscE8containscECsa5zhLZWy8nm_11toml_parser.exit.thread.i.i.i.i.i.i, %bb.i, %.lr.ph.i.i, %.lr.ph.i.i, %.lr.ph.i.i
  %i.ay = add nuw i64 %.sroa.02.07.i.i, 1
  %i.az = icmp eq ptr %i.at, %i.aq
  br i1 %i.az, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %_RINvYINtNtNtCshzWfHUSfYae_4core3ops5range14RangeInclusivecEINtB6_11RangeBoundscE8containscECsa5zhLZWy8nm_11toml_parser.exit.thread.i.i.i.i.i.i
  %i.ba = icmp ult i64 %.sroa.02.07.i.i, %.sink
  call void @llvm.assume(i1 %i.ba), !noalias !110
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i: ; preds = %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i, %bb.j
  %.sroa.0.0.i.i = phi i64 [ %.sroa.02.07.i.i, %bb.j ], [ %.sink, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0B1b_.exit.i.i ] ; 8 uses
  %i.bb = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.bb, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit, label %bb.k

bb.k:                                             ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i
  %.not.i.i = icmp ult i64 %.sroa.0.0.i.i, %.sink
  br i1 %.not.i.i, label %bb.l, label %.split3.i.i

.split3.i.i:                                      ; preds = %bb.k
  %i.bc = icmp eq i64 %.sroa.0.0.i.i, %.sink
  br i1 %i.bc, label %.split.i.i, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.bd = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i
  %i.be = load i8, ptr %i.bd, align 1, !alias.scope !111, !noalias !114, !noundef !4
  %i.bf = icmp sgt i8 %i.be, -65
  br i1 %i.bf, label %.split.i.i, label %bb.m

.split.i.i:                                       ; preds = %bb.l, %.split3.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.af, i64 %.sroa.0.0.i.i
  %i.bh = sub i64 %.sink, %.sroa.0.0.i.i
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit

bb.m:                                             ; preds = %bb.l, %.split3.i.i
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sink, i64 noundef 0, i64 noundef %.sroa.0.0.i.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !99
  unreachable

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit: ; preds = %bb.h, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i, %.split.i.i
  %.sroa.0.0.i14.i = phi i64 [ 0, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i ], [ %.sroa.0.0.i.i, %.split.i.i ], [ 0, %bb.h ]
  %i.bi = phi i64 [ %.sink, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i ], [ %i.bh, %.split.i.i ], [ 0, %bb.h ] ; 3 uses
  %.sroa.7.0.i = phi ptr [ %i.af, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped0E0EB2T_.exit.i ], [ %i.bg, %.split.i.i ], [ %i.af, %bb.h ] ; 2 uses
  store ptr %.sroa.7.0.i, ptr %i.l, align 8, !alias.scope !99, !captures !11
  store i64 %i.bi, ptr %i.ap, align 8, !alias.scope !99
  %i.bj = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !invariant.load !4, !nonnull !4 ; 4 uses
  %i.bl = call noundef zeroext i1 %i.bk(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.af, i64 noundef %.sroa.0.0.i14.i) #8
  br i1 %i.bl, label %bb.o, label %bb.n

bb.n:                                             ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit
  store i64 0, ptr %i.j, align 8
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store i64 -1, ptr %i.bm, align 8
  %.sroa.444.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store ptr @22, ptr %.sroa.444.0..sroa_idx, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 64
  store i64 29, ptr %.sroa.545.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 72
  store ptr null, ptr %i.bn, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.541.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  store i64 1, ptr %i.bo, align 8
  store i64 0, ptr %.sroa.541.0..sroa_idx42, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %i.p, ptr %.sroa.548.0..sroa_idx, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.bq = load ptr, ptr %i.bp, align 8, !invariant.load !4, !nonnull !4
  call void %i.bq(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.j) #8
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit
  %i.br = icmp eq i64 %i.bi, 0
  br i1 %i.br, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.o
  %i.bs = ptrtoint ptr %i.n to i64                ; 7 uses
  %.sroa.584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.bt = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %.sroa.487.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %.sroa.588.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  %i.bu = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.bv = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.bw = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.584.0..sroa_idx85 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.bx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.by = load ptr, ptr %i.bx, align 8            ; 9 uses
  %.sroa.561.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.h, i64 48
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.565.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 64
  %i.ca = getelementptr inbounds nuw i8, ptr %i.h, i64 72
  %i.cb = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.cc = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  %.sroa.561.0..sroa_idx62 = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.571.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %i.cd = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.477.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.578.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %i.ce = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  %i.cf = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.574.0..sroa_idx75 = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.581.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.523.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ci = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.cj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.5.0..sroa_idx20.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.526.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.529.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.532.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ck = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  %.sroa.536.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.cl = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.cm = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  %i.cn = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.532.0..sroa_idx33.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.539.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.542.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %.sroa.545.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.448.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %i.cp = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  %i.cr = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.545.0..sroa_idx46.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.552.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.555.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.cs = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.ct = load ptr, ptr %i.cs, align 8, !nonnull !4
  %i.cu = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.555.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.cv = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.551.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.cx = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %.sroa.4100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.5101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.597.0..sroa_idx98 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.5104.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %invariant.op429 = sub i64 1, %i.bs
  %invariant.op = sub i64 1, %i.bs
  br label %bb.p

bb.p:                                             ; preds = %.lr.ph, %bb.bk
  %i.da = phi ptr [ %.sroa.7.0.i, %.lr.ph ], [ %.sroa.7.0.i138, %bb.bk ] ; 22 uses
  %i.db = phi i64 [ %i.bi, %.lr.ph ], [ %i.fv, %bb.bk ] ; 18 uses
  %i.dc = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @14, i64 noundef 1)
  br i1 %i.dc, label %bb.r, label %bb.q

._crit_edge:                                      ; preds = %bb.bk, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.q:                                             ; preds = %bb.p
  %i.dd = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.da, i64 noundef %i.db, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1)
  br i1 %i.dd, label %bb.z, label %bb.t
end_hunk_0
begin_hunk_1_@_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string22decode_ml_basic_string:bb.a
  store i64 %i.fv, ptr %i.ap, align 8, !alias.scope !144
  %i.fw = call noundef zeroext i1 %i.bk(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.fb, i64 noundef %.sroa.0.0.i14.i136) #8
  br i1 %i.fw, label %bb.bk, label %bb.bj

bb.am:                                            ; preds = %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit
  %i.fx = load i8, ptr %i.dn, align 1, !alias.scope !161, !noalias !168, !noundef !4
  switch i8 %i.fx, label %_RNvXs1H_NtCsil5KYoyU2ra_6winnow6streamTThhEhhEINtB6_13ContainsTokenRhE14contains_tokenCsa5zhLZWy8nm_11toml_parser.exit [
    i8 32, label %bb.an
    i8 9, label %bb.an
    i8 13, label %bb.an
    i8 10, label %bb.an
  ]

_RNvXs1H_NtCsil5KYoyU2ra_6winnow6streamTThhEhhEINtB6_13ContainsTokenRhE14contains_tokenCsa5zhLZWy8nm_11toml_parser.exit: ; preds = %bb.am, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit
  %i.fy = call fastcc noundef i32 @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string15escape_seq_char(ptr noalias nofree noundef align 8 dereferenceable(16) %i.l, ptr nonnull %i.n, i64 %i.p, ptr noundef nonnull %3, ptr %i.by)
  %i.fz = call noundef zeroext i1 %i.ct(ptr noundef nonnull %1, i32 noundef %i.fy) #8
  br i1 %i.fz, label %thread-pre-split, label %bb.bi

bb.an:                                            ; preds = %bb.am, %bb.am, %bb.am, %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !170)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  br label %.lr.ph.i.i148

.lr.ph.i.i148:                                    ; preds = %bb.an, %bb.ao
  %.sroa.02.07.i.i149 = phi i64 [ %i.gc, %bb.ao ], [ 0, %bb.an ] ; 3 uses
  %i.ga = phi ptr [ %i.gb, %bb.ao ], [ %i.dn, %bb.an ] ; 2 uses
  %.val.i.i150 = load i8, ptr %i.ga, align 1, !alias.scope !173, !noalias !176, !noundef !4
  switch i8 %.val.i.i150, label %bb.ap [
    i8 32, label %bb.ao
    i8 9, label %bb.ao
  ]

bb.ao:                                            ; preds = %.lr.ph.i.i148, %.lr.ph.i.i148
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.gc = add nuw i64 %.sroa.02.07.i.i149, 1
  %i.gd = icmp eq ptr %i.gb, %i.de
  br i1 %i.gd, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i, label %.lr.ph.i.i148

bb.ap:                                            ; preds = %.lr.ph.i.i148
  %i.ge = icmp ult i64 %.sroa.02.07.i.i149, %i.dq
  call void @llvm.assume(i1 %i.ge), !noalias !181
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i: ; preds = %bb.ao, %bb.ap
  %.sroa.0.0.i63.i = phi i64 [ %.sroa.02.07.i.i149, %bb.ap ], [ %i.dq, %bb.ao ] ; 7 uses
  %i.gf = icmp eq i64 %.sroa.0.0.i63.i, 0
  br i1 %i.gf, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i, label %bb.aq

bb.aq:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i
  %.not.i.i151 = icmp ult i64 %.sroa.0.0.i63.i, %i.dq
  br i1 %.not.i.i151, label %bb.ar, label %.split3.i.i152

.split3.i.i152:                                   ; preds = %bb.aq
  %i.gg = icmp eq i64 %.sroa.0.0.i63.i, %i.dq
  br i1 %i.gg, label %.split.i.i153, label %bb.au

bb.ar:                                            ; preds = %bb.aq
  %i.gh = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i63.i
  %i.gi = load i8, ptr %i.gh, align 1, !alias.scope !182, !noalias !185, !noundef !4
  %i.gj = icmp sgt i8 %i.gi, -65
  br i1 %i.gj, label %.split.i.i153, label %bb.au

.split.i.i153:                                    ; preds = %bb.ar, %.split3.i.i152
  %i.gk = getelementptr inbounds nuw i8, ptr %i.dn, i64 %.sroa.0.0.i63.i
  %i.gl = sub i64 %i.dq, %.sroa.0.0.i63.i
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i: ; preds = %.split.i.i153, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i
  %.sroa.8.0.i = phi i64 [ %i.dq, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i ], [ %i.gl, %.split.i.i153 ] ; 6 uses
  %.sroa.6.0.i = phi ptr [ %i.dn, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl0E0EB2T_.exit.i ], [ %i.gk, %.split.i.i153 ] ; 8 uses
  %i.gm = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 %.sroa.8.0.i
  %i.gn = icmp samesign eq i64 %.sroa.8.0.i, 0
  br i1 %i.gn, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i, label %bb.as

bb.as:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i
  %i.go = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 1 ; 2 uses
  %i.gp = load i8, ptr %.sroa.6.0.i, align 1, !noalias !187, !noundef !4 ; 5 uses
  %i.gq = icmp sgt i8 %i.gp, -1
  br i1 %i.gq, label %bb.at, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i: ; preds = %bb.as
  %i.gr = and i8 %i.gp, 31
  %i.gs = zext nneg i8 %i.gr to i32               ; 3 uses
  %i.gt = icmp samesign ne i64 %.sroa.8.0.i, 1
  call void @llvm.assume(i1 %i.gt), !noalias !192
  %i.gu = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 2 ; 2 uses
  %i.gv = load i8, ptr %i.go, align 1, !noalias !187, !noundef !4
  %i.gw = shl nuw nsw i32 %i.gs, 6
  %i.gx = and i8 %i.gv, 63
  %i.gy = zext nneg i8 %i.gx to i32               ; 2 uses
  %i.gz = or disjoint i32 %i.gw, %i.gy
  %i.ha = icmp samesign ugt i8 %i.gp, -33
  br i1 %i.ha, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i

bb.at:                                            ; preds = %bb.as
  %i.hb = zext nneg i8 %i.gp to i32
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i
  %i.hc = icmp samesign ne i64 %.sroa.8.0.i, 2
  call void @llvm.assume(i1 %i.hc), !noalias !192
  %i.hd = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 3 ; 2 uses
  %i.he = load i8, ptr %i.gu, align 1, !noalias !187, !noundef !4
  %i.hf = shl nuw nsw i32 %i.gy, 6
  %i.hg = and i8 %i.he, 63
  %i.hh = zext nneg i8 %i.hg to i32
  %i.hi = or disjoint i32 %i.hf, %i.hh            ; 2 uses
  %i.hj = shl nuw nsw i32 %i.gs, 12
  %i.hk = or disjoint i32 %i.hi, %i.hj
  %i.hl = icmp samesign ugt i8 %i.gp, -17
  br i1 %i.hl, label %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i.i, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i

_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i
  %i.hm = icmp samesign ne i64 %.sroa.8.0.i, 3
  call void @llvm.assume(i1 %i.hm), !noalias !192
  %i.hn = getelementptr inbounds nuw i8, ptr %.sroa.6.0.i, i64 4
  %i.ho = load i8, ptr %i.hd, align 1, !noalias !187, !noundef !4
  %i.hp = shl nuw nsw i32 %i.gs, 18
  %i.hq = and i32 %i.hp, 1835008
  %i.hr = shl nuw nsw i32 %i.hi, 6
  %i.hs = and i8 %i.ho, 63
  %i.ht = zext nneg i8 %i.hs to i32
  %i.hu = or disjoint i32 %i.hr, %i.ht
  %i.hv = or disjoint i32 %i.hu, %i.hq
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i

_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i: ; preds = %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i.i, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i, %bb.at, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i
  %i.hw = phi ptr [ %i.gu, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i ], [ %i.hd, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i ], [ %i.hn, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i.i ], [ %i.go, %bb.at ] ; 5 uses
  %.sroa.4.0.i.ph.i = phi i32 [ %i.gz, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit12.i.i ], [ %i.hk, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit14.i.i ], [ %i.hv, %_RNvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit16.i.i ], [ %i.hb, %bb.at ] ; 2 uses
  %i.hx = icmp samesign ult i32 %.sroa.4.0.i.ph.i, 1114112
  call void @llvm.assume(i1 %i.hx)
  %i.hy = ptrtoint ptr %i.gm to i64
  %i.hz = ptrtoint ptr %i.hw to i64               ; 2 uses
  %i.ia = sub nuw i64 %i.hy, %i.hz                ; 4 uses
  switch i32 %.sroa.4.0.i.ph.i, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i [
    i32 13, label %bb.av
    i32 10, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader
  ]

bb.au:                                            ; preds = %bb.ar, %.split3.i.i152
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.dn, i64 noundef %i.dq, i64 noundef 0, i64 noundef %.sroa.0.0.i63.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !170
  unreachable

_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i: ; preds = %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit.i
  %i.ib = ptrtoint ptr %.sroa.6.0.i to i64
  %i.ic = sub i64 %i.ib, %i.bs                    ; 2 uses
  store i64 -1, ptr %i.ck, align 8, !noalias !170
  store ptr @6, ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !170
  store i64 31, ptr %.sroa.536.0..sroa_idx.i, align 8, !noalias !170
  store i64 1, ptr %i.b, align 8, !noalias !170
  store i64 0, ptr %.sroa.532.0..sroa_idx.i, align 8, !noalias !170
  store i64 %i.p, ptr %.sroa.539.0..sroa_idx.i, align 8, !noalias !170
  store ptr @5, ptr %i.cl, align 8, !noalias !170
  store i64 1, ptr %i.cm, align 8, !noalias !170
  store i64 1, ptr %i.cn, align 8, !noalias !170
  store i64 %i.ic, ptr %.sroa.532.0..sroa_idx33.i, align 8, !noalias !170
  store i64 %i.ic, ptr %.sroa.542.0..sroa_idx.i, align 8, !noalias !170
  call void %i.by(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.b) #8, !noalias !170, !inline_history !193
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader

bb.av:                                            ; preds = %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i
  %.not57.i = icmp eq i64 %i.ia, 0
  br i1 %.not57.i, label %.critedge.i, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.id = load i8, ptr %i.hw, align 1, !noalias !170, !noundef !4
  %i.ie = icmp eq i8 %i.id, 10
  br i1 %i.ie, label %bb.ax, label %.critedge.i

.critedge.i:                                      ; preds = %bb.aw, %bb.av
  %i.if = sub i64 %i.hz, %i.bs                    ; 2 uses
  store i64 -1, ptr %i.cg, align 8, !noalias !170
  store ptr @4, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !170
  store i64 43, ptr %.sroa.523.0..sroa_idx.i, align 8, !noalias !170
  store i64 1, ptr %i.c, align 8, !noalias !170
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !170
  store i64 %i.p, ptr %.sroa.526.0..sroa_idx.i, align 8, !noalias !170
  store ptr @5, ptr %i.ch, align 8, !noalias !170
  store i64 1, ptr %i.ci, align 8, !noalias !170
  store i64 1, ptr %i.cj, align 8, !noalias !170
  store i64 %i.if, ptr %.sroa.5.0..sroa_idx20.i, align 8, !noalias !170
  store i64 %i.if, ptr %.sroa.529.0..sroa_idx.i, align 8, !noalias !170
  call void %i.by(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.c) #8, !noalias !170, !inline_history !193
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader

bb.ax:                                            ; preds = %bb.aw
  %i.ig = getelementptr inbounds nuw i8, ptr %i.hw, i64 1 ; 2 uses
  %gepdiff.i = add nsw i64 %i.ia, -1              ; 2 uses
  store ptr %i.ig, ptr %i.l, align 8, !alias.scope !194, !captures !11
  store i64 %gepdiff.i, ptr %i.ap, align 8, !alias.scope !194
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader

_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader: ; preds = %bb.ax, %.critedge.i, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i
  %.sroa.87.0.i209.ph = phi i64 [ %.sroa.8.0.i, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i ], [ %i.ia, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i ], [ %i.ia, %.critedge.i ], [ %gepdiff.i, %bb.ax ]
  %.ph = phi ptr [ %.sroa.6.0.i, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.thread.i ], [ %i.hw, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit62.i ], [ %i.hw, %.critedge.i ], [ %i.ig, %bb.ax ]
  br label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i

_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i: ; preds = %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader, %bb.bb
  %.sroa.87.0.i209 = phi i64 [ %i.iw, %bb.bb ], [ %.sroa.87.0.i209.ph, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader ] ; 9 uses
  %i.ih = phi ptr [ %i.ix, %bb.bb ], [ %.ph, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i.preheader ] ; 9 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.87.0.i209
  %i.ij = icmp samesign eq i64 %.sroa.87.0.i209, 0
  br i1 %i.ij, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i, label %.lr.ph.i73.i

.lr.ph.i73.i:                                     ; preds = %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i
  %.sroa.02.07.i74.i = phi i64 [ %i.im, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i ], [ 0, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i ] ; 2 uses
  %i.ik = phi ptr [ %i.il, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i ], [ %i.ih, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i ] ; 2 uses
  %.val.i75.i = load i8, ptr %i.ik, align 1, !alias.scope !197, !noalias !200, !noundef !4
  switch i8 %.val.i75.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i [
    i8 32, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i
    i8 9, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i
    i8 10, label %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i
  ]

_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i: ; preds = %.lr.ph.i73.i, %.lr.ph.i73.i, %.lr.ph.i73.i
  %i.il = getelementptr inbounds nuw i8, ptr %i.ik, i64 1 ; 2 uses
  %i.im = add nuw i64 %.sroa.02.07.i74.i, 1
  %i.in = icmp eq ptr %i.il, %i.ii
  br i1 %i.in, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i, label %.lr.ph.i73.i

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i: ; preds = %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i, %.lr.ph.i73.i
  %.sroa.0.0.i78.i = phi i64 [ %.sroa.02.07.i74.i, %.lr.ph.i73.i ], [ %.sroa.87.0.i209, %_RNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB8_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0B1b_.exit.i.i ] ; 7 uses
  %i.io = icmp eq i64 %.sroa.0.0.i78.i, 0
  br i1 %i.io, label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i, label %bb.ay

bb.ay:                                            ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i
  %.not.i79.i = icmp ult i64 %.sroa.0.0.i78.i, %.sroa.87.0.i209
  br i1 %.not.i79.i, label %bb.az, label %.split3.i80.i

.split3.i80.i:                                    ; preds = %bb.ay
  %i.ip = icmp eq i64 %.sroa.0.0.i78.i, %.sroa.87.0.i209
  br i1 %i.ip, label %.split.i81.i, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.0.0.i78.i
  %i.ir = load i8, ptr %i.iq, align 1, !alias.scope !205, !noalias !208, !noundef !4
  %i.is = icmp sgt i8 %i.ir, -65
  br i1 %i.is, label %.split.i81.i, label %bb.ba

.split.i81.i:                                     ; preds = %bb.az, %.split3.i80.i
  %i.it = getelementptr inbounds nuw i8, ptr %i.ih, i64 %.sroa.0.0.i78.i
  %i.iu = sub i64 %.sroa.87.0.i209, %.sroa.0.0.i78.i
  br label %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i

_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i: ; preds = %.split.i81.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i
  %.sroa.87.0.i = phi i64 [ %.sroa.87.0.i209, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i ], [ %i.iu, %.split.i81.i ], [ 0, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i ] ; 8 uses
  %.sroa.66.0.i = phi ptr [ %i.ih, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterhENtNtNtNtBb_4iter6traits8iterator8Iterator8positionNCINvXs6_NtCsil5KYoyU2ra_6winnow6streamRShNtB1P_6Stream10offset_forNCNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nls_0E0EB2T_.exit.i ], [ %i.it, %.split.i81.i ], [ %i.ih, %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i ] ; 8 uses
  %i.iv = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.66.0.i, i64 noundef %.sroa.87.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 1), !noalias !170
  br i1 %i.iv, label %bb.bc, label %bb.bb

bb.ba:                                            ; preds = %bb.az, %.split3.i80.i
  store ptr %i.ih, ptr %i.l, align 8
  store i64 %.sroa.87.0.i209, ptr %i.ap, align 8
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.ih, i64 noundef %.sroa.87.0.i209, i64 noundef 0, i64 noundef %.sroa.0.0.i78.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !170
  unreachable

bb.bb:                                            ; preds = %bb.bg, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i
  %i.iw = phi i64 [ %i.jg, %bb.bg ], [ %.sroa.87.0.i, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i ] ; 2 uses
  %i.ix = phi ptr [ %i.jf, %bb.bg ], [ %.sroa.66.0.i, %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i ] ; 3 uses
  %i.iy = icmp eq ptr %i.ih, %i.ix
  br i1 %i.iy, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl.exit, label %_RNvXs7_NtCsil5KYoyU2ra_6winnow6streamReNtB5_6Stream10next_token.exit.i

bb.bc:                                            ; preds = %_RNvMNtCshzWfHUSfYae_4core3stre16split_at_checked.exit88.i
  %i.iz = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.66.0.i, i64 noundef %.sroa.87.0.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2), !noalias !170
  br i1 %i.iz, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %bb.bc
  %i.ja = ptrtoint ptr %.sroa.66.0.i to i64
  %.reass.reass.i.reass.reass.reass = add i64 %i.ja, %invariant.op ; 2 uses
  store i64 -1, ptr %i.co, align 8, !noalias !170
  store ptr @4, ptr %.sroa.448.0..sroa_idx.i, align 8, !noalias !170
  store i64 43, ptr %.sroa.549.0..sroa_idx.i, align 8, !noalias !170
  store i64 1, ptr %i.a, align 8, !noalias !170
  store i64 0, ptr %.sroa.545.0..sroa_idx.i, align 8, !noalias !170
  store i64 %i.p, ptr %.sroa.552.0..sroa_idx.i, align 8, !noalias !170
  store ptr @5, ptr %i.cp, align 8, !noalias !170
  store i64 1, ptr %i.cq, align 8, !noalias !170
  store i64 1, ptr %i.cr, align 8, !noalias !170
  store i64 %.reass.reass.i.reass.reass.reass, ptr %.sroa.545.0..sroa_idx46.i, align 8, !noalias !170
  store i64 %.reass.reass.i.reass.reass.reass, ptr %.sroa.555.0..sroa_idx.i, align 8, !noalias !170
  call void %i.by(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a) #8, !noalias !170, !inline_history !193
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %bb.bc
  %.sroa.013.0.i = phi i64 [ 1, %bb.bd ], [ 2, %bb.bc ] ; 6 uses
  %.not.i89.i = icmp ult i64 %.sroa.013.0.i, %.sroa.87.0.i
  br i1 %.not.i89.i, label %bb.bf, label %.split3.i90.i

.split3.i90.i:                                    ; preds = %bb.be
  %i.jb = icmp eq i64 %.sroa.013.0.i, %.sroa.87.0.i
  br i1 %i.jb, label %bb.bg, label %bb.bh

bb.bf:                                            ; preds = %bb.be
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.66.0.i, i64 %.sroa.013.0.i
  %i.jd = load i8, ptr %i.jc, align 1, !alias.scope !210, !noalias !213, !noundef !4
  %i.je = icmp sgt i8 %i.jd, -65
  br i1 %i.je, label %bb.bg, label %bb.bh

bb.bg:                                            ; preds = %bb.bf, %.split3.i90.i
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.66.0.i, i64 %.sroa.013.0.i
  %i.jg = sub i64 %.sroa.87.0.i, %.sroa.013.0.i
  br label %bb.bb

bb.bh:                                            ; preds = %bb.bf, %.split3.i90.i
  store ptr %.sroa.66.0.i, ptr %i.l, align 8
  store i64 %.sroa.87.0.i, ptr %i.ap, align 8
  call void @_RNvNtCshzWfHUSfYae_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.66.0.i, i64 noundef %.sroa.87.0.i, i64 noundef 0, i64 noundef %.sroa.013.0.i, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #9, !noalias !170
  unreachable

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string14mlb_escaped_nl.exit: ; preds = %bb.bb
  store ptr %i.ix, ptr %i.l, align 8
  store i64 %i.iw, ptr %i.ap, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %thread-pre-split

bb.bi:                                            ; preds = %_RNvXs1H_NtCsil5KYoyU2ra_6winnow6streamTThhEhhEINtB6_13ContainsTokenRhE14contains_tokenCsa5zhLZWy8nm_11toml_parser.exit
  store i64 0, ptr %i.i, align 8
  store i64 -1, ptr %i.cu, align 8
  store ptr @22, ptr %.sroa.454.0..sroa_idx, align 8
  store i64 29, ptr %.sroa.555.0..sroa_idx, align 8
  store ptr null, ptr %i.cv, align 8
  store i64 1, ptr %i.cw, align 8
  store i64 0, ptr %.sroa.551.0..sroa_idx52, align 8
  store i64 %i.p, ptr %.sroa.558.0..sroa_idx, align 8
  call void %i.by(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.i) #8
  br label %thread-pre-split

bb.bj:                                            ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit146
  %i.jh = ptrtoint ptr %i.fb to i64
  %i.ji = sub i64 %i.jh, %i.bs                    ; 2 uses
  %i.jj = add i64 %.sroa.0.0.i14.i136, %i.ji
  store i64 0, ptr %i.e, align 8
  store i64 -1, ptr %i.cx, align 8
  store ptr @22, ptr %.sroa.4100.0..sroa_idx, align 8
  store i64 29, ptr %.sroa.5101.0..sroa_idx, align 8
  store ptr null, ptr %i.cy, align 8
  store i64 1, ptr %i.cz, align 8
  store i64 %i.ji, ptr %.sroa.597.0..sroa_idx98, align 8
  store i64 %i.jj, ptr %.sroa.5104.0..sroa_idx, align 8
  call void %i.by(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e) #8
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string13mlb_unescaped.exit146
  %i.jk = icmp eq i64 %i.fv, 0
  br i1 %i.jk, label %._crit_edge, label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string24decode_ml_literal_string(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(48) %2, ptr noundef nonnull %3, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 9 uses
  %i.c = alloca [88 x i8], align 8                ; 12 uses
  %i.d = alloca [88 x i8], align 8                ; 12 uses
  %i.e = alloca [88 x i8], align 8                ; 12 uses
  %i.f = alloca [88 x i8], align 8                ; 11 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !invariant.load !4, !nonnull !4
  tail call void %i.h(ptr noundef nonnull %1) #8
  %i.i = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load i64, ptr %i.j, align 8, !noundef !4 ; 10 uses
  %i.l = tail call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 3)
  br i1 %i.l, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i64 -1, ptr %i.m, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store ptr @43, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.533.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 64
  store i64 33, ptr %.sroa.533.0..sroa_idx, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.f, i64 80
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.530.0..sroa_idx31 = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store i64 1, ptr %i.f, align 8
  store i64 0, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %i.k, ptr %.sroa.536.0..sroa_idx, align 8
  store ptr @34, ptr %i.n, align 8
  store i64 1, ptr %i.o, align 8
  store i64 1, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %4, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.530.0..sroa_idx31, i8 0, i64 16, i1 false)
  %i.r = load ptr, ptr %i.q, align 8, !invariant.load !4, !nonnull !4
  call void %i.r(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.f) #8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.s = add i64 %i.k, -3
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 3
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.6.0 = phi i64 [ %i.s, %bb.c ], [ %i.k, %bb.b ] ; 5 uses
  %.sroa.01.0 = phi ptr [ %i.t, %bb.c ], [ %i.i, %bb.b ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !215
  store i32 10, ptr %i.a, align 4, !noalias !215
  %i.u = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 1)
  %i.v = add i64 %.sroa.6.0, -1
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !215
  br i1 %i.u, label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.x = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh11starts_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.01.0, i64 noundef %.sroa.6.0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @0, i64 noundef 2), !noalias !218
  %i.y = add i64 %.sroa.6.0, -2
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 2
  %.sroa.0.0.i.i.i = select i1 %i.x, ptr %i.z, ptr null
  br label %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit

_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit: ; preds = %bb.d, %bb.e
  %.pn4.i.i = phi ptr [ %.sroa.0.0.i.i.i, %bb.e ], [ %i.w, %bb.d ] ; 2 uses
  %.pn2.i.i = phi i64 [ %i.y, %bb.e ], [ %i.v, %bb.d ]
  %.not.i = icmp eq ptr %.pn4.i.i, null           ; 2 uses
  %i.aa = select i1 %.not.i, ptr %.sroa.01.0, ptr %.pn4.i.i ; 3 uses
  %i.ab = select i1 %.not.i, i64 %.sroa.6.0, i64 %.pn2.i.i ; 3 uses
  %i.ac = call noundef zeroext i1 @_RNvMNtCshzWfHUSfYae_4core5sliceSh9ends_withCsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @42, i64 noundef 3)
  br i1 %i.ac, label %bb.g, label %bb.f

bb.f:                                             ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit
  %.sroa.542.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store i64 -1, ptr %i.ad, align 8
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store ptr @43, ptr %.sroa.445.0..sroa_idx, align 8
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 33, ptr %.sroa.546.0..sroa_idx, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.af = getelementptr inbounds nuw i8, ptr %i.e, i64 80
  %i.ag = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %.sroa.542.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 1, ptr %i.e, align 8
  store i64 0, ptr %.sroa.542.0..sroa_idx, align 8
  %.sroa.549.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %i.k, ptr %.sroa.549.0..sroa_idx, align 8
  store ptr @34, ptr %i.ae, align 8
  store i64 1, ptr %i.af, align 8
  store i64 1, ptr %i.ag, align 8
  store i64 %i.k, ptr %.sroa.542.0..sroa_idx43, align 8
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store i64 %i.k, ptr %.sroa.552.0..sroa_idx, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.ai = load ptr, ptr %i.ah, align 8, !invariant.load !4, !nonnull !4
  call void %i.ai(ptr noundef nonnull %3, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.e) #8
  %i.aj = call { ptr, i64 } @_RINvMNtCshzWfHUSfYae_4core3stre16trim_end_matchescECsa5zhLZWy8nm_11toml_parser(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i32 noundef 39) ; 2 uses
  %i.ak = extractvalue { ptr, i64 } %i.aj, 0
  %i.al = extractvalue { ptr, i64 } %i.aj, 1
  br label %bb.h

bb.g:                                             ; preds = %_RNvNtNtCsa5zhLZWy8nm_11toml_parser7decoder6string19strip_start_newline.exit
  %i.am = add i64 %i.ab, -3
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.7.0 = phi i64 [ %i.am, %bb.g ], [ %i.al, %bb.f ] ; 7 uses
  %.sroa.010.0 = phi ptr [ %i.aa, %bb.g ], [ %i.ak, %bb.f ] ; 7 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.010.0) ]
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.010.0, i64 %.sroa.7.0
  %i.ao = icmp samesign eq i64 %.sroa.7.0, 0
  br i1 %i.ao, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph: ; preds = %bb.h
  %i.ap = ptrtoint ptr %i.i to i64                ; 2 uses
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.459.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.560.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.as = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.556.0..sroa_idx57 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.566.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.av = load ptr, ptr %i.au, align 8, !nonnull !4
  %.sroa.569.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %.sroa.472.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %.sroa.573.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.az = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.569.0..sroa_idx70 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.576.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.579.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit: ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph, %bb.k
  %.sroa.0.0102 = phi ptr [ %.sroa.010.0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph ], [ %i.ba, %bb.k ] ; 2 uses
  %.sroa.7.093101 = phi i64 [ 0, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.lr.ph ], [ %i.bb, %bb.k ] ; 4 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.0.0102, i64 1 ; 2 uses
  %i.bb = add nuw i64 %.sroa.7.093101, 1          ; 4 uses
  %i.bc = load i8, ptr %.sroa.0.0102, align 1, !noundef !4 ; 5 uses
  switch i8 %i.bc, label %bb.m [
    i8 39, label %bb.k
    i8 10, label %bb.k
    i8 13, label %bb.l
  ]

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread: ; preds = %bb.k, %bb.h
  %i.bd = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.be = load ptr, ptr %i.bd, align 8, !invariant.load !4, !nonnull !4
  %i.bf = call noundef zeroext i1 %i.be(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.010.0, i64 noundef %.sroa.7.0) #8
  br i1 %i.bf, label %bb.j, label %bb.i

bb.i:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterhEENtNtNtB8_6traits8iterator8Iterator4nextCsa5zhLZWy8nm_11toml_parser.exit.thread
  store i64 0, ptr %i.b, align 8
end_hunk_1
