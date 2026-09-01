Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_types-b69712832ae71271.influxdb3_types.6c0bac817ad119d5-cgu.0?download=true
inline.NumInlined: 246
inline.NumDeleted: 143
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB6_12DatabaseName3newReEB8_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 %2 ; 4 uses
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i
  %i.s = phi ptr [ %i.bc, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i ], [ %i.k, %.lr.ph.i.preheader ] ; 5 uses
  %i.t = phi i64 [ %i.bk, %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 1 ; 3 uses
  %i.v = load i8, ptr %i.s, align 1, !noalias !76, !noundef !6 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i: ; preds = %.lr.ph.i
  %i.x = and i8 %i.v, 31
  %i.y = zext nneg i8 %i.x to i32                 ; 3 uses
  %i.z = icmp ne ptr %i.u, %i.r
  tail call void @llvm.assume(i1 %i.z)
  %i.aa = getelementptr inbounds nuw i8, ptr %i.s, i64 2 ; 3 uses
  %i.ab = load i8, ptr %i.u, align 1, !noalias !76, !noundef !6
  %i.ac = shl nuw nsw i32 %i.y, 6
  %i.ad = and i8 %i.ab, 63
  %i.ae = zext nneg i8 %i.ad to i32               ; 2 uses
  %i.af = or disjoint i32 %i.ac, %i.ae
  %i.ag = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ag, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, label %bb.h

bb.g:                                             ; preds = %.lr.ph.i
  %i.ah = zext nneg i8 %i.v to i32
  br label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i
  %i.ai = icmp ne ptr %i.aa, %i.r
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = getelementptr inbounds nuw i8, ptr %i.s, i64 3 ; 3 uses
  %i.ak = load i8, ptr %i.aa, align 1, !noalias !76, !noundef !6
  %i.al = shl nuw nsw i32 %i.ae, 6
  %i.am = and i8 %i.ak, 63
  %i.an = zext nneg i8 %i.am to i32
  %i.ao = or disjoint i32 %i.al, %i.an            ; 2 uses
  %i.ap = shl nuw nsw i32 %i.y, 12
  %i.aq = or disjoint i32 %i.ao, %i.ap
  %i.ar = icmp samesign ugt i8 %i.v, -17
  br i1 %i.ar, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i
  %i.as = icmp ne ptr %i.aj, %i.r
  tail call void @llvm.assume(i1 %i.as)
  %i.at = getelementptr inbounds nuw i8, ptr %i.s, i64 4
  %i.au = load i8, ptr %i.aj, align 1, !noalias !76, !noundef !6
  %i.av = shl nuw nsw i32 %i.y, 18
  %i.aw = and i32 %i.av, 1835008
  %i.ax = shl nuw nsw i32 %i.ao, 6
  %i.ay = and i8 %i.au, 63
  %i.az = zext nneg i8 %i.ay to i32
  %i.ba = or disjoint i32 %i.ax, %i.az
  %i.bb = or disjoint i32 %i.ba, %i.aw
  br label %bb.h

bb.h:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i, %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i
  %i.bc = phi ptr [ %i.aj, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i ], [ %i.at, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i ], [ %i.aa, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i ], [ %i.u, %bb.g ] ; 2 uses
  %spec.select.i.ph.i = phi i32 [ %i.aq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit14.i.i.i ], [ %i.bb, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit16.i.i.i ], [ %i.af, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs9h7Hq22ZyhR_15influxdb3_types.exit12.i.i.i ], [ %i.ah, %bb.g ] ; 7 uses
  %i.bd = and i32 %spec.select.i.ph.i, 2097119
  %i.be = add nsw i32 %i.bd, -65
  %or.cond4.i.i.i.i.i = icmp ult i32 %i.be, 26
  %i.bf = add nsw i32 %spec.select.i.ph.i, -48
  %or.cond2.i.i.i.i.i = icmp ult i32 %i.bf, 10
  %or.cond5.i.i.i.i.i = select i1 %or.cond4.i.i.i.i.i, i1 true, i1 %or.cond2.i.i.i.i.i
  br i1 %or.cond5.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %spec.select.i.ph.i, 170
  br i1 %i.bg, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = invoke noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data10alphabetic11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i)
          to label %.noexc unwind label %bb.n

.noexc:                                           ; preds = %bb.j
  br i1 %i.bh, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i, label %bb.k

