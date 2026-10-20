Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fish-rs/original/fish-3db1312fccef457a.fish.60153328cb65e96a-cgu.03?download=true
inline.NumInlined: 2355
inline.NumDeleted: 813
loop-unroll.NumCompletelyUnrolled: 44
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 47
begin_hunk_0_@_RNvNtNtCs8frGy5WneL6_4fish8builtins4path14path_normalize:bb.a
bb.al:                                            ; preds = %bb.ak
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body37.i unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i44.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit48.i unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit48.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i44.i, %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3010
  br label %.outer.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecmEECs8frGy5WneL6_4fish.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3010
  %i.cb = load i64, ptr %i.g, align 8, !range !8, !alias.scope !3019, !noalias !3010, !noundef !5
  %i.cc = icmp eq i64 %i.cb, -1
  br i1 %i.cc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit54.i, label %bb.an

bb.an:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50.i unwind label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.cd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %.body37.i unwind label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %i.ce = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50.i: ; preds = %bb.an
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8frGy5WneL6_4fish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit54.i unwind label %.loopexit.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit54.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i50.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3010
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc9ArgumentsEBJ_(ptr noalias nofree noundef align 8 dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3010
  br label %_RINvNtNtCs8frGy5WneL6_4fish8builtins4path14path_transformNvB2_14normalize_helpNCNvB2_14path_normalize0EB6_.exit

.loopexit.split-lp64.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.z, %bb.x, %bb.ae
  %lpad.loopexit.split-lp87 = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish(ptr noalias nofree noundef align 8 dereferenceable(24) %i.f) #35
          to label %.body.i unwind label %bb.aq

bb.aq:                                            ; preds = %.loopexit.split-lp64.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body.i, %.body37.i
  %i.cf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCslLGyqsphxMB_10widestring9utfstring11Utf32StringECs8frGy5WneL6_4fish.exit.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !3010
  br label %bb.c

bb.ar:                                            ; preds = %.body37.i
  resume { ptr, i32 } %.pn32.i

_RINvNtNtCs8frGy5WneL6_4fish8builtins4path14path_transformNvB2_14normalize_helpNCNvB2_14path_normalize0EB6_.exit: ; preds = %bb.a, %bb.f, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit54.i
  %.sroa.0.1.i = phi i64 [ %i.am, %bb.f ], [ 8589934593, %bb.a ], [ 8589934592, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc6borrow3CowNtNtCslLGyqsphxMB_10widestring6utfstr8Utf32StrEECs8frGy5WneL6_4fish.exit54.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3010
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret i64 %.sroa.0.1.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc range(i64 4294967296, 8589934594) i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is(ptr noalias nofree noundef nonnull align 8 dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef range(i64 0, 576460752303423488) %3, i1 noundef zeroext %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 4 uses
  %i.d = alloca [176 x i8], align 8               ; 9 uses
  %i.e = alloca [176 x i8], align 8               ; 9 uses
  %i.f = alloca [176 x i8], align 8               ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 8 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [80 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 11 uses
  %i.k = alloca [80 x i8], align 8                ; 5 uses
  %i.l = alloca [80 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [72 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 48 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.n, i64 49
  %i.q = getelementptr inbounds nuw i8, ptr %i.n, i64 50 ; 2 uses
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.o, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 52 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 59
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(7) %i.r, i8 0, i64 7, i1 false)
  store i32 0, ptr %i.n, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store i32 0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.n, i64 12
  %i.w = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr null, ptr %i.w, align 8
  store <4 x i8> <i8 1, i8 1, i8 0, i8 0>, ptr %i.t, align 1
  %i.x = getelementptr inbounds nuw i8, ptr %i.n, i64 63
  store i8 1, ptr %i.x, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 64 ; 2 uses
  store i8 0, ptr %i.y, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 0, ptr %i.m, align 8
  %i.z = call fastcc i64 @_RNvNtNtCs8frGy5WneL6_4fish8builtins4path10parse_opts(ptr noalias nofree noundef align 8 dereferenceable(72) %i.n, ptr noalias nofree noundef align 8 dereferenceable(8) %i.m, i64 noundef 0, ptr noalias nofree noundef nonnull align 8 %2, i64 noundef %3, ptr noalias nofree noundef align 8 dereferenceable(432) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1)
  %i.aa = trunc i64 %i.z to i1
  br i1 %i.aa, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %4, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @_RNvMs2_NtNtNtCs8frGy5WneL6_4fish8builtins6shared4miscNtB5_9Arguments3new(ptr noalias nofree noundef nonnull sret([80 x i8]) align 8 captures(none) dereferenceable(80) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %1, i64 noundef 4096)
  %i.ab = load i8, ptr %i.o, align 8, !range !4, !noundef !5
  %. = add nuw nsw i8 %i.ab, 1
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 72
  store i8 %., ptr %i.ac, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.l, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.ad = load i32, ptr %i.u, align 8, !range !29, !noundef !5 ; 3 uses
  %i.ae = trunc nuw i32 %i.ad to i1               ; 2 uses
  %i.af = load i32, ptr %i.v, align 4             ; 9 uses
  %i.ag = and i32 %i.af, 32
  %i.ah = icmp eq i32 %i.ag, 0                    ; 2 uses
  %not. = xor i1 %i.ae, true                      ; 2 uses
  %.sroa.031.0 = select i1 %not., i1 true, i1 %i.ah ; 2 uses
  br i1 %.sroa.031.0, label %bb.f, label %bb.e

bb.d:                                             ; preds = %bb.b
  store i8 1, ptr %i.q, align 2
  br label %bb.c

bb.e:                                             ; preds = %bb.c
  %i.ai = invoke noundef i32 @_RNvMNtCse7JGOylGlDZ_3nix6unistdNtB2_3Uid9effective()
          to label %bb.f unwind label %bb.bk

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.576.0 = phi i32 [ undef, %bb.c ], [ %i.ai, %bb.e ]
  %storemerge = xor i1 %.sroa.031.0, true
  %i.aj = and i32 %i.af, 64
  %i.ak = icmp eq i32 %i.aj, 0                    ; 2 uses
  %.sroa.032.0 = select i1 %not., i1 true, i1 %i.ak ; 2 uses
  br i1 %.sroa.032.0, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.al = invoke noundef i32 @_RNvMs2_NtCse7JGOylGlDZ_3nix6unistdNtB5_3Gid9effective()
          to label %bb.h unwind label %bb.bk

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.5.0 = phi i32 [ undef, %bb.f ], [ %i.al, %bb.g ]
  %storemerge40 = xor i1 %.sroa.032.0, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.i, ptr noundef nonnull align 8 dereferenceable(80) %i.l, i64 80, i1 false)
  call void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec21spec_from_iter_nestedINtB4_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEINtB2_18SpecFromIterNestedB11_NtB13_9ArgumentsE9from_iterB19_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(80) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.am = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !5
  %i.aq = getelementptr inbounds nuw [32 x i8], ptr %i.an, i64 %i.ap ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.n, i64 4
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.gep114.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.519.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.au = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 60
  %i.aw = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.ba = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.pre.i.i.i = load i32, ptr %i.n, align 8, !range !29
  %.pre.i.i.i.fr = freeze i32 %.pre.i.i.i         ; 3 uses
  %i.bb = or i32 %i.ad, %.pre.i.i.i.fr
  %or.cond.i.i.i = icmp eq i32 %i.bb, 0
  %i.bc = trunc nuw i32 %.pre.i.i.i.fr to i1      ; 2 uses
  %i.bd = load i32, ptr %i.ar, align 4            ; 6 uses
  %i.be = and i32 %i.bd, 8
  %.not69.i.i.i.i = icmp eq i32 %i.be, 0
  %5 = and i32 %i.bd, 4
  %6 = icmp ne i32 %5, 0
  %i.bf = and i32 %i.bd, 2
  %i.bg = icmp ne i32 %i.bf, 0
  %7 = trunc i32 %i.bd to i1
  %8 = insertelement <2 x i32> poison, i32 %i.bd, i64 0
  %9 = shufflevector <2 x i32> %8, <2 x i32> poison, <2 x i32> zeroinitializer
  %10 = and <2 x i32> %9, <i32 16, i32 32>
  %11 = icmp ne <2 x i32> %10, zeroinitializer
  %i.bh = and i32 %i.bd, 64
  %i.bi = icmp ne i32 %i.bh, 0
  %.not70.i.i.i.i = trunc i32 %i.af to i1
  %i.bj = and i32 %i.af, 2
  %spec.select.i.i.i.i = or disjoint i32 %i.bj, 4
  %i.bk = and i32 %i.af, 4
  %.not74.i.i.i.i = icmp eq i32 %i.bk, 0          ; 2 uses
  %i.bl = and i32 %i.af, 120
  %.not76.i.i.i.i = icmp eq i32 %i.bl, 0          ; 2 uses
  %i.bm = and i32 %i.af, 8
  %.not77.i.i.i.i = icmp ne i32 %i.bm, 0
  %i.bn = and i32 %i.af, 16
  %.not78.i.i.i.i = icmp ne i32 %i.bn, 0
  %i.bo = load i8, ptr %i.r, align 4, !range !4   ; 2 uses
  %i.bp = or i32 %i.ad, %.pre.i.i.i.fr
  %or.cond = icmp eq i32 %i.bp, 0
  %i.bq = trunc nuw i8 %i.bo to i1
  %i.br = load i8, ptr %i.y, align 8, !range !4
  %i.bs = trunc nuw i8 %i.br to i1                ; 3 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.val54 = load i8, ptr %i.p, align 1            ; 2 uses
  %.val55 = load i8, ptr %i.q, align 2            ; 3 uses
  %i.bw = trunc nuw i8 %.val55 to i1
  %i.bx = and i32 %i.af, 3
  %brmerge117.not = icmp eq i32 %i.bx, 0
  %spec.select.i.i.i.i.mux = select i1 %.not70.i.i.i.i, i32 %spec.select.i.i.i.i, i32 2 ; 2 uses
  %12 = insertelement <4 x i1> poison, i1 %i.bg, i64 0
  %13 = insertelement <4 x i1> %12, i1 %7, i64 1
  %14 = shufflevector <2 x i1> %11, <2 x i1> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %15 = shufflevector <4 x i1> %13, <4 x i1> %14, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  br label %.backedge.outer

.backedge.outer:                                  ; preds = %.backedge.outer.backedge, %bb.h
  %.sroa.0.0.ph = phi ptr [ %i.an, %bb.h ], [ %.us-phi111, %.backedge.outer.backedge ]
  %.sroa.08.0.ph = phi i64 [ 0, %bb.h ], [ %i.ed, %.backedge.outer.backedge ] ; 4 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.outer, %bb.at
  %.sroa.0.0 = phi ptr [ %.us-phi111, %bb.at ], [ %.sroa.0.0.ph, %.backedge.outer ] ; 4 uses
  br i1 %or.cond.i.i.i, label %.split.us, label %.split

.split.us:                                        ; preds = %.backedge
  %i.by = icmp eq ptr %.sroa.0.0, %i.aq
  br i1 %i.by, label %.split110.us, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us: ; preds = %.split.us
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0, i64 32
  br label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit

.split:                                           ; preds = %.backedge, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i
  %i.ca = phi ptr [ %i.cc, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ], [ %.sroa.0.0, %.backedge ] ; 5 uses
  %i.cb = icmp eq ptr %i.ca, %i.aq
  br i1 %i.cb, label %.split110.us, label %bb.i

bb.i:                                             ; preds = %.split
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 32 ; 2 uses
  %.sroa.01.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %.sroa.01.0.i.i.i = load ptr, ptr %.sroa.01.0.in.i.i.i, align 8, !noalias !3042, !nonnull !5, !noundef !5 ; 4 uses
  %.sroa.3.0.in.i.i.i = getelementptr inbounds nuw i8, ptr %i.ca, i64 16
  %.sroa.3.0.i.i.i = load i64, ptr %.sroa.3.0.in.i.i.i, align 8, !noalias !3042, !noundef !5 ; 4 uses
  br i1 %i.bc, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br i1 %.not69.i.i.i.i, label %bb.l, label %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i

bb.k:                                             ; preds = %bb.q, %bb.p, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i, %bb.i
  %.sroa.11.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.6.sroa.5.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  %.sroa.9.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.6.sroa.0.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  %.sroa.7.0.i.i.i.i = phi i32 [ undef, %bb.i ], [ %.sroa.519.0.copyload.i.i.i.i, %bb.q ], [ %.sroa.519.0.copyload.i.i.i.i, %bb.p ], [ %.sroa.519.0.copyload.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i ]
  br i1 %i.ae, label %bb.u, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.l:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.j
  %.sroa.023.0.i.i.i.i = phi i1 [ %.sroa.04.0.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i ], [ false, %bb.j ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3043
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil5wstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc:                                           ; preds = %bb.l
  %i.cd = load i64, ptr %i.e, align 8, !range !13, !noalias !3043, !noundef !5
  %i.ce = icmp eq i64 %i.cd, 2
  br i1 %i.ce, label %bb.r, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i

_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3043
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil6lwstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.f, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc56 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc56:                                         ; preds = %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i
  %i.cf = load i64, ptr %i.f, align 8, !range !13, !noalias !3043, !noundef !5
  %i.cg = icmp ne i64 %i.cf, 2                    ; 2 uses
  %.val.i.i.i.i.i = load i32, ptr %.sroa.gep114.i.i.i.i, align 8, !noalias !3043
  %i.ch = and i32 %.val.i.i.i.i.i, 61440
  %i.ci = icmp eq i32 %i.ch, 40960
  %.sroa.04.0.i.i.i.i.i = select i1 %i.cg, i1 %i.ci, i1 false
  %.val103.i.i.i.i = load ptr, ptr %i.as, align 8, !noalias !3043 ; 4 uses
  br i1 %i.cg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i, label %bb.m

bb.m:                                             ; preds = %.noexc56
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3043
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val103.i.i.i.i) ]
  %i.cj = ptrtoint ptr %.val103.i.i.i.i to i64    ; 2 uses
  %i.ck = and i64 %i.cj, 3
  switch i64 %i.ck, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i
    i64 3, label %bb.n
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i
    i64 1, label %bb.o
  ], !prof !22

default.unreachable:                              ; preds = %bb.ag, %bb.r, %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.cl = icmp ult ptr %.val103.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.cm = and i64 %i.cj, 1095216660480
  %i.cn = icmp ne i64 %i.cm, 1095216660480
  call void @llvm.assume(i1 %i.cl)
  call void @llvm.assume(i1 %i.cn)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i

bb.o:                                             ; preds = %bb.m
  %i.co = getelementptr i8, ptr %.val103.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.co) ]
  store ptr %i.co, ptr %i.at, align 8, !alias.scope !3044, !noalias !3043
  store i8 3, ptr %i.c, align 8, !alias.scope !3044, !noalias !3043
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.at)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i: ; preds = %bb.o, %bb.n, %bb.m, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3043
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i.i.i.i: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtB4_2io5error5ErrorECs8frGy5WneL6_4fish.exit.i.i.i.i.i, %.noexc56
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3043
  br label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i: ; preds = %.noexc
  %.sroa.519.0.copyload.i.i.i.i = load i32, ptr %.sroa.519.0..sroa_idx.i.i.i.i, align 8, !noalias !3043 ; 4 uses
  %.sroa.6.sroa.0.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 4, !noalias !3043 ; 3 uses
  %.sroa.6.sroa.5.0.copyload.i.i.i.i = load i32, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !noalias !3043 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3043
  br i1 %.sroa.023.0.i.i.i.i, label %bb.k, label %bb.p

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit109.i.i.i.i
  %i.cp = and i32 %.sroa.519.0.copyload.i.i.i.i, 61440 ; 3 uses
  %i.cq = icmp eq i32 %i.cp, 32768
  %or.cond.i.i.i.i = and i1 %6, %i.cq
  br i1 %or.cond.i.i.i.i, label %bb.k, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cr = insertelement <4 x i32> poison, i32 %i.cp, i64 0
  %i.cs = shufflevector <4 x i32> %i.cr, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.ct = icmp eq <4 x i32> %i.cs, <i32 16384, i32 24576, i32 8192, i32 4096>
  %i.cu = and <4 x i1> %i.ct, %15
  %i.cv = icmp eq i32 %i.cp, 49152
  %or.cond11.i.i.i.i = and i1 %i.bi, %i.cv
  %i.cw = freeze <4 x i1> %i.cu
  %i.cx = bitcast <4 x i1> %i.cw to i4
  %i.cy = icmp ne i4 %i.cx, 0
  %op.rdx = select i1 %i.cy, i1 true, i1 %or.cond11.i.i.i.i
  br i1 %op.rdx, label %bb.k, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.r:                                             ; preds = %.noexc
  %.val99.i.i.i.i = load ptr, ptr %i.az, align 8, !noalias !3043, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3043
  %i.cz = ptrtoint ptr %.val99.i.i.i.i to i64     ; 2 uses
  %i.da = and i64 %i.cz, 3
  switch i64 %i.da, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i
    i64 3, label %bb.s
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i
    i64 1, label %bb.t
  ], !prof !22

