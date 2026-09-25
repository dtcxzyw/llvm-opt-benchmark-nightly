Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_identify-5ed52480b88f14bb.libp2p_identify.b9fc7cf1be833a1c-cgu.00?download=true
inline.NumInlined: 234
inline.NumDeleted: 111
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsfY02lUNHLPc_15libp2p_identify:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(40) %i.dr, ptr noundef nonnull align 1 dereferenceable(40) %i.dq, i64 range(i64 8, 129) 40, i1 false), !noalias !151
  %i.ds = icmp eq i64 %i.cg, 0
  br i1 %i.ds, label %._crit_edge37.loopexit, label %.preheader

bb.s:                                             ; preds = %bb.b
  call fastcc void @_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner15rehash_in_place(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %i.b, ptr nonnull @_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify, i64 noundef 40, ptr noundef nonnull @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1R_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsfY02lUNHLPc_15libp2p_identify) #21
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %bb.m, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit, %bb.c, %bb.s
  %.sroa.4.0.i = phi i64 [ %i.r, %bb.c ], [ undef, %bb.s ], [ %.sroa.12.0.ph, %bb.m ], [ undef, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit ]
  %.sroa.0.0.i = phi i64 [ %i.q, %bb.c ], [ -1, %bb.s ], [ %.sroa.7.0.ph, %bb.m ], [ -1, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit ]
  %i.dt = insertvalue { i64, i64 } poison, i64 %.sroa.0.0.i, 0
  %i.du = insertvalue { i64, i64 } %i.dt, i64 %.sroa.4.0.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret { i64, i64 } %i.du
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEE7reserveNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !noundef !4
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdNtCsbli3iz7XG76_9multiaddr9MultiaddrEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_B1M_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext true) #17 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE12remove_entryNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !185)
  %i.a = lshr i64 %1, 57
  %i.b = trunc nuw nsw i64 %i.a to i8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !186, !noalias !187, !noundef !4 ; 3 uses
  %i.e = load ptr, ptr %0, align 8, !alias.scope !186, !noalias !187, !nonnull !4, !noundef !4 ; 4 uses
  %i.f = insertelement <16 x i8> poison, i8 %i.b, i64 0
  %i.g = shufflevector <16 x i8> %i.f, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.a
  %.sroa.9.0.i.i = phi i64 [ 0, %bb.a ], [ %i.x, %bb.d ]
  %.pn.i = phi i64 [ %1, %bb.a ], [ %i.y, %bb.d ]
  %.sroa.01.0.i.i = and i64 %.pn.i, %i.d          ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 %.sroa.01.0.i.i
  %.sroa.0.0.copyload.i24.i = load <16 x i8>, ptr %i.h, align 1, !noalias !188 ; 2 uses
  %i.i = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, %i.g
  %i.j = bitcast <16 x i1> %i.i to i16            ; 2 uses
  %.not.i.not30.i = icmp eq i16 %i.j, 0
  br i1 %.not.i.not30.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b, %bb.c
  %.sroa.06.0.i31.i = phi i16 [ %i.w, %bb.c ], [ %i.j, %bb.b ] ; 3 uses
  %i.k = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i31.i, i1 true)
  %i.l = zext nneg i16 %i.k to i64
  %i.m = add i64 %.sroa.01.0.i.i, %i.l
  %i.n = and i64 %i.m, %i.d                       ; 3 uses
  %i.o = sub nsw i64 0, %i.n
  %i.p = getelementptr inbounds [8 x i8], ptr %i.e, i64 %i.o
  %i.q = getelementptr inbounds i8, ptr %i.p, i64 -8 ; 2 uses
  %i.r = tail call noundef zeroext i1 @_RNvXCsjqcU1oJFKXj_9hashbrownNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtB2_10EquivalentBq_E10equivalentCsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q), !noalias !189
  br i1 %i.r, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.c, !prof !6

._crit_edge.i:                                    ; preds = %bb.c, %bb.b
  %i.s = icmp eq <16 x i8> %.sroa.0.0.copyload.i24.i, splat (i8 -1)
  %i.t = bitcast <16 x i1> %i.s to i16
  %i.u = icmp eq i16 %i.t, 0
  br i1 %i.u, label %bb.d, label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit.thread, !prof !5

