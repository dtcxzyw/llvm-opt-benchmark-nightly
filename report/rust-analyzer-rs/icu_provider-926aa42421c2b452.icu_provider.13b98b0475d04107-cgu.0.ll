Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/icu_provider-926aa42421c2b452.icu_provider.13b98b0475d04107-cgu.0?download=true
inline.NumInlined: 133
inline.NumDeleted: 67
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvMs3_NtCs1GZEXNOm2AR_12icu_provider7requestNtB5_20DataMarkerAttributes17from_str_or_panic:bb.a
    i8 95, label %bb.b
  ]

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking9panic_fmt(ptr noundef nonnull @4, ptr noundef nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @6) #14
  unreachable

.loopexit:                                        ; preds = %bb.b, %bb.a
  %i.g = insertvalue { ptr, i64 } poison, ptr %0, 0
  %i.h = insertvalue { ptr, i64 } %i.g, i64 %1, 1
  ret { ptr, i64 } %i.h
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMs8_NtCs1GZEXNOm2AR_12icu_provider11marker_fullNtB5_12DataMarkerId9from_name(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly captures(none) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = add i64 %2, -1                           ; 3 uses
  %.not = icmp eq i64 %2, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %i.a
  %i.c = load i8, ptr %i.b, align 1, !noundef !5
  %i.d = add i8 %i.c, -48
  %or.cond = icmp ult i8 %i.d, 10
  br i1 %or.cond, label %.preheader, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.a, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @8) #14
  unreachable

bb.d:                                             ; preds = %bb.b
  store ptr @9, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 5, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.e:                                             ; preds = %bb.aa, %_RNvNtCs1GZEXNOm2AR_12icu_provider11marker_full9fxhash_32.exit, %bb.d
  ret void

.preheader:                                       ; preds = %bb.b, %bb.f
  %.sroa.0.0 = phi i64 [ %i.e, %bb.f ], [ %i.a, %bb.b ] ; 2 uses
  %i.e = add i64 %.sroa.0.0, -1                   ; 4 uses
  %i.f = icmp ult i64 %i.e, %2
  br i1 %i.f, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.e
  %i.h = load i8, ptr %i.g, align 1, !noundef !5  ; 2 uses
  %i.i = add i8 %i.h, -48
  %or.cond29 = icmp ult i8 %i.i, 10
  br i1 %or.cond29, label %.preheader, label %bb.h

bb.g:                                             ; preds = %.preheader
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @10) #14
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.j = icmp eq i8 %i.h, 86
  br i1 %i.j, label %bb.i, label %bb.aa

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  %i.k = icmp samesign ugt i64 %2, 3
  br i1 %i.k, label %.lr.ph.i.preheader, label %._crit_edge.i

.lr.ph.i.preheader:                               ; preds = %bb.i
  %i.l = and i64 %2, -4
  br label %.lr.ph.i

._crit_edge.i:                                    ; preds = %bb.y, %bb.i
  %.sroa.013.0.lcssa.i = phi i64 [ 0, %bb.i ], [ %i.l, %bb.y ] ; 6 uses
  %.sroa.0.0.lcssa.i = phi i32 [ 0, %bb.i ], [ %i.aw, %bb.y ] ; 3 uses
  %.lcssa.i = phi i64 [ %2, %bb.i ], [ %i.ay, %bb.y ]
  %i.m = icmp samesign ugt i64 %.lcssa.i, 1
  br i1 %i.m, label %bb.j, label %bb.k

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.y
  %.sroa.0.057.i = phi i32 [ %i.aw, %bb.y ], [ 0, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.013.056.i = phi i64 [ %i.ax, %bb.y ], [ 0, %.lr.ph.i.preheader ] ; 7 uses
  %i.n = icmp samesign ult i64 %.sroa.013.056.i, %2
  br i1 %i.n, label %bb.s, label %bb.t

bb.j:                                             ; preds = %._crit_edge.i
  %i.o = icmp ult i64 %.sroa.013.0.lcssa.i, %2
  br i1 %i.o, label %bb.l, label %bb.m

bb.k:                                             ; preds = %bb.n, %._crit_edge.i
  %.sroa.013.1.i = phi i64 [ %i.y, %bb.n ], [ %.sroa.013.0.lcssa.i, %._crit_edge.i ] ; 4 uses
  %.sroa.0.1.i = phi i32 [ %i.x, %bb.n ], [ %.sroa.0.0.lcssa.i, %._crit_edge.i ] ; 3 uses
  %.not.i = icmp eq i64 %2, %.sroa.013.1.i
  br i1 %.not.i, label %_RNvNtCs1GZEXNOm2AR_12icu_provider11marker_full9fxhash_32.exit, label %bb.p

bb.l:                                             ; preds = %bb.j
  %i.p = or disjoint i64 %.sroa.013.0.lcssa.i, 1  ; 3 uses
  %i.q = icmp ult i64 %i.p, %2
  br i1 %i.q, label %bb.n, label %bb.o

bb.m:                                             ; preds = %bb.j
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.013.0.lcssa.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @12) #14, !noalias !288
  unreachable

