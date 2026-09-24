Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_package-a9f8ff2ef7d48f62.nickel_lang_package.b5fe27ed4146988a-cgu.0?download=true
inline.NumInlined: 25765
inline.NumDeleted: 11076
loop-unroll.NumCompletelyUnrolled: 62
loop-unroll.NumRuntimeUnrolled: 162
loop-unroll.NumUnrolled: 230
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17h200388cb180a9808E":bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ak = load i64, ptr %i.aj, align 8, !alias.scope !76703, !noalias !76704, !noundef !41
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !76704, !noalias !76703, !noundef !41
  %i.an = icmp eq i64 %i.ak, %i.am
  br i1 %i.an, label %bb.q, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.k:                                             ; preds = %bb.i
  tail call void @llvm.assume(i1 %i.ah)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76705)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76706)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !76707, !noalias !76708, !noundef !41
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !76708, !noalias !76707, !noundef !41
  %i.as = icmp eq i64 %i.ap, %i.ar
  br i1 %i.as, label %bb.l, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.l:                                             ; preds = %bb.k
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.av = load i64, ptr %i.au, align 8, !range !58, !alias.scope !76707, !noalias !76708, !noundef !41
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.ax = trunc nuw i64 %i.av to i1
  %i.ay = load i64, ptr %i.at, align 8, !range !58, !alias.scope !76708, !noalias !76707, !noundef !41
  %i.az = trunc nuw i64 %i.ay to i1               ; 2 uses
  br i1 %i.ax, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  br i1 %i.az, label %.split.i.i.i.i, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.n:                                             ; preds = %bb.l
  br i1 %i.az, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit", label %bb.o

.split.i.i.i.i:                                   ; preds = %bb.m
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.bb = load i64, ptr %i.aw, align 8, !alias.scope !76707, !noalias !76708, !noundef !41
  %i.bc = load i64, ptr %i.ba, align 8, !alias.scope !76708, !noalias !76707, !noundef !41
  %i.bd = icmp eq i64 %i.bb, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.o:                                             ; preds = %.split.i.i.i.i, %bb.n
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bf = load i64, ptr %i.be, align 8, !range !58, !alias.scope !76707, !noalias !76708, !noundef !41
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bh = trunc nuw i64 %i.bf to i1
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.bj = load i64, ptr %i.bi, align 8, !range !58, !alias.scope !76708, !noalias !76707, !noundef !41
  %i.bk = trunc nuw i64 %i.bj to i1               ; 2 uses
  br i1 %i.bh, label %bb.p, label %.split4.i

bb.p:                                             ; preds = %bb.o
  br i1 %i.bk, label %.split3.i, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

.split4.i:                                        ; preds = %bb.o
  br i1 %i.bk, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit", label %bb.t

.split3.i:                                        ; preds = %bb.p
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bm = load i64, ptr %i.bg, align 8, !alias.scope !76707, !noalias !76708, !noundef !41
  %i.bn = load i64, ptr %i.bl, align 8, !alias.scope !76708, !noalias !76707, !noundef !41
  %i.bo = icmp eq i64 %i.bm, %i.bn
  br i1 %i.bo, label %bb.t, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.q:                                             ; preds = %bb.j
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.bq = load i64, ptr %i.bp, align 8, !alias.scope !76703, !noalias !76704, !noundef !41
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.bs = load i64, ptr %i.br, align 8, !alias.scope !76704, !noalias !76703, !noundef !41
  %i.bt = icmp eq i64 %i.bq, %i.bs
  br i1 %i.bt, label %bb.r, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.r:                                             ; preds = %bb.q
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.bv = load i64, ptr %i.bu, align 8, !alias.scope !76703, !noalias !76704, !noundef !41
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !76704, !noalias !76703, !noundef !41
  %i.by = icmp eq i64 %i.bv, %i.bx
  br i1 %i.by, label %bb.s, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.s:                                             ; preds = %bb.r
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val2.i5.i.i = load i64, ptr %i.bz, align 8, !alias.scope !76703, !noalias !76704, !noundef !41 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val4.i6.i.i = load i64, ptr %i.ca, align 8, !alias.scope !76704, !noalias !76703, !noundef !41
  %.not.i.i.i7.i.i = icmp eq i64 %.val2.i5.i.i, %.val4.i6.i.i
  br i1 %.not.i.i.i7.i.i, label %.split5.i, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

