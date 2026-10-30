Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/influxdb-rs/original/influxdb3_wal-9f29743fcec34734.influxdb3_wal.133a475b88203f45-cgu.00?download=true
inline.NumInlined: 873
inline.NumDeleted: 305
begin_hunk_0_@_RNvMs_NtCs1ElB0qm0ygX_13influxdb3_wal12object_storeNtB4_11FlushBuffer3new:bb.a
  store ptr %1, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 192
  store ptr %2, ptr %i.j, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %0, ptr noundef nonnull align 8 dereferenceable(120) %3, i64 120, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 120
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.k, ptr noundef nonnull align 8 dereferenceable(64) %4, i64 64, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr %i.g, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.f:                                             ; preds = %bb.i, %bb.g, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #24
  unreachable

bb.g:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCs1ElB0qm0ygX_13influxdb3_wal12object_store9WalBufferEBF_(ptr noalias noundef align 8 dereferenceable(120) %i.c) #25
          to label %bb.h unwind label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.n = atomicrmw add ptr %1, i64 -1 release, align 8, !noalias !1204
  %i.o = icmp eq i64 %i.n, 1
  br i1 %i.o, label %bb.i, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit

bb.i:                                             ; preds = %bb.h
  fence acquire
  invoke void @_RNvMsn_NtCscdodAO9FK5_5alloc4syncINtB5_3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_E9drop_slowCs6Y3vYp7Mdwn_18object_store_utils(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.d)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit unwind label %bb.f

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc4sync3ArcDNtCsk0FzFVI8urx_8iox_time12TimeProviderEL_EECs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.h, %bb.i
  resume { ptr, i32 } %i.f
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(128) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 121 ; 3 uses
  %i.c = load i8, ptr %i.b, align 1, !range !18, !noundef !6
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %bb.aa, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %.val = load ptr, ptr %i.e, align 8, !nonnull !6, !noundef !6 ; 8 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.val1 = load i64, ptr %i.f, align 8, !noundef !6 ; 18 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1219)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1220)
  %i.g = load i64, ptr %0, align 8, !range !10, !alias.scope !1220, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  br i1 %i.h, label %bb.l, label %.preheader.i

.preheader.i:                                     ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 26 ; 2 uses
  %i.k = load i8, ptr %i.j, align 2, !range !18, !alias.scope !1221, !noundef !6
  %i.l = trunc nuw i8 %i.k to i1
  br i1 %i.l, label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i
  %.promoted.i = load i64, ptr %i.i, align 8, !alias.scope !1220 ; 13 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 4 uses
  %.promoted26.i = load i8, ptr %i.m, align 8, !alias.scope !1221 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1222)
  %i.n = trunc nuw i8 %.promoted26.i to i1        ; 2 uses
  %i.o = icmp eq i64 %.promoted.i, 0
  br i1 %i.o, label %bb.e, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %.not.i.i.i.peel = icmp ult i64 %.promoted.i, %.val1
  br i1 %.not.i.i.i.peel, label %bb.d, label %.split.i.i.i.peel

.split.i.i.i.peel:                                ; preds = %bb.c
  %i.p = icmp eq i64 %.promoted.i, %.val1
  br i1 %i.p, label %bb.e, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !1223, !noalias !1224, !noundef !6
  %i.s = icmp sgt i8 %i.r, -65
  br i1 %i.s, label %bb.e, label %.loopexit