bb.c:                                             ; preds = %.lr.ph.i
  %i.v = add i16 %.sroa.06.0.i31.i, -1
  %i.w = and i16 %i.v, %.sroa.06.0.i31.i          ; 2 uses
  %.not.i.not.i = icmp eq i16 %i.w, 0
  br i1 %.not.i.not.i, label %._crit_edge.i, label %.lr.ph.i

bb.d:                                             ; preds = %._crit_edge.i
  %i.x = add i64 %.sroa.9.0.i.i, 16               ; 2 uses
  %i.y = add i64 %.sroa.01.0.i.i, %i.x
  br label %bb.b

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %.lr.ph.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !191)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !192)
  %i.z = add nsw i64 %i.n, -16
  %i.aa = and i64 %i.z, %i.d
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.aa ; 2 uses
  %.sroa.0.0.copyload.i23.i.i.i = load <16 x i8>, ptr %i.ab, align 1, !noalias !193
  %i.ac = icmp eq <16 x i8> %.sroa.0.0.copyload.i23.i.i.i, splat (i8 -1)
  %i.ad = bitcast <16 x i1> %i.ac to i16
  %i.ae = getelementptr inbounds nuw i8, ptr %i.e, i64 %i.n ; 2 uses
  %.sroa.0.0.copyload.i724.i.i.i = load <16 x i8>, ptr %i.ae, align 1, !noalias !194
  %i.af = icmp eq <16 x i8> %.sroa.0.0.copyload.i724.i.i.i, splat (i8 -1)
  %i.ag = bitcast <16 x i1> %i.af to i16
  %i.ah = tail call range(i16 0, 17) i16 @llvm.ctlz.i16(i16 %i.ad, i1 false)
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ag, i1 false)
  %narrow.i.i.i = add nuw nsw i16 %i.ai, %i.ah
  %i.aj = icmp samesign ugt i16 %narrow.i.i.i, 15
  br i1 %i.aj, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit, label %bb.e

bb.e:                                             ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !alias.scope !195, !noundef !4
  %i.am = add i64 %i.al, 1
  store i64 %i.am, ptr %i.ak, align 8, !alias.scope !195
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit, %bb.e
  %.sroa.0.0.i.i.i = phi i8 [ -1, %bb.e ], [ -128, %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit ] ; 2 uses
  store i8 %.sroa.0.0.i.i.i, ptr %i.ae, align 1, !noalias !195
  %i.an = getelementptr i8, ptr %i.ab, i64 16
  store i8 %.sroa.0.0.i.i.i, ptr %i.an, align 1, !noalias !195
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !195, !noundef !4
  %i.aq = add i64 %i.ap, -1
  store i64 %i.aq, ptr %i.ao, align 8, !alias.scope !195
  %i.ar = load i64, ptr %i.q, align 8, !noalias !190, !noundef !4
  br label %_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit.thread

_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECsfY02lUNHLPc_15libp2p_identify.exit.thread: ; preds = %._crit_edge.i, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit
  %.sroa.3.0 = phi i64 [ %i.ar, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit ], [ undef, %._crit_edge.i ]
  %.sroa.0.0 = phi i64 [ 1, %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE6removeCsfY02lUNHLPc_15libp2p_identify.exit ], [ 0, %._crit_edge.i ]
  %i.as = insertvalue { i64, i64 } poison, i64 %.sroa.0.0, 0
  %i.at = insertvalue { i64, i64 } %i.as, i64 %.sroa.3.0, 1
  ret { i64, i64 } %i.at
}

; Function Attrs: cold noinline nonlazybind uwtable
define { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %2, i1 noundef zeroext %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 11 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !217)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !217, !noalias !218, !noundef !4 ; 2 uses
  %i.g = add i64 %i.f, %1                         ; 3 uses
  %i.h = icmp ult i64 %i.g, %i.f
  br i1 %i.h, label %bb.c, label %bb.b, !prof !5

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !alias.scope !217, !noalias !218, !noundef !4 ; 3 uses
  %i.k = icmp ult i64 %i.j, 8
  %i.l = add i64 %i.j, 1
  %i.m = lshr i64 %i.l, 3
  %i.n = mul nuw i64 %i.m, 7
  %.sroa.03.0.i = select i1 %i.k, i64 %i.j, i64 %i.n ; 2 uses
  %i.o = lshr i64 %.sroa.03.0.i, 1
  %.not.i = icmp ugt i64 %i.g, %i.o
  br i1 %.not.i, label %bb.d, label %bb.q