bb.n:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.0.lcssa.i
  %i.s = load i8, ptr %i.r, align 1, !alias.scope !288, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.p
  %i.u = load i8, ptr %i.t, align 1, !alias.scope !288, !noundef !5
  %.sroa.429.0.insert.ext.i = zext i8 %i.u to i32
  %.sroa.429.0.insert.shift.i = shl nuw nsw i32 %.sroa.429.0.insert.ext.i, 8
  %.sroa.028.0.insert.ext.i = zext i8 %i.s to i32
  %.sroa.028.0.insert.insert.i = or disjoint i32 %.sroa.429.0.insert.shift.i, %.sroa.028.0.insert.ext.i
  %i.v = tail call noundef i32 @llvm.fshl.i32(i32 %.sroa.0.0.lcssa.i, i32 %.sroa.0.0.lcssa.i, i32 5)
  %i.w = xor i32 %.sroa.028.0.insert.insert.i, %i.v
  %i.x = mul i32 %i.w, -1640531527
  %i.y = or disjoint i64 %.sroa.013.0.lcssa.i, 2
  br label %bb.k

bb.o:                                             ; preds = %bb.l
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.p, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @13) #14, !noalias !288
  unreachable

bb.p:                                             ; preds = %bb.k
  %i.z = icmp ult i64 %.sroa.013.1.i, %2
  br i1 %i.z, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.1.i
  %i.ab = load i8, ptr %i.aa, align 1, !alias.scope !288, !noundef !5
  %i.ac = zext i8 %i.ab to i32
  %i.ad = tail call noundef i32 @llvm.fshl.i32(i32 %.sroa.0.1.i, i32 %.sroa.0.1.i, i32 5)
  %i.ae = xor i32 %i.ad, %i.ac
  %i.af = mul i32 %i.ae, -1640531527
  br label %_RNvNtCs1GZEXNOm2AR_12icu_provider11marker_full9fxhash_32.exit

bb.r:                                             ; preds = %bb.p
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.013.1.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @14) #14, !noalias !288
  unreachable

bb.s:                                             ; preds = %.lr.ph.i
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.013.056.i
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !288, !noundef !5
  %i.ai = or disjoint i64 %.sroa.013.056.i, 1     ; 3 uses
  %i.aj = icmp samesign ult i64 %i.ai, %2
  br i1 %i.aj, label %bb.u, label %bb.v

bb.t:                                             ; preds = %.lr.ph.i
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %.sroa.013.056.i, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #14, !noalias !288
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 %i.ai
  %i.al = load i8, ptr %i.ak, align 1, !alias.scope !288, !noundef !5
  %i.am = or disjoint i64 %.sroa.013.056.i, 2     ; 3 uses
  %i.an = icmp samesign ult i64 %i.am, %2
  br i1 %i.an, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ai, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @16) #14, !noalias !288
  unreachable

bb.w:                                             ; preds = %bb.u
  %i.ao = or disjoint i64 %.sroa.013.056.i, 3     ; 3 uses
  %i.ap = icmp samesign ult i64 %i.ao, %2
  br i1 %i.ap, label %bb.y, label %bb.z

bb.x:                                             ; preds = %bb.u
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.am, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @17) #14, !noalias !288
  unreachable

