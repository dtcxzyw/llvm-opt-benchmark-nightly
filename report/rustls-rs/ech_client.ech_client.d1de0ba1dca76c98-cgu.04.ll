Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/ech_client.ech_client.d1de0ba1dca76c98-cgu.04?download=true
inline.NumInlined: 1017
inline.NumDeleted: 418
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 6
begin_hunk_0_@_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE6removetECsi17nFaBu4HY_10ech_client:bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !97, !noundef !8 ; 3 uses
  %i.g = load ptr, ptr %1, align 8, !alias.scope !97, !nonnull !8, !noundef !8 ; 4 uses
  %i.h = insertelement <16 x i8> poison, i8 %i.d, i64 0
  %i.i = shufflevector <16 x i8> %i.h, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.a ], [ %i.z, %bb.d ]
  %.pn.i.i.i = phi i64 [ %i.b, %bb.a ], [ %i.aa, %bb.d ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.f  ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i24.i.i.i = load <16 x i8>, ptr %i.j, align 1, !noalias !98 ; 2 uses
  %i.k = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, %i.i
  %i.l = bitcast <16 x i1> %i.k to i16            ; 2 uses
  %.not.i.not30.i.i.i = icmp eq i16 %i.l, 0
  br i1 %.not.i.not30.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i.i.i = phi i16 [ %i.y, %bb.c ], [ %i.l, %bb.b ] ; 3 uses
  %i.m = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i.i.i, i1 true)
  %i.n = zext nneg i16 %i.m to i64
  %i.o = add i64 %.sroa.01.0.i.i.i.i, %i.n
  %i.p = and i64 %i.o, %i.f                       ; 2 uses
  %i.q = sub nsw i64 0, %i.p
  %i.r = getelementptr inbounds [56 x i8], ptr %i.g, i64 %i.q ; 4 uses
  %i.s = getelementptr inbounds i8, ptr %i.r, i64 -56
  %i.t = tail call noundef zeroext i1 @_RNvXCs37Y8JGf013z_9hashbrowntINtB2_10EquivalenttE10equivalentCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.s), !noalias !99
  br i1 %i.t, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.c, !prof !13

._crit_edge.i.i.i:                                ; preds = %bb.c, %bb.b
  %i.u = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i.i.i, splat (i8 -1)
  %i.v = bitcast <16 x i1> %i.u to i16
  %i.w = icmp eq i16 %i.v, 0
  br i1 %i.w, label %bb.d, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit.thread, !prof !14

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.x = add i16 %.sroa.06.0.i31.i.i.i, -1
  %i.y = and i16 %i.x, %.sroa.06.0.i31.i.i.i      ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.y, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.d:                                             ; preds = %._crit_edge.i.i.i
  %i.z = add i64 %.sroa.9.0.i.i.i.i, 16           ; 2 uses
  %i.aa = add i64 %.sroa.01.0.i.i.i.i, %i.z
  br label %bb.b

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %.lr.ph.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !100)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.idx.neg.i.i = mul i64 %i.p, 56
  %i.ab = sdiv exact i64 %.idx.neg.i.i, 56        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.ac = add nsw i64 %i.ab, -16
  %i.ad = and i64 %i.ac, %i.f
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ad ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !103
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 %i.ab ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i.i.i = load <16 x i8>, ptr %i.ah, align 1, !noalias !104
  %i.ai = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i.i.i, splat (i8 -1)
  %i.aj = bitcast <16 x i1> %i.ai to i16
  %i.ak = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ag, i1 false)
  %i.al = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.aj, i1 false)
  %narrow.i.i.i.i.i = add nuw nsw i16 %i.al, %i.ak
  %i.am = icmp samesign ugt i16 %narrow.i.i.i.i.i, 15
  br i1 %i.am, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.ao = load i64, ptr %i.an, align 8, !alias.scope !105, !noundef !8
  %i.ap = add i64 %i.ao, 1
  store i64 %i.ap, ptr %i.an, align 8, !alias.scope !105
  br label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsi17nFaBu4HY_10ech_client.exit.i.i, %bb.e
  %.sroa.0.0.i.i.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE4findNCINvNtB8_3map14equivalent_keyttBR_E0ECsi17nFaBu4HY_10ech_client.exit.i.i ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.ah, align 1, !noalias !106
  %i.aq = getelementptr i8, ptr %i.ae, i64 16
  store i8 %.sroa.0.0.i.i.i.i.i, ptr %i.aq, align 1, !noalias !106
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !105, !noundef !8
  %i.at = add i64 %i.as, -1
  store i64 %i.at, ptr %i.ar, align 8, !alias.scope !105
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.r, i64 -16
  %.sroa.4.0.copyload = load i8, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !94 ; 2 uses
  %.not = icmp eq i8 %.sroa.4.0.copyload, -1
  br i1 %.not, label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.r, i64 -15
  %i.au = getelementptr inbounds i8, ptr %i.r, i64 -48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.au, i64 32, i1 false)
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx, i64 15, i1 false)
  br label %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit.thread

_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit, %bb.f
  %.sink = phi i8 [ %.sroa.4.0.copyload, %bb.f ], [ -1, %_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12remove_entrytECsi17nFaBu4HY_10ech_client.exit ], [ -1, %._crit_edge.i.i.i ]
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %.sink, ptr %i.av, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RINvMs1_NtCs37Y8JGf013z_9hashbrown3mapINtB6_7HashMaptuNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE12contains_keytECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load i64, ptr %i.a, align 8, !noundef !8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtuEE4findNCINvNtB8_3map14equivalent_keyttuE0ECsi17nFaBu4HY_10ech_client.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = tail call noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.d, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1) ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !116)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !117)
  %i.f = lshr i64 %i.e, 57
  %i.g = trunc nuw nsw i64 %i.f to i8
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !118, !noundef !8 ; 2 uses
  %i.j = load ptr, ptr %0, align 8, !alias.scope !118, !nonnull !8, !noundef !8 ; 2 uses
  %i.k = insertelement <16 x i8> poison, i8 %i.g, i64 0
  %i.l = shufflevector <16 x i8> %i.k, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.b ], [ %i.ac, %bb.e ]
  %.pn.i = phi i64 [ %i.e, %bb.b ], [ %i.ad, %bb.e ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.i          ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.m, align 1, !noalias !119 ; 2 uses
  %i.n = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.l
  %i.o = bitcast <16 x i1> %i.n to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.o, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.06.0.i31.i = phi i16 [ %i.ab, %bb.d ], [ %i.o, %bb.c ] ; 3 uses
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = add i64 %.sroa.01.0.i.i, %i.q
  %i.s = and i64 %i.r, %i.i
  %i.t = sub nsw i64 0, %i.s
  %i.u = getelementptr inbounds [2 x i8], ptr %i.j, i64 %i.t
  %i.v = getelementptr inbounds i8, ptr %i.u, i64 -2
  %i.w = tail call noundef zeroext i1 @_RNvXCs37Y8JGf013z_9hashbrowntINtB2_10EquivalenttE10equivalentCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %1, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.v), !noalias !120
  br i1 %i.w, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtuEE4findNCINvNtB8_3map14equivalent_keyttuE0ECsi17nFaBu4HY_10ech_client.exit, label %bb.d, !prof !13

