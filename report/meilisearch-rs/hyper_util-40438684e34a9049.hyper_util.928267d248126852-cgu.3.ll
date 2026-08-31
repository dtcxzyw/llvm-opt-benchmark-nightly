Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/hyper_util-40438684e34a9049.hyper_util.928267d248126852-cgu.3?download=true
inline.NumInlined: 122
inline.NumDeleted: 22
begin_hunk_0_@_ZN10hyper_util6client5proxy7matcher7Matcher9intercept17h0cb3a17d5ad650a3E:bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.z, ptr %i.aa, align 8
  %i.ab = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e0e44663606963E"(ptr nonnull align 8 %i.f) ; 2 uses
  %.not3.not.i.i = icmp eq ptr %i.ab, null
  br i1 %.not3.not.i.i, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.f, %.backedge.i.i
  %i.ac = phi ptr [ %i.ay, %.backedge.i.i ], [ %i.ab, %bb.f ] ; 2 uses
  store ptr %i.ac, ptr %i.e, align 8
  %i.ad = call { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5811e0d39ba2c29aE"(ptr nonnull align 8 %i.ac) ; 2 uses
  %i.ae = extractvalue { ptr, i64 } %i.ad, 0
  %i.af = extractvalue { ptr, i64 } %i.ad, 1
  %i.ag = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$20eq_ignore_ascii_case17hb91ce4bb5edb316bE"(ptr align 1 %i.ae, i64 %i.af, ptr align 1 %.sroa.01.0.i, i64 %.sroa.4.0.i)
  br i1 %i.ag, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.ah = load ptr, ptr %i.e, align 8
  %i.ai = call { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5811e0d39ba2c29aE"(ptr align 8 %i.ah) ; 2 uses
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0
  %i.ak = extractvalue { ptr, i64 } %i.ai, 1
  %i.al = call { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12strip_prefix17h3b6710740f70431aE"(ptr align 1 %i.aj, i64 %i.ak, i32 46) ; 2 uses
  %i.am = extractvalue { ptr, i64 } %i.al, 0
  %i.an = extractvalue { ptr, i64 } %i.al, 1
  %i.ao = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17h326bbd2d3d34170cE"(ptr align 1 %i.am, i64 %i.an, i1 zeroext false, ptr align 1 %.sroa.01.0.i, i64 %.sroa.4.0.i)
  br i1 %i.ao, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ap = load ptr, ptr %i.e, align 8
  %i.aq = call i64 @_ZN5alloc6string6String3len17hfcf845044c564ec7E(ptr align 8 %i.ap)
  %i.ar = call i64 @llvm.usub.sat.i64(i64 %i.w, i64 %i.aq)
  %i.as = call { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$3get17h4ad6fdaf740846fbE"(ptr align 1 %.sroa.01.0.i, i64 %.sroa.4.0.i, i64 %i.ar) ; 2 uses
  %i.at = extractvalue { ptr, i64 } %i.as, 0
  %i.au = extractvalue { ptr, i64 } %i.as, 1
  %i.av = load ptr, ptr %i.e, align 8
  %i.aw = call zeroext i1 @"_ZN4core6option15Option$LT$T$GT$6map_or17hd2e99d61f913dc3bE"(ptr align 1 %i.at, i64 %i.au, i1 zeroext false, ptr align 8 %i.av)
  br i1 %i.aw, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ax = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17h39e37a99e8fb01a5E"(ptr nonnull align 8 %i.e, ptr nonnull align 8 @5)
  br i1 %i.ax, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %.backedge.i.i

.backedge.i.i:                                    ; preds = %bb.k, %bb.i
  %i.ay = call align 8 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha8e0e44663606963E"(ptr nonnull align 8 %i.f) ; 2 uses
  %.not.not.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.not.i.i, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i, label %.lr.ph.i.i

bb.j:                                             ; preds = %bb.h
  %i.az = load ptr, ptr %i.e, align 8
  %i.ba = call { ptr, i64 } @"_ZN65_$LT$alloc..string..String$u20$as$u20$core..ops..deref..Deref$GT$5deref17h5811e0d39ba2c29aE"(ptr align 8 %i.az) ; 2 uses
  %i.bb = extractvalue { ptr, i64 } %i.ba, 0
  %i.bc = extractvalue { ptr, i64 } %i.ba, 1
  %i.bd = call zeroext i1 @"_ZN4core3str21_$LT$impl$u20$str$GT$11starts_with17h6091355c4b7d6c32E"(ptr align 1 %i.bb, i64 %i.bc, i32 46)
  br i1 %i.bd, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.be = load ptr, ptr %i.e, align 8
  %i.bf = call i64 @_ZN5alloc6string6String3len17hfcf845044c564ec7E(ptr align 8 %i.be)
  %i.bg = xor i64 %i.bf, -1
  %i.bh = add i64 %i.w, %i.bg
  %i.bi = call align 1 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$3get17h6d17ea3d9ce7b245E"(ptr align 1 %.sroa.01.0.i, i64 %.sroa.4.0.i, i64 %i.bh)
  store ptr %i.bi, ptr %i.d, align 8
  %i.bj = call zeroext i1 @"_ZN70_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17h49f802d1e1997043E"(ptr nonnull align 8 %i.d, ptr nonnull align 8 @7)
  br i1 %i.bj, label %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, label %.backedge.i.i

_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread: ; preds = %bb.g, %.lr.ph.i.i, %bb.i, %bb.j, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i: ; preds = %.backedge.i.i, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.l:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(17) %i.g, ptr noundef nonnull align 1 dereferenceable(17) %i.h, i64 17, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bk = call { ptr, ptr } @"_ZN94_$LT$$RF$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hdfe7f399e0e5472dE"(ptr align 8 %1) ; 2 uses
  %i.bl = extractvalue { ptr, ptr } %i.bk, 0
  %i.bm = extractvalue { ptr, ptr } %i.bk, 1
  store ptr %i.bl, ptr %i.c, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bm, ptr %i.bn, align 8
  %i.bo = call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb641920785fe6feaE"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not4.not.i.i = icmp eq ptr %i.bo, null
  br i1 %.not4.not.i.i, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit, label %.lr.ph.i4.i

.lr.ph.i4.i:                                      ; preds = %bb.l, %.backedge.i5.i
  %i.bp = phi ptr [ %i.bs, %.backedge.i5.i ], [ %i.bo, %bb.l ] ; 3 uses
  %i.bq = load i8, ptr %i.bp, align 1
  %.not3.i.i = icmp eq i8 %i.bq, 2
  br i1 %.not3.i.i, label %bb.n, label %bb.m

bb.m:                                             ; preds = %.lr.ph.i4.i
  %i.br = call zeroext i1 @_ZN5ipnet5ipnet5IpNet8contains17h70329a6fb405b353E(ptr nonnull align 1 %i.bp, ptr nonnull align 1 %i.g)
  br i1 %i.br, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread, label %.backedge.i5.i

.backedge.i5.i:                                   ; preds = %bb.n, %bb.m
  %i.bs = call align 1 ptr @"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb641920785fe6feaE"(ptr nonnull align 8 %i.c) ; 2 uses
  %.not.not.i6.i = icmp eq ptr %i.bs, null
  br i1 %.not.not.i6.i, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit, label %.lr.ph.i4.i

bb.n:                                             ; preds = %.lr.ph.i4.i
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bp, i64 1
  store ptr %i.bt, ptr %i.b, align 8
  store ptr %i.g, ptr %i.a, align 8
  %i.bu = call zeroext i1 @"_ZN4core3cmp5impls69_$LT$impl$u20$core..cmp..PartialEq$LT$$RF$B$GT$$u20$for$u20$$RF$A$GT$2eq17hc05d80aa0f7fe998E"(ptr nonnull align 8 %i.a, ptr nonnull align 8 %i.b)
  br i1 %i.bu, label %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread, label %.backedge.i5.i

_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit: ; preds = %.backedge.i5.i, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.o

bb.o:                                             ; preds = %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i, %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bv = call { ptr, i64 } @_ZN4http3uri3Uri10scheme_str17h117a4574748fe2cdE(ptr align 8 %2) ; 2 uses
  %i.bw = extractvalue { ptr, i64 } %i.bv, 0      ; 3 uses
  %i.bx = extractvalue { ptr, i64 } %i.bv, 1      ; 2 uses
  %.not = icmp eq ptr %i.bw, null
  br i1 %.not, label %bb.r, label %bb.q

bb.p:                                             ; preds = %_ZN10hyper_util6client5proxy7matcher13DomainMatcher8contains17hb7a15d41cba6421dE.exit.i.thread, %_ZN10hyper_util6client5proxy7matcher7NoProxy8contains17hdd49a389d97228a1E.exit.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.q:                                             ; preds = %bb.o
  %i.by = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hb0839278e162dde6E"(ptr nonnull align 1 %i.bw, i64 %i.bx, ptr nonnull align 1 @38, i64 4)
  br i1 %i.by, label %bb.t, label %bb.s

bb.r:                                             ; preds = %bb.s, %bb.o
  store i64 -9223372036854775806, ptr %0, align 8
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.bz = call zeroext i1 @"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17hb0839278e162dde6E"(ptr nonnull align 1 %i.bw, i64 %i.bx, ptr nonnull align 1 @39, i64 5)
  br i1 %i.bz, label %bb.u, label %bb.r

bb.t:                                             ; preds = %bb.q
  %i.ca = getelementptr inbounds nuw i8, ptr %1, i64 48
  call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h91faec83bd33508cE"(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.ca)
  br label %bb.v

bb.u:                                             ; preds = %bb.s
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 184
  call void @"_ZN68_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h91faec83bd33508cE"(ptr sret([136 x i8]) align 8 %0, ptr nonnull align 8 %i.cb)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.p, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define align 8 ptr @_ZN10hyper_util6client5proxy7matcher9Intercept10basic_auth17h6901d02130f356b7E(ptr nofree readonly align 8 captures(ret: address, provenance) %0) unnamed_addr #2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = icmp eq i64 %i.a, -9223372036854775807
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0.0 = select i1 %i.b, ptr %i.c, ptr null
  ret ptr %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define nonnull align 8 ptr @_ZN10hyper_util6client5proxy7matcher9Intercept3uri17h8eb9a7026525b642E(ptr nofree readnone align 8 captures(ret: address, provenance) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48
  ret ptr %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN10hyper_util6client5proxy7matcher9Intercept8raw_auth17h5d6a908f1ee08e41E(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 8)) %0, ptr align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = load i64, ptr %1, align 8                ; 2 uses
  %i.b = icmp sgt i64 %i.a, -1
  %i.c = icmp eq i64 %i.a, -9223372036854775806
  %i.d = or i1 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = tail call { ptr, i64 } @_ZN5alloc6string6String6as_str17h0ac3830c0b1d2095E(ptr nonnull align 8 %1) ; 2 uses
  %i.g = extractvalue { ptr, i64 } %i.f, 0
  %i.h = extractvalue { ptr, i64 } %i.f, 1
  %i.i = tail call { ptr, i64 } @_ZN5alloc6string6String6as_str17h0ac3830c0b1d2095E(ptr nonnull align 8 %i.e) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  %2 = ptrtoint ptr %i.j to i64
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.h, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi ptr [ %i.g, %bb.b ], [ null, %bb.a ]
  store ptr %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define void @_ZN10hyper_util6client6legacy7connect3dns11GaiResolver3new17h83c65f0ac24cbdcbE() unnamed_addr #3 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs19split_by_preference17h80af25247df08524E(ptr nofree writeonly sret([64 x i8]) align 8 captures(none) %0, ptr align 8 %1, i40 %2, ptr nofree readonly align 1 captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [32 x i8], align 8                ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 2 uses
  %i.l = alloca [24 x i8], align 8                ; 2 uses
  %i.m = alloca [32 x i8], align 8                ; 3 uses
  %i.n = alloca [32 x i8], align 8                ; 2 uses
  %i.o = alloca [48 x i8], align 8                ; 3 uses
  %i.p = alloca [24 x i8], align 8                ; 3 uses
  %i.q = alloca [1 x i8], align 1                 ; 2 uses
  %i.r = alloca [24 x i8], align 8                ; 2 uses
  %i.s = alloca [32 x i8], align 8                ; 3 uses
  %i.t = alloca [24 x i8], align 8                ; 2 uses
  %i.u = alloca [32 x i8], align 8                ; 3 uses
  %.sroa.23.5.copyload = load i8, ptr %3, align 1
  %i.v = trunc i40 %2 to i1
  %i.w = trunc nuw i8 %.sroa.23.5.copyload to i1  ; 2 uses
  br i1 %i.v, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  br i1 %i.w, label %bb.d, label %.noexc15

bb.c:                                             ; preds = %bb.a
  br i1 %i.w, label %.noexc, label %bb.d

.noexc:                                           ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @_ZN4core4iter6traits8iterator8Iterator6filter17h54cad04f052fe502E(ptr nonnull sret([32 x i8]) align 8 %i.i, ptr nonnull align 8 %i.h)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hce1cf98a1a32a414E(ptr nonnull sret([24 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.s, ptr nonnull align 8 %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h7d3a52818df0e9dbE"(ptr nonnull sret([24 x i8]) align 8 %i.r)
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.x = invoke { ptr, i64 } @"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$8as_slice17h85f7c29156cff025E"(ptr align 8 %1)
          to label %bb.m unwind label %bb.u       ; 2 uses

bb.e:                                             ; preds = %bb.f, %.noexc
  %i.y = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.s) #22
          to label %.thread unwind label %bb.i

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.g, ptr nonnull align 8 %i.r)
          to label %bb.g unwind label %bb.e

bb.g:                                             ; preds = %bb.f
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.h

bb.h:                                             ; preds = %bb.s, %bb.l, %bb.g
  %.sink = phi ptr [ %i.m, %bb.s ], [ %i.u, %bb.l ], [ %i.s, %bb.g ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %.sink, i64 32, i1 false)
  ret void

bb.i:                                             ; preds = %bb.u, %bb.t, %bb.r, %bb.j, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

.noexc15:                                         ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @_ZN4core4iter6traits8iterator8Iterator6filter17hf32e4ba568390d7fE(ptr nonnull sret([32 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  call void @_ZN4core4iter6traits8iterator8Iterator7collect17hf2227660bd7209efE(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 8 %i.e)
  call void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.u, ptr nonnull align 8 %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  invoke void @"_ZN5alloc3vec12Vec$LT$T$GT$3new17h7d3a52818df0e9dbE"(ptr nonnull sret([24 x i8]) align 8 %i.t)
          to label %bb.k unwind label %bb.j

bb.j:                                             ; preds = %bb.k, %.noexc15
  %i.ab = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.u) #22
          to label %.thread unwind label %bb.i

bb.k:                                             ; preds = %.noexc15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.t)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ac, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.m:                                             ; preds = %bb.d
  %i.ad = extractvalue { ptr, i64 } %i.x, 0
  %i.ae = extractvalue { ptr, i64 } %i.x, 1
  %i.af = invoke align 4 ptr @"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$5first17he35b71f3ecec7afaE"(ptr align 4 %i.ad, i64 %i.ae)
          to label %bb.n unwind label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ag = invoke i8 @"_ZN4core6option15Option$LT$T$GT$3map17h8a72ffcd7aab37ceE"(ptr align 4 %i.af)
          to label %bb.o unwind label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ah = invoke zeroext i1 @"_ZN4core6option15Option$LT$T$GT$9unwrap_or17h9863cd0cdb69ec40E"(i8 %i.ag, i1 zeroext false)
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ai = zext i1 %i.ah to i8
  store i8 %i.ai, ptr %i.q, align 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.n, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @_ZN4core4iter6traits8iterator8Iterator9partition17hc97479c5aa4d76aaE(ptr nonnull sret([48 x i8]) align 8 %i.o, ptr nonnull align 8 %i.n, ptr nonnull align 1 %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.aj, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull align 8 %i.l)
          to label %bb.q unwind label %bb.t

bb.q:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.m, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN90_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h83f8607521c1800bE"(ptr nonnull sret([32 x i8]) align 8 %i.a, ptr nonnull align 8 %i.k)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr74drop_in_place$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$GT$17h8542ada629d895c9E"(ptr nonnull align 8 %i.m) #22
          to label %.thread unwind label %bb.i

bb.s:                                             ; preds = %bb.q
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.al, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.h

bb.t:                                             ; preds = %bb.p
  %i.am = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr78drop_in_place$LT$alloc..vec..Vec$LT$core..net..socket_addr..SocketAddr$GT$$GT$17h9946693769340ff0E"(ptr nonnull align 8 %i.p) #22
          to label %.thread unwind label %bb.i

.thread:                                          ; preds = %bb.r, %bb.t, %bb.j, %bb.e, %bb.u
  %.pn1026 = phi { ptr, i32 } [ %i.ak, %bb.r ], [ %lpad.thr_comm.split-lp, %bb.u ], [ %i.y, %bb.e ], [ %i.am, %bb.t ], [ %i.ab, %bb.j ]
  resume { ptr, i32 } %.pn1026

bb.u:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.d
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr94drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$core..net..socket_addr..SocketAddr$GT$$GT$17h45adcacb4a46207dE"(ptr align 8 %1) #22
          to label %.thread unwind label %bb.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @"_ZN10hyper_util6client6legacy7connect3dns11SocketAddrs19split_by_preference28_$u7b$$u7b$closure$u7d$$u7d$17hdea6e34bc7c1e34fE"(ptr nofree readonly align 8 captures(none) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call zeroext i1 @_ZN4core3net11socket_addr10SocketAddr7is_ipv617h93ae3c935e0ac6b9E(ptr align 4 %1)
  %i.b = load ptr, ptr %0, align 8
  %i.c = load i8, ptr %i.b, align 1
  %i.d = trunc nuw i8 %i.c to i1
  %i.e = xor i1 %i.a, %i.d
  %i.f = xor i1 %i.e, true
end_hunk_0
begin_hunk_1_@"_ZN4http10extensions10Extensions6insert28_$u7b$$u7b$closure$u7d$$u7d$17hf9fc0f5cef726d68E":bb.a

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN4http10extensions10Extensions6insert28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h1849242dce5c1d73E"(ptr nofree writeonly sret([64 x i8]) align 4 captures(none) initializes((0, 64)) %0, ptr align 4 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.a, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %0, ptr noundef nonnull align 4 dereferenceable(64) %1, i64 64, i1 false)
  call void @"_ZN72_$LT$alloc..boxed..Box$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h6d9cec1cb36f6e6dE"(ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden { ptr, i64 } @_ZN4http3uri9authority9Authority4host17h43d4caf738bec72dE(ptr align 8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN67_$LT$http..byte_str..ByteStr$u20$as$u20$core..ops..deref..Deref$GT$5deref17h12789850a13b640dE"(ptr align 8 %0) ; 2 uses
  %i.b = extractvalue { ptr, i64 } %i.a, 0
  %i.c = extractvalue { ptr, i64 } %i.a, 1
  %i.d = tail call { ptr, i64 } @"_ZN4core3str6traits66_$LT$impl$u20$core..ops..index..Index$LT$I$GT$$u20$for$u20$str$GT$5index17hde01ef27491e2d6bE"(ptr align 1 %i.b, i64 %i.c, ptr nonnull align 8 @56) ; 2 uses
  %i.e = extractvalue { ptr, i64 } %i.d, 0
  %i.f = extractvalue { ptr, i64 } %i.d, 1
  %i.g = tail call { ptr, i64 } @_ZN4http3uri9authority4host17hd90881ecea20641eE(ptr align 1 %i.e, i64 %i.f)
  ret { ptr, i64 } %i.g
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h0fe2cbe6c5a5d1fdE"(ptr align 1 %0, i64 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  %i.a = tail call { ptr, i64 } @"_ZN5alloc5boxed7convert93_$LT$impl$u20$core..convert..From$LT$$RF$str$GT$$u20$for$u20$alloc..boxed..Box$LT$str$GT$$GT$4from17hce1a46548556bc36E"(ptr align 1 %0, i64 %1)
  ret { ptr, i64 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h26987d5c5811d5d2E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h2bd3f9d922bb7180E"(ptr sret([17 x i8]) align 1 %0, i32 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN97_$LT$core..net..ip_addr..IpAddr$u20$as$u20$core..convert..From$LT$$u5b$u8$u3b$$u20$4$u5d$$GT$$GT$4from17ha4742e7ee2d06f3aE"(ptr sret([17 x i8]) align 1 %0, i32 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17h4e898a7321e7785dE"(ptr sret([17 x i8]) align 1 %0, ptr align 1 %1, ptr nofree readnone align 8 captures(none) %2) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN98_$LT$core..net..ip_addr..IpAddr$u20$as$u20$core..convert..From$LT$$u5b$u8$u3b$$u20$16$u5d$$GT$$GT$4from17h6f7b82d13e7de779E"(ptr sret([17 x i8]) align 1 %0, ptr align 1 %1)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define i32 @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hb911d7b164213b27E"(i32 %0, ptr nofree readnone align 8 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call i32 @"_ZN99_$LT$core..net..ip_addr..Ipv4Addr$u20$as$u20$core..convert..From$LT$$u5b$u8$u3b$$u20$4$u5d$$GT$$GT$4from17h6550be6e02971776E"(i32 %0)
  ret i32 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i8, i8 } @"_ZN50_$LT$T$u20$as$u20$core..convert..Into$LT$U$GT$$GT$4into17hd33470fa1ccfa518E"(ptr nofree readnone align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i8, i8 } @"_ZN91_$LT$http..error..Error$u20$as$u20$core..convert..From$LT$core..convert..Infallible$GT$$GT$4from17hdae50e8f0e224de8E"()
  ret { i8, i8 } %i.a
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryFrom$LT$U$GT$$GT$8try_from17h8e7a24c8877c39a8E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h06e29cd2a11c17cfE"(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @_ZN4http3uri9authority16create_authority17ha805c3f23d9c708cE(ptr sret([32 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h2e3efaf3a11c8661E"(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) initializes((0, 32)) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #4 {
bb.a:
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i1, i8 } @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17h4448551068bd91b0E"(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i1, i8 } @"_ZN124_$LT$hyper_util..client..legacy..connect..proxy..socks..v4..messages..Status$u20$as$u20$core..convert..TryFrom$LT$u8$GT$$GT$8try_from17h6adc059e2ed83300E"(i8 %0)
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i1, i8 } @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17ha03e26ec753190deE"(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i1, i8 } @"_ZN128_$LT$hyper_util..client..legacy..connect..proxy..socks..v5..messages..AuthMethod$u20$as$u20$core..convert..TryFrom$LT$u8$GT$$GT$8try_from17hc7820bca21b2bf40E"(i8 %0)
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i32, i32 } @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hbf807a79146917fbE"(i64 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i32, i32 } @"_ZN4core7convert3num18ptr_try_from_impls69_$LT$impl$u20$core..convert..TryFrom$LT$usize$GT$$u20$for$u20$u32$GT$8try_from17h87a95eeb7d6dd2c0E"(i64 %0)
  ret { i32, i32 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define { i1, i8 } @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17he237cd2eee3cd0deE"(i8 %0) unnamed_addr #1 {
bb.a:
  %i.a = tail call { i1, i8 } @"_ZN124_$LT$hyper_util..client..legacy..connect..proxy..socks..v5..messages..Status$u20$as$u20$core..convert..TryFrom$LT$u8$GT$$GT$8try_from17hcd347846f75ec87eE"(i8 %0)
  ret { i1, i8 } %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN53_$LT$T$u20$as$u20$core..convert..TryInto$LT$U$GT$$GT$8try_into17hf5ec20302d57baffE"(ptr sret([40 x i8]) align 8 %0, ptr align 1 %1, i64 %2) unnamed_addr #1 {
bb.a:
  tail call void @"_ZN87_$LT$http..uri..path..PathAndQuery$u20$as$u20$core..convert..TryFrom$LT$$RF$str$GT$$GT$8try_from17h6ff043308b44783cE"(ptr sret([40 x i8]) align 8 %0, ptr align 1 %1, i64 %2)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h04da85acfe3401bbE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h713b597fd093f806E"(ptr align 8 %i.a)
  ret { ptr, i64 } %i.b
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden zeroext i1 @"_ZN58_$LT$core..any..TypeId$u20$as$u20$core..cmp..PartialEq$GT$2eq17h74abfb8fcc03d8bcE"(ptr nofree readonly align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #7 {
bb.a:
  %.sroa.0.0.copyload = load i128, ptr %0, align 8
  %.sroa.01.0.copyload = load i128, ptr %1, align 8
  %i.a = icmp eq i128 %.sroa.0.0.copyload, %.sroa.01.0.copyload
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tokio7runtime4task7harness11cancel_task17ha4484f4459b46dd1E(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = tail call { ptr, ptr } @_ZN3std5panic12catch_unwind17h55ab964258149856E(ptr align 8 %0) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5tokio7runtime4task7harness26panic_result_to_join_error17h19a63fc01dacd02cE(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.g, ptr align 1 %i.d, ptr %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1, ptr %i.b, align 8
  call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$12store_output17h5ca7f9e32a308814E"(ptr align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN5tokio7runtime4task7harness11cancel_task17hf80dbf0f9158c0beE(ptr align 8 %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = tail call { ptr, ptr } @_ZN3std5panic12catch_unwind17he0d90081e6c6acbbE(ptr align 8 %0) ; 2 uses
  %i.d = extractvalue { ptr, ptr } %i.c, 0
  %i.e = extractvalue { ptr, ptr } %i.c, 1
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load i64, ptr %i.f, align 8
  call void @_ZN5tokio7runtime4task7harness26panic_result_to_join_error17h19a63fc01dacd02cE(ptr nonnull sret([24 x i8]) align 8 %i.a, i64 %i.g, ptr align 1 %i.d, ptr %i.e)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false)
  store i64 1, ptr %i.b, align 8
  call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$12store_output17hf6daf228dc3d3d71E"(ptr align 8 %0, ptr nonnull align 8 %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11cancel_task28_$u7b$$u7b$closure$u7d$$u7d$17h7fe5f33d85848a6fE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$21drop_future_or_output17hdc3db9d705d008b2E"(ptr align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11cancel_task28_$u7b$$u7b$closure$u7d$$u7d$17he4a66d6e215892d7E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  tail call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$21drop_future_or_output17h51240ed022ef6cbaE"(ptr align 8 %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN5tokio7runtime4task7harness11poll_future17h6ec8978eb96c71b0E(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3 = alloca [32 x i8], align 8            ; 3 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %2 = ptrtoint ptr %0 to i64                     ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 %2, ptr %i.d, align 8
  call void @_ZN3std5panic12catch_unwind17h633a90d9f53448ffE(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  %i.f = load i64, ptr %i.e, align 8
  switch i64 %i.f, label %bb.e [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8
  call void @_ZN5tokio7runtime4task7harness14panic_to_error17h885d0556a64e4c8dE(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %0, i64 %i.l, ptr align 1 %i.h, ptr align 8 %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sroa.02.0, ptr %i.a, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %.sroa.35.0..sroa_idx, align 8
  %i.n = call { ptr, ptr } @_ZN3std5panic12catch_unwind17h559092bf696a248cE(ptr nonnull align 8 %i.a) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.o, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17ha49f98fdc8c8f146E"(ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h0113c923da1a3a55E"(ptr nonnull align 8 %i.b) #22
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h0113c923da1a3a55E"(ptr nonnull align 8 %i.b)
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN5tokio7runtime4task8Schedule15unhandled_panic17hadcf65bded18171aE(ptr align 8 %0)
          to label %bb.h unwind label %bb.f

bb.j:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.s
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_ZN5tokio7runtime4task7harness11poll_future17h84f6f91e31d3ef43E(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.3 = alloca [32 x i8], align 8            ; 3 uses
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 2 uses
  %i.d = alloca [40 x i8], align 8                ; 3 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %2 = ptrtoint ptr %0 to i64                     ; 2 uses
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  store i64 %2, ptr %i.d, align 8
  call void @_ZN3std5panic12catch_unwind17h4daced1d7e85abd6E(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 8 %i.d)
  %i.f = load i64, ptr %i.e, align 8
  switch i64 %i.f, label %bb.e [
    i64 2, label %bb.b
    i64 0, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.l = load i64, ptr %i.k, align 8
  call void @_ZN5tokio7runtime4task7harness14panic_to_error17h885d0556a64e4c8dE(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %0, i64 %i.l, ptr align 1 %i.h, ptr align 8 %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(32) %i.m, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.02.0 = phi i64 [ 1, %bb.b ], [ 0, %bb.c ]
  store i64 %.sroa.02.0, ptr %i.a, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.24.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.3, i64 32, i1 false)
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store i64 %2, ptr %.sroa.35.0..sroa_idx, align 8
  %i.n = call { ptr, ptr } @_ZN3std5panic12catch_unwind17h28b90f474b879855E(ptr nonnull align 8 %i.a) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.o, ptr %i.b, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.p, ptr %i.q, align 8
  %i.r = invoke zeroext i1 @"_ZN4core6result19Result$LT$T$C$E$GT$6is_err17ha49f98fdc8c8f146E"(ptr nonnull align 8 %i.b)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.a, %bb.h
  %.sroa.0.0 = phi i1 [ false, %bb.h ], [ true, %bb.a ]
  ret i1 %.sroa.0.0

bb.f:                                             ; preds = %bb.i, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h0113c923da1a3a55E"(ptr nonnull align 8 %i.b) #22
          to label %bb.k unwind label %bb.j

bb.g:                                             ; preds = %bb.d
  br i1 %i.r, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.i, %bb.g
  call void @"_ZN4core3ptr130drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$alloc..boxed..Box$LT$dyn$u20$core..any..Any$u2b$core..marker..Send$GT$$GT$$GT$17h0113c923da1a3a55E"(ptr nonnull align 8 %i.b)
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  invoke void @_ZN5tokio7runtime4task8Schedule15unhandled_panic17hadcf65bded18171aE(ptr align 8 %0)
          to label %bb.h unwind label %bb.f

bb.j:                                             ; preds = %bb.f
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.k:                                             ; preds = %bb.f
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11poll_future28_$u7b$$u7b$closure$u7d$$u7d$17h09594203e46dd054E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll17h76a08f7fc2f7819aE"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core3mem6forget17h305e821301c4f82bE(ptr align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$C$std..io..error..Error$GT$$GT$$GT$17h8a1d6d8ba0d942d5E"(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr398drop_in_place$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$tokio..runtime..blocking..task..BlockingTask$LT$$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h129d0e47cfc96b1eE"(ptr nonnull align 8 %i.c) #22
          to label %bb.f unwind label %bb.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11poll_future28_$u7b$$u7b$closure$u7d$$u7d$17h2d41f313c5adde43E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$12store_output17hf6daf228dc3d3d71E"(ptr align 8 %i.c, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11poll_future28_$u7b$$u7b$closure$u7d$$u7d$17hac390b65f844b977E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #1 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.c = load ptr, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  call void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$12store_output17h5ca7f9e32a308814E"(ptr align 8 %i.c, ptr nonnull align 8 %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @"_ZN5tokio7runtime4task7harness11poll_future28_$u7b$$u7b$closure$u7d$$u7d$17haf5a68eb41028501E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [40 x i8], align 8                ; 3 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  %i.d = load ptr, ptr %1, align 8                ; 3 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false)
  invoke void @"_ZN5tokio7runtime4task4core17Core$LT$T$C$S$GT$4poll17hfe28ac4ea728a059E"(ptr nonnull sret([40 x i8]) align 8 %i.b, ptr align 8 %i.d, ptr nonnull align 8 %i.a)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4core3mem6forget17hba3228a45f9ffd06E(ptr align 8 %i.d)
          to label %bb.d unwind label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr156drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$hyper_util..client..legacy..connect..dns..SocketAddrs$C$std..io..error..Error$GT$$GT$$GT$17h8a1d6d8ba0d942d5E"(ptr nonnull align 8 %i.b) #22
          to label %bb.f unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.b, i64 40, i1 false)
  ret void

bb.e:                                             ; preds = %bb.g, %bb.c
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.f:                                             ; preds = %bb.c, %bb.g
  %.pn5 = phi { ptr, i32 } [ %i.h, %bb.g ], [ %i.f, %bb.c ]
  resume { ptr, i32 } %.pn5

bb.g:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr423drop_in_place$LT$tokio..runtime..task..harness..poll_future..$u7b$$u7b$closure$u7d$$u7d$..Guard$LT$tokio..runtime..blocking..task..BlockingTask$LT$alloc..boxed..Box$LT$$LT$hyper_util..client..legacy..connect..dns..GaiResolver$u20$as$u20$tower_service..Service$LT$hyper_util..client..legacy..connect..dns..Name$GT$$GT$..call..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$C$tokio..runtime..blocking..schedule..BlockingSchedule$GT$$GT$17h2e8bd1e0c605787eE"(ptr nonnull align 8 %i.c) #22
          to label %bb.f unwind label %bb.e
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10header_ptr17h0928d7f55f884007E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h07504a69bec66eaeE"(ptr %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define ptr @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10header_ptr17h82aa584c7275e1abE"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8
  %i.b = tail call ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0bc47bae94719e6bE"(ptr %i.a)
  ret ptr %i.b
}

; Function Attrs: nonlazybind uwtable
define i8 @"_ZN5tokio7runtime4task7harness20Harness$LT$T$C$S$GT$10poll_inner17h4eb6ec69818a1f02E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [40 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [40 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 2 uses
  %i.f = alloca [32 x i8], align 8                ; 4 uses
  %i.g = alloca [16 x i8], align 8                ; 3 uses
  %i.h = alloca [8 x i8], align 8                 ; 2 uses
  %i.i = load ptr, ptr %0, align 8
  %i.j = tail call align 8 ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0bc47bae94719e6bE"(ptr %i.i)
  %i.k = tail call i8 @_ZN5tokio7runtime4task5state5State21transition_to_running17h9e6e8286d504226dE(ptr align 8 %i.j) ; 3 uses
  switch i8 %i.k, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.h
    i8 3, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.l = load ptr, ptr %0, align 8
  %i.m = tail call ptr @"_ZN4core3ptr8non_null16NonNull$LT$T$GT$4cast17h0bc47bae94719e6bE"(ptr %i.l)
  store ptr %i.m, ptr %i.h, align 8
  %i.n = call { ptr, ptr } @_ZN5tokio7runtime4task5waker9waker_ref17h546519ed24ce8647E(ptr nonnull align 8 %i.h) ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0
  %i.p = extractvalue { ptr, ptr } %i.n, 1
  store ptr %i.o, ptr %i.g, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.p, ptr %i.q, align 8
end_hunk_1