.split5.i:                                        ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val3.i8.i.i = load ptr, ptr %i.cb, align 8, !alias.scope !76704, !noalias !76703, !nonnull !41, !noundef !41
  %i.cc = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i9.i.i = load ptr, ptr %i.cc, align 8, !alias.scope !76703, !noalias !76704, !nonnull !41, !noundef !41
  %bcmp.i.i.i10.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i9.i.i, ptr nonnull readonly align 1 %.val3.i8.i.i, i64 %.val2.i5.i.i), !alias.scope !76709, !noalias !76710
  %i.cd = icmp eq i32 %bcmp.i.i.i10.i.i, 0
  br i1 %i.cd, label %bb.t, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

"_ZN72_$LT$nickel_lang_package..Dependency$u20$as$u20$core..cmp..PartialEq$GT$2eq17h248d6d08722f79d5E.exit.i": ; preds = %bb.c
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !76691, !noalias !76692, !nonnull !41, !noundef !41
  %i.cf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val2.i.i = load i64, ptr %i.cf, align 8, !alias.scope !76691, !noalias !76692, !noundef !41
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val3.i.i = load ptr, ptr %i.cg, align 8, !alias.scope !76692, !noalias !76691
  %i.ch = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val4.i.i = load i64, ptr %i.ch, align 8, !alias.scope !76692, !noalias !76691
  %i.ci = tail call fastcc noundef zeroext i1 @"_ZN59_$LT$std..path..PathBuf$u20$as$u20$core..cmp..PartialEq$GT$2eq17h9f81c58160f78e12E"(ptr %.val.i.i, i64 %.val2.i.i, ptr %.val3.i.i, i64 %.val4.i.i), !noalias !76711
  br i1 %i.ci, label %bb.t, label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

bb.t:                                             ; preds = %"_ZN72_$LT$nickel_lang_package..Dependency$u20$as$u20$core..cmp..PartialEq$GT$2eq17h248d6d08722f79d5E.exit.i", %.split5.i, %.split3.i, %.split4.i, %.split.i
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.cl = tail call fastcc noundef zeroext i1 @"_ZN72_$LT$nickel_lang_package..PrecisePkg$u20$as$u20$core..cmp..PartialEq$GT$2eq17hee1baf20ff3385d9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.cj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(176) %i.ck)
  br label %"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit"