._crit_edge.i:                                    ; preds = %bb.d, %bb.c
  %i.x = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.y = bitcast <16 x i1> %i.x to i16
  %i.z = icmp eq i16 %i.y, 0
  br i1 %i.z, label %bb.e, label %_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtuEE4findNCINvNtB8_3map14equivalent_keyttuE0ECsi17nFaBu4HY_10ech_client.exit, !prof !14

bb.d:                                             ; preds = %.lr.ph.i
  %i.aa = add i16 %.sroa.06.0.i31.i, -1
  %i.ab = and i16 %i.aa, %.sroa.06.0.i31.i        ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.ab, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.e:                                             ; preds = %._crit_edge.i
  %i.ac = add i64 %.sroa.9.0.i.i, 16              ; 2 uses
  %i.ad = add i64 %.sroa.01.0.i.i, %i.ac
  br label %bb.c

_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtuEE4findNCINvNtB8_3map14equivalent_keyttuE0ECsi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge.i, %.lr.ph.i, %bb.a
  %.sroa.0.0 = phi i1 [ false, %bb.a ], [ true, %.lr.ph.i ], [ false, %._crit_edge.i ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs3_NtNtCskruEhpekJ3V_5tokio4util17idle_notified_setINtB6_20EntryInOneOfTheListsINtNtNtNtBa_7runtime4task4join10JoinHandleuEE22with_value_and_contextNCNvMs_NtNtBa_4task8join_setINtB2y_7JoinSetuE6insert0uECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load ptr, ptr %0, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @0, ptr %i.a, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  call void @_RNvMs2_NtNtNtCskruEhpekJ3V_5tokio7runtime4task4joinINtB5_10JoinHandleuE14set_join_wakerCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1q_12SharedLookupEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B2q_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !142)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !142, !noundef !8 ; 2 uses
  %2 = add nuw i64 %i.f, 1                        ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !142, !noundef !8 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.n
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !143
  %i.p = extractvalue { i64, i64 } %i.o, 0
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !144)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !145
  %i.q = icmp ult i64 %..i, 15
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.r, label %bb.l, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %..i, 3
  %i.t = udiv i64 %i.s, 7
  %i.u = add nsw i64 %i.t, -1
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = lshr i64 -1, %i.v
  %i.x = add nuw nsw i64 %i.w, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %..i, 4
  %i.z = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.z, 8
  %.sroa.03.0.i.i = select i1 %i.y, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.aa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 81) 24) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ad, -16                      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !15

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !146
  %i.aj = call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !146 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !146
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ag), !noalias !146
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !147
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.an, %bb.l ], [ %i.am, %bb.k ], [ %i.al, %bb.j ]
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #25, !noalias !148
  resume { ptr, i32 } %i.ao

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !147
  store ptr %i.d, ptr %i.a, align 8, !noalias !145
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 24, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !145
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !145
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !145
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !149, !noundef !8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !149, !nonnull !8, !noundef !8 ; 2 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.036 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !149
  %.pre42 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %bb.o
  %i.bd = phi i64 [ %.pre42, %._crit_edge37.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !145
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit unwind label %bb.p, !noalias !148

bb.p:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #26, !noalias !148
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !150)
  call void @llvm.experimental.noalias.scope.decl(metadata !151), !noalias !148
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !148 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !148 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !152, !noalias !148, !noundef !8 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !152, !noalias !148
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !148
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !148
  call void @llvm.assume(i1 %i.bt), !noalias !148
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !148
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !148
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !noalias !153
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !145
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.az, %.noexc2 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.034, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !154)
  call void @llvm.experimental.noalias.scope.decl(metadata !155)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !154, !noalias !148, !nonnull !8, !align !10, !noundef !8
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !155, !noalias !148, !nonnull !8, !noundef !8
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [24 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -24
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !156, !nonnull !8, !align !10, !noundef !8
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ci)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !8 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !157
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !8
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.r, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !14