bb.s:                                             ; preds = %bb.r
  %i.db = icmp ult ptr %.val99.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.dc = and i64 %i.cz, 1095216660480
  %i.dd = icmp ne i64 %i.dc, 1095216660480
  call void @llvm.assume(i1 %i.db)
  call void @llvm.assume(i1 %i.dd)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.de = getelementptr i8, ptr %.val99.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.de) ]
  store ptr %i.de, ptr %i.ba, align 8, !alias.scope !3045, !noalias !3043
  store i8 3, ptr %i.b, align 8, !alias.scope !3045, !noalias !3043
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ba)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i: ; preds = %bb.t, %bb.s, %bb.r, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3043
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3043
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.u:                                             ; preds = %bb.k
  br i1 %brmerge117.not, label %bb.v, label %bb.y

bb.v:                                             ; preds = %bb.u
  br i1 %.not74.i.i.i.i, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.y, %bb.v
  %.sroa.029.1.i.i.i.i = phi i32 [ %spec.select.i.i.i.i.mux, %bb.y ], [ 0, %bb.v ]
  %i.df = or i32 %.sroa.029.1.i.i.i.i, 1
  br label %bb.z

bb.x:                                             ; preds = %bb.v
  br i1 %.not76.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.aa

bb.y:                                             ; preds = %bb.u
  br i1 %.not74.i.i.i.i, label %bb.z, label %bb.w

