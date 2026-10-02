Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libp2p-rs/original/libp2p_autonat-bbf8c001604f1f40.libp2p_autonat.db8382491c345134-cgu.00?download=true
inline.NumInlined: 468
inline.NumDeleted: 177
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEENtNtNtB1Q_3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat:bb.a
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !931
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -640 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 4 uses
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !932)
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !933)
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !934, !noalias !929, !noundef !4 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !935)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !936)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !937)
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -8
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !938, !noalias !929, !noundef !4
  %i.ab = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %i.ac = load ptr, ptr %i.ab, align 8, !noalias !939, !nonnull !4, !noundef !4
  %i.ad = getelementptr inbounds i8, ptr %i.u, i64 -24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !938, !noalias !929, !noundef !4
  %i.af = getelementptr inbounds i8, ptr %i.u, i64 -16
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !938, !noalias !929, !noundef !4
  tail call void %i.ac(ptr noundef %i.aa, ptr noundef %i.ae, i64 noundef %i.ag), !noalias !939, !inline_history !926
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i
  %i.ah = icmp eq i64 %i.v, 0
  br i1 %i.ah, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i, %bb.b
  %i.ai = mul i64 %i.b, 40
  %i.aj = icmp slt i64 %i.b, 461168601842738790
  tail call void @llvm.assume(i1 %i.aj)
  %i.ak = and i64 %i.ai, -16                      ; 2 uses
  %i.al = add i64 %i.ak, 48                       ; 2 uses
  %i.am = add nsw i64 %i.b, 17
  %i.an = add i64 %i.am, %i.al                    ; 4 uses
  %i.ao = icmp uge i64 %i.an, %i.al
  %i.ap = icmp ult i64 %i.an, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ao)
  tail call void @llvm.assume(i1 %i.ap)
  %i.aq = icmp eq i64 %i.an, 0
  br i1 %i.aq, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i
  %i.ar = load ptr, ptr %0, align 8, !alias.scope !927, !nonnull !4, !noundef !4
  %i.as = sub i64 -48, %i.ak
  %i.at = getelementptr inbounds i8, ptr %i.ar, i64 %i.as
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.at, i64 noundef %i.an, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !927
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i, %bb.f
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !958)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !958, !noundef !4 ; 4 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !959)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !960, !noundef !4 ; 2 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = load ptr, ptr %0, align 8, !alias.scope !960, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i = load <16 x i8>, ptr %i.g, align 16, !noalias !961
  %i.h = icmp sgt <16 x i8> %.val13.i.i.i, splat (i8 -1)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.j = bitcast <16 x i1> %i.h to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i, %bb.c
  %.sroa.05.016.i.i = phi ptr [ %i.g, %bb.c ], [ %.sroa.05.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i ] ; 2 uses
  %.sroa.6.015.i.i = phi ptr [ %i.i, %bb.c ], [ %.sroa.6.1.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i ] ; 2 uses
  %.sroa.86.014.i.i = phi i16 [ %i.j, %bb.c ], [ %i.s, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i ] ; 2 uses
  %.sroa.107.013.i.i = phi i64 [ %i.e, %bb.c ], [ %i.v, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i ]
  %.not11.i.i.i = icmp eq i16 %.sroa.86.014.i.i, 0
  br i1 %.not11.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.d, %.lr.ph.i.i.i
  %i.k = phi ptr [ %i.o, %.lr.ph.i.i.i ], [ %.sroa.6.015.i.i, %bb.d ] ; 2 uses
  %i.l = phi ptr [ %i.n, %.lr.ph.i.i.i ], [ %.sroa.05.016.i.i, %bb.d ]
  %.val79.i.i.i = load <16 x i8>, ptr %i.k, align 16, !noalias !962
  %i.m = icmp sgt <16 x i8> %.val79.i.i.i, splat (i8 -1)
  %i.n = getelementptr inbounds i8, ptr %i.l, i64 -384 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.m to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %.lr.ph.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i: ; preds = %.lr.ph.i.i.i, %bb.d
  %.sroa.6.1.i.i = phi ptr [ %.sroa.6.015.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i ]
  %.sroa.05.1.i.i = phi ptr [ %.sroa.05.016.i.i, %bb.d ], [ %i.n, %.lr.ph.i.i.i ] ; 2 uses
  %.lcssa.i.i.i = phi i16 [ %.sroa.86.014.i.i, %bb.d ], [ %.cast.i.i.i, %.lr.ph.i.i.i ] ; 3 uses
  %i.p = add i16 %.lcssa.i.i.i, -1
  %i.q = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.r = zext nneg i16 %i.q to i64
  %i.s = and i16 %i.p, %.lcssa.i.i.i
  %i.t = sub nsw i64 0, %i.r
  %i.u = getelementptr inbounds [24 x i8], ptr %.sroa.05.1.i.i, i64 %i.t ; 2 uses
  %i.v = add i64 %.sroa.107.013.i.i, -1           ; 2 uses
  %i.w = getelementptr inbounds i8, ptr %i.u, i64 -24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !963)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !964)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !965)
  %i.x = load i64, ptr %i.w, align 8, !range !966, !alias.scope !967, !noalias !960, !noundef !4
  %i.y = icmp eq i64 %i.x, 0
  br i1 %i.y, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i
  %i.z = getelementptr inbounds i8, ptr %i.u, i64 -16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !968)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !969)
  %i.aa = load ptr, ptr %i.z, align 8, !alias.scope !970, !noalias !960, !nonnull !4, !noundef !4
  %i.ab = atomicrmw sub ptr %i.aa, i64 1 release, align 8, !noalias !971
  %i.ac = icmp eq i64 %i.ab, 1
  br i1 %i.ac, label %bb.f, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