bb.r:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !157
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !17

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.r ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dg, ptr %i.de, align 1, !noalias !148
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !145, !nonnull !8, !noundef !8 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !148
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !149, !nonnull !8, !noundef !8
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 24
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 24
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %i.do, ptr noundef nonnull align 1 dereferenceable(24) %i.dn, i64 range(i64 24, 81) 24, i1 false), !noalias !148
  %i.dp = icmp eq i64 %i.cd, 0
  br i1 %i.dp, label %._crit_edge37.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1s_12SharedLookupEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B2s_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client, i64 noundef 24, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTINtNtCs4wP2HXfJTCR_5alloc4sync3ArcNtNtCs9RFwvXNxPyg_16hickory_resolver16name_server_pool8CacheKeyENtB1v_12SharedLookupEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B2v_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceCsi17nFaBu4HY_10ech_client) #28
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, %bb.c, %bb.s
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !179)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !179, !noundef !8 ; 2 uses
  %2 = add nuw i64 %i.f, 1                        ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !179, !noundef !8 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.n
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !180
  %i.p = extractvalue { i64, i64 } %i.o, 0
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !181)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !182
  %i.q = icmp ult i64 %..i, 15
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.r, label %bb.l, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %..i, 3
  %i.t = udiv i64 %i.s, 7
  %i.u = add nsw i64 %i.t, -1
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = lshr i64 -1, %i.v
  %i.x = add nuw nsw i64 %i.w, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %..i, 4
  %i.z = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.z, 8
  %.sroa.03.0.i.i = select i1 %i.y, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.aa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 81) 80) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0       ; 3 uses
  %i.ad = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 4 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !15

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !183
  %i.ah = call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !183 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.aj = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !183
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ak = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae), !noalias !183
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.al = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !184
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.al, %bb.l ], [ %i.ak, %bb.k ], [ %i.aj, %bb.j ]
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.n:                                             ; preds = %._crit_edge
  %i.am = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #25, !noalias !185
  resume { ptr, i32 } %i.am

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.ah, i64 %i.ac ; 3 uses
  %i.ao = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ap = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.aq = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.ar = mul nuw nsw i64 %i.aq, 7
  %.sroa.07.0.i.i = select i1 %i.ap, i64 %i.ao, i64 %i.ar ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.an, i8 -1, i64 %i.ad, i1 false), !noalias !184
  store ptr %i.d, ptr %i.a, align 8, !noalias !182
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 80, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !182
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !182
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.an, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !182
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.ao, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  %i.as = load i64, ptr %i.e, align 8, !alias.scope !186, !noundef !8 ; 2 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.au = load ptr, ptr %0, align 8, !alias.scope !186, !nonnull !8, !noundef !8 ; 2 uses
  %.val525 = load <16 x i8>, ptr %i.au, align 16
  %i.av = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.aw = bitcast <16 x i1> %i.av to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.an, %.preheader.lr.ph ], [ %i.dh, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.036 = phi ptr [ %i.au, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.as, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.aw, %.preheader.lr.ph ], [ %i.bz, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.ax, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.ba, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.ax, align 16
  %i.ay = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.az = bitcast <16 x i1> %i.ay to i16          ; 2 uses
  %i.ba = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.az, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !186
  %.pre42 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %bb.o
  %i.bb = phi i64 [ %.pre42, %._crit_edge37.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.bc = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bd = sub i64 %i.bb, %i.bc
  store i64 %i.bd, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  store i64 %i.bc, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !182
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit unwind label %bb.p, !noalias !185

bb.p:                                             ; preds = %._crit_edge37
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #26, !noalias !185
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !187)
  call void @llvm.experimental.noalias.scope.decl(metadata !188), !noalias !185
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !189, !noalias !185 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !189, !noalias !185 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !189, !noalias !185, !noundef !8 ; 3 uses
  %i.bf = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bf, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !189, !noalias !185
  %i.bg = add i64 %.val3.i.i, 1
  %i.bh = mul nuw i64 %.val.i.i, %i.bg            ; 2 uses
  %i.bi = add i64 %.val1.i.i, -1
  %i.bj = add i64 %i.bi, %i.bh                    ; 2 uses
  %i.bk = icmp uge i64 %i.bj, %i.bh
  call void @llvm.assume(i1 %i.bk), !noalias !185
  %i.bl = sub i64 0, %.val1.i.i
  %i.bm = and i64 %i.bj, %i.bl                    ; 3 uses
  %i.bn = add i64 %.val3.i.i, 17
  %i.bo = add i64 %i.bn, %i.bm                    ; 4 uses
  %i.bp = icmp uge i64 %i.bo, %i.bm
  %i.bq = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.br = icmp ule i64 %i.bo, %i.bq
  call void @llvm.assume(i1 %i.bp), !noalias !185
  call void @llvm.assume(i1 %i.br), !noalias !185
  %i.bs = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bs), !noalias !185
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !185
  %i.bt = icmp eq i64 %i.bo, 0
  br i1 %i.bt, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bu = sub nsw i64 0, %i.bm
  %i.bv = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bu
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bv, i64 noundef %i.bo, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !noalias !190
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !182
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.az, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.ba, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.ax, %.noexc2 ]
  %i.bw = add i16 %.sroa.13.1.lcssa, -1
  %i.bx = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.by = zext nneg i16 %i.bx to i64
  %i.bz = and i16 %i.bw, %.sroa.13.1.lcssa
  %i.ca = add i64 %.sroa.5.1.lcssa, %i.by         ; 2 uses
  %i.cb = add i64 %.sroa.9.034, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !191)
  call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.cc = load ptr, ptr %i.b, align 8, !alias.scope !191, !noalias !185, !nonnull !8, !align !10, !noundef !8
  %i.cd = load ptr, ptr %0, align 8, !alias.scope !192, !noalias !185, !nonnull !8, !noundef !8
  %i.ce = sub nsw i64 0, %i.ca
  %i.cf = getelementptr inbounds [80 x i8], ptr %i.cd, i64 %i.ce
  %i.cg = getelementptr inbounds i8, ptr %i.cf, i64 -80
  %.val.i = load ptr, ptr %i.cc, align 8, !noalias !193, !nonnull !8, !align !10, !noundef !8
  %i.ch = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cg)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !8 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.ch ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ci, align 1, !noalias !194
  %i.cj = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.ck = bitcast <16 x i1> %i.cj to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.ck, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.ck, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ], [ %i.db, %.lr.ph.i ]
  %i.cl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.cm = zext nneg i16 %i.cl to i64
  %i.cn = add i64 %.sroa.0.0.lcssa.i, %i.cm
  %i.co = and i64 %i.cn, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !8
  %i.cr = icmp sgt i8 %i.cq, -1
  br i1 %i.cr, label %bb.r, label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !14

bb.r:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cs = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.ct = bitcast <16 x i1> %i.cs to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.ct, 0
  %i.cu = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ct, i1 true)
  %i.cv = zext nneg i16 %i.cu to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ]
  %i.cw = phi i64 [ %i.cx, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ]
  %i.cx = add i64 %i.cw, 16                       ; 2 uses
  %i.cy = add i64 %i.cx, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.cy, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.cz, align 1, !noalias !194
  %i.da = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.db = bitcast <16 x i1> %i.da to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.db, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !17

_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.r, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cv, %bb.r ], [ %i.co, %._crit_edge.i ] ; 3 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.dd = lshr i64 %i.ch, 57
  %i.de = trunc nuw nsw i64 %i.dd to i8           ; 2 uses
  %i.df = add i64 %.sroa.0.0.i5.i, -16
  %i.dg = and i64 %i.df, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.de, ptr %i.dc, align 1, !noalias !185
  %i.dh = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !182, !nonnull !8, !noundef !8 ; 3 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.dg
  %i.dj = getelementptr i8, ptr %i.di, i64 16
  store i8 %i.de, ptr %i.dj, align 1, !noalias !185
  %i.dk = load ptr, ptr %0, align 8, !alias.scope !186, !nonnull !8, !noundef !8
  %.neg.i.i = xor i64 %i.ca, -1
  %.neg62.i.i = mul i64 %.neg.i.i, 80
  %i.dl = getelementptr inbounds i8, ptr %i.dk, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = mul i64 %.neg63.i.i, 80
  %i.dm = getelementptr inbounds i8, ptr %i.dh, i64 %.neg64.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(80) %i.dm, ptr noundef nonnull align 1 dereferenceable(80) %i.dl, i64 range(i64 24, 81) 80, i1 false), !noalias !185
  %i.dn = icmp eq i64 %i.cb, 0
  br i1 %i.dn, label %._crit_edge37.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client, i64 noundef 80, ptr noundef nonnull @_RNvYNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtBb_8RawTableTtNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE14reserve_rehashNCINvNtBd_3map11make_hashertBW_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0Es_0INtNtNtCsj6eKBz9Db1c_4core3ops8function6FnOnceTOhEE9call_onceCsi17nFaBu4HY_10ech_client) #28
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit: ; preds = %bb.m, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, %bb.c, %bb.s
  %.sroa.0.0.i = phi i64 [ %i.p, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i64 %.sroa.0.0.i
}

; Function Attrs: cold noinline nonlazybind uwtable
define internal fastcc i64 @_RINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB6_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtB8_3map11make_hashertBR_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0ECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !216)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !216, !noundef !8 ; 2 uses
  %2 = add nuw i64 %i.f, 1                        ; 2 uses
  %i.g = icmp eq i64 %i.f, -1
  br i1 %i.g, label %bb.c, label %bb.b, !prof !14

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !216, !noundef !8 ; 3 uses
  %i.j = icmp ult i64 %i.i, 8
  %i.k = add i64 %i.i, 1
  %i.l = lshr i64 %i.k, 3
  %i.m = mul nuw i64 %i.l, 7
  %.sroa.03.0.i = select i1 %i.j, i64 %i.i, i64 %i.m ; 2 uses
  %i.n = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %2, %i.n
  br i1 %.not.i, label %bb.d, label %bb.s

