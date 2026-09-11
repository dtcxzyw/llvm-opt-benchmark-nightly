Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.0?download=true
inline.NumInlined: 237
inline.NumDeleted: 127
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE8try_growBX_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !267
  %i.ac = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.c) ; 2 uses
  %i.ad = extractvalue { ptr, i64 } %i.ac, 0      ; 5 uses
  %i.ae = extractvalue { ptr, i64 } %i.ac, 1      ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.ad, ptr %i.e, align 8
  store i64 %i.ae, ptr %i.g, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.ag = trunc nuw i64 %1 to i16
  %i.ah = add i16 %i.ag, -1                       ; 3 uses
  store i16 %i.ah, ptr %i.af, align 8
  %i.ai = icmp ugt i64 %.sroa.02.0, %i.h
  br i1 %i.ai, label %bb.j, label %bb.i, !prof !15

bb.g:                                             ; preds = %bb.c
  %i.aj = getelementptr inbounds nuw i8, ptr %.sroa.0.051, i64 2
  %i.ak = load i16, ptr %i.aj, align 2, !noundef !5
  %i.al = and i16 %i.l, %i.ak
  %i.am = zext i16 %i.al to i64
  %i.an = sub nsw i64 %.sroa.7.050, %i.am
  %i.ao = and i64 %i.an, %i.m
  %i.ap = icmp eq i64 %i.ao, 0
  br i1 %i.ap, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCskspKcFIsYcD_12pingora_http.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.c
  %i.aq = icmp eq ptr %i.n, %i.i
  br i1 %i.aq, label %_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtNtCs84JG9zk80ZV_4http6header3map3PosEENtNtNtB8_6traits8iterator8Iterator4nextCskspKcFIsYcD_12pingora_http.exit.thread, label %bb.c

bb.i:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit
  %.idx58 = shl nuw nsw i64 %.sroa.02.0, 2
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 %.idx58 ; 2 uses
  %i.as = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %i.h
  %i.at = icmp samesign eq i64 %.sroa.02.0, %i.h
  br i1 %i.at, label %.preheader, label %.lr.ph55

bb.j:                                             ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit
  invoke void @_RNvNtNtCskKLDkoKarTP_4core5slice5index16slice_index_fail(i64 noundef %.sroa.02.0, i64 noundef %i.h, i64 noundef %i.h, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @19) #24
          to label %bb.w unwind label %bb.p

.preheader:                                       ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit, %bb.i
  %i.au = icmp eq i64 %.sroa.02.0, 0
  br i1 %i.au, label %._crit_edge, label %.lr.ph57

.lr.ph55:                                         ; preds = %bb.i, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit
  %.sroa.013.054 = phi ptr [ %i.bh, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit ], [ %i.ar, %bb.i ] ; 3 uses
  %i.av = load i16, ptr %.sroa.013.054, align 2, !noundef !5 ; 2 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.013.054, i64 2
  %i.ax = load i16, ptr %i.aw, align 2, !noundef !5 ; 2 uses
  %.not.i = icmp eq i16 %i.av, -1
  br i1 %.not.i, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit, label %bb.k

bb.k:                                             ; preds = %.lr.ph55
  %i.ay = and i16 %i.ax, %i.ah
  %i.az = zext i16 %i.ay to i64
  br label %bb.l

bb.l:                                             ; preds = %.backedge66, %bb.k
  %.sroa.01.0.i = phi i64 [ %i.az, %bb.k ], [ %.sroa.01.0.i.be, %.backedge66 ] ; 4 uses
  %i.ba = icmp ult i64 %.sroa.01.0.i, %i.ae
  br i1 %i.ba, label %bb.m, label %.backedge66

bb.m:                                             ; preds = %bb.l
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i
  %i.bc = load i16, ptr %i.bb, align 2, !noalias !268, !noundef !5
  %.not7.i = icmp eq i16 %i.bc, -1
  br i1 %.not7.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.bd = add nuw i64 %.sroa.01.0.i, 1
  br label %.backedge66

.backedge66:                                      ; preds = %bb.n, %bb.l
  %.sroa.01.0.i.be = phi i64 [ %i.bd, %bb.n ], [ 0, %bb.l ]
  br label %bb.l

