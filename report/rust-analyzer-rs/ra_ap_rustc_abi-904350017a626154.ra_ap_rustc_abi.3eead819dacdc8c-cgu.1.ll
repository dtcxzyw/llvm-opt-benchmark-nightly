Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ra_ap_rustc_abi-904350017a626154.ra_ap_rustc_abi.3eead819dacdc8c-cgu.1?download=true
inline.NumInlined: 90
inline.NumDeleted: 52
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq:bb.a
  %i.cb = load i8, ptr %i.b, align 1, !range !11, !noundef !4
  %i.cc = load i8, ptr %i.ca, align 1, !range !11, !noundef !4
  %i.cd = xor i8 %i.cb, %i.cc
  %spec.select8 = xor i8 %i.cd, 1
  br label %bb.ae

bb.am:                                            ; preds = %bb.ab
  %i.ce = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cf = load i8, ptr %i.b, align 1, !range !11, !noundef !4
  %i.cg = load i8, ptr %i.ce, align 1, !range !11, !noundef !4
  %i.ch = xor i8 %i.cf, %i.cg
  %spec.select9 = xor i8 %i.ch, 1
  br label %bb.ae

bb.an:                                            ; preds = %bb.ac
  %i.ci = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.cj = load i8, ptr %i.b, align 1, !range !11, !noundef !4
  %i.ck = load i8, ptr %i.ci, align 1, !range !11, !noundef !4
  %i.cl = xor i8 %i.cj, %i.ck
  %spec.select10 = xor i8 %i.cl, 1
  br label %bb.ae
}

; Function Attrs: nonlazybind uwtable
define noundef range(i8 0, 38) i8 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi9as_packed(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0) unnamed_addr #0 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) @16)
  br i1 %i.a, label %bb.an, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 2))
  br i1 %i.b, label %bb.an, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 4))
  br i1 %i.c, label %bb.an, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 6))
  br i1 %i.d, label %bb.an, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 8))
  br i1 %i.e, label %bb.an, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.f = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 10))
  br i1 %i.f, label %bb.an, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.g = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 12))
  br i1 %i.g, label %bb.an, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.h = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 14))
  br i1 %i.h, label %bb.an, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 16))
  br i1 %i.i, label %bb.an, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.j = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 18))
  br i1 %i.j, label %bb.an, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.k = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 20))
  br i1 %i.k, label %bb.an, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.l = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 22))
  br i1 %i.l, label %bb.an, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.m = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 24))
  br i1 %i.m, label %bb.an, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.n = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 26))
  br i1 %i.n, label %bb.an, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.o = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 28))
  br i1 %i.o, label %bb.an, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.p = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 30))
  br i1 %i.p, label %bb.an, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.q = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 32))
  br i1 %i.q, label %bb.an, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.r = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 34))
  br i1 %i.r, label %bb.an, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.s = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 36))
  br i1 %i.s, label %bb.an, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.t = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 38))
  br i1 %i.t, label %bb.an, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.u = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 40))
  br i1 %i.u, label %bb.an, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.v = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 42))
  br i1 %i.v, label %bb.an, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.w = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 44))
  br i1 %i.w, label %bb.an, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.x = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 46))
  br i1 %i.x, label %bb.an, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.y = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 48))
  br i1 %i.y, label %bb.an, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.z = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 50))
  br i1 %i.z, label %bb.an, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.aa = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 52))
  br i1 %i.aa, label %bb.an, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.ab = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 54))
  br i1 %i.ab, label %bb.an, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ac = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 56))
  br i1 %i.ac, label %bb.an, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ad = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 58))
  br i1 %i.ad, label %bb.an, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.ae = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 60))
  br i1 %i.ae, label %bb.an, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.af = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 62))
  br i1 %i.af, label %bb.an, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ag = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 64))
  br i1 %i.ag, label %bb.an, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.ah = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 66))
  br i1 %i.ah, label %bb.an, label %bb.ai

bb.ai:                                            ; preds = %bb.ah
  %i.ai = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 68))
  br i1 %i.ai, label %bb.an, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.aj = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 70))
  br i1 %i.aj, label %bb.an, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.ak = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 72))
  br i1 %i.ak, label %bb.an, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.al = tail call noundef zeroext i1 @_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi17internal_const_eq(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(2) getelementptr inbounds nuw (i8, ptr @16, i64 74))
  br i1 %i.al, label %bb.an, label %bb.am