bb.c:                                             ; preds = %bb.a
  %i.o = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !217
  %i.p = extractvalue { i64, i64 } %i.o, 0
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.d:                                             ; preds = %bb.b
  %3 = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %3, i64 range(i64 1, 0) %2) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !218)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !219
  %i.q = icmp ult i64 %..i, 15
  br i1 %i.q, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.r, label %bb.l, label %bb.f, !prof !14

bb.f:                                             ; preds = %bb.e
  %i.s = shl nuw i64 %..i, 3
  %i.t = udiv i64 %i.s, 7
  %i.u = add nsw i64 %i.t, -1
  %i.v = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.u, i1 true)
  %i.w = lshr i64 -1, %i.v
  %i.x = add nuw nsw i64 %i.w, 1
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  %i.y = icmp samesign ult i64 %..i, 4
  %i.z = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.z, 8
  %.sroa.03.0.i.i = select i1 %i.y, i64 4, i64 %..i.i
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.ph.i = phi i64 [ %i.x, %bb.f ], [ %.sroa.03.0.i.i, %bb.g ] ; 5 uses
  %i.aa = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.4.0.i.ph.i, i64 range(i64 24, 81) 56) ; 2 uses
  %i.ab = extractvalue { i64, i1 } %i.aa, 1
  br i1 %i.ab, label %bb.j, label %bb.i, !prof !14

bb.i:                                             ; preds = %bb.h
  %i.ac = extractvalue { i64, i1 } %i.aa, 0
  %i.ad = add nuw i64 %i.ac, 8
  %i.ae = and i64 %i.ad, -16                      ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i, 16   ; 2 uses
  %i.ag = add i64 %i.ae, %i.af                    ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %i.ae
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.j, label %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i, !prof !15

_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.i
  call void @_RNvCshxk5dXoXnx9_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #27, !noalias !220
  %i.aj = call noundef align 16 ptr @_RNvCshxk5dXoXnx9_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #27, !noalias !220 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.k, label %bb.o

bb.j:                                             ; preds = %bb.i, %bb.h
  %i.al = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !220
  br label %bb.m

bb.k:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ag), !noalias !220
  br label %bb.m

bb.l:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCs37Y8JGf013z_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext true), !noalias !221
  br label %bb.m

bb.m:                                             ; preds = %bb.j, %bb.k, %bb.l
  %.pn = phi { i64, i64 } [ %i.an, %bb.l ], [ %i.am, %bb.k ], [ %i.al, %bb.j ]
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

bb.n:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #25, !noalias !222
  resume { ptr, i32 } %i.ao

bb.o:                                             ; preds = %_RNvXs1_NtCs4wP2HXfJTCR_5alloc5allocNtB5_6GlobalNtNtCsj6eKBz9Db1c_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.ae ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i, -1       ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !221
  store ptr %i.d, ptr %i.a, align 8, !noalias !219
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 56, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !219
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !219
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !219
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !223, !noundef !8 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.o
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !223, !nonnull !8, !noundef !8 ; 2 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.036 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.not.i128 = icmp eq i16 %.sroa.13.033, 0
  br i1 %.not.i128, label %.noexc2, label %._crit_edge

.noexc2:                                          ; preds = %.preheader, %.noexc2
  %.sroa.0.130 = phi ptr [ %i.az, %.noexc2 ], [ %.sroa.0.036, %.preheader ] ; 2 uses
  %.sroa.5.129 = phi i64 [ %i.bc, %.noexc2 ], [ %.sroa.5.035, %.preheader ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.130) ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.130, i64 16 ; 3 uses
  %.val426 = load <16 x i8>, ptr %i.az, align 16
  %i.ba = icmp sgt <16 x i8> %.val426, splat (i8 -1)
  %i.bb = bitcast <16 x i1> %i.ba to i16          ; 2 uses
  %i.bc = add i64 %.sroa.5.129, 16                ; 2 uses
  %.not.i1 = icmp eq i16 %i.bb, 0
  br i1 %.not.i1, label %.noexc2, label %._crit_edge

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !223
  %.pre42 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %bb.o
  %i.bd = phi i64 [ %.pre42, %._crit_edge37.loopexit ], [ %.sroa.07.0.i.i, %bb.o ]
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %bb.o ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !219
  invoke void @_RINvNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit unwind label %bb.p, !noalias !222

bb.p:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking19panic_cannot_unwind() #26, !noalias !222
  unreachable

_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !224)
  call void @llvm.experimental.noalias.scope.decl(metadata !225), !noalias !222
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !226, !noalias !222 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !226, !noalias !222 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !226, !noalias !222, !noundef !8 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !226, !noalias !222
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !222
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !222
  call void @llvm.assume(i1 %i.bt), !noalias !222
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !222
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !222
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit, label %bb.q

bb.q:                                             ; preds = %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #27, !noalias !227
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs37Y8JGf013z_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalE0EECsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core10intrinsics25typed_swap_nonoverlappingNtNtCs37Y8JGf013z_9hashbrown3raw13RawTableInnerECsi17nFaBu4HY_10ech_client.exit, %_RNvMs1_NtCs37Y8JGf013z_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !219
  br label %_RINvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCs4wP2HXfJTCR_5alloc5alloc6GlobalECsi17nFaBu4HY_10ech_client.exit

._crit_edge:                                      ; preds = %.noexc2, %.preheader
  %.sroa.13.1.lcssa = phi i16 [ %.sroa.13.033, %.preheader ], [ %i.bb, %.noexc2 ] ; 3 uses
  %.sroa.5.1.lcssa = phi i64 [ %.sroa.5.035, %.preheader ], [ %i.bc, %.noexc2 ] ; 2 uses
  %.sroa.0.1.lcssa = phi ptr [ %.sroa.0.036, %.preheader ], [ %i.az, %.noexc2 ]
  %i.by = add i16 %.sroa.13.1.lcssa, -1
  %i.bz = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.13.1.lcssa, i1 true)
  %i.ca = zext nneg i16 %i.bz to i64
  %i.cb = and i16 %i.by, %.sroa.13.1.lcssa
  %i.cc = add i64 %.sroa.5.1.lcssa, %i.ca         ; 2 uses
  %i.cd = add i64 %.sroa.9.034, -1                ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !228)
  call void @llvm.experimental.noalias.scope.decl(metadata !229)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !228, !noalias !222, !nonnull !8, !align !10, !noundef !8
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !229, !noalias !222, !nonnull !8, !noundef !8
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [56 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -56
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !230, !nonnull !8, !align !10, !noundef !8
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateNtNtCsj6eKBz9Db1c_4core4hash11BuildHasher8hash_oneRtECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ci)
          to label %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit unwind label %bb.n ; 2 uses

_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !8 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !231
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !16

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCs37Y8JGf013z_9hashbrown3rawINtB8_8RawTableTtNtNtNtCs5MfxasYgTEl_11hickory_net4xfer15dns_multiplexer13ActiveRequestEE14reserve_rehashNCINvNtBa_3map11make_hashertBT_NtNtNtCsaKJjC64KgbL_3std4hash6random11RandomStateE0E0Csi17nFaBu4HY_10ech_client.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
end_hunk_0
begin_hunk_1_@_RNvMsa_NtCs37Y8JGf013z_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place:bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %i.bj, ptr noundef nonnull align 1 dereferenceable(1) %i.ai, i64 %2, i1 false)
  br label %bb.l