bb.o:                                             ; preds = %bb.m
  %i.be = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i ; 2 uses
  store i16 %i.av, ptr %i.be, align 2, !noalias !268
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 2
  store i16 %i.ax, ptr %i.bf, align 2, !noalias !268
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit

bb.p:                                             ; preds = %._crit_edge, %bb.j
  %i.bg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.j, label %common.resume, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %bb.p
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.idx, i64 noundef 2) #22
  br label %common.resume

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit: ; preds = %bb.o, %.lr.ph55
  %i.bh = getelementptr inbounds nuw i8, ptr %.sroa.013.054, i64 4 ; 2 uses
  %i.bi = icmp eq ptr %i.bh, %i.as
  br i1 %i.bi, label %.preheader, label %.lr.ph55

.lr.ph57:                                         ; preds = %.preheader, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33
  %.sroa.016.056 = phi ptr [ %i.cb, %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33 ], [ %i.f, %.preheader ] ; 3 uses
  %i.bj = load i16, ptr %.sroa.016.056, align 2, !noundef !5 ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.016.056, i64 2
  %i.bl = load i16, ptr %i.bk, align 2, !noundef !5 ; 2 uses
  %.not.i29 = icmp eq i16 %i.bj, -1
  br i1 %.not.i29, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33, label %bb.q

bb.q:                                             ; preds = %.lr.ph57
  %i.bm = and i16 %i.ah, %i.bl
  %i.bn = zext i16 %i.bm to i64
  br label %bb.r

bb.r:                                             ; preds = %.backedge, %bb.q
  %.sroa.01.0.i30 = phi i64 [ %i.bn, %bb.q ], [ %.sroa.01.0.i30.be, %.backedge ] ; 4 uses
  %i.bo = icmp ult i64 %.sroa.01.0.i30, %i.ae
  br i1 %i.bo, label %bb.s, label %.backedge

bb.s:                                             ; preds = %bb.r
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30
  %i.bq = load i16, ptr %i.bp, align 2, !noalias !269, !noundef !5
  %.not7.i32 = icmp eq i16 %i.bq, -1
  br i1 %.not7.i32, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.br = add nuw i64 %.sroa.01.0.i30, 1
  br label %.backedge

.backedge:                                        ; preds = %bb.t, %bb.r
  %.sroa.01.0.i30.be = phi i64 [ %i.br, %bb.t ], [ 0, %bb.r ]
  br label %bb.r

bb.u:                                             ; preds = %bb.s
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ad, i64 %.sroa.01.0.i30 ; 2 uses
  store i16 %i.bj, ptr %i.bs, align 2, !noalias !269
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 2
  store i16 %i.bl, ptr %i.bt, align 2, !noalias !269
  br label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33

._crit_edge:                                      ; preds = %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33, %.preheader
  %i.bu = lshr i64 %i.ae, 2
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.bx = load i64, ptr %i.bw, align 8, !noundef !5 ; 3 uses
  %i.by = icmp ult i64 %i.bx, 96076792050570582
  call void @llvm.assume(i1 %i.by)
  %i.bz = add nuw nsw i64 %i.bx, %i.bu
  %i.ca = sub i64 %i.ae, %i.bz
  invoke void @_RNvMs2_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner13reserve_exactCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.bv, i64 noundef %i.bx, i64 noundef %i.ca, i64 noundef 8, i64 noundef 96)
          to label %bb.v unwind label %bb.p

_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23reinsert_entry_in_orderBX_.exit33: ; preds = %bb.u, %.lr.ph57
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.016.056, i64 4 ; 2 uses
  %i.cc = icmp eq ptr %i.cb, %i.ar
  br i1 %i.cc, label %._crit_edge, label %.lr.ph57

bb.v:                                             ; preds = %._crit_edge
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34: ; preds = %bb.v
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %.idx, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit35: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i34, %bb.v, %bb.a
  ret i1 %i.d

bb.w:                                             ; preds = %bb.j
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap11try_reserveCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 3 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = add i64 %i.g, %1                         ; 4 uses
  %i.j = icmp ult i64 %i.i, %i.g
  br i1 %i.j, label %bb.q, label %bb.b, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.k = udiv i64 %i.i, 3
  %i.l = add i64 %i.k, %i.i                       ; 4 uses
  %i.m = icmp ult i64 %i.l, %i.i
  br i1 %i.m, label %bb.q, label %bb.c, !prof !15