bb.f:                                             ; preds = %bb.e
  fence acquire
  tail call void @_RNvMsn_NtCsexYYUdYSQU6_5alloc4syncINtB5_3ArceE9drop_slowCs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.z) #20, !noalias !960
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i: ; preds = %bb.f, %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i
  %i.ad = icmp eq i64 %i.v, 0
  br i1 %i.ad, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i, %bb.b
  %i.ae = mul i64 %i.b, 24
  %i.af = icmp slt i64 %i.b, 768614336404564650
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = and i64 %i.ae, -16                      ; 2 uses
  %i.ah = add i64 %i.ag, 32                       ; 2 uses
  %i.ai = add nsw i64 %i.b, 17
  %i.aj = add i64 %i.ai, %i.ah                    ; 4 uses
  %i.ak = icmp uge i64 %i.aj, %i.ah
  %i.al = icmp ult i64 %i.aj, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ak)
  tail call void @llvm.assume(i1 %i.al)
  %i.am = icmp eq i64 %i.aj, 0
  br i1 %i.am, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.g

bb.g:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i
  %i.an = load ptr, ptr %0, align 8, !alias.scope !958, !nonnull !4, !noundef !4
  %i.ao = sub i64 -32, %i.ag
  %i.ap = getelementptr inbounds i8, ptr %i.an, i64 %i.ao
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ap, i64 noundef %i.aj, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !958
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluENtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm15stream_protocol14StreamProtocoluEECsiQsUuLk7hWW_14libp2p_autonat.exit.i, %bb.g
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsiQsUuLk7hWW_14libp2p_autonat(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !974
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RNvXsh_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEENtNtNtNtCskKLDkoKarTP_4core4iter6traits7collect12IntoIterator9into_iterCsiQsUuLk7hWW_14libp2p_autonat(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) initializes((0, 50), (56, 64)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !4, !noundef !4 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !4 ; 5 uses
  %.val13.i = load <16 x i8>, ptr %i.a, align 16, !noalias !977
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !4
  %i.f = icmp eq i64 %i.c, 0
  br i1 %i.f, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i: ; preds = %bb.a
  %or.cond.i = icmp slt i64 %i.c, 2305843009213693950
  tail call void @llvm.assume(i1 %or.cond.i)
  %i.g = shl i64 %i.c, 3
  %i.h = and i64 %i.g, -16                        ; 2 uses
  %i.i = add nsw i64 %i.c, 33
  %i.j = add i64 %i.i, %i.h
  %i.k = sub nuw nsw i64 -16, %i.h
  %i.l = getelementptr inbounds i8, ptr %i.a, i64 %i.k
  br label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtCsfoiTdJnOWBy_23libp2p_request_response17OutboundRequestIduEE15into_allocationCsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i, %bb.a
  %.sroa.514.0 = phi ptr [ undef, %bb.a ], [ %i.l, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sroa.413.0 = phi i64 [ undef, %bb.a ], [ %i.j, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %.sink.i = phi i64 [ 0, %bb.a ], [ 16, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i ]
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.n = icmp sgt <16 x i8> %.val13.i, splat (i8 -1)
  %i.o = getelementptr i8, ptr %i.a, i64 %i.c
  %i.p = getelementptr i8, ptr %i.o, i64 1
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.a, ptr %i.q, align 8
  %.sroa.0.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.m, ptr %.sroa.0.sroa.4.0..sroa_idx, align 8
  %.sroa.0.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.p, ptr %.sroa.0.sroa.5.0..sroa_idx, align 8
  %.sroa.0.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <16 x i1> %i.n, ptr %.sroa.0.sroa.6.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store i64 %i.e, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 %.sink.i, ptr %0, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.413.0, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.514.0, ptr %.sroa.514.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtCsczYENlYh6wI_8smallvec8SmallVecAINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEja_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB3w_(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecAINtNtCsfoiTdJnOWBy_23libp2p_request_response7handler15OutboundMessageNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v18protocol12AutoNatCodecEja_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropB1V_(ptr noalias nofree noundef nonnull align 8 dereferenceable(1776) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtCsczYENlYh6wI_8smallvec8SmallVecANtCsfoiTdJnOWBy_23libp2p_request_response10Connectionj2_EEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceCsiQsUuLk7hWW_14libp2p_autonat(ptr noundef %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXsw_CsczYENlYh6wI_8smallvecINtB5_8SmallVecANtCsfoiTdJnOWBy_23libp2p_request_response10Connectionj2_ENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiQsUuLk7hWW_14libp2p_autonat(ptr noalias nofree noundef nonnull align 8 dereferenceable(288) %i.a)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_NtNtNtB1S_4hash6random11RandomStateE0Es_0INtNtNtB3E_3ops8function6FnOnceTOhEE9call_onceCsiQsUuLk7hWW_14libp2p_autonat(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1007)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1008)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1009)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1010)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1011)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1012)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1013, !noundef !4 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtNtB1P_4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1014)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !1015, !noundef !4 ; 2 uses
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %i.a, align 8, !alias.scope !1015, !nonnull !4, !noundef !4 ; 3 uses
  %.val13.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.h, align 16, !noalias !1016
  %i.i = icmp sgt <16 x i8> %.val13.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.j = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = bitcast <16 x i1> %i.i to i16
  br label %bb.d

bb.d:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i, %bb.c
  %.sroa.05.016.i.i.i.i.i.i.i.i = phi ptr [ %i.h, %bb.c ], [ %.sroa.05.1.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.6.015.i.i.i.i.i.i.i.i = phi ptr [ %i.j, %bb.c ], [ %.sroa.6.1.i.i.i.i.i.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.86.014.i.i.i.i.i.i.i.i = phi i16 [ %i.k, %bb.c ], [ %i.t, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.107.013.i.i.i.i.i.i.i.i = phi i64 [ %i.f, %bb.c ], [ %i.w, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i ]
  %.not11.i.i.i.i.i.i.i.i.i = icmp eq i16 %.sroa.86.014.i.i.i.i.i.i.i.i, 0
  br i1 %.not11.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.d, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.l = phi ptr [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.d ] ; 2 uses
  %i.m = phi ptr [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.d ]
  %.val79.i.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.l, align 16, !noalias !1017
  %i.n = icmp sgt <16 x i8> %.val79.i.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -640 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.n to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i, %bb.d
  %.sroa.6.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.6.015.i.i.i.i.i.i.i.i, %bb.d ], [ %i.p, %.lr.ph.i.i.i.i.i.i.i.i.i ]
  %.sroa.05.1.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.05.016.i.i.i.i.i.i.i.i, %bb.d ], [ %i.o, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i.i = phi i16 [ %.sroa.86.014.i.i.i.i.i.i.i.i, %bb.d ], [ %.cast.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.q = add i16 %.lcssa.i.i.i.i.i.i.i.i.i, -1
  %i.r = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i.i, i1 true)
  %i.s = zext nneg i16 %i.r to i64
  %i.t = and i16 %i.q, %.lcssa.i.i.i.i.i.i.i.i.i
  %i.u = sub nsw i64 0, %i.s
  %i.v = getelementptr inbounds [40 x i8], ptr %.sroa.05.1.i.i.i.i.i.i.i.i, i64 %i.u ; 4 uses
  %i.w = add i64 %.sroa.107.013.i.i.i.i.i.i.i.i, -1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1018)
  %i.x = getelementptr inbounds i8, ptr %i.v, i64 -32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1019)
  %i.y = load ptr, ptr %i.x, align 8, !alias.scope !1020, !noalias !1015, !noundef !4 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1021)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1022)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1023)
  %i.aa = getelementptr inbounds i8, ptr %i.v, i64 -8
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !1024, !noalias !1015, !noundef !4
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !1025, !nonnull !4, !noundef !4
  %i.ae = getelementptr inbounds i8, ptr %i.v, i64 -24
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !1024, !noalias !1015, !noundef !4
  %i.ag = getelementptr inbounds i8, ptr %i.v, i64 -16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !1024, !noalias !1015, !noundef !4
  tail call void %i.ad(ptr noundef %i.ab, ptr noundef %i.af, i64 noundef %i.ah), !noalias !1025, !inline_history !1006
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i: ; preds = %bb.e, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE9next_implKb0_ECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i
  %i.ai = icmp eq i64 %i.w, 0
  br i1 %i.ai, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i, label %bb.d

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtB4_6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i.i, %bb.b
  %i.aj = mul i64 %i.c, 40
  %i.ak = icmp slt i64 %i.c, 461168601842738790
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = and i64 %i.aj, -16                      ; 2 uses
  %i.am = add i64 %i.al, 48                       ; 2 uses
  %i.an = add nsw i64 %i.c, 17
  %i.ao = add i64 %i.an, %i.am                    ; 4 uses
  %i.ap = icmp uge i64 %i.ao, %i.am
  %i.aq = icmp ult i64 %i.ao, 9223372036854775793
  tail call void @llvm.assume(i1 %i.ap)
  tail call void @llvm.assume(i1 %i.aq)
  %i.ar = icmp eq i64 %i.ao, 0
  br i1 %i.ar, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtNtB1P_4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.f