bb.k:                                             ; preds = %bb.h
  invoke fastcc void @_RNvNtCsj6eKBz9Db1c_4core3ptr25swap_nonoverlapping_bytes(ptr noundef %i.ai, ptr noundef %i.bj, i64 noundef %2)
          to label %bb.d unwind label %bb.e

bb.l:                                             ; preds = %bb.i, %bb.j, %.lr.ph
  %exitcond.not = icmp eq i64 %.sroa.0.06, %.val16
  br i1 %exitcond.not, label %._crit_edge.loopexit, label %.lr.ph

bb.m:                                             ; preds = %bb.e
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.ak
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE8try_sendCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([184 x i8]) align 8 captures(none) dereferenceable(184) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(176) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [176 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1225)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !1225, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1225
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1225, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %.body.thread21

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.l = load i64, ptr %i.d, align 8, !range !27, !alias.scope !1226, !noalias !1225, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i, !prof !14

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1227
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1226, !noalias !1225, !nonnull !8, !align !10, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !9, !alias.scope !1226, !noalias !1225, !noundef !8
  store ptr %i.o, ptr %i.c, align 8, !noalias !1227
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.q, ptr %i.r, align 8, !noalias !1227
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #30
          to label %bb.e unwind label %bb.d, !noalias !1228

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #25
          to label %.body.thread unwind label %bb.f, !noalias !1228

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1228
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1226, !noalias !1225, !nonnull !8, !align !10, !noundef !8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !9, !alias.scope !1226, !noalias !1225, !noundef !8 ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1225
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !9, !noalias !1225, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  store i8 0, ptr %i.f, align 8, !alias.scope !1225
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  br i1 %i.y, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1225
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc4 unwind label %.body.thread21

.noexc4:                                          ; preds = %bb.i
  br i1 %i.ag, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc4
  store atomic i8 1, ptr %i.ac monotonic, align 4, !noalias !1225
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %.noexc4, %bb.h, %bb.g
  %i.ah = atomicrmw xchg ptr %i.v, i32 0 release, align 4, !noalias !1225
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread, !prof !14

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.v)
          to label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit unwind label %.body.thread21

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.aj, align 8, !noalias !1225, !align !10, !noundef !8 ; 2 uses
  %i.ak = icmp eq ptr %.val.i, null
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.v, i64 16
  %.val8.i = load ptr, ptr %i.al, align 8, !noalias !1225
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1225, !nonnull !8, !noundef !8
  invoke void %i.an(ptr noundef %.val8.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.m, !noalias !1225, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aj, align 8, !noalias !1225
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.v, i8 %i.x) #25
          to label %.body.thread unwind label %bb.q, !noalias !1225

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.aj, align 8, !noalias !1225
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  br i1 %i.y, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i
  %i.aq = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1225
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc6 unwind label %.body.thread21

.noexc6:                                          ; preds = %bb.o
  br i1 %i.at, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.p

bb.p:                                             ; preds = %.noexc6
  store atomic i8 1, ptr %i.ap monotonic, align 4, !noalias !1225
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i: ; preds = %bb.p, %.noexc6, %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i
  %i.au = atomicrmw xchg ptr %i.v, i32 0 release, align 4, !noalias !1225
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25, !prof !14

bb.q:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1225
  unreachable

.body.thread21:                                   ; preds = %bb.o, %bb.b, %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i
  br i1 %i.ab, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %0, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.am

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(176) %i.e, ptr noundef nonnull align 8 dereferenceable(176) %2, i64 176, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
  call void @llvm.experimental.noalias.scope.decl(metadata !1230)
  call void @llvm.experimental.noalias.scope.decl(metadata !1231)
  call void @llvm.experimental.noalias.scope.decl(metadata !1232)
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !1233, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.az = load atomic i64, ptr %i.ay seq_cst, align 8, !noalias !1234
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread
  %.sroa.05.0.i.i = phi i64 [ %i.az, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread ], [ %.sroa.01.0.i.i.i, %bb.u ] ; 3 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.ba = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %.not11.i.i, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc.i unwind label %.body.thread17.i, !noalias !1235

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = or disjoint i64 %i.bb, -9223372036854775808
  %i.bd = cmpxchg ptr %i.ay, i64 %.sroa.05.0.i.i, i64 %i.bc seq_cst seq_cst, align 8, !noalias !1234 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bd, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bd, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.v, label %bb.r

.body.thread17.i:                                 ; preds = %bb.ai, %bb.ah, %bb.af, %bb.x, %bb.t
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr %1, align 8, !alias.scope !1230, !nonnull !8, !noundef !8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1235, !noundef !8
  %3 = icmp ugt i64 %i.bb, %i.bg
  br i1 %3, label %bb.x, label %.noexc7.i

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(184) %0, ptr noundef nonnull align 8 dereferenceable(176) %i.e, i64 176, i1 false), !alias.scope !1236
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 176
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1229
  br label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9do_send_bCsi17nFaBu4HY_10ech_client.exit

.noexc7.i:                                        ; preds = %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE4parkCsi17nFaBu4HY_10ech_client.exit.i, %bb.v
  %.val.i7 = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE4parkCsi17nFaBu4HY_10ech_client.exit.i ], [ %i.be, %bb.v ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i7, i64 16
  call void @_RNvMs1_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(176) %i.e)
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i7, i64 72
  call void @_RNvMNtNtNtCsjeNDyKnSdUK_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bi)
  store i64 -2, ptr %0, align 8, !alias.scope !1229
  br label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9do_send_bCsi17nFaBu4HY_10ech_client.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1237)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1238
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1239, !nonnull !8, !noundef !8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.bl)
          to label %.noexc9.i unwind label %.body.thread17.i, !noalias !1235

.noexc9.i:                                        ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1240)
  %i.bm = load i64, ptr %i.b, align 8, !range !27, !alias.scope !1240, !noalias !1238, !noundef !8
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.y, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i, !prof !14

bb.y:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1241
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1240, !noalias !1238, !nonnull !8, !align !10, !noundef !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !range !9, !alias.scope !1240, !noalias !1238, !noundef !8
  store ptr %i.bp, ptr %i.a, align 8, !noalias !1241
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.br, ptr %i.bs, align 8, !noalias !1241
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
          to label %bb.aa unwind label %bb.z, !noalias !1242

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %.body.thread.i unwind label %bb.ab, !noalias !1242

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1242
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %.noexc9.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1240, !noalias !1238, !nonnull !8, !align !10, !noundef !8 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !range !9, !alias.scope !1240, !noalias !1238, !noundef !8 ; 2 uses
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1238
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ca, align 8, !noalias !1238, !align !10, !noundef !8 ; 2 uses
  %i.cb = icmp eq ptr %.val.i.i, null
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cc = getelementptr i8, ptr %i.bw, i64 16
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !noalias !1238
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1238, !nonnull !8, !noundef !8
  invoke void %i.ce(ptr noundef %.val1.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.ad, !noalias !1238, !inline_history !1

bb.ad:                                            ; preds = %bb.ac
  %i.cf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ca, align 8, !noalias !1238
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.bw, i8 %i.by) #25
          to label %.body.thread.i unwind label %bb.ak, !noalias !1238

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.ac, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i
  store ptr null, ptr %i.ca, align 8, !noalias !1238
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i8 1, ptr %i.cg, align 8, !noalias !1238
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  br i1 %i.bz, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.ci = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1238
  %i.cj = and i64 %i.ci, 9223372036854775807
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.cl = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc10.i unwind label %.body.thread17.i, !noalias !1235