bb.y:                                             ; preds = %bb.w
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %i.am
  %i.ar = load i8, ptr %i.aq, align 1, !alias.scope !288, !noundef !5
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 %i.ao
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !288, !noundef !5
  %.sroa.6.0.insert.ext.i = zext i8 %i.at to i32
  %.sroa.6.0.insert.shift.i = shl nuw i32 %.sroa.6.0.insert.ext.i, 24
  %.sroa.5.0.insert.ext.i = zext i8 %i.ar to i32
  %.sroa.5.0.insert.shift.i = shl nuw nsw i32 %.sroa.5.0.insert.ext.i, 16
  %.sroa.4.0.insert.ext.i = zext i8 %i.al to i32
  %.sroa.4.0.insert.shift.i = shl nuw nsw i32 %.sroa.4.0.insert.ext.i, 8
  %.sroa.027.0.insert.ext.i = zext i8 %i.ah to i32
  %.sroa.5.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.shift.i, %.sroa.027.0.insert.ext.i
  %.sroa.4.0.insert.insert.i = or disjoint i32 %.sroa.5.0.insert.insert.i, %.sroa.5.0.insert.shift.i
  %.sroa.027.0.insert.insert.i = or disjoint i32 %.sroa.4.0.insert.insert.i, %.sroa.6.0.insert.shift.i
  %i.au = tail call noundef i32 @llvm.fshl.i32(i32 %.sroa.0.057.i, i32 %.sroa.0.057.i, i32 5)
  %i.av = xor i32 %.sroa.027.0.insert.insert.i, %i.au
  %i.aw = mul i32 %i.av, -1640531527              ; 2 uses
  %i.ax = add nuw i64 %.sroa.013.056.i, 4         ; 2 uses
  %i.ay = sub nuw i64 %2, %i.ax                   ; 2 uses
  %i.az = icmp ugt i64 %i.ay, 3
  br i1 %i.az, label %.lr.ph.i, label %._crit_edge.i

bb.z:                                             ; preds = %bb.w
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking18panic_bounds_check(i64 noundef %i.ao, i64 noundef range(i64 0, -9223372036854775808) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @18) #14, !noalias !288
  unreachable