bb.c:                                             ; preds = %bb.a
  %i.p = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !219 ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  %i.r = extractvalue { i64, i64 } %i.p, 1
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify.exit

bb.d:                                             ; preds = %bb.b
  %i.s = add nuw i64 %.sroa.03.0.i, 1
  %..i = call noundef range(i64 1, 0) i64 @llvm.umax.i64(i64 range(i64 1, -2305843009213693957) %i.s, i64 range(i64 1, 0) %i.g) ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !220)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !221
  %i.t = icmp ult i64 %..i, 15
  br i1 %i.t, label %.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.u = icmp ugt i64 %..i, 2305843009213693951
  br i1 %i.u, label %bb.j, label %bb.f, !prof !5

.thread:                                          ; preds = %bb.d
  %i.v = icmp samesign ult i64 %..i, 4
  %i.w = and i64 %..i, 8
  %..i.i = add nuw nsw i64 %i.w, 8
  %.sroa.03.0.i.i = select i1 %i.v, i64 4, i64 %..i.i
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.x = shl nuw i64 %..i, 3
  %i.y = udiv i64 %i.x, 7
  %i.z = add nsw i64 %i.y, -1
  %i.aa = call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.z, i1 true)
  %i.ab = lshr i64 -1, %i.aa                      ; 2 uses
  %i.ac = add nuw nsw i64 %i.ab, 1
  %i.ad = icmp ugt i64 %i.ab, 2305843009213693950
  br i1 %i.ad, label %bb.h, label %bb.g, !prof !7

bb.g:                                             ; preds = %.thread, %bb.f
  %.sroa.4.0.i.ph.i53 = phi i64 [ %.sroa.03.0.i.i, %.thread ], [ %i.ac, %bb.f ] ; 5 uses
  %i.ae = shl nuw i64 %.sroa.4.0.i.ph.i53, 3
  %4 = add nuw i64 %i.ae, 8
  %5 = and i64 %4, -16                            ; 3 uses
  %i.af = add nuw nsw i64 %.sroa.4.0.i.ph.i53, 16 ; 2 uses
  %i.ag = add i64 %5, %i.af                       ; 4 uses
  %i.ah = icmp ult i64 %i.ag, %5
  %i.ai = icmp ugt i64 %i.ag, 9223372036854775792
  %or.cond.i.i = or i1 %i.ah, %i.ai
  br i1 %or.cond.i.i, label %bb.h, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i, !prof !8

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i: ; preds = %bb.g
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !222
  %i.aj = call noundef align 16 ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 16) #18, !noalias !222 ; 2 uses
  %i.ak = icmp eq ptr %i.aj, null
  br i1 %i.ak, label %bb.i, label %bb.m

bb.h:                                             ; preds = %bb.g, %bb.f
  %i.al = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !222
  br label %bb.k

bb.i:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.am = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility9alloc_err(i1 noundef zeroext %3, i64 noundef 16, i64 noundef %i.ag), !noalias !222
  br label %bb.k

bb.j:                                             ; preds = %bb.e
  %i.an = call { i64, i64 } @_RNvMNtCsjqcU1oJFKXj_9hashbrown3rawNtB2_11Fallibility17capacity_overflow(i1 noundef zeroext %3), !noalias !223
  br label %bb.k

bb.k:                                             ; preds = %bb.h, %bb.i, %bb.j
  %.pn = phi { i64, i64 } [ %i.an, %bb.j ], [ %i.am, %bb.i ], [ %i.al, %bb.h ] ; 2 uses
  %.sroa.7.0.ph = extractvalue { i64, i64 } %.pn, 0
  %.sroa.12.0.ph = extractvalue { i64, i64 } %.pn, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify.exit

bb.l:                                             ; preds = %._crit_edge
  %i.ao = landingpad { ptr, i32 }
          cleanup
  call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef align 8 dereferenceable(56) %i.a) #19, !noalias !224
  resume { ptr, i32 } %i.ao

