Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x-7f56cf114ea533af.yara_x.54960d49aaff044b-cgu.06?download=true
inline.NumInlined: 4309
inline.NumDeleted: 1921
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 35
loop-unroll.NumUnrolled: 36
begin_hunk_0_@_RNvXsE_NvNtCs7gfv9tzbXmh_6yara_x8compilersc_1__NtB7_15SubPatternFlagsNtNtCskKLDkoKarTP_4core3fmt8LowerHex3fmt:bb.a
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsF_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %1) unnamed_addr #20 {
bb.a:
  %i.a = tail call fastcc noundef zeroext i1 @_RNvXsK_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_7HirKindNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %1) #47
  br i1 %i.a, label %bb.b, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !9, !noundef !9 ; 15 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !9, !noundef !9 ; 15 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6997)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6998)
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 76
  %i.g = load i8, ptr %i.f, align 4, !range !46, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 76
  %i.i = load i8, ptr %i.h, align 4, !range !46, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 77
  %i.l = load i8, ptr %i.k, align 1, !range !46, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 77
  %i.n = load i8, ptr %i.m, align 1, !range !46, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.o = icmp eq i8 %i.l, %i.n
  br i1 %i.o, label %bb.d, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.c
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 78
  %i.q = load i8, ptr %i.p, align 2, !range !46, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 78
  %i.s = load i8, ptr %i.r, align 2, !range !46, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.t = icmp eq i8 %i.q, %i.s
  br i1 %i.t, label %bb.e, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.u = load i64, ptr %i.c, align 8, !range !13, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.w = trunc nuw i64 %i.u to i1
  %i.x = load i64, ptr %i.e, align 8, !range !13, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.y = trunc nuw i64 %i.x to i1                 ; 2 uses
  br i1 %i.w, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.y, label %.split.i, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.e
  br i1 %i.y, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.h

.split.i:                                         ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.aa = load i64, ptr %i.v, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.ab = load i64, ptr %i.z, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.ac = icmp eq i64 %i.aa, %i.ab
  br i1 %i.ac, label %bb.h, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.split.i, %bb.g
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ae = load i64, ptr %i.ad, align 8, !range !13, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ag = trunc nuw i64 %i.ae to i1
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !range !13, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.aj = trunc nuw i64 %i.ai to i1               ; 2 uses
  br i1 %i.ag, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  br i1 %i.aj, label %.split3.i, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.h
  br i1 %i.aj, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.k

.split3.i:                                        ; preds = %bb.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.al = load i64, ptr %i.af, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.am = load i64, ptr %i.ak, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.an = icmp eq i64 %i.al, %i.am
  br i1 %i.an, label %bb.k, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.split3.i, %bb.j
  %i.ao = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  %i.ap = load i32, ptr %i.ao, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.aq = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  %i.ar = load i32, ptr %i.aq, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.l, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 60
  %i.au = load i32, ptr %i.at, align 4, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 60
  %i.aw = load i32, ptr %i.av, align 4, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %bb.m, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  %i.az = load i32, ptr %i.ay, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %i.bb = load i32, ptr %i.ba, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.bc = icmp eq i32 %i.az, %i.bb
  br i1 %i.bc, label %bb.n, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bd = getelementptr inbounds nuw i8, ptr %i.c, i64 68
  %i.be = load i32, ptr %i.bd, align 4, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.bf = getelementptr inbounds nuw i8, ptr %i.e, i64 68
  %i.bg = load i32, ptr %i.bf, align 4, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.bh = icmp eq i32 %i.be, %i.bg
  br i1 %i.bh, label %bb.o, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bi = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.bk = getelementptr inbounds nuw i8, ptr %i.e, i64 72
  %i.bl = load i32, ptr %i.bk, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.bm = icmp eq i32 %i.bj, %i.bl
  br i1 %i.bm, label %bb.p, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %bb.o
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.bo = load i64, ptr %i.bn, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.bp = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.br = icmp eq i64 %i.bo, %i.bq
  br i1 %i.br, label %bb.q, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.bt = load i64, ptr %i.bs, align 8, !range !13, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.bu = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.bv = trunc nuw i64 %i.bt to i1
  %i.bw = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.bx = load i64, ptr %i.bw, align 8, !range !13, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.by = trunc nuw i64 %i.bx to i1               ; 2 uses
  br i1 %i.bv, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  br i1 %i.by, label %bb.t, label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.q
  %i.bz = xor i1 %i.by, true
  br label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.r
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.cb = load i64, ptr %i.bu, align 8, !alias.scope !6997, !noalias !6998, !noundef !9
  %i.cc = load i64, ptr %i.ca, align 8, !alias.scope !6998, !noalias !6997, !noundef !9
  %i.cd = icmp eq i64 %i.cb, %i.cc
  br label %_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