bb.am:                                            ; preds = %bb.al
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @55, ptr noundef nonnull inttoptr (i64 77 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #25
  unreachable

bb.an:                                            ; preds = %bb.al, %bb.ak, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %bb.b, %bb.a
  %.sroa.0.05.lcssa = phi i8 [ 0, %bb.a ], [ 1, %bb.b ], [ 2, %bb.c ], [ 3, %bb.d ], [ 4, %bb.e ], [ 5, %bb.f ], [ 6, %bb.g ], [ 7, %bb.h ], [ 8, %bb.i ], [ 9, %bb.j ], [ 10, %bb.k ], [ 11, %bb.l ], [ 12, %bb.m ], [ 13, %bb.n ], [ 14, %bb.o ], [ 15, %bb.p ], [ 16, %bb.q ], [ 17, %bb.r ], [ 18, %bb.s ], [ 19, %bb.t ], [ 20, %bb.u ], [ 21, %bb.v ], [ 22, %bb.w ], [ 23, %bb.x ], [ 24, %bb.y ], [ 25, %bb.z ], [ 26, %bb.aa ], [ 27, %bb.ab ], [ 28, %bb.ac ], [ 29, %bb.ad ], [ 30, %bb.ae ], [ 31, %bb.af ], [ 32, %bb.ag ], [ 33, %bb.ah ], [ 34, %bb.ai ], [ 35, %bb.aj ], [ 36, %bb.ak ], [ 37, %bb.al ]
  ret i8 %.sroa.0.05.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abi9all_names(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !56)
  tail call void @_RNvCsiZ68L5R9VjM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #24, !noalias !57
  %i.a = tail call noundef align 8 dereferenceable_or_null(608) ptr @_RNvCsiZ68L5R9VjM_7___rustc12___rust_alloc(i64 noundef range(i64 0, -9223372036854775808) 608, i64 noundef range(i64 1, -9223372036854775807) 8) #24, !noalias !57 ; 3 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef 8, i64 608) #23, !noalias !56
  unreachable

_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i: ; preds = %bb.a, %bb.ad
  %i.c = phi i64 [ %i.g, %bb.ad ], [ 0, %bb.a ]   ; 13 uses
  %i.d = getelementptr inbounds nuw [2 x i8], ptr @16, i64 %i.c
  %.val14.i.i.i.i.i.i = load i8, ptr %i.d, align 1, !range !10, !noalias !58, !noundef !4
  switch i8 %.val14.i.i.i.i.i.i, label %default.unreachable [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.ad
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
    i8 6, label %bb.h
    i8 7, label %bb.i
    i8 8, label %bb.j
    i8 9, label %bb.k
    i8 10, label %bb.l
    i8 11, label %bb.m
    i8 12, label %bb.n
    i8 13, label %bb.o
    i8 14, label %bb.p
    i8 15, label %bb.q
    i8 16, label %bb.r
    i8 17, label %bb.s
    i8 18, label %bb.t
    i8 19, label %bb.u
    i8 20, label %bb.v
    i8 21, label %bb.w
    i8 22, label %bb.x
    i8 23, label %bb.y
    i8 24, label %bb.z
    i8 25, label %bb.aa
    i8 26, label %bb.ab
    i8 27, label %bb.ac
  ]

default.unreachable:                              ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  unreachable

bb.c:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %1 = shl nuw i64 1, %i.c
  %2 = and i64 %1, 88751489298
  %.not9.i.i.i.i.i.i = icmp eq i64 %2, 0          ; 2 uses
  %..i.i.i.i.i.i.i.i.i = select i1 %.not9.i.i.i.i.i.i, i64 1, i64 8
  %.1.i.i.i.i.i.i.i.i.i = select i1 %.not9.i.i.i.i.i.i, ptr @17, ptr @18
  br label %bb.ad

bb.d:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %3 = shl nuw i64 1, %i.c
  %4 = and i64 %3, 88751489298
  %.not8.i.i.i.i.i.i = icmp eq i64 %4, 0          ; 2 uses
  %.2.i.i.i.i.i.i.i.i.i = select i1 %.not8.i.i.i.i.i.i, i64 6, i64 13
  %.3.i.i.i.i.i.i.i.i.i = select i1 %.not8.i.i.i.i.i.i, ptr @19, ptr @20
  br label %bb.ad

bb.e:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.f:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.g:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.h:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.i:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.j:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.k:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.l:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %5 = shl nuw i64 1, %i.c
  %6 = and i64 %5, 88751489298
  %.not7.i.i.i.i.i.i = icmp eq i64 %6, 0          ; 2 uses
  %.4.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i, i64 5, i64 12
  %.5.i.i.i.i.i.i.i.i.i = select i1 %.not7.i.i.i.i.i.i, ptr @29, ptr @30
  br label %bb.ad

bb.m:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.n:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.o:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.p:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.q:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.r:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.s:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.t:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.u:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.v:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  br label %bb.ad

bb.w:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %7 = shl nuw i64 1, %i.c
  %8 = and i64 %7, 88751489298
  %.not6.i.i.i.i.i.i = icmp eq i64 %8, 0          ; 2 uses
  %.6.i.i.i.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, i64 5, i64 12
  %.7.i.i.i.i.i.i.i.i.i = select i1 %.not6.i.i.i.i.i.i, ptr @41, ptr @42
  br label %bb.ad

bb.x:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %9 = shl nuw i64 1, %i.c
  %10 = and i64 %9, 88751489298
  %.not5.i.i.i.i.i.i = icmp eq i64 %10, 0         ; 2 uses
  %.8.i.i.i.i.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i, i64 7, i64 14
  %.9.i.i.i.i.i.i.i.i.i = select i1 %.not5.i.i.i.i.i.i, ptr @43, ptr @44
  br label %bb.ad

bb.y:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %11 = shl nuw i64 1, %i.c
  %12 = and i64 %11, 88751489298
  %.not4.i.i.i.i.i.i = icmp eq i64 %12, 0         ; 2 uses
  %.10.i.i.i.i.i.i.i.i.i = select i1 %.not4.i.i.i.i.i.i, i64 8, i64 15
  %.11.i.i.i.i.i.i.i.i.i = select i1 %.not4.i.i.i.i.i.i, ptr @45, ptr @46
  br label %bb.ad

bb.z:                                             ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %13 = shl nuw i64 1, %i.c
  %14 = and i64 %13, 88751489298
  %.not3.i.i.i.i.i.i = icmp eq i64 %14, 0         ; 2 uses
  %.12.i.i.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i, i64 8, i64 15
  %.13.i.i.i.i.i.i.i.i.i = select i1 %.not3.i.i.i.i.i.i, ptr @47, ptr @48
  br label %bb.ad

bb.aa:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %15 = shl nuw i64 1, %i.c
  %16 = and i64 %15, 88751489298
  %.not2.i.i.i.i.i.i = icmp eq i64 %16, 0         ; 2 uses
  %.14.i.i.i.i.i.i.i.i.i = select i1 %.not2.i.i.i.i.i.i, i64 10, i64 17
  %.15.i.i.i.i.i.i.i.i.i = select i1 %.not2.i.i.i.i.i.i, ptr @49, ptr @50
  br label %bb.ad

bb.ab:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %17 = shl nuw i64 1, %i.c
  %18 = and i64 %17, 88751489298
  %.not1.i.i.i.i.i.i = icmp eq i64 %18, 0         ; 2 uses
  %.16.i.i.i.i.i.i.i.i.i = select i1 %.not1.i.i.i.i.i.i, i64 6, i64 13
  %.17.i.i.i.i.i.i.i.i.i = select i1 %.not1.i.i.i.i.i.i, ptr @51, ptr @52
  br label %bb.ad

bb.ac:                                            ; preds = %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %19 = shl nuw i64 1, %i.c
  %20 = and i64 %19, 88751489298
  %.not.i.i.i.i.i.i = icmp eq i64 %20, 0          ; 2 uses
  %.18.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, i64 5, i64 12
  %.19.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i, ptr @53, ptr @54
  br label %bb.ad

bb.ad:                                            ; preds = %bb.ac, %bb.ab, %bb.aa, %bb.z, %bb.y, %bb.x, %bb.w, %bb.v, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i
  %.sroa.39.0.i.i.i.i.i.i.i.i.i = phi i64 [ %.16.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.18.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.12.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.14.i.i.i.i.i.i.i.i.i, %bb.aa ], [ %.2.i.i.i.i.i.i.i.i.i, %bb.d ], [ 9, %bb.e ], [ 9, %bb.f ], [ 12, %bb.g ], [ 18, %bb.h ], [ 10, %bb.i ], [ 6, %bb.j ], [ 6, %bb.k ], [ %.8.i.i.i.i.i.i.i.i.i, %bb.x ], [ %.10.i.i.i.i.i.i.i.i.i, %bb.y ], [ 19, %bb.m ], [ 20, %bb.n ], [ 10, %bb.o ], [ 10, %bb.p ], [ 13, %bb.q ], [ 26, %bb.r ], [ 16, %bb.s ], [ 17, %bb.t ], [ 17, %bb.u ], [ 13, %bb.v ], [ %.4.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.6.i.i.i.i.i.i.i.i.i, %bb.w ], [ %..i.i.i.i.i.i.i.i.i, %bb.c ], [ 4, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i ]
  %.sroa.0.0.i.i.i.i.i.i.i.i.i = phi ptr [ %.17.i.i.i.i.i.i.i.i.i, %bb.ab ], [ %.19.i.i.i.i.i.i.i.i.i, %bb.ac ], [ %.13.i.i.i.i.i.i.i.i.i, %bb.z ], [ %.15.i.i.i.i.i.i.i.i.i, %bb.aa ], [ %.3.i.i.i.i.i.i.i.i.i, %bb.d ], [ @22, %bb.e ], [ @23, %bb.f ], [ @24, %bb.g ], [ @25, %bb.h ], [ @26, %bb.i ], [ @27, %bb.j ], [ @28, %bb.k ], [ %.9.i.i.i.i.i.i.i.i.i, %bb.x ], [ %.11.i.i.i.i.i.i.i.i.i, %bb.y ], [ @31, %bb.m ], [ @32, %bb.n ], [ @33, %bb.o ], [ @34, %bb.p ], [ @35, %bb.q ], [ @36, %bb.r ], [ @37, %bb.s ], [ @38, %bb.t ], [ @39, %bb.u ], [ @40, %bb.v ], [ %.5.i.i.i.i.i.i.i.i.i, %bb.l ], [ %.7.i.i.i.i.i.i.i.i.i, %bb.w ], [ %.1.i.i.i.i.i.i.i.i.i, %bb.c ], [ @21, %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i ]
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %i.a, i64 %i.c ; 2 uses
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !59, !captures !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.39.0.i.i.i.i.i.i.i.i.i, ptr %i.f, align 8, !noalias !60
  %i.g = add nuw nsw i64 %i.c, 1                  ; 2 uses
  %i.h = icmp eq i64 %i.g, 38
  br i1 %i.h, label %_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abi9ExternAbiENCNvB2R_9all_names0EE9from_iterB2T_.exit, label %_RNvMs_NtCsbSS6DM8SDEO_5alloc3vecINtB4_3VecReE7reserveCskVLyBV5N46_15ra_ap_rustc_abi.exit.i.i.i

_RNvXs_NtNtCsbSS6DM8SDEO_5alloc3vec21spec_from_iter_nestedINtB6_3VecReEINtB4_18SpecFromIterNestedB13_INtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1J_5slice4iter4IterNtNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abi9ExternAbiENCNvB2R_9all_names0EE9from_iterB2T_.exit: ; preds = %bb.ad
  store i64 38, ptr %0, align 8, !alias.scope !56
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !56
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 38, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !56
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef range(i8 -1, 2) i8 @_RNvXNtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB2_9ExternAbiNtNtCshzWfHUSfYae_4core3cmp3Ord3cmp(ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %0, ptr noalias nofree noundef readonly captures(none) dereferenceable(2) %1) unnamed_addr #8 {
bb.a:
  %.val6 = load i8, ptr %0, align 1, !range !10, !noundef !4
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  %.val7 = load i8, ptr %i.a, align 1             ; 10 uses
  switch i8 %.val6, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit
    i8 3, label %bb.d
    i8 4, label %bb.e
    i8 5, label %bb.f
    i8 6, label %bb.g
    i8 7, label %bb.h
    i8 8, label %bb.i
    i8 9, label %bb.j
    i8 10, label %bb.k
    i8 11, label %bb.l
    i8 12, label %bb.m
    i8 13, label %bb.n
    i8 14, label %bb.o
    i8 15, label %bb.p
    i8 16, label %bb.q
    i8 17, label %bb.r
    i8 18, label %bb.s
    i8 19, label %bb.t
    i8 20, label %bb.u
    i8 21, label %bb.v
    i8 22, label %bb.w
    i8 23, label %bb.x
    i8 24, label %bb.y
    i8 25, label %bb.z
    i8 26, label %bb.aa
    i8 27, label %bb.ab
  ]