bb.k:                                             ; preds = %.noexc
  %i.bi = icmp samesign ugt i32 %spec.select.i.ph.i, 177
  br i1 %i.bi, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i

_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i: ; preds = %bb.k
  %i.bj = invoke noundef zeroext i1 @_RNvNtNtNtCs4NRVxsYgnAr_4core7unicode12unicode_data1n11lookup_slow(i32 noundef range(i32 0, 1114112) %spec.select.i.ph.i)
          to label %.noexc12 unwind label %bb.n

.noexc12:                                         ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i
  br i1 %i.bj, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i, label %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i

_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i: ; preds = %.noexc12, %bb.k, %bb.i
  switch i32 %spec.select.i.ph.i, label %bb.l [
    i32 47, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i
    i32 95, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i
    i32 45, label %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i
  ]

_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i: ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i, %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i, %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i, %.noexc12, %.noexc, %bb.h
  %i.bk = add i64 %i.t, 1
  %.not.i.i = icmp eq ptr %i.bc, %i.r
  br i1 %.not.i.i, label %.loopexit, label %.lr.ph.i

bb.l:                                             ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.thread3.i.i.i.i
  %i.bl = tail call fastcc { ptr, i64 } @_RINvMNtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB3_15TruncatedString3newINtNtCscdodAO9FK5_5alloc4sync3ArceEEB5_(ptr noundef nonnull %i.h, i64 noundef %2) ; 2 uses
  %i.bm = extractvalue { ptr, i64 } %i.bl, 0
  %i.bn = extractvalue { ptr, i64 } %i.bl, 1
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bm, ptr %i.bo, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bn, ptr %.sroa.44.0..sroa_idx, align 8
  br label %bb.m

.loopexit:                                        ; preds = %_RNCINvNvNtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator8position5checkcNCINvMs0_NtCs9h7Hq22ZyhR_15influxdb3_types13database_nameNtB1q_12DatabaseName3newReE0E0B1s_.exit.i
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.bp, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.f, %bb.l, %.loopexit
  %.sink36 = phi i64 [ 16, %.loopexit ], [ 24, %bb.l ], [ 24, %bb.f ]
  %.sink34 = phi i64 [ %2, %.loopexit ], [ %i.t, %bb.l ], [ %i.p, %bb.f ]
  %.sink = phi i64 [ 0, %.loopexit ], [ 1, %bb.l ], [ 1, %bb.f ]
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 %.sink36
  store i64 %.sink34, ptr %i.bq, align 8
  store i64 %.sink, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.n, %bb.o
  resume { ptr, i32 } %lpad.thr_comm

bb.n:                                             ; preds = %_RNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc15is_alphanumeric.exit.i.i.i.i, %bb.j
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  %i.br = atomicrmw sub ptr %i.h, i64 1 release, align 8, !noalias !84
  %i.bs = icmp eq i64 %i.br, 1
  br i1 %i.bs, label %bb.o, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArceE9drop_slowCs883m0UBHfPV_9sqlx_core(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArceEECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap3getNtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef readonly align 8 captures(none) dereferenceable(96) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [72 x i8], align 16               ; 13 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !89)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !92)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !98, !noalias !99, !noundef !6 ; 4 uses
  %i.f = icmp ult i64 %i.e, 88686269585142076
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit_crit_edge, label %bb.b

._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit_crit_edge: ; preds = %bb.a
  %.pre = load ptr, ptr %1, align 8, !alias.scope !102
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !107)
  %i.h = load i64, ptr %0, align 8, !range !110, !alias.scope !111, !noalias !99, !noundef !6
  %i.i = icmp eq i64 %i.h, 2
  br i1 %i.i, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !112
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.412.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.513.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.614.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %.sroa.7.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.k = load <2 x i64>, ptr %i.j, align 8, !alias.scope !111, !noalias !99 ; 3 uses
  %i.l = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> zeroinitializer
  %i.m = xor <2 x i64> %i.l, <i64 8317987319222330741, i64 7816392313619706465>
  store <2 x i64> %i.m, ptr %i.c, align 16, !noalias !112
  %i.n = shufflevector <2 x i64> %i.k, <2 x i64> poison, <2 x i32> <i32 1, i32 1>
  %i.o = xor <2 x i64> %i.n, <i64 7237128888997146477, i64 8387220255154660723>
  store <2 x i64> %i.o, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 16, !noalias !112
  store <2 x i64> %i.k, ptr %.sroa.7.0..sroa_idx.i.i.i.i, align 16, !noalias !112
  %.sroa.915.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 2 uses
  %.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.915.0..sroa_idx.i.i.i.i, i8 0, i64 24, i1 false), !noalias !112
  %i.p = load ptr, ptr %1, align 8, !noalias !113, !noundef !6 ; 3 uses
  %i.q = icmp ne ptr %i.p, null
  %i.r = zext i1 %i.q to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !118
  store i64 %i.r, ptr %i.b, align 8, !noalias !118
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 8), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !118
  %.not.i.i.i.i.i.i = icmp eq ptr %i.p, null
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !113, !noundef !6 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.t, align 8, !noalias !113, !noundef !6
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i), !noalias !112
  %i.u = ptrtoint ptr %.val.i.i.i.i.i.i to i64
  %i.v = trunc i64 %i.u to i8
  br label %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i