"_ZN4core5tuple68_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$$LP$V$C$U$C$T$RP$$GT$2eq17h061b1f08a714b9d1E.exit": ; preds = %bb.a, %bb.b, %.split.i, %bb.e, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit.i.i.i", %bb.f, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit15.i.i.i", %bb.g, %"_ZN71_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2e7e0634980cba66E.exit.i.i", %bb.h, %bb.j, %bb.k, %bb.m, %bb.n, %.split.i.i.i.i, %bb.p, %.split4.i, %.split3.i, %bb.q, %bb.r, %bb.s, %.split5.i, %"_ZN72_$LT$nickel_lang_package..Dependency$u20$as$u20$core..cmp..PartialEq$GT$2eq17h248d6d08722f79d5E.exit.i", %bb.t
  %.sroa.0.0.i = phi i1 [ %i.cl, %bb.t ], [ false, %"_ZN72_$LT$nickel_lang_package..Dependency$u20$as$u20$core..cmp..PartialEq$GT$2eq17h248d6d08722f79d5E.exit.i" ], [ false, %bb.a ], [ false, %.split5.i ], [ false, %.split.i ], [ false, %.split3.i ], [ false, %.split4.i ], [ false, %bb.s ], [ false, %bb.b ], [ false, %"_ZN71_$LT$nickel_lang_package..index..Id$u20$as$u20$core..cmp..PartialEq$GT$2eq17h2e7e0634980cba66E.exit.i.i" ], [ false, %.split.i.i.i.i ], [ false, %bb.h ], [ false, %bb.j ], [ false, %bb.r ], [ false, %bb.q ], [ false, %bb.n ], [ false, %bb.m ], [ false, %bb.k ], [ false, %bb.p ], [ false, %bb.e ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit15.i.i.i" ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17hcd7a61b76f8078bfE.exit.i.i.i" ], [ false, %bb.g ], [ false, %bb.f ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hdcc2c1424ce8ac36E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 5 uses
  %i.c = icmp ult i64 %i.b, 192153584101141163
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp samesign ult i64 %i.b, 2
  br i1 %i.d, label %.thread, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !41, !noundef !41 ; 3 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"
  %.sroa.0.032 = phi i64 [ 1, %bb.b ], [ %i.ab, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread" ] ; 5 uses
  %i.g = getelementptr [48 x i8], ptr %i.f, i64 %.sroa.0.032 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76742)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76745)
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !76746, !noalias !76747, !noundef !41
  %i.j = getelementptr i8, ptr %i.g, i64 -24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !76747, !noalias !76746, !noundef !41
  %i.l = icmp eq i64 %i.i, %i.k
  br i1 %i.l, label %bb.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !76746, !noalias !76747, !noundef !41
  %i.o = getelementptr i8, ptr %i.g, i64 -16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !76747, !noalias !76746, !noundef !41
  %i.q = icmp eq i64 %i.n, %i.p
  br i1 %i.q, label %bb.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.s = load i64, ptr %i.r, align 8, !alias.scope !76746, !noalias !76747, !noundef !41
  %i.t = getelementptr i8, ptr %i.g, i64 -8
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !76747, !noalias !76746, !noundef !41
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.f, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"

bb.f:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.val1.i.i = load i64, ptr %i.w, align 8, !alias.scope !76746, !noalias !76747, !noundef !41 ; 2 uses
  %i.x = getelementptr i8, ptr %i.g, i64 -32
  %.val3.i.i = load i64, ptr %i.x, align 8, !alias.scope !76747, !noalias !76746, !noundef !41
  %.not.i.i.i.i = icmp eq i64 %.val1.i.i, %.val3.i.i
  br i1 %.not.i.i.i.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit": ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.g, i64 -40
  %.val2.i.i = load ptr, ptr %i.y, align 8, !alias.scope !76747, !noalias !76746, !nonnull !41, !noundef !41
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.val.i.i = load ptr, ptr %i.z, align 8, !alias.scope !76746, !noalias !76747, !nonnull !41, !noundef !41 ; 2 uses
  %bcmp.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val2.i.i, i64 %.val1.i.i), !alias.scope !76748, !noalias !76749
  %i.aa = icmp eq i32 %bcmp.i.i.i.i, 0
  br i1 %i.aa, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread": ; preds = %bb.f, %bb.d, %bb.e, %bb.c, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit"
  %i.ab = add nuw nsw i64 %.sroa.0.032, 1         ; 2 uses
  %.not = icmp eq i64 %i.ab, %i.b
  br i1 %.not, label %.thread, label %bb.c

bb.g:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76750)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76751)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76752)
  %.val.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !76753 ; 2 uses
  %i.ac = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.ac, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !76753
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit": ; preds = %bb.g, %bb.h
  %.sroa.5.033 = add nuw i64 %.sroa.0.032, 1      ; 2 uses
  %i.ad = icmp ult i64 %.sroa.5.033, %i.b
  br i1 %i.ad, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21", %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit"
  %.sroa.12.0.lcssa = phi i64 [ %.sroa.0.032, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit" ], [ %.sroa.12.1, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21" ]
  store i64 %.sroa.12.0.lcssa, ptr %i.a, align 8
  br label %.thread