default.unreachable:                              ; preds = %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.b = trunc nuw i8 %.val7 to i1                ; 2 uses
  %..i = select i1 %i.b, i64 8, i64 1
  %.1.i = select i1 %i.b, ptr @18, ptr @17
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.c:                                             ; preds = %bb.a
  %i.c = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.2.i = select i1 %i.c, i64 13, i64 6
  %.3.i = select i1 %i.c, ptr @20, ptr @19
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.d:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.e:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.f:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.g:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.h:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.i:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.j:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.k:                                             ; preds = %bb.a
  %i.d = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.4.i = select i1 %i.d, i64 12, i64 5
  %.5.i = select i1 %i.d, ptr @30, ptr @29
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.l:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.m:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.n:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.o:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.p:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.q:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.r:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.s:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.t:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.u:                                             ; preds = %bb.a
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.v:                                             ; preds = %bb.a
  %i.e = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.6.i = select i1 %i.e, i64 12, i64 5
  %.7.i = select i1 %i.e, ptr @42, ptr @41
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.w:                                             ; preds = %bb.a
  %i.f = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.8.i = select i1 %i.f, i64 14, i64 7
  %.9.i = select i1 %i.f, ptr @44, ptr @43
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.x:                                             ; preds = %bb.a
  %i.g = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.10.i = select i1 %i.g, i64 15, i64 8
  %.11.i = select i1 %i.g, ptr @46, ptr @45
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.y:                                             ; preds = %bb.a
  %i.h = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.12.i = select i1 %i.h, i64 15, i64 8
  %.13.i = select i1 %i.h, ptr @48, ptr @47
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.z:                                             ; preds = %bb.a
  %i.i = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.14.i = select i1 %i.i, i64 17, i64 10
  %.15.i = select i1 %i.i, ptr @50, ptr @49
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.aa:                                            ; preds = %bb.a
  %i.j = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.16.i = select i1 %i.j, i64 13, i64 6
  %.17.i = select i1 %i.j, ptr @52, ptr @51
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