bb.e:                                             ; preds = %bb.c
  %i.w = load i8, ptr %i.s, align 8, !range !123, !noalias !113, !noundef !6 ; 2 uses
  %i.x = zext nneg i8 %i.w to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !124
  store i64 %i.x, ptr %i.a, align 8, !noalias !124
  call fastcc void @_RNvXs2_NtNtCs2AWtUsOyxgP_3std4hash6randomNtB5_13DefaultHasherNtNtCs4NRVxsYgnAr_4core4hash6Hasher5write(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 8), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !124
  br label %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i

_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  %i.y = phi i8 [ %i.w, %bb.e ], [ %i.v, %bb.d ]
  %.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %i.c, align 16, !alias.scope !129, !noalias !112
  %.sroa.10.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.412.0..sroa_idx.i.i.i.i, align 8, !alias.scope !129, !noalias !112
  %.sroa.17.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.513.0..sroa_idx.i.i.i.i, align 16, !alias.scope !129, !noalias !112 ; 3 uses
  %.sroa.22.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.614.0..sroa_idx.i.i.i.i, align 8, !alias.scope !129, !noalias !112
  %i.z = load i64, ptr %.sroa.915.0..sroa_idx.i.i.i.i, align 16, !alias.scope !129, !noalias !112, !noundef !6
  %i.aa = shl i64 %i.z, 56
  %i.ab = load i64, ptr %.sroa.10.0..sroa_idx.i.i.i.i, align 8, !alias.scope !129, !noalias !112, !noundef !6
  %i.ac = or i64 %i.aa, %i.ab                     ; 2 uses
  %i.ad = xor i64 %i.ac, %.sroa.22.0.copyload.i.i.i.i.i ; 3 uses
  %i.ae = add i64 %.sroa.17.0.copyload.i.i.i.i.i, %.sroa.0.0.copyload.i.i.i.i.i ; 3 uses
  %i.af = add i64 %i.ad, %.sroa.10.0.copyload.i.i.i.i.i ; 2 uses
  %i.ag = tail call noundef i64 @llvm.fshl.i64(i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 %.sroa.17.0.copyload.i.i.i.i.i, i64 13)
  %i.ah = xor i64 %i.ag, %i.ae                    ; 3 uses
  %i.ai = tail call noundef i64 @llvm.fshl.i64(i64 %i.ad, i64 %i.ad, i64 16)
  %i.aj = xor i64 %i.ai, %i.af                    ; 3 uses
  %i.ak = tail call noundef i64 @llvm.fshl.i64(i64 %i.ae, i64 %i.ae, i64 32)
  %i.al = add i64 %i.af, %i.ah                    ; 3 uses
  %i.am = add i64 %i.aj, %i.ak                    ; 2 uses
  %i.an = tail call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 17)
  %i.ao = xor i64 %i.al, %i.an                    ; 3 uses
  %i.ap = tail call noundef i64 @llvm.fshl.i64(i64 %i.aj, i64 %i.aj, i64 21)
  %i.aq = xor i64 %i.ap, %i.am                    ; 3 uses
  %i.ar = tail call noundef i64 @llvm.fshl.i64(i64 %i.al, i64 %i.al, i64 32)
  %i.as = xor i64 %i.am, %i.ac
  %i.at = xor i64 %i.ar, 255
  %i.au = add i64 %i.as, %i.ao                    ; 3 uses
  %i.av = add i64 %i.aq, %i.at                    ; 2 uses
  %i.aw = tail call noundef i64 @llvm.fshl.i64(i64 %i.ao, i64 %i.ao, i64 13)
  %i.ax = xor i64 %i.au, %i.aw                    ; 3 uses
  %i.ay = tail call noundef i64 @llvm.fshl.i64(i64 %i.aq, i64 %i.aq, i64 16)
  %i.az = xor i64 %i.ay, %i.av                    ; 3 uses
  %i.ba = tail call noundef i64 @llvm.fshl.i64(i64 %i.au, i64 %i.au, i64 32)
  %i.bb = add i64 %i.ax, %i.av                    ; 3 uses
  %i.bc = add i64 %i.az, %i.ba                    ; 2 uses
  %i.bd = tail call noundef i64 @llvm.fshl.i64(i64 %i.ax, i64 %i.ax, i64 17)
  %i.be = xor i64 %i.bb, %i.bd                    ; 3 uses
  %i.bf = tail call noundef i64 @llvm.fshl.i64(i64 %i.az, i64 %i.az, i64 21)
  %i.bg = xor i64 %i.bf, %i.bc                    ; 3 uses
  %i.bh = tail call noundef i64 @llvm.fshl.i64(i64 %i.bb, i64 %i.bb, i64 32)
  %i.bi = add i64 %i.be, %i.bc                    ; 3 uses
  %i.bj = add i64 %i.bg, %i.bh                    ; 2 uses
  %i.bk = tail call noundef i64 @llvm.fshl.i64(i64 %i.be, i64 %i.be, i64 13)
  %i.bl = xor i64 %i.bk, %i.bi                    ; 3 uses
  %i.bm = tail call noundef i64 @llvm.fshl.i64(i64 %i.bg, i64 %i.bg, i64 16)
  %i.bn = xor i64 %i.bm, %i.bj                    ; 3 uses
  %i.bo = tail call noundef i64 @llvm.fshl.i64(i64 %i.bi, i64 %i.bi, i64 32)
  %i.bp = add i64 %i.bl, %i.bj                    ; 3 uses
  %i.bq = add i64 %i.bn, %i.bo                    ; 2 uses
  %i.br = tail call noundef i64 @llvm.fshl.i64(i64 %i.bl, i64 %i.bl, i64 17)
  %i.bs = xor i64 %i.br, %i.bp                    ; 3 uses
  %i.bt = tail call noundef i64 @llvm.fshl.i64(i64 %i.bn, i64 %i.bn, i64 21)
  %i.bu = xor i64 %i.bt, %i.bq                    ; 2 uses
  %i.bv = tail call noundef i64 @llvm.fshl.i64(i64 %i.bp, i64 %i.bp, i64 32)
  %i.bw = add i64 %i.bs, %i.bq
  %i.bx = add i64 %i.bu, %i.bv                    ; 2 uses
  %i.by = tail call noundef i64 @llvm.fshl.i64(i64 %i.bs, i64 %i.bs, i64 13)
  %i.bz = xor i64 %i.by, %i.bw                    ; 2 uses
  %i.ca = shl i64 %i.bu, 16
  %i.cb = xor i64 %i.ca, %i.bx
  %i.cc = add i64 %i.bz, %i.bx                    ; 2 uses
  %i.cd = lshr i64 %i.bz, 47
  %i.ce = lshr i64 %i.cb, 43
  %i.cf = lshr i64 %i.cc, 32
  %i.cg = xor i64 %i.ce, %i.cd
  %i.ch = xor i64 %i.cg, %i.cf
  %i.ci = xor i64 %i.ch, %i.cc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !112
  br label %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i