.lr.ph:                                           ; preds = %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit", %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21"
  %.sroa.5.035 = phi i64 [ %.sroa.5.0, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21" ], [ %.sroa.5.033, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit" ] ; 2 uses
  %.sroa.12.034 = phi i64 [ %.sroa.12.1, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21" ], [ %.sroa.0.032, %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit" ] ; 4 uses
  %i.ae = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %.sroa.5.035 ; 7 uses
  %i.af = getelementptr [48 x i8], ptr %i.f, i64 %.sroa.12.034 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76754)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76755)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76756)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76757)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 24
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !76758, !noalias !76759, !noundef !41
  %i.ai = getelementptr i8, ptr %i.af, i64 -24
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !76759, !noalias !76758, !noundef !41
  %i.ak = icmp eq i64 %i.ah, %i.aj
  br i1 %i.ak, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"

bb.i:                                             ; preds = %.lr.ph
  %i.al = getelementptr inbounds nuw i8, ptr %i.ae, i64 32
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !76758, !noalias !76759, !noundef !41
  %i.an = getelementptr i8, ptr %i.af, i64 -16
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !76759, !noalias !76758, !noundef !41
  %i.ap = icmp eq i64 %i.am, %i.ao
  br i1 %i.ap, label %bb.j, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"

bb.j:                                             ; preds = %bb.i
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ae, i64 40
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !76758, !noalias !76759, !noundef !41
  %i.as = getelementptr i8, ptr %i.af, i64 -8
  %i.at = load i64, ptr %i.as, align 8, !alias.scope !76759, !noalias !76758, !noundef !41
  %i.au = icmp eq i64 %i.ar, %i.at
  br i1 %i.au, label %bb.k, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %.val1.i.i12 = load i64, ptr %i.av, align 8, !alias.scope !76758, !noalias !76759, !noundef !41 ; 2 uses
  %i.aw = getelementptr i8, ptr %i.af, i64 -32
  %.val3.i.i13 = load i64, ptr %i.aw, align 8, !alias.scope !76759, !noalias !76758, !noundef !41
  %.not.i.i.i.i14 = icmp eq i64 %.val1.i.i12, %.val3.i.i13
  br i1 %.not.i.i.i.i14, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18", label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"

.thread:                                          ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit.thread", %bb.a, %._crit_edge
  ret void

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18": ; preds = %bb.k
  %i.ax = getelementptr i8, ptr %i.af, i64 -40
  %.val2.i.i15 = load ptr, ptr %i.ax, align 8, !alias.scope !76759, !noalias !76758, !nonnull !41, !noundef !41
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %.val.i.i16 = load ptr, ptr %i.ay, align 8, !alias.scope !76758, !noalias !76759, !nonnull !41, !noundef !41 ; 2 uses
  %bcmp.i.i.i.i17 = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i16, ptr nonnull readonly align 1 %.val2.i.i15, i64 %.val1.i.i12), !alias.scope !76760, !noalias !76761
  %i.az = icmp eq i32 %bcmp.i.i.i.i17, 0
  br i1 %i.az, label %bb.l, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread": ; preds = %bb.k, %bb.i, %bb.j, %.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18"
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.af, ptr noundef nonnull align 8 dereferenceable(48) %i.ae, i64 48, i1 false)
  %i.ba = add i64 %.sroa.12.034, 1
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21"

bb.l:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76762)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76763)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76764)
  %.val.i.i.i19 = load i64, ptr %i.ae, align 8, !alias.scope !76765 ; 2 uses
  %i.bb = icmp eq i64 %.val.i.i.i19, 0
  br i1 %i.bb, label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21", label %bb.m

bb.m:                                             ; preds = %bb.l
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i16, i64 noundef %.val.i.i.i19, i64 noundef range(i64 1, -9223372036854775807) 1) #67, !noalias !76765
  br label %"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21"