_RNvNtCs1GZEXNOm2AR_12icu_provider11marker_full9fxhash_32.exit: ; preds = %bb.k, %bb.q
  %.sroa.0.2.i = phi i32 [ %i.af, %bb.q ], [ %.sroa.0.1.i, %bb.k ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <4 x i8> <i8 116, i8 100, i8 109, i8 104>, ptr %3, align 8
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %.sroa.0.2.i, ptr %i.ba, align 4
  store ptr null, ptr %0, align 8
  br label %bb.e

bb.aa:                                            ; preds = %bb.h
  store ptr @11, ptr %0, align 8
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 1, ptr %.sroa.49.0..sroa_idx, align 8
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.0.0, ptr %.sroa.510.0..sroa_idx, align 8
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMsa_NtCs1GZEXNOm2AR_12icu_provider8responseINtB5_11DataPayloadNtNtB7_3buf12BufferMarkerE17from_yoked_buffer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !noundef !5 ; 2 uses
  %.not = icmp eq ptr %i.e, null
  %i.f = load ptr, ptr @_RNvNvNtCs6QFUeBF2qRm_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !291, !nonnull !5
  %spec.select.i = select i1 %.not, ptr %i.f, ptr %i.e
  store ptr %spec.select.i, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.47.0..sroa_idx, align 8
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.c, ptr %.sroa.58.0..sroa_idx, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, argmem: write, inaccessiblemem: none, target_mem: none) uwtable
define void @_RNvMsa_NtCs1GZEXNOm2AR_12icu_provider8responseINtB5_11DataPayloadNtNtB7_3buf12BufferMarkerE18from_static_buffer(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 24)) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr @_RNvNvNtCs6QFUeBF2qRm_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !295, !nonnull !5
  store ptr %i.a, ptr %0, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %.sroa.42.0..sroa_idx, align 8
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.53.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMsc_NtCs1GZEXNOm2AR_12icu_provider11marker_fullNtB5_14DataMarkerInfo11make_locale(ptr dead_on_unwind noalias nofree noundef writable sret([26 x i8]) align 1 captures(address) dereferenceable(26) %0, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(11) %1, ptr noalias nofree noundef readonly align 1 captures(none) dead_on_return dereferenceable(29) %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.b = load i8, ptr %i.a, align 1, !range !299, !noundef !5
  %i.c = icmp eq i8 %i.b, 2
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences32to_data_locale_language_priority(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(address) dereferenceable(26) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %2)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvMNtNtCs96xUavsWfLi_15icu_locale_core11preferences6localeNtB2_17LocalePreferences30to_data_locale_region_priority(ptr noalias nofree noundef nonnull sret([26 x i8]) align 1 captures(address) dereferenceable(26) %0, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(29) %2)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCs1GZEXNOm2AR_12icu_provider7requestNtB2_22DataIdentifierBorrowedNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [1 x i8], align 1                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i8 1, ptr %i.b, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %1, ptr %i.g, align 8
  %i.h = call noundef zeroext i1 @_RINvMs9_NtCs96xUavsWfLi_15icu_locale_core4dataNtB6_10DataLocale19for_each_subtag_strNtNtCshzWfHUSfYae_4core3fmt5ErrorNCINvXsd_B6_BI_NtCs8xIf8eOPprX_9writeable9Writeable8write_toNtB1m_9FormatterE0ECs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) dereferenceable(26) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br i1 %i.h, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.j = load i64, ptr %i.i, align 8, !noundef !5 ; 2 uses
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  store ptr %i.l, ptr %i.d, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.j, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.d, ptr %i.c, align 8
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @_RNvXs1i_NtCshzWfHUSfYae_4core3fmtReNtB6_7Display3fmtCs1GZEXNOm2AR_12icu_provider, ptr %.sroa.44.0..sroa_idx, align 8
  %i.n = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !5, !align !300, !noundef !5
  %i.q = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.n, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.p, ptr noundef nonnull @19, ptr noundef nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b, %bb.a
  %.sroa.0.0 = phi i1 [ %i.q, %bb.c ], [ true, %bb.a ], [ false, %bb.b ]
  ret i1 %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden void @_RNvXNvNtCshzWfHUSfYae_4core4hint20select_unpredictableINtB2_11DropOnPanicjENtNtNtB6_3ops4drop4Drop4dropCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(8) %0) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRAhj8_NtB6_5Debug3fmtCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 32 uses
  %i.b = alloca [16 x i8], align 8                ; 12 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !301
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter10debug_list(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !308
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %i.c, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.d = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.1.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.1.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.e = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.2.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.2.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.f = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.3.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.3.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.g = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.4.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.4.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.h = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.5.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.5.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.i = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.6.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 6
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.6.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.j = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %.sroa.0.05.i.ptr.7.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !309
  store ptr %.sroa.0.05.i.ptr.7.i.i, ptr %i.a, align 8, !noalias !309, !captures !312
  %i.k = call noundef nonnull align 8 ptr @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList5entry(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @3) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !309
  %i.l = call noundef zeroext i1 @_RNvMs6_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_9DebugList6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !301
  ret i1 %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRNtNtCs1GZEXNOm2AR_12icu_provider11marker_full14DataMarkerInfoNtB6_5Debug3fmtBA_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  tail call void @llvm.experimental.noalias.scope.decl(metadata !313)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !316
  store ptr %i.c, ptr %i.a, align 8, !noalias !316
  %.sroa.43.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @_RNvXst_NtCs1GZEXNOm2AR_12icu_provider11marker_fullNtB5_12DataMarkerIdNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i, align 8, !noalias !316
  %i.d = load ptr, ptr %1, align 8, !alias.scope !313, !noalias !318, !nonnull !5, !noundef !5
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !313, !noalias !318, !nonnull !5, !align !300, !noundef !5
  %i.g = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.f, ptr noundef nonnull @20, ptr noundef nonnull %i.a), !noalias !313
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !316
  ret i1 %i.g
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs1g_NtCshzWfHUSfYae_4core3fmtRhNtB6_5Debug3fmtCs1GZEXNOm2AR_12icu_provider(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5 ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i32, ptr %i.b, align 8, !alias.scope !319, !noalias !322, !noundef !5 ; 2 uses
  %i.d = and i32 %i.c, 33554432
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
end_hunk_0