_RNvXs1U_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB6_11PropertiesINtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %.split3.i, %bb.j, %bb.i, %.split.i, %bb.g, %bb.f, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ %i.cd, %bb.t ], [ false, %bb.g ], [ %i.bz, %bb.s ], [ false, %bb.p ], [ false, %bb.i ], [ false, %bb.f ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.o ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.r ], [ false, %.split.i ], [ false, %.split3.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsF_NvNtCs7gfv9tzbXmh_6yara_x8compilersc_1__NtB7_15SubPatternFlagsNtNtCskKLDkoKarTP_4core3fmt8UpperHex3fmt(ptr noalias nofree noundef readonly align 2 captures(none) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [2 x i8], align 2                 ; 4 uses
  %i.b = load i16, ptr %0, align 2, !noundef !9
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7002
  store i16 %i.b, ptr %i.a, align 2, !noalias !7002
  %i.c = call noundef zeroext i1 @_RNvXso_NtNtCskKLDkoKarTP_4core3fmt3numtNtB7_8UpperHex3fmt(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !7003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7002
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsJ_NtNtCs7gfv9tzbXmh_6yara_x8compiler8warningsNtB5_26InvariantBooleanExpressionNtNtCskKLDkoKarTP_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXs5_NtNtCs7gfv9tzbXmh_6yara_x8compiler6reportNtB5_6ReportNtNtCskKLDkoKarTP_4core3fmt7Display3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.b = load ptr, ptr %1, align 8, !nonnull !9, !noundef !9
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !9, !align !17, !noundef !9
  %i.e = call noundef zeroext i1 @_RNvNtCskKLDkoKarTP_4core3fmt5write(ptr noundef nonnull %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.d, ptr noundef nonnull @72, ptr noundef nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.e
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: readwrite, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsK_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_7HirKindNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %1) unnamed_addr #20 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !34, !noundef !9 ; 5 uses
  %i.b = icmp ne i64 %i.a, 4
  tail call void @llvm.assume(i1 %i.b)
  %i.c = add nsw i64 %i.a, -2
  %.inv = icmp samesign ult i64 %i.a, 2
  %i.d = select i1 %.inv, i64 2, i64 %i.c         ; 2 uses
  %i.e = load i64, ptr %1, align 8, !range !34, !noundef !9 ; 4 uses
  %i.f = icmp ne i64 %i.e, 4
  tail call void @llvm.assume(i1 %i.f)
  %i.g = add nsw i64 %i.e, -2
  %.inv5 = icmp samesign ult i64 %i.e, 2          ; 2 uses
  %i.h = select i1 %.inv5, i64 2, i64 %i.g
  %i.i = icmp eq i64 %i.d, %i.h
  br i1 %i.i, label %bb.b, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  switch i64 %i.d, label %bb.c [
    i64 1, label %bb.d
    i64 2, label %2
    i64 3, label %bb.l
    i64 4, label %bb.m
    i64 5, label %bb.s
    i64 6, label %bb.y
    i64 7, label %bb.as
    i64 0, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit
  ]

_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit: ; preds = %.split119, %bb.au, %_RNvYNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs7gfv9tzbXmh_6yara_x.exit11, %.lr.ph, %bb.ba, %bb.bj, %bb.bc, %bb.az, %bb.ax, %bb.aw, %bb.av, %bb.bi, %bb.bh, %bb.bg, %bb.bf, %bb.be, %bb.bd, %bb.bl, %.split.i15, %.split3.i14, %.split118, %bb.aa, %_RNvYNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs7gfv9tzbXmh_6yara_x.exit, %.lr.ph64, %bb.ag, %bb.ap, %bb.ai, %bb.af, %bb.ad, %bb.ac, %bb.ab, %bb.ao, %bb.an, %bb.am, %bb.al, %bb.ak, %bb.aj, %bb.ar, %.split.i, %.split3.i, %.lr.ph.i.i, %.lr.ph.i4.i, %bb.at, %bb.z, %bb.x, %bb.w, %bb.v, %bb.u, %bb.s, %.split17, %bb.r, %bb.q, %bb.p, %bb.n, %bb.m, %.split, %bb.k, %bb.j, %bb.i, %bb.h, %bb.f, %bb.as, %bb.y, %bb.d, %bb.b, %2, %bb.a, %bb.e, %bb.l
  %.sroa.0.0.shrunk = phi i1 [ %i.s, %bb.e ], [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.as ], [ %i.bd, %bb.l ], [ false, %bb.s ], [ false, %.split ], [ false, %.split17 ], [ false, %bb.d ], [ false, %bb.v ], [ false, %bb.y ], [ false, %.split118 ], [ false, %bb.u ], [ false, %bb.w ], [ %i.cy, %bb.x ], [ false, %bb.q ], [ true, %2 ], [ false, %bb.m ], [ true, %bb.k ], [ false, %bb.i ], [ false, %bb.h ], [ false, %bb.f ], [ true, %bb.j ], [ %.sroa.0.0.i.not.i.not.i10.i, %.lr.ph.i4.i ], [ true, %bb.z ], [ false, %bb.n ], [ %i.cd, %bb.r ], [ false, %bb.p ], [ true, %bb.at ], [ %.sroa.0.0.i.not.i.not.i.i, %.lr.ph.i.i ], [ false, %bb.ar ], [ false, %bb.aj ], [ false, %bb.ak ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.an ], [ false, %bb.ao ], [ false, %bb.ab ], [ false, %bb.ac ], [ false, %bb.ad ], [ false, %bb.af ], [ false, %bb.ai ], [ false, %bb.ap ], [ false, %bb.ag ], [ false, %.lr.ph64 ], [ false, %_RNvYNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs7gfv9tzbXmh_6yara_x.exit ], [ false, %.split.i ], [ true, %bb.aa ], [ false, %.split3.i ], [ false, %bb.bg ], [ false, %.split3.i14 ], [ false, %bb.bh ], [ false, %bb.bi ], [ false, %bb.av ], [ false, %bb.aw ], [ false, %bb.ax ], [ false, %bb.az ], [ false, %bb.bc ], [ false, %bb.bj ], [ false, %bb.ba ], [ false, %.lr.ph ], [ false, %_RNvYNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs7gfv9tzbXmh_6yara_x.exit11 ], [ false, %bb.be ], [ false, %bb.bf ], [ true, %bb.au ], [ false, %bb.bl ], [ false, %.split119 ], [ false, %.split.i15 ], [ false, %bb.bd ]
  ret i1 %.sroa.0.0.shrunk

bb.c:                                             ; preds = %bb.b
  unreachable

2:                                                ; preds = %bb.b
  br i1 %.inv5, label %bb.f, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noundef !9 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.m = load i64, ptr %i.l, align 8, !noundef !9
  %i.n = icmp eq i64 %i.k, %i.m
  br i1 %i.n, label %bb.e, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.d
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !9, !noundef !9
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !9, !noundef !9
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.r, ptr nonnull %i.p, i64 %i.k)
  %i.s = icmp eq i32 %bcmp, 0
  br label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7034)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7035)
  %i.t = icmp eq i64 %i.a, %i.e
  br i1 %i.t, label %bb.g, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.u = trunc nuw i64 %i.a to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7034, !noalias !7035, !noundef !9 ; 5 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !7035, !noalias !7034, !noundef !9
  %i.z = icmp eq i64 %i.w, %i.y                   ; 2 uses
  br i1 %i.u, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.k, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.g
  br i1 %i.z, label %bb.j, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.j:                                             ; preds = %bb.i
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !7035, !noalias !7034, !nonnull !9, !noundef !9
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !7034, !noalias !7035, !nonnull !9, !noundef !9
  %i.ae = icmp eq i64 %i.w, 0
  br i1 %i.ae, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.j, %.lr.ph.i.i
  %.sroa.01.08.i.i = phi i64 [ %i.am, %.lr.ph.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %.sroa.01.08.i.i
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.ab, i64 %.sroa.01.08.i.i
  %i.ah = load <2 x i32>, ptr %i.af, align 4, !noalias !7036
  %i.ai = load <2 x i32>, ptr %i.ag, align 4, !noalias !7036
  %i.aj = icmp eq <2 x i32> %i.ah, %i.ai          ; 2 uses
  %i.ak = extractelement <2 x i1> %i.aj, i64 0
  %i.al = extractelement <2 x i1> %i.aj, i64 1
  %.sroa.0.0.i.not.i.not.i.i = select i1 %i.ak, i1 %i.al, i1 false ; 2 uses
  %i.am = add nuw i64 %.sroa.01.08.i.i, 1         ; 2 uses
  %exitcond.not.i.i = icmp ne i64 %i.am, %i.w
  %or.cond.not = select i1 %.sroa.0.0.i.not.i.not.i.i, i1 %exitcond.not.i.i, i1 false
  br i1 %or.cond.not, label %.lr.ph.i.i, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %bb.h
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !7035, !noalias !7034, !nonnull !9, !noundef !9
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !7034, !noalias !7035, !nonnull !9, !noundef !9
  %i.ar = icmp eq i64 %i.w, 0
  br i1 %i.ar, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.k, %.lr.ph.i4.i
  %.sroa.01.08.i5.i = phi i64 [ %i.ay, %.lr.ph.i4.i ], [ 0, %bb.k ] ; 3 uses
  %i.as = getelementptr inbounds nuw [2 x i8], ptr %i.aq, i64 %.sroa.01.08.i5.i ; 2 uses
  %i.at = getelementptr inbounds nuw [2 x i8], ptr %i.ao, i64 %.sroa.01.08.i5.i ; 2 uses
  %.val.i6.i = load i8, ptr %i.as, align 1, !noalias !7036, !noundef !9
  %i.au = getelementptr i8, ptr %i.as, i64 1
  %.val5.i7.i = load i8, ptr %i.au, align 1, !noalias !7036
  %.val6.i8.i = load i8, ptr %i.at, align 1, !noalias !7036, !noundef !9
  %i.av = getelementptr i8, ptr %i.at, i64 1
  %.val7.i9.i = load i8, ptr %i.av, align 1, !noalias !7036
  %i.aw = icmp eq i8 %.val.i6.i, %.val6.i8.i
  %i.ax = icmp eq i8 %.val5.i7.i, %.val7.i9.i
  %.sroa.0.0.i.not.i.not.i10.i = select i1 %i.aw, i1 %i.ax, i1 false ; 2 uses
  %i.ay = add nuw i64 %.sroa.01.08.i5.i, 1        ; 2 uses
  %exitcond.not.i12.i = icmp ne i64 %i.ay, %i.w
  %or.cond133.not = select i1 %.sroa.0.0.i.not.i.not.i10.i, i1 %exitcond.not.i12.i, i1 false
  br i1 %or.cond133.not, label %.lr.ph.i4.i, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.l:                                             ; preds = %bb.b
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ba = load i32, ptr %i.az, align 8, !range !61, !noundef !9
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bc = load i32, ptr %i.bb, align 8, !range !61, !noundef !9
  %i.bd = icmp eq i32 %i.ba, %i.bc
  br label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.m:                                             ; preds = %bb.b
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7037)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7038)
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bh = load i32, ptr %i.bg, align 8, !alias.scope !7037, !noalias !7038, !noundef !9
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bj = load i32, ptr %i.bi, align 8, !alias.scope !7038, !noalias !7037, !noundef !9
  %i.bk = icmp eq i32 %i.bh, %i.bj
  br i1 %i.bk, label %bb.n, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.bm = load i8, ptr %i.bl, align 4, !range !46, !alias.scope !7037, !noalias !7038, !noundef !9
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bo = load i8, ptr %i.bn, align 4, !range !46, !alias.scope !7038, !noalias !7037, !noundef !9
  %i.bp = icmp eq i8 %i.bm, %i.bo
  br i1 %i.bp, label %bb.o, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %bb.n
  %i.bq = load i32, ptr %i.be, align 8, !range !21, !alias.scope !7037, !noalias !7038, !noundef !9
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.bs = trunc nuw i32 %i.bq to i1
  %i.bt = load i32, ptr %i.bf, align 8, !range !21, !alias.scope !7038, !noalias !7037, !noundef !9
  %i.bu = trunc nuw i32 %i.bt to i1               ; 2 uses
  br i1 %i.bs, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  br i1 %i.bu, label %.split, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %bb.o
  br i1 %i.bu, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.r