bb.f:                                             ; preds = %bb.b
  %i.cj = load ptr, ptr %1, align 8, !noalias !132, !noundef !6 ; 5 uses
  %i.ck = icmp ne ptr %i.cj, null
  %i.cl = zext i1 %i.ck to i64
  %i.cm = xor i64 %i.cl, -3750763034362895579
  %i.cn = mul i64 %i.cm, 2232315406967589409      ; 4 uses
  %.not.i.i20.i.i.i.i = icmp eq ptr %i.cj, null
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %.not.i.i20.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.val.i.i21.i.i.i.i = load ptr, ptr %i.co, align 8, !noalias !132, !noundef !6 ; 4 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1.i.i22.i.i.i.i = load i64, ptr %i.cp, align 8, !noalias !132, !noundef !6 ; 4 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.val.i.i21.i.i.i.i, i64 %.val1.i.i22.i.i.i.i
  %i.cr = icmp samesign eq i64 %.val1.i.i22.i.i.i.i, 0
  %i.cs = ptrtoint ptr %.val.i.i21.i.i.i.i to i64
  %i.ct = trunc i64 %i.cs to i8                   ; 3 uses
  br i1 %i.cr, label %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.g
  %xtraiter = and i64 %.val1.i.i22.i.i.i.i, 7     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.0.06.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %.val.i.i21.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.prol, i64 1 ; 2 uses
  %i.cv = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i.prol, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.cw = zext i8 %i.cv to i64
  %i.cx = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.i.prol, %i.cw
  %i.cy = mul i64 %i.cx, 1099511628211            ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !144

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa24.unr = phi i64 [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.0.06.i.i.i.i.i.i.i.i.unr = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cy, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.03.05.i.i.i.i.i.i.i.i.unr = phi ptr [ %.val.i.i21.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.cu, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.cz = icmp ult i64 %.val1.i.i22.i.i.i.i, 8
  br i1 %i.cz, label %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.0.06.i.i.i.i.i.i.i.i = phi i64 [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.0.06.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.03.05.i.i.i.i.i.i.i.i = phi ptr [ %i.ej, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.03.05.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.da = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 1
  %i.db = load i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.dc = zext i8 %i.db to i64
  %i.dd = xor i64 %.sroa.0.06.i.i.i.i.i.i.i.i, %i.dc
  %i.de = mul i64 %i.dd, 1099511628211
  %i.df = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 2
  %i.dg = load i8, ptr %i.da, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.dh = zext i8 %i.dg to i64
  %i.di = xor i64 %i.de, %i.dh
  %i.dj = mul i64 %i.di, 1099511628211
  %i.dk = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 3
  %i.dl = load i8, ptr %i.df, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.dm = zext i8 %i.dl to i64
  %i.dn = xor i64 %i.dj, %i.dm
  %i.do = mul i64 %i.dn, 1099511628211
  %i.dp = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 4
  %i.dq = load i8, ptr %i.dk, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.dr = zext i8 %i.dq to i64
  %i.ds = xor i64 %i.do, %i.dr
  %i.dt = mul i64 %i.ds, 1099511628211
  %i.du = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 5
  %i.dv = load i8, ptr %i.dp, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.dw = zext i8 %i.dv to i64
  %i.dx = xor i64 %i.dt, %i.dw
  %i.dy = mul i64 %i.dx, 1099511628211
  %i.dz = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 6
  %i.ea = load i8, ptr %i.du, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.eb = zext i8 %i.ea to i64
  %i.ec = xor i64 %i.dy, %i.eb
  %i.ed = mul i64 %i.ec, 1099511628211
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 7
  %i.ef = load i8, ptr %i.dz, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.eg = zext i8 %i.ef to i64
  %i.eh = xor i64 %i.ed, %i.eg
  %i.ei = mul i64 %i.eh, 1099511628211
  %i.ej = getelementptr inbounds nuw i8, ptr %.sroa.03.05.i.i.i.i.i.i.i.i, i64 8 ; 2 uses
  %i.ek = load i8, ptr %i.ee, align 1, !alias.scope !137, !noalias !140, !noundef !6
  %i.el = zext i8 %i.ek to i64
  %i.em = xor i64 %i.ei, %i.el
  %i.en = mul i64 %i.em, 1099511628211            ; 2 uses
  %i.eo = icmp eq ptr %i.ej, %i.cq
  br i1 %i.eo, label %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  %i.ep = load i8, ptr %i.co, align 8, !range !123, !noalias !132, !noundef !6 ; 2 uses
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = xor i64 %i.cn, %i.eq
  %i.es = mul i64 %i.er, 2232315406967589409
  br label %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i

_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.h, %bb.g, %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i
  %i.et = phi ptr [ %i.p, %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i ], [ null, %bb.h ], [ %i.cj, %bb.g ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.cj, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.eu = phi i8 [ %i.y, %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i ], [ %i.ep, %bb.h ], [ %i.ct, %bb.g ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ct, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ]
  %.sroa.0.0.i.i.i.i = phi i64 [ %i.ci, %_RINvXsz_NtNtCs6P5GRezSnwZ_4http6header4nameNtB6_10HeaderNameNtNtCs4NRVxsYgnAr_4core4hash4Hash4hashNtNtNtCs2AWtUsOyxgP_3std4hash6random13DefaultHasherECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i ], [ %i.es, %bb.h ], [ %i.cn, %bb.g ], [ %.lcssa24.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.en, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.ev = trunc i64 %.sroa.0.0.i.i.i.i to i16
  %i.ew = and i16 %i.ev, 32767                    ; 2 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ey = load i16, ptr %i.ex, align 8, !alias.scope !98, !noalias !99, !noundef !6 ; 3 uses
  %i.ez = and i16 %i.ew, %i.ey
  %i.fa = zext nneg i16 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.fc = load i64, ptr %i.fb, align 8, !alias.scope !98, !noalias !99, !noundef !6 ; 2 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.fe = load ptr, ptr %i.fd, align 8, !alias.scope !98, !noalias !99, !nonnull !6
  %i.ff = zext i16 %i.ey to i64
  %i.fg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.fh = load ptr, ptr %i.fg, align 8, !alias.scope !98, !noalias !99, !nonnull !6
  %i.fi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %2 = icmp eq ptr %i.et, null                    ; 3 uses
  %i.fk = load i64, ptr %i.fj, align 8            ; 3 uses
  %i.fl = load ptr, ptr %i.fi, align 8            ; 3 uses
  %i.fm = ptrtoint ptr %i.fl to i64
  %i.fn = trunc i64 %i.fm to i8
  %.not = icmp eq i64 %i.fc, 0
  br label %.outer

.outer:                                           ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i
  %.ph = phi i8 [ %i.ga, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.eu, %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i ] ; 5 uses
  %.sroa.05.0.i.i.i.ph = phi i64 [ %i.gb, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.gc, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.fa, %_RINvNtNtCs6P5GRezSnwZ_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i ] ; 2 uses
  %i.fo = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.fc ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge = or i1 %i.fo, %.not.not
  %.sroa.0.0.i.i.i.ph.mux = select i1 %i.fo, i64 %.sroa.0.0.i.i.i.ph, i64 0 ; 3 uses
  br i1 %brmerge, label %.loopexit, label %infloop

.loopexit:                                        ; preds = %.outer
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.fe, i64 %.sroa.0.0.i.i.i.ph.mux ; 2 uses
  %i.fq = load i16, ptr %i.fp, align 2, !noalias !146, !noundef !6 ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.fq, -1
  br i1 %.not.i.i.i, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.i

bb.i:                                             ; preds = %.loopexit
  %i.fr = zext i16 %i.fq to i64                   ; 3 uses
  %i.fs = getelementptr inbounds nuw i8, ptr %i.fp, i64 2
  %i.ft = load i16, ptr %i.fs, align 2, !noalias !146, !noundef !6 ; 2 uses
  %i.fu = and i16 %i.ft, %i.ey
  %i.fv = zext i16 %i.fu to i64
  %i.fw = sub i64 %.sroa.0.0.i.i.i.ph.mux, %i.fv
  %i.fx = and i64 %i.fw, %i.ff
  %i.fy = icmp samesign ugt i64 %.sroa.05.0.i.i.i.ph, %i.fx
  br i1 %i.fy, label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.fz = icmp eq i16 %i.ft, %i.ew
  br i1 %i.fz, label %bb.k, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i, %bb.n, %bb.l, %bb.j
  %i.ga = phi i8 [ %.ph, %bb.n ], [ %.ph, %bb.l ], [ %i.fn, %.split.i.i.i ], [ %.ph, %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i ], [ %.ph, %bb.j ]
  %i.gb = add nuw nsw i64 %.sroa.05.0.i.i.i.ph, 1
  %i.gc = add i64 %.sroa.0.0.i.i.i.ph.mux, 1
  br label %.outer

bb.k:                                             ; preds = %bb.j
  %i.gd = icmp samesign ugt i64 %i.e, %i.fr
  br i1 %i.gd, label %bb.l, label %bb.o

bb.l:                                             ; preds = %bb.k
  %i.ge = getelementptr inbounds nuw [104 x i8], ptr %i.fh, i64 %i.fr ; 5 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 64
  %i.gg = load ptr, ptr %i.gf, align 8, !noalias !146, !noundef !6
  %i.gh = icmp ne ptr %i.gg, null                 ; 2 uses
  %i.gi = xor i1 %2, %i.gh
  br i1 %i.gi, label %bb.m, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.m:                                             ; preds = %bb.l
  br i1 %i.gh, label %bb.n, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i

bb.n:                                             ; preds = %bb.m
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.et) ]
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ge, i64 80
  %i.gk = load i64, ptr %i.gj, align 8, !noalias !146, !noundef !6
  %i.gl = icmp eq i64 %i.gk, %i.fk
  br i1 %i.gl, label %.split.i.i.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.gm = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gn = load ptr, ptr %i.gm, align 8, !noalias !146, !noundef !6
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr %i.gn, ptr %i.fl, i64 %i.fk), !noalias !146
  %i.go = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.go, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i

_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i: ; preds = %bb.m
  tail call void @llvm.assume(i1 %2)
  %i.gp = getelementptr inbounds nuw i8, ptr %i.ge, i64 72
  %i.gq = load i8, ptr %i.gp, align 8, !range !123, !noalias !146, !noundef !6
  %i.gr = icmp eq i8 %i.gq, %.ph
  br i1 %i.gr, label %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i, label %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.thread.i.i.i

bb.o:                                             ; preds = %bb.k
  invoke void @_RNvNtCs4NRVxsYgnAr_4core9panicking18panic_bounds_check(i64 noundef %i.fr, i64 noundef %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %.noexc unwind label %bb.p

.noexc:                                           ; preds = %bb.o
  unreachable

_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i: ; preds = %_RNvXsy_NtNtCs6P5GRezSnwZ_4http6header4nameNtB5_10HeaderNameNtNtCs4NRVxsYgnAr_4core3cmp9PartialEq2eq.exit.i.i.i, %.split.i.i.i
  %i.gs = getelementptr inbounds nuw i8, ptr %i.ge, i64 24
  br label %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit

bb.p:                                             ; preds = %bb.o
  %i.gt = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !147)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !150)
  br i1 %2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.q

bb.q:                                             ; preds = %bb.p
  tail call void @llvm.experimental.noalias.scope.decl(metadata !153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !156)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !159)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !162)
  %i.gu = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !165, !noundef !6
  %i.gw = getelementptr inbounds nuw i8, ptr %i.et, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !165, !nonnull !6, !noundef !6
  invoke void %i.gx(ptr noundef %i.gv, ptr noundef %i.fl, i64 noundef %i.fk)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit unwind label %bb.s, !inline_history !166