bb.c:                                             ; preds = %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !5
  %i.q = icmp ugt i64 %i.l, %i.p
  br i1 %i.q, label %bb.d, label %bb.q

bb.d:                                             ; preds = %bb.c
  %i.r = icmp ult i64 %i.l, 2
  %i.s = add i64 %i.l, -1
  %i.t = tail call range(i64 0, 65) i64 @llvm.ctlz.i64(i64 %i.s, i1 true)
  %i.u = lshr i64 -1, %i.t
  %.sroa.022.0 = select i1 %i.r, i64 0, i64 %i.u  ; 3 uses
  %i.v = add nuw nsw i64 %.sroa.022.0, 1          ; 6 uses
  %or.cond = icmp ugt i64 %.sroa.022.0, 32767
  br i1 %or.cond, label %bb.q, label %bb.e, !prof !19

bb.e:                                             ; preds = %bb.d
  %i.w = icmp eq i64 %i.g, 0
  br i1 %i.w, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.x = tail call fastcc noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap8try_growCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(96) %0, i64 noundef %i.v) #23
  br label %bb.q

bb.g:                                             ; preds = %bb.e
  %i.y = trunc nuw i64 %i.v to i16
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aa = add i16 %i.y, -1
  store i16 %i.aa, ptr %i.z, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !272
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %i.v, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !272
  %i.ab = load i64, ptr %i.a, align 8, !range !13, !noalias !272, !noundef !5
  %i.ac = trunc nuw i64 %i.ab to i1
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !range !14, !noalias !272, !noundef !5 ; 3 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.ac, label %bb.h, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i, !prof !15

bb.h:                                             ; preds = %bb.g
  %i.ag = load i64, ptr %i.af, align 8, !noalias !272
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.ag) #24, !noalias !272
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i: ; preds = %bb.g
  %i.ah = load ptr, ptr %i.af, align 8, !noalias !272, !nonnull !5, !noundef !5
  %2 = icmp ult i64 %.sroa.022.0, %i.ae
  tail call void @llvm.assume(i1 %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !272
  store i64 %i.ae, ptr %i.b, align 8, !noalias !272
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ah, ptr %i.ai, align 8, !noalias !272
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.aj, align 8, !noalias !272
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.v, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit unwind label %bb.i, !noalias !272

bb.i:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.j, !noalias !272

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !272
  unreachable

common.resume:                                    ; preds = %bb.i, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ak, %bb.i ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !272
  %i.am = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.an = extractvalue { ptr, i64 } %i.am, 0
  %i.ao = extractvalue { ptr, i64 } %i.am, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %.val30 = load i64, ptr %i.o, align 8, !noundef !5 ; 2 uses
  %i.ap = icmp eq i64 %.val30, 0
  br i1 %i.ap, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit, label %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i

_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i: ; preds = %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit
  %.val = load ptr, ptr %i.n, align 8, !nonnull !5, !noundef !5
  %i.aq = shl nuw nsw i64 %.val30, 2
  call void @_RNvCsbkii2mvYdKU_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.aq, i64 noundef 2) #22
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit: ; preds = %_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocate.exit.i.i, %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit
  store ptr %i.an, ptr %i.n, align 8
  store i64 %i.ao, ptr %i.o, align 8
  %i.ar = lshr i64 %i.v, 2
  %i.as = sub nuw nsw i64 %i.v, %i.ar             ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %i.as, i1 noundef zeroext false, i64 noundef 8, i64 noundef 104)
  %i.at = load i64, ptr %i.c, align 8, !range !13, !noundef !5
  %i.au = trunc nuw i64 %i.at to i1
  %i.av = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.aw = load i64, ptr %i.av, align 8, !range !14, !noundef !5 ; 4 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.au, label %bb.k, label %bb.l, !prof !15

bb.k:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit
  %i.ay = load i64, ptr %i.ax, align 8
  call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.aw, i64 %i.ay) #24
  unreachable