bb.e:                                             ; preds = %bb.d, %.split.i.i.i.peel, %.lr.ph.i
  %i.t = getelementptr inbounds nuw i8, ptr %.val, i64 %.promoted.i ; 4 uses
  %i.u = icmp samesign eq i64 %.promoted.i, %.val1
  br i1 %i.u, label %.loopexit19, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.v = load i8, ptr %i.t, align 1, !noalias !1225, !noundef !6 ; 5 uses
  %i.w = icmp sgt i8 %i.v, -1
  br i1 %i.w, label %bb.g, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel: ; preds = %bb.f
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.y = and i8 %i.v, 31
  %i.z = zext nneg i8 %i.y to i32                 ; 3 uses
  %i.aa = add nuw nsw i64 %.promoted.i, 1
  %i.ab = icmp samesign ne i64 %i.aa, %.val1
  tail call void @llvm.assume(i1 %i.ab)
  %i.ac = load i8, ptr %i.x, align 1, !noalias !1225, !noundef !6
  %i.ad = shl nuw nsw i32 %i.z, 6
  %i.ae = and i8 %i.ac, 63
  %i.af = zext nneg i8 %i.ae to i32               ; 2 uses
  %i.ag = or disjoint i32 %i.ad, %i.af
  %i.ah = icmp samesign ugt i8 %i.v, -33
  br i1 %i.ah, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel
  %i.ai = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.aj = add nuw nsw i64 %.promoted.i, 2
  %i.ak = icmp samesign ne i64 %i.aj, %.val1
  tail call void @llvm.assume(i1 %i.ak)
  %i.al = load i8, ptr %i.ai, align 1, !noalias !1225, !noundef !6
  %i.am = shl nuw nsw i32 %i.af, 6
  %i.an = and i8 %i.al, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao            ; 2 uses
  %i.aq = shl nuw nsw i32 %i.z, 12
  %i.ar = or disjoint i32 %i.ap, %i.aq
  %i.as = icmp samesign ugt i8 %i.v, -17
  br i1 %i.as, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel, label %bb.h

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel
  %i.at = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.au = add nuw nsw i64 %.promoted.i, 3
  %i.av = icmp samesign ne i64 %i.au, %.val1
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.at, align 1, !noalias !1225, !noundef !6
  %i.ax = shl nuw nsw i32 %i.z, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.ap, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.h

bb.g:                                             ; preds = %bb.f
  %i.be = zext nneg i8 %i.v to i32
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel
  %.sroa.4.0.i.ph.i.i.peel = phi i32 [ %i.ar, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i.peel ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i.peel ], [ %i.ag, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i.peel ], [ %i.be, %bb.g ] ; 4 uses
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 1114112
  tail call void @llvm.assume(i1 %i.bf)
  br i1 %i.n, label %.sink.split, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 128
  br i1 %i.bg, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 2048
  br i1 %i.bh, label %bb.m, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bi = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.peel, 65536
  %..i.i.peel = select i1 %i.bi, i64 3, i64 4
  br label %bb.m

bb.l:                                             ; preds = %bb.b
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.bk = load i64, ptr %i.bj, align 8, !alias.scope !1220, !noundef !6
  %i.bl = icmp eq i64 %i.bk, -1
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bn = load ptr, ptr %i.bm, align 8, !alias.scope !1220, !nonnull !6, !noundef !6 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !1220, !noundef !6 ; 2 uses
  br i1 %i.bl, label %bb.t, label %bb.u

bb.m:                                             ; preds = %bb.i, %bb.j, %bb.k
  %.sroa.01.0.i.i.peel = phi i64 [ 2, %bb.j ], [ %..i.i.peel, %bb.k ], [ 1, %bb.i ]
  %i.bq = add i64 %.sroa.01.0.i.i.peel, %.promoted.i ; 16 uses
  store i64 %i.bq, ptr %i.i, align 8, !alias.scope !1226
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1227)
  %i.br = icmp eq i64 %i.bq, 0
  br i1 %i.br, label %bb.p, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.not.i.i.i = icmp ult i64 %i.bq, %.val1
  br i1 %.not.i.i.i, label %bb.o, label %.split.i.i.i

.split.i.i.i:                                     ; preds = %bb.n
  %i.bs = icmp eq i64 %i.bq, %.val1
  br i1 %i.bs, label %bb.p, label %.loopexit

bb.o:                                             ; preds = %bb.n
  %i.bt = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.bu = load i8, ptr %i.bt, align 1, !alias.scope !1223, !noalias !1228, !noundef !6
  %i.bv = icmp sgt i8 %i.bu, -65
  br i1 %i.bv, label %bb.p, label %.loopexit