.noexc10.i:                                       ; preds = %bb.af
  br i1 %i.cl, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.ch monotonic, align 4, !noalias !1238
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ag, %.noexc10.i, %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cm = atomicrmw xchg ptr %i.bw, i32 0 release, align 4, !noalias !1238
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i, !prof !14

bb.ah:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %.body.thread17.i, !noalias !1235

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.ah, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.co = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !1238
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  invoke void @_RNvMs1_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull %i.bk)
          to label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE4parkCsi17nFaBu4HY_10ech_client.exit.i unwind label %.body.thread17.i, !noalias !1235

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1238
  unreachable

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE4parkCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8, !noalias !1238
  %.lobit.i.i = lshr i64 %i.ct, 63
  %i.cu = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.cu, ptr %i.f, align 8, !alias.scope !1239
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !1230
  br label %.noexc7.i

.body.thread.i:                                   ; preds = %bb.ad, %bb.z, %.body.thread17.i
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread17.i ], [ %i.bt, %bb.z ], [ %i.cf, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(176) %i.e) #25
          to label %.body.thread17 unwind label %bb.al, !noalias !1243

bb.al:                                            ; preds = %.body.thread.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1243
  unreachable

bb.am:                                            ; preds = %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9do_send_bCsi17nFaBu4HY_10ech_client.exit, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25
  ret void

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerINtNtCsj6eKBz9Db1c_4core6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEE9do_send_bCsi17nFaBu4HY_10ech_client.exit: ; preds = %.noexc7.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.am

.body.thread17:                                   ; preds = %.body.thread.i, %.body.thread
  %eh.lpad-body15 = phi { ptr, i32 } [ %eh.lpad-body16, %.body.thread ], [ %eh.lpad-body16.i, %.body.thread.i ]
  resume { ptr, i32 } %eh.lpad-body15

.body.thread:                                     ; preds = %bb.m, %bb.d, %.body.thread21
  %eh.lpad-body16 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread21 ], [ %i.s, %bb.d ], [ %i.ao, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6result6ResultNtNtNtCsjXdHNeFfodD_13hickory_proto2op12dns_response11DnsResponseNtNtCs5MfxasYgTEl_11hickory_net5error8NetErrorEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(176) %2) #25
          to label %.body.thread17 unwind label %bb.an

bb.an:                                            ; preds = %.body.thread
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE8try_sendCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([288 x i8]) align 8 captures(none) dereferenceable(288) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(280) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  %i.e = alloca [280 x i8], align 8               ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1260)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.g = load i8, ptr %i.f, align 8, !range !9, !alias.scope !1260, !noundef !8
  %i.h = trunc nuw i8 %i.g to i1
  br i1 %i.h, label %bb.b, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1260
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !1260, !nonnull !8, !noundef !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noundef nonnull align 8 %i.k)
          to label %.noexc unwind label %.body.thread21

.noexc:                                           ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !1261)
  %i.l = load i64, ptr %i.d, align 8, !range !27, !alias.scope !1261, !noalias !1260, !noundef !8
  %i.m = trunc nuw i64 %i.l to i1
  br i1 %i.m, label %bb.c, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i, !prof !14

bb.c:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1262
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !1261, !noalias !1260, !nonnull !8, !align !10, !noundef !8
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load i8, ptr %i.p, align 8, !range !9, !alias.scope !1261, !noalias !1260, !noundef !8
  store ptr %i.o, ptr %i.c, align 8, !noalias !1262
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i8 %i.q, ptr %i.r, align 8, !noalias !1262
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.c, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #30
          to label %bb.e unwind label %bb.d, !noalias !1263

bb.d:                                             ; preds = %bb.c
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.c) #25
          to label %.body.thread unwind label %bb.f, !noalias !1263

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1263
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %.noexc
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !1261, !noalias !1260, !nonnull !8, !align !10, !noundef !8 ; 9 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.x = load i8, ptr %i.w, align 8, !range !9, !alias.scope !1261, !noalias !1260, !noundef !8 ; 2 uses
  %i.y = trunc nuw i8 %i.x to i1                  ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1260
  %i.z = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.aa = load i8, ptr %i.z, align 8, !range !9, !noalias !1260, !noundef !8
  %i.ab = trunc nuw i8 %i.aa to i1                ; 2 uses
  br i1 %i.ab, label %bb.k, label %bb.g

bb.g:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  store i8 0, ptr %i.f, align 8, !alias.scope !1260
  %i.ac = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  br i1 %i.y, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ad = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1260
  %i.ae = and i64 %i.ad, 9223372036854775807
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  %i.ag = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc4 unwind label %.body.thread21

.noexc4:                                          ; preds = %bb.i
  br i1 %i.ag, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, label %bb.j

bb.j:                                             ; preds = %.noexc4
  store atomic i8 1, ptr %i.ac monotonic, align 4, !noalias !1260
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i: ; preds = %bb.j, %.noexc4, %bb.h, %bb.g
  %i.ah = atomicrmw xchg ptr %i.v, i32 0 release, align 4, !noalias !1260
  %i.ai = icmp eq i32 %i.ah, 2
  br i1 %i.ai, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread, !prof !14

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.v)
          to label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit unwind label %.body.thread21

bb.k:                                             ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  %.val.i = load ptr, ptr %i.aj, align 8, !noalias !1260, !align !10, !noundef !8 ; 2 uses
  %i.ak = icmp eq ptr %.val.i, null
  br i1 %i.ak, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.al = getelementptr i8, ptr %i.v, i64 16
  %.val8.i = load ptr, ptr %i.al, align 8, !noalias !1260
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 24
  %i.an = load ptr, ptr %i.am, align 8, !noalias !1260, !nonnull !8, !noundef !8
  invoke void %i.an(ptr noundef %.val8.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i unwind label %bb.m, !noalias !1260, !inline_history !1

bb.m:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.aj, align 8, !noalias !1260
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.v, i8 %i.x) #25
          to label %.body.thread unwind label %bb.q, !noalias !1260

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.l, %bb.k
  store ptr null, ptr %i.aj, align 8, !noalias !1260
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  br i1 %i.y, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.n

bb.n:                                             ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i
  %i.aq = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1260
  %i.ar = and i64 %i.aq, 9223372036854775807
  %i.as = icmp eq i64 %i.ar, 0
  br i1 %i.as, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.o, !prof !13