bb.z:                                             ; preds = %bb.y, %bb.w
  %.sroa.029.3.i.i.i.i = phi i32 [ %i.df, %bb.w ], [ %spec.select.i.i.i.i.mux, %bb.y ]
  %i.dg = invoke noundef i32 @_RNvNtCs8frGy5WneL6_4fish5wutil7waccess(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i, i32 noundef %.sroa.029.3.i.i.i.i)
          to label %.noexc59 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc59:                                         ; preds = %bb.z
  %.not75.i.i.i.i = icmp ne i32 %i.dg, -1         ; 2 uses
  %brmerge116 = select i1 %.not75.i.i.i.i, i1 true, i1 %.not76.i.i.i.i
  %not..not75.i.i.i.i = xor i1 %.not75.i.i.i.i, true
  br i1 %brmerge116, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc59, %bb.x
  br i1 %i.bc, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3043
  invoke void @_RNvNtCs8frGy5WneL6_4fish5wutil5wstat(ptr noalias nofree noundef nonnull sret([176 x i8]) align 8 captures(address) dereferenceable(176) %i.d, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) %.sroa.01.0.i.i.i, i64 noundef %.sroa.3.0.i.i.i)
          to label %.noexc60 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

.noexc60:                                         ; preds = %bb.ab
  %i.dh = load i64, ptr %i.d, align 8, !range !13, !noalias !3043, !noundef !5
  %i.di = icmp eq i64 %i.dh, 2
  br i1 %i.di, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i, %bb.aa
  %.sroa.054.0.i.i.i.i = phi i32 [ %i.dn, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.11.0.i.i.i.i, %bb.aa ]
  %.sroa.053.0.i.i.i.i = phi i32 [ %i.dm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.9.0.i.i.i.i, %bb.aa ]
  %.sroa.051.0.i.i.i.i = phi i32 [ %i.dl, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i ], [ %.sroa.7.0.i.i.i.i, %bb.aa ] ; 2 uses
  %i.dj = and i32 %.sroa.051.0.i.i.i.i, 2048
  %i.dk = icmp eq i32 %i.dj, 0
  %or.cond86.i.i.i.i = select i1 %.not77.i.i.i.i, i1 %i.dk, i1 false
  br i1 %or.cond86.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.ad

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit5.i: ; preds = %.noexc60
  %i.dl = load i32, ptr %i.au, align 8, !noalias !3043, !noundef !5
  %i.dm = load i32, ptr %i.av, align 4, !noalias !3043, !noundef !5
  %i.dn = load i32, ptr %i.aw, align 8, !noalias !3043, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3043
  br label %bb.ac