bb.p:                                             ; preds = %bb.o, %.split.i.i.i, %bb.m
  %i.bw = icmp samesign eq i64 %i.bq, %.val1
  br i1 %i.bw, label %.sink.split, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bx = getelementptr inbounds nuw i8, ptr %.val, i64 %i.bq
  %i.by = load i8, ptr %i.bx, align 1, !noalias !1229, !noundef !6 ; 3 uses
  %i.bz = icmp sgt i8 %i.by, -1
  br i1 %i.bz, label %.sink.split, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i: ; preds = %bb.q
  %i.ca = add nuw nsw i64 %i.bq, 1
  %i.cb = icmp samesign ne i64 %i.ca, %.val1
  tail call void @llvm.assume(i1 %i.cb)
  %i.cc = icmp samesign ugt i8 %i.by, -33
  br i1 %i.cc, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i
  %i.cd = add nuw nsw i64 %i.bq, 2
  %i.ce = icmp samesign ne i64 %i.cd, %.val1
  tail call void @llvm.assume(i1 %i.ce)
  %i.cf = icmp samesign ugt i8 %i.by, -17
  br i1 %i.cf, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i, label %.sink.split

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i
  %i.cg = add nuw nsw i64 %i.bq, 3
  %i.ch = icmp samesign ne i64 %i.cg, %.val1
  tail call void @llvm.assume(i1 %i.ch)
  br label %.sink.split

.loopexit:                                        ; preds = %bb.o, %.split.i.i.i, %bb.d, %.split.i.i.i.peel
  %.lcssa15 = phi i8 [ %.promoted26.i, %.split.i.i.i.peel ], [ %.promoted26.i, %bb.d ], [ 1, %.split.i.i.i ], [ 1, %bb.o ]
  %.lcssa12 = phi i64 [ %.promoted.i, %.split.i.i.i.peel ], [ %.promoted.i, %bb.d ], [ %i.bq, %.split.i.i.i ], [ %i.bq, %bb.o ]
  %i.ci = xor i8 %.lcssa15, 1
  store i8 %i.ci, ptr %i.m, align 8, !alias.scope !1221
  tail call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, i64 noundef %.lcssa12, i64 noundef %.val1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @174) #22, !noalias !1228
  unreachable

.loopexit19:                                      ; preds = %bb.e
  %i.cj = xor i8 %.promoted26.i, 1
  store i8 %i.cj, ptr %i.m, align 8, !alias.scope !1221
  br i1 %i.n, label %bb.s, label %bb.r

bb.r:                                             ; preds = %.loopexit19
  store i8 1, ptr %i.j, align 2, !alias.scope !1221
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

.sink.split:                                      ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i, %bb.q, %bb.h, %bb.p
  %.ph = phi i64 [ %.val1, %bb.p ], [ %.promoted.i, %bb.h ], [ %i.bq, %bb.q ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit12.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit14.i.i.i ], [ %i.bq, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs1ElB0qm0ygX_13influxdb3_wal.exit16.i.i.i ]
  store i8 0, ptr %i.m, align 8, !alias.scope !1221
  br label %bb.s

bb.s:                                             ; preds = %.sink.split, %.loopexit19
  %1 = phi i64 [ %.val1, %.loopexit19 ], [ %.ph, %.sink.split ] ; 2 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %1, ptr %i.ck, align 8, !alias.scope !1219
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %1, ptr %i.cl, align 8, !alias.scope !1219
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i: ; preds = %bb.s, %bb.r, %.preheader.i
  %storemerge.i = phi i64 [ 1, %bb.s ], [ 0, %bb.r ], [ 0, %.preheader.i ]
  store i64 %storemerge.i, ptr %i.a, align 8, !alias.scope !1219
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.t:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext true)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

bb.u:                                             ; preds = %bb.l
  call fastcc void @_RINvMsx_NtNtCs4NRVxsYgnAr_4core3str7patternNtB6_14TwoWaySearcher4nextNtB6_9MatchOnlyECs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef align 8 dereferenceable(64) %i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.val, i64 noundef %.val1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.bn, i64 noundef %i.bp, i1 noundef zeroext false)
  br label %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit

_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit: ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher4next.exit.thread7.i, %bb.t, %bb.u
  %i.cm = load i64, ptr %i.a, align 8, !range !10, !noundef !6
  %i.cn = trunc nuw i64 %i.cm to i1
  br i1 %i.cn, label %bb.v, label %bb.w