bb.o:                                             ; preds = %bb.n
  %i.at = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc6 unwind label %.body.thread21

.noexc6:                                          ; preds = %bb.o
  br i1 %i.at, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, label %bb.p

bb.p:                                             ; preds = %.noexc6
  store atomic i8 1, ptr %i.ap monotonic, align 4, !noalias !1260
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i: ; preds = %bb.p, %.noexc6, %bb.n, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i
  %i.au = atomicrmw xchg ptr %i.v, i32 0 release, align 4, !noalias !1260
  %i.av = icmp eq i32 %i.au, 2
  br i1 %i.av, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25, !prof !14

bb.q:                                             ; preds = %bb.m
  %i.aw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1260
  unreachable

.body.thread21:                                   ; preds = %bb.o, %bb.b, %bb.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.sink.split.i
  br i1 %i.ab, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25, label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i15.i, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %0, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 0, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.am

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread: ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i, %bb.a, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %i.e, ptr noundef nonnull align 8 dereferenceable(280) %2, i64 280, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !1264)
  call void @llvm.experimental.noalias.scope.decl(metadata !1265)
  call void @llvm.experimental.noalias.scope.decl(metadata !1266)
  call void @llvm.experimental.noalias.scope.decl(metadata !1267)
  %i.ax = load ptr, ptr %1, align 8, !alias.scope !1268, !nonnull !8, !noundef !8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 56 ; 2 uses
  %i.az = load atomic i64, ptr %i.ay seq_cst, align 8, !noalias !1269
  br label %bb.r

bb.r:                                             ; preds = %bb.u, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread
  %.sroa.05.0.i.i = phi i64 [ %i.az, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread ], [ %.sroa.01.0.i.i.i, %bb.u ] ; 3 uses
  %.not.i.i = icmp sgt i64 %.sroa.05.0.i.i, -1
  %i.ba = and i64 %.sroa.05.0.i.i, 9223372036854775807 ; 2 uses
  br i1 %.not.i.i, label %bb.w, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.not11.i.i = icmp eq i64 %i.ba, 9223372036854775807
  br i1 %.not11.i.i, label %bb.t, label %bb.u, !prof !14

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvNtCsj6eKBz9Db1c_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @13, i64 noundef 70, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #29
          to label %.noexc.i unwind label %.body.thread17.i, !noalias !1270

.noexc.i:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bb = add nuw nsw i64 %i.ba, 1                ; 2 uses
  %i.bc = or disjoint i64 %i.bb, -9223372036854775808
  %i.bd = cmpxchg ptr %i.ay, i64 %.sroa.05.0.i.i, i64 %i.bc seq_cst seq_cst, align 8, !noalias !1269 ; 2 uses
  %.sroa.18.0.in.i.i.i = extractvalue { i64, i1 } %i.bd, 1
  %.sroa.01.0.i.i.i = extractvalue { i64, i1 } %i.bd, 0
  br i1 %.sroa.18.0.in.i.i.i, label %bb.v, label %bb.r

.body.thread17.i:                                 ; preds = %bb.ai, %bb.ah, %bb.af, %bb.x, %bb.t
  %lpad.thr_comm.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread.i

bb.v:                                             ; preds = %bb.u
  %i.be = load ptr, ptr %1, align 8, !alias.scope !1265, !nonnull !8, !noundef !8 ; 4 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 48
  %i.bg = load i64, ptr %i.bf, align 8, !noalias !1270, !noundef !8
  %3 = icmp ugt i64 %i.bb, %i.bg
  br i1 %3, label %bb.x, label %.noexc7.i

bb.w:                                             ; preds = %bb.r
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(288) %0, ptr noundef nonnull align 8 dereferenceable(280) %i.e, i64 280, i1 false), !alias.scope !1271
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 280
  store i8 1, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1264
  br label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE9do_send_bCsi17nFaBu4HY_10ech_client.exit

.noexc7.i:                                        ; preds = %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE4parkCsi17nFaBu4HY_10ech_client.exit.i, %bb.v
  %.val.i7 = phi ptr [ %.val.pre.i, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE4parkCsi17nFaBu4HY_10ech_client.exit.i ], [ %i.be, %bb.v ] ; 2 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i7, i64 16
  call void @_RNvMs1_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.bh, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(280) %i.e)
  %i.bi = getelementptr inbounds nuw i8, ptr %.val.i7, i64 72
  call void @_RNvMNtNtNtCsjeNDyKnSdUK_12futures_core4task10___internal12atomic_wakerNtB2_11AtomicWaker4wake(ptr noundef nonnull align 8 %i.bi)
  store i64 -1, ptr %0, align 8, !alias.scope !1264
  br label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE9do_send_bCsi17nFaBu4HY_10ech_client.exit

bb.x:                                             ; preds = %bb.v
  call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1273
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1274, !nonnull !8, !noundef !8 ; 3 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 16
  invoke void @_RNvMs5_NtNtNtCsaKJjC64KgbL_3std4sync6poison5mutexINtB5_5MutexNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskE4lockCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noundef nonnull align 8 %i.bl)
          to label %.noexc9.i unwind label %.body.thread17.i, !noalias !1270

.noexc9.i:                                        ; preds = %bb.x
  call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  %i.bm = load i64, ptr %i.b, align 8, !range !27, !alias.scope !1275, !noalias !1273, !noundef !8
  %i.bn = trunc nuw i64 %i.bm to i1
  br i1 %i.bn, label %bb.y, label %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i, !prof !14

bb.y:                                             ; preds = %.noexc9.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1276
  %i.bo = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bp = load ptr, ptr %i.bo, align 8, !alias.scope !1275, !noalias !1273, !nonnull !8, !align !10, !noundef !8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.br = load i8, ptr %i.bq, align 8, !range !9, !alias.scope !1275, !noalias !1273, !noundef !8
  store ptr %i.bp, ptr %i.a, align 8, !noalias !1276
  %i.bs = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i8 %i.br, ptr %i.bs, align 8, !noalias !1276
  invoke void @_RNvNtCsj6eKBz9Db1c_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @11, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @10, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #30
          to label %bb.aa unwind label %bb.z, !noalias !1277

bb.z:                                             ; preds = %bb.y
  %i.bt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCsaKJjC64KgbL_3std4sync6poison11PoisonErrorINtNtBE_5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEEECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #25
          to label %.body.thread.i unwind label %bb.ab, !noalias !1277

bb.aa:                                            ; preds = %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.z
  %i.bu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1277
  unreachable

_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %.noexc9.i
  %i.bv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bw = load ptr, ptr %i.bv, align 8, !alias.scope !1275, !noalias !1273, !nonnull !8, !align !10, !noundef !8 ; 7 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.by = load i8, ptr %i.bx, align 8, !range !9, !alias.scope !1275, !noalias !1273, !noundef !8 ; 2 uses
  %i.bz = trunc nuw i8 %i.by to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1273
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bw, i64 8 ; 3 uses
  %.val.i.i = load ptr, ptr %i.ca, align 8, !noalias !1273, !align !10, !noundef !8 ; 2 uses
  %i.cb = icmp eq ptr %.val.i.i, null
  br i1 %i.cb, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i, label %bb.ac