bb.m:                                             ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator8allocate.exit.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.aj, i64 %5 ; 3 uses
  %i.aq = add nsw i64 %.sroa.4.0.i.ph.i53, -1     ; 2 uses
  %i.ar = icmp samesign ult i64 %.sroa.4.0.i.ph.i53, 9
  %i.as = lshr i64 %.sroa.4.0.i.ph.i53, 3
  %i.at = mul nuw nsw i64 %i.as, 7
  %.sroa.07.0.i.i = select i1 %i.ar, i64 %i.aq, i64 %i.at ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1) %i.ap, i8 -1, i64 %i.af, i1 false), !noalias !223
  store ptr %i.d, ptr %i.a, align 8, !noalias !221
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  store i64 8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  store i64 16, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 4 uses
  store ptr %i.ap, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i64 %i.aq, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 3 uses
  store i64 %.sroa.07.0.i.i, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48 ; 2 uses
  store i64 0, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  %i.au = load i64, ptr %i.e, align 8, !alias.scope !225, !noalias !226, !noundef !4 ; 2 uses
  %i.av = icmp eq i64 %i.au, 0
  br i1 %i.av, label %._crit_edge37, label %.preheader.lr.ph

.preheader.lr.ph:                                 ; preds = %bb.m
  %i.aw = load ptr, ptr %0, align 8, !alias.scope !225, !noalias !226, !nonnull !4, !noundef !4 ; 2 uses
  %.val525 = load <16 x i8>, ptr %i.aw, align 16
  %i.ax = icmp sgt <16 x i8> %.val525, splat (i8 -1)
  %i.ay = bitcast <16 x i1> %i.ax to i16
  br label %.preheader