"_ZN4core3ptr57drop_in_place$LT$nickel_lang_package..version..SemVer$GT$17he028fc55a817890dE.exit21": ; preds = %bb.m, %bb.l, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread"
  %.sroa.12.1 = phi i64 [ %i.ba, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5dedup28_$u7b$$u7b$closure$u7d$$u7d$17hcd80e4bc8874936fE.exit18.thread" ], [ %.sroa.12.034, %bb.l ], [ %.sroa.12.034, %bb.m ] ; 2 uses
  %.sroa.5.0 = add nuw nsw i64 %.sroa.5.035, 1    ; 2 uses
  %exitcond.not = icmp eq i64 %.sroa.5.0, %i.b
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h9c06b60d9b890f41E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i32 noundef %1, i1 noundef zeroext %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !noundef !41
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17he888c3db3c8f2c00E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %i.b ; 2 uses
  store i32 %1, ptr %i.g, align 4
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.i = zext i1 %2 to i8
  store i8 %i.i, ptr %i.h, align 4
  %i.j = add i64 %i.b, 1
  store i64 %i.j, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hd9fa1f7b2b33ddc4E"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !41 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !43, !noundef !41
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha7b3ebe20a950bfcE"(ptr noalias noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @266)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !41, !noundef !41
  %i.g = getelementptr inbounds nuw [48 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.g, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16in_place_collect48from_iter_in_place$u7b$$u7b$reify.shim$u7d$$u7d$17h9edfe88801a3884eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [40 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76798)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76799)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !76799, !noalias !76798, !noundef !41 ; 2 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !76799, !noalias !76798, !nonnull !41, !noundef !41 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76800)
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !76800, !noalias !76801, !nonnull !41, !noundef !41 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %.promoted = load ptr, ptr %i.j, align 8, !alias.scope !76800, !noalias !76801 ; 3 uses
  %.not.i50 = icmp eq ptr %.promoted, %i.i
  br i1 %.not.i50, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !76802, !noalias !76803, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !76802, !noalias !76803, !nonnull !41, !align !46, !noundef !41 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !76802, !noalias !76803, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !76802, !noalias !76803, !nonnull !41, !align !42, !noundef !41 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  br label %bb.b

.body2:                                           ; preds = %bb.k, %.body
  %.pn.i = phi { ptr, i32 } [ %i.bb, %.body ], [ %.pn.i.i36, %bb.k ]
  invoke fastcc void @"_ZN4core3ptr150drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$GT$17h67a50a6f24694e0aE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(64) %1)
          to label %"_ZN4core3ptr302drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$$LP$nickel_lang_core..eval..value..NickelValue$C$nickel_lang_core..term..record..Field$RP$$GT$$C$nickel_lang_core..eval..subst$LT$nickel_lang_core..eval..cache..lazy..CBNCache$GT$..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h58453a2c812fbb6cE.exit" unwind label %bb.r

bb.b:                                             ; preds = %.lr.ph, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2640fea7e6566972E.exit.i"
  %.sroa.6.051 = phi ptr [ %i.g, %.lr.ph ], [ %i.aj, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2640fea7e6566972E.exit.i" ] ; 6 uses
  %i.u = phi ptr [ %.promoted, %.lr.ph ], [ %i.v, %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2640fea7e6566972E.exit.i" ] ; 3 uses
  %.sroa.018.0.copyload = load ptr, ptr %i.u, align 8, !noalias !76800, !nonnull !41, !noundef !41
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !76804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.419.0..sroa_idx, i64 40, i1 false), !noalias !76800
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 48 ; 4 uses
  store ptr %i.v, ptr %i.j, align 8, !alias.scope !76800, !noalias !76801
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76802)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !76804
  %i.w = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, ptr noundef nonnull %.sroa.018.0.copyload, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %bb.c unwind label %bb.l, !noalias !76805, !inline_history !76779 ; 2 uses

bb.c:                                             ; preds = %bb.b
  store ptr %i.w, ptr %i.b, align 8, !noalias !76804
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !76804
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false), !noalias !76804
  %i.x = load ptr, ptr %i.s, align 8, !alias.scope !76806, !noalias !76807, !noundef !41 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.x, null
  br i1 %.not.i.i.i, label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2640fea7e6566972E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.y = invoke fastcc noundef nonnull ptr @_ZN16nickel_lang_core4eval5subst17h2be746d9f4717a04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.n, ptr noundef nonnull %i.x, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.r)
          to label %"_ZN16nickel_lang_core4eval5subst28_$u7b$$u7b$closure$u7d$$u7d$17h2640fea7e6566972E.exit.i" unwind label %bb.e, !inline_history !76784

bb.e:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !76808)
end_hunk_0