bb.ac:                                            ; preds = %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cc = getelementptr i8, ptr %i.bw, i64 16
  %.val1.i.i = load ptr, ptr %i.cc, align 8, !noalias !1273
  %i.cd = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 24
  %i.ce = load ptr, ptr %i.cd, align 8, !noalias !1273, !nonnull !8, !noundef !8
  invoke void %i.ce(ptr noundef %.val1.i.i)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %bb.ad, !noalias !1273, !inline_history !1

bb.ad:                                            ; preds = %bb.ac
  %i.cf = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.ca, align 8, !noalias !1273
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client(ptr nonnull %i.bw, i8 %i.by) #25
          to label %.body.thread.i unwind label %bb.ak, !noalias !1273

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.ac, %_RNvMNtCsj6eKBz9Db1c_4core6resultINtB2_6ResultINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEINtBM_11PoisonErrorBH_EE6unwrapCsi17nFaBu4HY_10ech_client.exit.i.i
  store ptr null, ptr %i.ca, align 8, !noalias !1273
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bw, i64 24
  store i8 1, ptr %i.cg, align 8, !noalias !1273
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bw, i64 4
  br i1 %i.bz, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.ci = load atomic i64, ptr @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count18GLOBAL_PANIC_COUNT monotonic, align 8, !noalias !1273
  %i.cj = and i64 %i.ci, 9223372036854775807
  %i.ck = icmp eq i64 %i.cj, 0
  br i1 %i.ck, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  %i.cl = invoke noundef zeroext i1 @_RNvNtNtCsaKJjC64KgbL_3std9panicking11panic_count17is_zero_slow_path() #31
          to label %.noexc10.i unwind label %.body.thread17.i, !noalias !1270

.noexc10.i:                                       ; preds = %bb.af
  br i1 %i.cl, label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i, label %bb.ag

bb.ag:                                            ; preds = %.noexc10.i
  store atomic i8 1, ptr %i.ch monotonic, align 4, !noalias !1273
  br label %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i

_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i: ; preds = %bb.ag, %.noexc10.i, %bb.ae, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtB4_4task4wake5WakerEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cm = atomicrmw xchg ptr %i.bw, i32 0 release, align 4, !noalias !1273
  %i.cn = icmp eq i32 %i.cm, 2
  br i1 %i.cn, label %bb.ah, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i, !prof !14

bb.ah:                                            ; preds = %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync5mutex5futexNtB2_5Mutex4wake(ptr noundef nonnull align 4 %i.bw)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i unwind label %.body.thread17.i, !noalias !1270

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i: ; preds = %bb.ah, %_RNvMNtNtCsaKJjC64KgbL_3std4sync6poisonNtB2_4Flag4done.exit.i.i.i.i
  %i.co = atomicrmw add ptr %i.bk, i64 1 monotonic, align 8, !noalias !1273
  %i.cp = icmp slt i64 %i.co, 0
  br i1 %i.cp, label %bb.aj, label %bb.ai

bb.ai:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  invoke void @_RNvMs1_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueINtNtCs4wP2HXfJTCR_5alloc4sync3ArcINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex5MutexNtB7_10SenderTaskEEE4pushCsi17nFaBu4HY_10ech_client(ptr noundef nonnull align 8 %i.cq, ptr noundef nonnull %i.bk)
          to label %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE4parkCsi17nFaBu4HY_10ech_client.exit.i unwind label %.body.thread17.i, !noalias !1270

bb.aj:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison5mutex10MutexGuardNtNtCsdaVh6l1oWST_15futures_channel4mpsc10SenderTaskEECsi17nFaBu4HY_10ech_client.exit.i.i
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ad
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1273
  unreachable

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE4parkCsi17nFaBu4HY_10ech_client.exit.i: ; preds = %bb.ai
  %i.cs = getelementptr inbounds nuw i8, ptr %i.be, i64 56
  %i.ct = load atomic i64, ptr %i.cs seq_cst, align 8, !noalias !1273
  %.lobit.i.i = lshr i64 %i.ct, 63
  %i.cu = trunc nuw nsw i64 %.lobit.i.i to i8
  store i8 %i.cu, ptr %i.f, align 8, !alias.scope !1274
  %.val.pre.i = load ptr, ptr %1, align 8, !alias.scope !1265
  br label %.noexc7.i

.body.thread.i:                                   ; preds = %bb.ad, %bb.z, %.body.thread17.i
  %eh.lpad-body16.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread17.i ], [ %i.bt, %bb.z ], [ %i.cf, %bb.ad ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(280) %i.e) #25
          to label %.body.thread17 unwind label %bb.al, !noalias !1278

bb.al:                                            ; preds = %.body.thread.i
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26, !noalias !1278
  unreachable

bb.am:                                            ; preds = %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE9do_send_bCsi17nFaBu4HY_10ech_client.exit, %_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE13poll_unparkedCsi17nFaBu4HY_10ech_client.exit.thread25
  ret void

_RNvMsg_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_18BoundedSenderInnerNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE9do_send_bCsi17nFaBu4HY_10ech_client.exit: ; preds = %.noexc7.i, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.am

.body.thread17:                                   ; preds = %.body.thread.i, %.body.thread
  %eh.lpad-body15 = phi { ptr, i32 } [ %eh.lpad-body16, %.body.thread ], [ %eh.lpad-body16.i, %.body.thread.i ]
  resume { ptr, i32 } %eh.lpad-body15

.body.thread:                                     ; preds = %bb.m, %bb.d, %.body.thread21
  %eh.lpad-body16 = phi { ptr, i32 } [ %lpad.thr_comm, %.body.thread21 ], [ %i.s, %bb.d ], [ %i.ao, %bb.m ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestECsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef align 8 dereferenceable(280) %2) #25
          to label %.body.thread17 unwind label %bb.an

bb.an:                                            ; preds = %.body.thread
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #26
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMsr_NtCsdaVh6l1oWST_15futures_channel4mpscINtB5_8ReceiverNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE12next_messageCsi17nFaBu4HY_10ech_client(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(280) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  %i.d = alloca [280 x i8], align 8               ; 5 uses
  %i.e = alloca [280 x i8], align 8               ; 5 uses
  %i.f = load ptr, ptr %1, align 8, !noundef !8   ; 5 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  call void @_RNvMs1_NtNtCsdaVh6l1oWST_15futures_channel4mpsc5queueINtB5_5QueueNtNtCs5MfxasYgTEl_11hickory_net4xfer17OneshotDnsRequestE8pop_spinCsi17nFaBu4HY_10ech_client(ptr noalias nofree noundef nonnull sret([280 x i8]) align 8 captures(none) dereferenceable(280) %i.e, ptr noundef nonnull align 8 %i.g)
  %i.h = load i64, ptr %i.e, align 8, !range !18, !noundef !8
  %.not5 = icmp eq i64 %i.h, -1
  br i1 %.not5, label %bb.w, label %bb.e
end_hunk_1