.preheader:                                       ; preds = %.preheader.lr.ph, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.sroa.619.0..sroa_idx.i.i.val = phi ptr [ %i.ap, %.preheader.lr.ph ], [ %i.dj, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 5 uses
  %.sroa.0.036 = phi ptr [ %i.aw, %.preheader.lr.ph ], [ %.sroa.0.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.5.035 = phi i64 [ 0, %.preheader.lr.ph ], [ %.sroa.5.1.lcssa, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
  %.sroa.9.034 = phi i64 [ %i.au, %.preheader.lr.ph ], [ %i.cd, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ]
  %.sroa.13.033 = phi i16 [ %i.ay, %.preheader.lr.ph ], [ %i.cb, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit ] ; 2 uses
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

._crit_edge37.loopexit:                           ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit
  %.pre = load i64, ptr %i.e, align 8, !alias.scope !225, !noalias !226
  %.pre42 = load i64, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  br label %._crit_edge37

._crit_edge37:                                    ; preds = %._crit_edge37.loopexit, %bb.m
  %i.bd = phi i64 [ %.pre42, %._crit_edge37.loopexit ], [ %.sroa.07.0.i.i, %bb.m ]
  %i.be = phi i64 [ %.pre, %._crit_edge37.loopexit ], [ 0, %bb.m ] ; 2 uses
  %i.bf = sub i64 %i.bd, %i.be
  store i64 %i.bf, ptr %.sroa.619.sroa.5.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  store i64 %i.be, ptr %.sroa.619.sroa.6.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !221
  invoke void @_RINvNvNtCskKLDkoKarTP_4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunksKj8_ECsfY02lUNHLPc_15libp2p_identify(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %.sroa.619.0..sroa_idx.i.i, i64 noundef 4)
          to label %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfY02lUNHLPc_15libp2p_identify.exit unwind label %bb.n, !noalias !224

bb.n:                                             ; preds = %._crit_edge37
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking19panic_cannot_unwind() #20, !noalias !224
  unreachable

_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %._crit_edge37
  call void @llvm.experimental.noalias.scope.decl(metadata !227)
  call void @llvm.experimental.noalias.scope.decl(metadata !228), !noalias !224
  %.val1.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !229, !noalias !224 ; 5 uses
  %.val2.i.i = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !alias.scope !229, !noalias !224 ; 2 uses
  %.val3.i.i = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !229, !noalias !224, !noundef !4 ; 3 uses
  %i.bh = icmp eq i64 %.val3.i.i, 0
  br i1 %i.bh, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfY02lUNHLPc_15libp2p_identify.exit
  %.val.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !229, !noalias !224
  %i.bi = add i64 %.val3.i.i, 1
  %i.bj = mul nuw i64 %.val.i.i, %i.bi            ; 2 uses
  %i.bk = add i64 %.val1.i.i, -1
  %i.bl = add i64 %i.bk, %i.bj                    ; 2 uses
  %i.bm = icmp uge i64 %i.bl, %i.bj
  call void @llvm.assume(i1 %i.bm), !noalias !224
  %i.bn = sub i64 0, %.val1.i.i
  %i.bo = and i64 %i.bl, %i.bn                    ; 3 uses
  %i.bp = add i64 %.val3.i.i, 17
  %i.bq = add i64 %i.bp, %i.bo                    ; 4 uses
  %i.br = icmp uge i64 %i.bq, %i.bo
  %i.bs = sub nuw i64 -9223372036854775808, %.val1.i.i
  %i.bt = icmp ule i64 %i.bq, %i.bs
  call void @llvm.assume(i1 %i.br), !noalias !224
  call void @llvm.assume(i1 %i.bt), !noalias !224
  %i.bu = icmp ne i64 %.val1.i.i, 0
  call void @llvm.assume(i1 %i.bu), !noalias !224
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ], !noalias !224
  %i.bv = icmp eq i64 %i.bq, 0
  br i1 %i.bv, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit, label %bb.o

bb.o:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i
  %i.bw = sub nsw i64 0, %i.bo
  %i.bx = getelementptr inbounds i8, ptr %.val2.i.i, i64 %i.bw
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bx, i64 noundef %i.bq, i64 noundef range(i64 1, -9223372036854775807) %.val1.i.i) #18, !noalias !230
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown10scopeguard10ScopeGuardNtNtBG_3raw13RawTableInnerNCINvMsa_B1u_B1s_14prepare_resizeNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalE0EECsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %_RINvNtCskKLDkoKarTP_4core10intrinsics25typed_swap_nonoverlappingNtNtCsjqcU1oJFKXj_9hashbrown3raw13RawTableInnerECsfY02lUNHLPc_15libp2p_identify.exit, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i, %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !221
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner20reserve_rehash_innerNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsfY02lUNHLPc_15libp2p_identify.exit

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
  call void @llvm.experimental.noalias.scope.decl(metadata !231)
  call void @llvm.experimental.noalias.scope.decl(metadata !232)
  %i.ce = load ptr, ptr %i.b, align 8, !alias.scope !231, !noalias !233, !nonnull !4, !align !9, !noundef !4
  %i.cf = load ptr, ptr %0, align 8, !alias.scope !232, !noalias !234, !nonnull !4, !noundef !4
  %i.cg = sub nsw i64 0, %i.cc
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.cf, i64 %i.cg
  %i.ci = getelementptr inbounds i8, ptr %i.ch, i64 -8
  %.val.i = load ptr, ptr %i.ce, align 8, !noalias !235, !nonnull !4, !align !9, !noundef !4
  %i.cj = invoke noundef i64 @_RINvYNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateNtNtCskKLDkoKarTP_4core4hash11BuildHasher8hash_oneRNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdECsfY02lUNHLPc_15libp2p_identify(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ci)
          to label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit unwind label %bb.l ; 2 uses

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit: ; preds = %._crit_edge
  %.sroa.619.0..sroa_idx.i.i.val6 = load i64, ptr %.sroa.619.sroa.4.0..sroa.619.0..sroa_idx.sroa_idx.i.i, align 8, !noundef !4 ; 4 uses
  %.sroa.0.07.i = and i64 %.sroa.619.0..sroa_idx.i.i.val6, %i.cj ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.07.i
  %.sroa.0.0.copyload.i68.i = load <16 x i8>, ptr %i.ck, align 1, !noalias !236
  %i.cl = icmp slt <16 x i8> %.sroa.0.0.copyload.i68.i, zeroinitializer
  %i.cm = bitcast <16 x i1> %i.cl to i16          ; 2 uses
  %.not.i9.i = icmp eq i16 %i.cm, 0
  br i1 %.not.i9.i, label %.lr.ph.i, label %._crit_edge.i, !prof !10

._crit_edge.i:                                    ; preds = %.lr.ph.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit
  %.sroa.0.0.lcssa.i = phi i64 [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit ], [ %.sroa.0.0.i9, %.lr.ph.i ]
  %.lcssa.i = phi i16 [ %i.cm, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit ], [ %i.dd, %.lr.ph.i ]
  %i.cn = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i, i1 true)
  %i.co = zext nneg i16 %i.cn to i64
  %i.cp = add i64 %.sroa.0.0.lcssa.i, %i.co
  %i.cq = and i64 %i.cp, %.sroa.619.0..sroa_idx.i.i.val6 ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %i.cq
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !4
  %i.ct = icmp sgt i8 %i.cs, -1
  br i1 %i.ct, label %bb.p, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit, !prof !5