bb.ab:                                            ; preds = %bb.a
  %i.k = trunc nuw i8 %.val7 to i1                ; 2 uses
  %.18.i = select i1 %i.k, i64 12, i64 5
  %.19.i = select i1 %i.k, ptr @54, ptr @53
  br label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit

_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab
  %.sroa.39.0.i = phi i64 [ %.16.i, %bb.aa ], [ %.18.i, %bb.ab ], [ %.12.i, %bb.y ], [ %.14.i, %bb.z ], [ %.2.i, %bb.c ], [ 9, %bb.d ], [ 9, %bb.e ], [ 12, %bb.f ], [ 18, %bb.g ], [ 10, %bb.h ], [ 6, %bb.i ], [ 6, %bb.j ], [ %.8.i, %bb.w ], [ %.10.i, %bb.x ], [ 19, %bb.l ], [ 20, %bb.m ], [ 10, %bb.n ], [ 10, %bb.o ], [ 13, %bb.p ], [ 26, %bb.q ], [ 16, %bb.r ], [ 17, %bb.s ], [ 17, %bb.t ], [ 13, %bb.u ], [ %.4.i, %bb.k ], [ %.6.i, %bb.v ], [ %..i, %bb.b ], [ 4, %bb.a ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %.17.i, %bb.aa ], [ %.19.i, %bb.ab ], [ %.13.i, %bb.y ], [ %.15.i, %bb.z ], [ %.3.i, %bb.c ], [ @22, %bb.d ], [ @23, %bb.e ], [ @24, %bb.f ], [ @25, %bb.g ], [ @26, %bb.h ], [ @27, %bb.i ], [ @28, %bb.j ], [ %.9.i, %bb.w ], [ %.11.i, %bb.x ], [ @31, %bb.l ], [ @32, %bb.m ], [ @33, %bb.n ], [ @34, %bb.o ], [ @35, %bb.p ], [ @36, %bb.q ], [ @37, %bb.r ], [ @38, %bb.s ], [ @39, %bb.t ], [ @40, %bb.u ], [ %.5.i, %bb.k ], [ %.7.i, %bb.v ], [ %.1.i, %bb.b ], [ @21, %bb.a ]
  %.val = load i8, ptr %1, align 1, !range !10, !noundef !4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 1
  %.val5 = load i8, ptr %i.l, align 1             ; 10 uses
  switch i8 %.val, label %default.unreachable [
    i8 0, label %bb.ac
    i8 1, label %bb.ad
    i8 2, label %_RNvMsa_NtCskVLyBV5N46_15ra_ap_rustc_abi10extern_abiNtB5_9ExternAbi6as_str.exit31
    i8 3, label %bb.ae
    i8 4, label %bb.af
    i8 5, label %bb.ag
    i8 6, label %bb.ah
    i8 7, label %bb.ai
    i8 8, label %bb.aj
    i8 9, label %bb.ak
    i8 10, label %bb.al
    i8 11, label %bb.am
    i8 12, label %bb.an
    i8 13, label %bb.ao
    i8 14, label %bb.ap
    i8 15, label %bb.aq
    i8 16, label %bb.ar
    i8 17, label %bb.as
    i8 18, label %bb.at
    i8 19, label %bb.au
end_hunk_0