bb.ad:                                            ; preds = %bb.ac
  %i.do = and i32 %.sroa.051.0.i.i.i.i, 1024
  %i.dp = icmp eq i32 %i.do, 0
  %or.cond88.i.i.i.i = select i1 %.not78.i.i.i.i, i1 %i.dp, i1 false
  br i1 %or.cond88.i.i.i.i, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %.not80.i.i.i.i = icmp eq i32 %.sroa.576.0, %.sroa.053.0.i.i.i.i
  %or.cond89.i.i.i.i = select i1 %storemerge, i1 %.not80.i.i.i.i, i1 false
  %or.cond93.i.i.i.i = select i1 %i.ah, i1 true, i1 %or.cond89.i.i.i.i ; 2 uses
  %or.cond93.i.i.i.i.not = xor i1 %or.cond93.i.i.i.i, true
  %brmerge = select i1 %or.cond93.i.i.i.i.not, i1 true, i1 %i.ak
  br i1 %brmerge, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %.not82.i.i.i.i = icmp eq i32 %.sroa.5.0, %.sroa.054.0.i.i.i.i
  %or.cond90.i.i.i.i = select i1 %storemerge40, i1 %.not82.i.i.i.i, i1 false
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

bb.ag:                                            ; preds = %.noexc60
  %.val95.i.i.i.i = load ptr, ptr %i.ax, align 8, !noalias !3043, !nonnull !5, !noundef !5 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3046
  %i.dq = ptrtoint ptr %.val95.i.i.i.i to i64     ; 2 uses
  %i.dr = and i64 %i.dq, 3
  switch i64 %i.dr, label %default.unreachable [
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
    i64 3, label %bb.ah
    i64 0, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i
    i64 1, label %bb.ai
  ], !prof !22