bb.p:                                             ; preds = %._crit_edge.i
  %.val62.i.i = load <16 x i8>, ptr %.sroa.619.0..sroa_idx.i.i.val, align 16
  %i.cu = icmp slt <16 x i8> %.val62.i.i, zeroinitializer
  %i.cv = bitcast <16 x i1> %i.cu to i16          ; 2 uses
  %.not.i6.i = icmp ne i16 %i.cv, 0
  %i.cw = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.cv, i1 true)
  %i.cx = zext nneg i16 %i.cw to i64
  call void @llvm.assume(i1 %.not.i6.i)
  br label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit

.lr.ph.i:                                         ; preds = %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit, %.lr.ph.i
  %.sroa.0.010.i = phi i64 [ %.sroa.0.0.i9, %.lr.ph.i ], [ %.sroa.0.07.i, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit ]
  %i.cy = phi i64 [ %i.cz, %.lr.ph.i ], [ 0, %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIduEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0E0CsfY02lUNHLPc_15libp2p_identify.exit ]
  %i.cz = add i64 %i.cy, 16                       ; 2 uses
  %i.da = add i64 %i.cz, %.sroa.0.010.i
  %.sroa.0.0.i9 = and i64 %i.da, %.sroa.619.0..sroa_idx.i.i.val6 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i9
  %.sroa.0.0.copyload.i6.i = load <16 x i8>, ptr %i.db, align 1, !noalias !236
  %i.dc = icmp slt <16 x i8> %.sroa.0.0.copyload.i6.i, zeroinitializer
  %i.dd = bitcast <16 x i1> %i.dc to i16          ; 2 uses
  %.not.i.i = icmp eq i16 %i.dd, 0
  br i1 %.not.i.i, label %.lr.ph.i, label %._crit_edge.i, !prof !11

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner17find_insert_index.exit: ; preds = %bb.p, %._crit_edge.i
  %.sroa.0.0.i5.i = phi i64 [ %i.cx, %bb.p ], [ %i.cq, %._crit_edge.i ] ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %.sroa.619.0..sroa_idx.i.i.val, i64 %.sroa.0.0.i5.i
  %i.df = lshr i64 %i.cj, 57
  %i.dg = trunc nuw nsw i64 %i.df to i8           ; 2 uses
  %i.dh = add i64 %.sroa.0.0.i5.i, -16
  %i.di = and i64 %i.dh, %.sroa.619.0..sroa_idx.i.i.val6
  store i8 %i.dg, ptr %i.de, align 1, !noalias !224
  %i.dj = load ptr, ptr %.sroa.619.0..sroa_idx.i.i, align 8, !noalias !221, !nonnull !4, !noundef !4 ; 3 uses
  %i.dk = getelementptr i8, ptr %i.dj, i64 %i.di
  %i.dl = getelementptr i8, ptr %i.dk, i64 16
  store i8 %i.dg, ptr %i.dl, align 1, !noalias !224
  %i.dm = load ptr, ptr %0, align 8, !alias.scope !225, !noalias !226, !nonnull !4, !noundef !4
  %.neg.i.i = xor i64 %i.cc, -1
  %.neg62.i.i = shl i64 %.neg.i.i, 3
  %i.dn = getelementptr inbounds i8, ptr %i.dm, i64 %.neg62.i.i
  %.neg63.i.i = xor i64 %.sroa.0.0.i5.i, -1
  %.neg64.i.i = shl i64 %.neg63.i.i, 3
  %i.do = getelementptr inbounds i8, ptr %i.dj, i64 %.neg64.i.i
  %i.dp = load i64, ptr %i.dn, align 1, !noalias !224
  store i64 %i.dp, ptr %i.do, align 1, !noalias !224
end_hunk_0