_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.i, %.loopexit, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit_crit_edge, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i
  %i.gy = phi ptr [ %i.et, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i ], [ %.pre, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit_crit_edge ], [ %i.et, %.loopexit ], [ %i.et, %bb.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ %i.gs, %_RINvXs0_NtNtNtCs6P5GRezSnwZ_4http6header3map14as_header_nameNtNtBa_4name10HeaderNameNtB6_6Sealed4findNtNtBa_5value11HeaderValueECs9h7Hq22ZyhR_15influxdb3_types.exit.i ], [ null, %._RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit_crit_edge ], [ null, %.loopexit ], [ null, %bb.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !167)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !168)
  %i.gz = icmp eq ptr %i.gy, null
  br i1 %i.gz, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit2, label %bb.r

bb.r:                                             ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !175)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !178)
  %i.ha = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.hb = load ptr, ptr %i.ha, align 8, !alias.scope !181, !noundef !6
  %i.hc = getelementptr inbounds nuw i8, ptr %i.gy, i64 32
  %i.hd = load ptr, ptr %i.hc, align 8, !noalias !181, !nonnull !6, !noundef !6
  %i.he = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hf = load ptr, ptr %i.he, align 8, !alias.scope !181, !noundef !6
  %i.hg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !alias.scope !181, !noundef !6
  tail call void %i.hd(ptr noundef %i.hb, ptr noundef %i.hf, i64 noundef %i.hh), !noalias !181, !inline_history !182
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit2

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit2: ; preds = %_RINvMs0_NtNtCs6P5GRezSnwZ_4http6header3mapNtB6_9HeaderMap4get2NtNtB8_4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit, %bb.r
  ret ptr %.sroa.0.0.i