.split:                                           ; preds = %bb.p
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bw = load i32, ptr %i.br, align 4, !alias.scope !7037, !noalias !7038, !noundef !9
  %i.bx = load i32, ptr %i.bv, align 4, !alias.scope !7038, !noalias !7037, !noundef !9
  %i.by = icmp eq i32 %i.bw, %i.bx
  br i1 %i.by, label %bb.r, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.split, %bb.q
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ca = load ptr, ptr %i.bz, align 8, !alias.scope !7037, !noalias !7038, !nonnull !9, !noundef !9
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cc = load ptr, ptr %i.cb, align 8, !alias.scope !7038, !noalias !7037, !nonnull !9, !noundef !9
  %i.cd = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ca, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cc) #47, !noalias !7039, !inline_history !7010
  br label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %bb.b
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.cf = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7041)
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ch = load i32, ptr %i.cg, align 8, !alias.scope !7040, !noalias !7041, !noundef !9
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.cj = load i32, ptr %i.ci, align 8, !alias.scope !7041, !noalias !7040, !noundef !9
  %i.ck = icmp eq i32 %i.ch, %i.cj
  br i1 %i.ck, label %bb.t, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %bb.s
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.cm = load ptr, ptr %i.cl, align 8, !alias.scope !7040, !noalias !7041, !noundef !9 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.not.i = icmp eq ptr %i.cm, null
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.cp = load ptr, ptr %i.co, align 8, !alias.scope !7041, !noalias !7040, !noundef !9 ; 2 uses
  %i.cq = icmp eq ptr %i.cp, null                 ; 2 uses
  br i1 %.not.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %bb.t
  br i1 %i.cq, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %bb.w