bb.f:                                             ; preds = %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i
  %i.as = load ptr, ptr %i.a, align 8, !alias.scope !1013, !nonnull !4, !noundef !4
  %i.at = sub i64 -48, %i.al
  %i.au = getelementptr inbounds i8, ptr %i.as, i64 %i.at
  tail call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.au, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 16) #21, !noalias !1013
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtNtB1P_4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1G_NtNtNtB1P_4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %bb.a, %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEECsiQsUuLk7hWW_14libp2p_autonat.exit.i.i.i.i.i.i.i, %bb.f
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour7ProbeIdNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB2H_15ResponseChannelNtNtB1O_8protocol12DialResponseEEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1J_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtCskKLDkoKarTP_4core3ops8function6FnOnceTOhEE9call_onceB1Q_(ptr noundef nonnull %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCs2iisHxfqoT7_15libp2p_identity7peer_id6PeerIdTNtNtNtCsiQsUuLk7hWW_14libp2p_autonat2v19behaviour7ProbeIdNtCsfoiTdJnOWBy_23libp2p_request_response16InboundRequestIdINtNtCsexYYUdYSQU6_5alloc3vec3VecNtCsbli3iz7XG76_9multiaddr9MultiaddrEINtB2o_15ResponseChannelNtNtB1v_8protocol12DialResponseEEEEB1x_(ptr noalias nofree noundef nonnull align 8 dereferenceable(128) %0)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtBb_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE14reserve_rehashNCINvNtBd_3map11make_hasherBV_B1R_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0INtNtNtB1W_3ops8function6FnOnceTOhEE9call_onceCsiQsUuLk7hWW_14libp2p_autonat(ptr nofree noundef readonly captures(none) %0) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1037)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1038)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !1039, !noundef !4 ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1040)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1041)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1042)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.e = load ptr, ptr %i.d, align 8, !alias.scope !1043, !noundef !4
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.g = load ptr, ptr %i.f, align 8, !noalias !1043, !nonnull !4, !noundef !4
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !1043, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !alias.scope !1043, !noundef !4
  tail call void %i.g(ptr noundef %i.e, ptr noundef %i.i, i64 noundef %i.k), !noalias !1043, !inline_history !1036
  br label %_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit

_RNCINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB8_8RawTableTNtNtCs6b9j1MKPRPC_12libp2p_swarm10connection12ConnectionIdINtNtCskKLDkoKarTP_4core6option6OptionNtCsbli3iz7XG76_9multiaddr9MultiaddrEEE14reserve_rehashNCINvNtBa_3map11make_hasherBS_B1O_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0Es_0CsiQsUuLk7hWW_14libp2p_autonat.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #3

; Function Attrs: cold noinline nonlazybind uwtable
declare { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtCsbli3iz7XG76_9multiaddr9MultiaddruEE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_uNtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs6b9j1MKPRPC_12libp2p_swarm(ptr noalias nofree noundef align 8 dereferenceable(32), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i1 noundef zeroext) unnamed_addr #1

end_hunk_0