bb.s:                                             ; preds = %bb.q
  %i.hi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtNtCs6P5GRezSnwZ_4http6header4name10HeaderNameECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.p, %bb.q
  resume { ptr, i32 } %i.gt

infloop:                                          ; preds = %.outer, %infloop
  br label %infloop
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !183, !noundef !6 ; 2 uses
  %i.b = icmp eq i64 %i.a, -1
  br i1 %i.b, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit: ; preds = %bb.l, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i, %bb.c, %bb.b, %bb.a
  ret void

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !184)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !187)
  %switch.i.i = icmp samesign ult i64 %i.a, 2
  br i1 %switch.i.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !190)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !193)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = load i32, ptr %i.d, align 8, !alias.scope !196, !noundef !6
  switch i32 %i.e, label %bb.d [
    i32 3, label %.sink.split.i.i.i.i
    i32 2, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit
    i32 0, label %.sink.split.i.i.i.i
  ], !prof !197

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @15, ptr noundef nonnull inttoptr (i64 121 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #28, !noalias !196
  unreachable

.sink.split.i.i.i.i:                              ; preds = %bb.c, %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !198)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !201)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i.i.i.i.i = load ptr, ptr %i.f, align 8, !alias.scope !204, !nonnull !6, !noundef !6 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !204, !noundef !6 ; 2 uses
  %i.h = icmp eq i64 %.val1.i.i.i.i.i, 0
  br i1 %i.h, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.sink.split.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.j, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i ], [ 0, %.sink.split.i.i.i.i ] ; 2 uses
  %i.i = getelementptr inbounds nuw [56 x i8], ptr %.val.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 3 uses
  %i.j = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !205)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !208)
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !211, !noalias !204, !nonnull !6, !noundef !6 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.m, align 8, !alias.scope !211, !noalias !204, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !212)
  %i.n = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.n, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i.i.i.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.07.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.p, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %i.o = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i.i.i.i.i.i, i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.p = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !215)
  %i.q = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.q, align 8, !range !218, !alias.scope !219, !noalias !220, !noundef !6 ; 2 uses
  %i.r = icmp sgt i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.r, label %bb.e, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i.i