bb.v:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cp = load i64, ptr %i.co, align 8, !noundef !6
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = load i64, ptr %i.cq, align 8, !noundef !6
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.ct = load i64, ptr %i.cs, align 8, !noundef !6 ; 2 uses
  %i.cu = sub nuw i64 %i.cp, %i.ct
  %i.cv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.ct
  store i64 %i.cr, ptr %i.cs, align 8
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit

bb.w:                                             ; preds = %_RNvXsv_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcherNtB5_8Searcher10next_match.exit
  %i.cw = load i8, ptr %i.b, align 1, !range !18, !alias.scope !1230, !noundef !6
  %i.cx = trunc nuw i8 %i.cw to i1
  br i1 %i.cx, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  store i8 1, ptr %i.b, align 1, !alias.scope !1230
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.cz = load i8, ptr %i.cy, align 8, !range !18, !alias.scope !1230, !noundef !6
  %i.da = trunc nuw i8 %i.cz to i1
  br i1 %i.da, label %._crit_edge.i, label %bb.y

._crit_edge.i:                                    ; preds = %bb.x
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1230
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !1230
  br label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.dc = load i64, ptr %i.db, align 8, !alias.scope !1230, !noundef !6 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.de = load i64, ptr %i.dd, align 8, !alias.scope !1230, !noundef !6 ; 2 uses
  %.not.i = icmp eq i64 %i.dc, %i.de
  br i1 %.not.i, label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit, label %bb.z

bb.z:                                             ; preds = %bb.y, %._crit_edge.i
  %i.df = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.dc, %bb.y ]
  %i.dg = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.de, %bb.y ] ; 2 uses
  %.val.i = load ptr, ptr %i.e, align 8, !alias.scope !1230, !nonnull !6, !noundef !6
  %i.dh = sub nuw i64 %i.df, %i.dg
  %i.di = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.dg
  br label %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit

_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit: ; preds = %bb.z, %bb.y, %bb.w, %bb.v
  %.sroa.4.0 = phi i64 [ %i.cu, %bb.v ], [ %i.dh, %bb.z ], [ undef, %bb.y ], [ undef, %bb.w ]
  %.sroa.0.0 = phi ptr [ %i.cv, %bb.v ], [ %i.di, %bb.z ], [ null, %bb.y ], [ null, %bb.w ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.aa

bb.aa:                                            ; preds = %bb.a, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit
  %.sroa.4.1 = phi i64 [ %.sroa.4.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit ], [ undef, %bb.a ]
  %.sroa.0.1 = phi ptr [ %.sroa.0.0, %_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE7get_endCs1ElB0qm0ygX_13influxdb3_wal.exit ], [ null, %bb.a ]
  %i.dj = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.dk = insertvalue { ptr, i64 } %i.dj, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.dk
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvNtCs1ElB0qm0ygX_13influxdb3_wal12object_store19oldest_wal_file_num(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %0, i64 noundef range(i64 0, 384307168202282326) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 9 uses
  %i.g = alloca [32 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 8 uses
  %i.n = alloca [128 x i8], align 8               ; 10 uses
  %i.o = alloca [128 x i8], align 8               ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %i.q = alloca [16 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.r = tail call { ptr, i64 } @_RNvMNtCs1LivM9IBWqb_12object_store4pathNtB2_4Path8filename(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %0) ; 2 uses
  %i.s = extractvalue { ptr, i64 } %i.r, 0        ; 3 uses
  %.not49 = icmp eq ptr %i.s, null
  br i1 %.not49, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.t = extractvalue { ptr, i64 } %i.r, 1        ; 3 uses
  store ptr %i.s, ptr %i.q, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 %i.t, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.n, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.s, i64 noundef %i.t, ptr noalias noundef nonnull readonly captures(address, read_provenance) @73, i64 noundef 1)
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 104
  store i64 0, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.530.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 112
  store i64 %i.t, ptr %.sroa.530.0..sroa_idx, align 8
  %.sroa.631.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 120
  store i8 1, ptr %.sroa.631.0..sroa_idx, align 8
  %.sroa.732.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 121
  store i8 0, ptr %.sroa.732.0..sroa_idx, align 1
  %i.v = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.n) ; 2 uses
  %i.w = extractvalue { ptr, i64 } %i.v, 0        ; 2 uses
  %.not1.i = icmp eq ptr %i.w, null
  br i1 %.not1.i, label %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldINtNtBa_6option6OptionBI_EINvNvBL_4last4someBI_EECs1ElB0qm0ygX_13influxdb3_wal.exit.thread, label %.lr.ph.i

_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldINtNtBa_6option6OptionBI_EINvNvBL_4last4someBI_EECs1ElB0qm0ygX_13influxdb3_wal.exit.thread: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.e

.lr.ph.i:                                         ; preds = %bb.c, %.lr.ph.i
  %i.x = phi ptr [ %i.aa, %.lr.ph.i ], [ %i.w, %bb.c ]
  %i.y = phi { ptr, i64 } [ %i.z, %.lr.ph.i ], [ %i.v, %bb.c ]
  %i.z = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef nonnull align 8 dereferenceable(128) %i.n) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0       ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %bb.d, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph.i
  %i.ab = extractvalue { ptr, i64 } %i.y, 1       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @_RNvMsu_NtNtCs4NRVxsYgnAr_4core3str7patternNtB5_11StrSearcher3new(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.o, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.x, i64 noundef %i.ab, ptr noalias noundef nonnull readonly captures(address, read_provenance) @74, i64 noundef 4)
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store i64 0, ptr %.sroa.434.0..sroa_idx, align 8
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 %i.ab, ptr %.sroa.535.0..sroa_idx, align 8
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i8 1, ptr %.sroa.636.0..sroa_idx, align 8
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 121
  store i8 0, ptr %.sroa.737.0..sroa_idx, align 1
  %i.ac = call fastcc { ptr, i64 } @_RNvMsf_NtNtCs4NRVxsYgnAr_4core3str4iterINtB5_13SplitInternalReE4nextCs1ElB0qm0ygX_13influxdb3_wal(ptr noalias noundef align 8 dereferenceable(128) %i.o) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 3 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 2 uses
  %.not51 = icmp eq ptr %i.ad, null
  br i1 %.not51, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_RINvYINtNtNtCs4NRVxsYgnAr_4core3str4iter5SplitReENtNtNtNtBa_4iter6traits8iterator8Iterator4foldINtNtBa_6option6OptionBI_EINvNvBL_4last4someBI_EECs1ElB0qm0ygX_13influxdb3_wal.exit.thread, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %.sink.split

bb.f:                                             ; preds = %bb.d
  store ptr %i.ad, ptr %i.p, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store i64 %i.ae, ptr %i.af, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.ag = load atomic i64, ptr @_RNvNtCs4BfJs7E7SEE_12tracing_core8metadata9MAX_LEVEL monotonic, align 8
  %i.ah = icmp ult i64 %i.ag, 2
  br i1 %i.ah, label %bb.h, label %bb.q

.sink.split:                                      ; preds = %bb.p, %bb.e
  %.sroa.7.3.ph = phi i64 [ undef, %bb.e ], [ %.sroa.7.4, %bb.p ]
  %.sroa.0.3.ph = phi i64 [ 0, %bb.e ], [ %.sroa.0.4, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br label %bb.g

bb.g:                                             ; preds = %.sink.split, %bb.a, %bb.b
  %.sroa.7.3 = phi i64 [ undef, %bb.a ], [ undef, %bb.b ], [ %.sroa.7.3.ph, %.sink.split ]
  %.sroa.0.3 = phi i64 [ 0, %bb.a ], [ 0, %bb.b ], [ %.sroa.0.3.ph, %.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  %i.ai = insertvalue { i64, i64 } poison, i64 %.sroa.0.3, 0
  %i.aj = insertvalue { i64, i64 } %i.ai, i64 %.sroa.7.3, 1
  ret { i64, i64 } %i.aj

bb.h:                                             ; preds = %bb.f
  %i.ak = load atomic i8, ptr getelementptr inbounds nuw (i8, ptr @_RNvNvNtCs1ElB0qm0ygX_13influxdb3_wal12object_store19oldest_wal_file_num10___CALLSITE, i64 16) monotonic, align 8 ; 3 uses
  switch i8 %i.ak, label %bb.i [
    i8 0, label %bb.q
    i8 1, label %bb.j
    i8 2, label %bb.j
end_hunk_0