bb.ah:                                            ; preds = %bb.ag
  %i.ds = icmp ult ptr %.val95.i.i.i.i, inttoptr (i64 188978561024 to ptr)
  %i.dt = and i64 %i.dq, 1095216660480
  %i.du = icmp ne i64 %i.dt, 1095216660480
  call void @llvm.assume(i1 %i.ds), !noalias !3047
  call void @llvm.assume(i1 %i.du), !noalias !3047
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i

bb.ai:                                            ; preds = %bb.ag
  %i.dv = getelementptr i8, ptr %.val95.i.i.i.i, i64 -1 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dv) ], !noalias !3047
  store ptr %i.dv, ptr %i.ay, align 8, !alias.scope !3048, !noalias !3046
  store i8 3, ptr %i.a, align 8, !alias.scope !3048, !noalias !3046
  invoke void @_RNvXsd_NtNtCs3oUPovFnLWP_4core2io5errorNtB5_11CustomOwnerNtNtNtB9_3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i: ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3046
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3043
  br label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i: ; preds = %.noexc59, %bb.q, %bb.ae, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i, %bb.af, %bb.ad, %bb.ac, %bb.x, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i, %bb.k
  %.sroa.016.0.i.i.i.i.shrunk = phi i1 [ %or.cond90.i.i.i.i, %bb.af ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit113.i.i.i.i ], [ %not..not75.i.i.i.i, %.noexc59 ], [ false, %bb.ac ], [ false, %bb.ad ], [ %or.cond93.i.i.i.i, %bb.ae ], [ false, %bb.q ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtCsaL1QbXo9JQH_3std2fs8MetadataNtNtNtB4_2io5error5ErrorEECs8frGy5WneL6_4fish.exit.i ], [ true, %bb.k ], [ true, %bb.x ]
  %.sroa.016.0.i.i.i.i = zext i1 %.sroa.016.0.i.i.i.i.shrunk to i8
  %.not.i = icmp eq i8 %i.bo, %.sroa.016.0.i.i.i.i
  br i1 %.not.i, label %.split, label %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp: ; preds = %bb.ai, %bb.ab, %bb.z, %bb.t, %bb.o, %_RINvMNtCs3oUPovFnLWP_4core6resultINtB3_6ResultRNtNtCsaL1QbXo9JQH_3std2fs8MetadataRNtNtNtB5_2io5error5ErrorE9is_ok_andNvMsm_BL_BJ_10is_symlinkECs8frGy5WneL6_4fish.exit.i.i.i.i, %bb.l, %bb.av, %bb.ar, %bb.bg, %bb.bb, %bb.ba, %bb.ay
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body71