bb.v:                                             ; preds = %bb.t
  br i1 %i.cq, label %bb.x, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.w:                                             ; preds = %bb.u
  %i.cr = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.cs = load i64, ptr %i.cn, align 8, !alias.scope !7040, !noalias !7041, !noundef !9 ; 2 uses
  %i.ct = load i64, ptr %i.cr, align 8, !alias.scope !7041, !noalias !7040, !noundef !9
  %i.cu = icmp eq i64 %i.cs, %i.ct
  br i1 %i.cu, label %.split17, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

.split17:                                         ; preds = %bb.w
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.cm, ptr nonnull %i.cp, i64 %i.cs), !noalias !7042, !inline_history !7014
  %i.cv = icmp eq i32 %bcmp.i, 0
  br i1 %i.cv, label %bb.x, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.x:                                             ; preds = %.split17, %bb.v
  %i.cw = load ptr, ptr %i.ce, align 8, !alias.scope !7040, !noalias !7041, !nonnull !9, !noundef !9
  %i.cx = load ptr, ptr %i.cf, align 8, !alias.scope !7041, !noalias !7040, !nonnull !9, !noundef !9
  %i.cy = tail call fastcc noundef zeroext i1 @_RNvXsF_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.cx) #47, !noalias !7042, !inline_history !7014
  br label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.b
  %i.cz = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !noundef !9 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dc = load i64, ptr %i.db, align 8, !noundef !9
  %i.dd = icmp eq i64 %i.da, %i.dc
  br i1 %i.dd, label %bb.z, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.y
  %i.de = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.df = load ptr, ptr %i.de, align 8, !nonnull !9, !noundef !9
  %i.dg = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dh = load ptr, ptr %i.dg, align 8, !nonnull !9, !noundef !9
  %.not2062.not = icmp eq i64 %i.da, 0
  br i1 %.not2062.not, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %.lr.ph64

bb.aa:                                            ; preds = %.split118, %_RNvYNtNtCs2r1H4NiMXj9_12regex_syntax3hir3HirNtNtCskKLDkoKarTP_4core3cmp9PartialEq2neCs7gfv9tzbXmh_6yara_x.exit
  %i.di = add nuw i64 %.sroa.01.0.i763, 1         ; 2 uses
  %exitcond105.not = icmp eq i64 %i.di, %i.da
  br i1 %exitcond105.not, label %_RNvXsS_NtCs2r1H4NiMXj9_12regex_syntax3hirNtB5_5ClassNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit, label %.lr.ph64

.lr.ph64:                                         ; preds = %bb.z, %bb.aa
  %.sroa.01.0.i763 = phi i64 [ %i.di, %bb.aa ], [ 0, %bb.z ] ; 3 uses
  %i.dj = getelementptr inbounds nuw [48 x i8], ptr %i.dh, i64 %.sroa.01.0.i763 ; 2 uses
  %i.dk = getelementptr inbounds nuw [48 x i8], ptr %i.df, i64 %.sroa.01.0.i763 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7043)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7044)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7045)
end_hunk_0