bb.l:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc5boxed3BoxSNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http.exit
  %i.az = load ptr, ptr %i.ax, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ba = icmp samesign ule i64 %i.as, %i.aw
  call void @llvm.assume(i1 %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBK_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %bb.n unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.o

bb.n:                                             ; preds = %bb.l
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtBR_5value11HeaderValueEENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http.exit unwind label %bb.p

bb.o:                                             ; preds = %bb.m
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.m, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.bd, %bb.p ], [ %i.bb, %bb.m ]
  store i64 %i.aw, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx, align 8
  store i64 0, ptr %i.f, align 8
  br label %common.resume

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.n
  store i64 %i.aw, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx18 = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.az, ptr %.sroa.5.0..sroa_idx18, align 8
  store i64 0, ptr %i.f, align 8
  br label %bb.q

bb.q:                                             ; preds = %bb.f, %bb.d, %bb.c, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http.exit, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ %i.x, %bb.f ], [ true, %bb.a ], [ false, %bb.c ], [ true, %bb.d ], [ true, %bb.b ], [ false, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtB1d_5value11HeaderValueEEECskspKcFIsYcD_12pingora_http.exit ]
  ret i1 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(96) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !5 ; 4 uses
  %i.h = icmp ult i64 %i.g, 88686269585142076
  tail call void @llvm.assume(i1 %i.h)
  %i.i = load i64, ptr %0, align 8, !range !7, !noundef !5
  %i.j = icmp eq i64 %i.i, 1
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.l = load i64, ptr %i.k, align 8, !noundef !5 ; 5 uses
  br i1 %i.j, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.n = lshr i64 %i.l, 2
  %i.o = sub nuw i64 %i.l, %i.n
  %i.p = icmp eq i64 %i.g, %i.o
  br i1 %i.p, label %bb.d, label %_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap7rebuildCskspKcFIsYcD_12pingora_http.exit

bb.c:                                             ; preds = %bb.a
  %i.q = mul nuw nsw i64 %i.g, 5
  %.not = icmp ult i64 %i.q, %i.l
  br i1 %.not, label %bb.p, label %bb.q

bb.d:                                             ; preds = %bb.b
  %i.r = icmp eq i64 %i.g, 0
  br i1 %i.r, label %bb.e, label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i16 7, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !279
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !279
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 8, i1 noundef zeroext false, i64 noundef 2, i64 noundef 4), !noalias !279
  %i.t = load i64, ptr %i.a, align 8, !range !13, !noalias !279, !noundef !5
  %i.u = trunc nuw i64 %i.t to i1
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.w = load i64, ptr %i.v, align 8, !range !14, !noalias !279, !noundef !5 ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.u, label %bb.f, label %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i, !prof !15

bb.f:                                             ; preds = %bb.e
  %i.y = load i64, ptr %i.x, align 8, !noalias !279
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.w, i64 %i.y) #24, !noalias !279
  unreachable

_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i: ; preds = %bb.e
  %i.z = load ptr, ptr %i.x, align 8, !noalias !279, !nonnull !5, !noundef !5
  %i.aa = icmp ugt i64 %i.w, 7
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !279
  store i64 %i.w, ptr %i.b, align 8, !noalias !279
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.z, ptr %i.ab, align 8, !noalias !279
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.ac, align 8, !noalias !279
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE11extend_withCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef 8, i16 noundef -1, i16 noundef 0)
          to label %_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit unwind label %bb.g, !noalias !279

bb.g:                                             ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsexYYUdYSQU6_5alloc3vec3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosEECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef align 8 dereferenceable(24) %i.b) #20
          to label %common.resume unwind label %bb.h, !noalias !279

bb.h:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #21, !noalias !279
  unreachable

common.resume:                                    ; preds = %bb.g, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.ad, %bb.g ]
  resume { ptr, i32 } %common.resume.op

_RINvXNtNtCsexYYUdYSQU6_5alloc3vec14spec_from_elemNtNtNtCs84JG9zk80ZV_4http6header3map3PosNtB3_12SpecFromElem9from_elemNtNtB7_5alloc6GlobalECskspKcFIsYcD_12pingora_http.exit: ; preds = %_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCskspKcFIsYcD_12pingora_http.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !279
  %i.af = call { ptr, i64 } @_RNvMs_NtCsexYYUdYSQU6_5alloc3vecINtB4_3VecNtNtNtCs84JG9zk80ZV_4http6header3map3PosE16into_boxed_sliceCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.d) ; 2 uses
  %i.ag = extractvalue { ptr, i64 } %i.af, 0
  %i.ah = extractvalue { ptr, i64 } %i.af, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
end_hunk_0