.body71:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp, %bb.be
  %eh.lpad-body72 = phi { ptr, i32 } [ %i.ep, %bb.be ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #35
          to label %.thread unwind label %bb.bj

_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us
  %.us-phi111 = phi ptr [ %i.bz, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us ], [ %i.cc, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ] ; 2 uses
  %.us-phi112 = phi ptr [ %.sroa.0.0, %_RINvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB7_4IterNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvNtBW_4path20path_filter_maybe_is0EBY_.exit.split.us ], [ %i.ca, %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvNtNtCs8frGy5WneL6_4fish8builtins4path20path_filter_maybe_is0INtB7_5FnMutTRRNtNtNtBU_6shared4misc10InputValueEE8call_mutBW_.exit.i ] ; 5 uses
  br i1 %or.cond, label %bb.ar, label %bb.aq

.split110.us:                                     ; preds = %.split.us, %.split
  br i1 %i.bs, label %bb.am, label %bb.aj

bb.aj:                                            ; preds = %bb.am, %.split110.us
  invoke void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBN_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit unwind label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBU_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.al

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtNtCs8frGy5WneL6_4fish8builtins6shared4misc10InputValueEEB1g_.exit: ; preds = %bb.aj
  %.not42 = icmp eq i64 %.sroa.08.0.ph, 0
  %.50 = zext i1 %.not42 to i64
  br label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.dx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #32
  unreachable

bb.am:                                            ; preds = %.split110.us
  %i.dy = load i64, ptr %i.ao, align 8, !noundef !5 ; 2 uses
  %i.dz = icmp ult i64 %i.dy, 288230376151711744
  call void @llvm.assume(i1 %i.dz)
  %.not41 = icmp eq i64 %.sroa.08.0.ph, %i.dy
end_hunk_0