bb.e:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !219, !noalias !220, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !221
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.e, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !224)
  %i.t = load i64, ptr %i.o, align 8, !range !110, !alias.scope !227, !noalias !220, !noundef !6 ; 2 uses
  %i.u = icmp eq i64 %i.t, 2
  br i1 %i.u, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !228)
  %i.v = icmp eq i64 %i.t, 0
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.w, align 8, !alias.scope !231, !noalias !220 ; 3 uses
  %i.x = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 0 ; 2 uses
  br i1 %i.v, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !231, !noalias !220, !nonnull !6, !noundef !6
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !232
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i

bb.i:                                             ; preds = %bb.f
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !alias.scope !231, !noalias !220, !nonnull !6, !noundef !6
  %i.aa = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aa, i64 noundef range(i64 1, -9223372036854775807) 2) #27, !noalias !235
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.j, %bb.i, %bb.h, %bb.g, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VechEEECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.ab = icmp eq i64 %i.p, %.val1.i.i.i.i.i.i.i.i
  br i1 %i.ab, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !range !30, !alias.scope !211, !noalias !204, !noundef !6 ; 2 uses
  %i.ac = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.ac, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i
  %i.ad = mul nuw i64 %.val2.i.i.i.i.i.i.i.i, 72
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !220
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i: ; preds = %bb.k, %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace15BacktraceSymbolENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i.i.i
  %i.ae = icmp eq i64 %i.j, %.val1.i.i.i.i.i
  br i1 %i.ae, label %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameECs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i.i, %.sink.split.i.i.i.i
  %.val2.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !30, !alias.scope !204, !noundef !6 ; 2 uses
  %i.af = icmp eq i64 %.val2.i.i.i.i.i, 0
  br i1 %i.af, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit, label %bb.l

bb.l:                                             ; preds = %_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2AWtUsOyxgP_3std9backtrace14BacktraceFrameENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs9h7Hq22ZyhR_15influxdb3_types.exit.i.i.i.i.i
  %i.ag = mul nuw i64 %.val2.i.i.i.i.i, 56
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i, i64 noundef %i.ag, i64 noundef range(i64 1, -9223372036854775807) 8) #27, !noalias !204
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceECs9h7Hq22ZyhR_15influxdb3_types.exit
}

; Function Attrs: nonlazybind uwtable
define internal void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCsaIKnL9StOw_6anyhow5error9ErrorImplINtNtBG_7wrapper12MessageErrorNtNtCscdodAO9FK5_5alloc6string6StringEEECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(80) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCs2AWtUsOyxgP_3std9backtrace9BacktraceEECs9h7Hq22ZyhR_15influxdb3_types(ptr noalias noundef align 8 dereferenceable(48) %i.a)
          to label %bb.d unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !236)
end_hunk_0
