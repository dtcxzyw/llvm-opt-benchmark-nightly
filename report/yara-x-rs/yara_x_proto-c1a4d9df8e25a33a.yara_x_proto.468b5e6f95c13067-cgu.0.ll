Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/yara-x-rs/original/yara_x_proto-c1a4d9df8e25a33a.yara_x_proto.468b5e6f95c13067-cgu.0?download=true
inline.NumInlined: 57
inline.NumDeleted: 13
begin_hunk_0_@_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE4findNCINvNtB8_3map14equivalent_keyeBQ_BQ_E0ECs63vnYBEjbPn_12yara_x_proto:bb.a
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.j, i8 %i.o) #18
  %i.v = load <2 x i64>, ptr %i.j, align 16
  store <2 x i64> %i.u, ptr %i.h, align 16
  store <2 x i64> %i.v, ptr %i.g, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.i, ptr nonnull align 16 %i.h, ptr nonnull align 16 %i.g) #18
  %i.w = load <2 x i64>, ptr %i.i, align 16
  store <2 x i64> %i.w, ptr %i.f, align 16
  %i.x = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.f) #18
  %i.y = trunc i32 %i.x to i16
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.sroa.06.0.i = phi i16 [ %i.y, %bb.b ], [ %i.ac, %bb.d ] ; 4 uses
  %.not.i = icmp eq i16 %.sroa.06.0.i, 0
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.z = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i, i1 true)
  %i.aa = zext nneg i16 %i.z to i64
  %i.ab = add i16 %.sroa.06.0.i, -1
  %i.ac = and i16 %i.ab, %.sroa.06.0.i
  %i.ad = add i64 %.sroa.01.0.i, %i.aa
  %i.ae = load i64, ptr %i.p, align 8
  %i.af = and i64 %i.ae, %i.ad
  %i.ag = load ptr, ptr %0, align 8
  %i.ah = sub nsw i64 0, %i.af                    ; 2 uses
  %i.ai = getelementptr inbounds [48 x i8], ptr %i.ag, i64 %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ai, i64 -48
  %i.ak = call zeroext i1 @_RNCINvNtCsjqcU1oJFKXj_9hashbrown3map14equivalent_keyeNtNtCsexYYUdYSQU6_5alloc6string6StringBP_E0Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.l, ptr nonnull align 8 %i.aj) #18
  br i1 %i.ak, label %bb.g, label %bb.c

bb.e:                                             ; preds = %bb.c
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse213__mm_set1_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.e, i8 -1) #18
  %i.al = load <2 x i64>, ptr %i.e, align 16
  store <2 x i64> %i.u, ptr %i.c, align 16
  store <2 x i64> %i.al, ptr %i.b, align 16
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_cmpeq_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr nonnull align 16 %i.c, ptr nonnull align 16 %i.b) #18
  %i.am = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.am, ptr %i.a, align 16
  %i.an = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
  %i.ao = and i32 %i.an, 65535
  %i.ap = icmp eq i32 %i.ao, 0
  br i1 %i.ap, label %bb.f, label %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit

bb.f:                                             ; preds = %bb.e
  %i.aq = load i64, ptr %i.p, align 8
  %i.ar = add i64 %.sroa.7.0.i, 16                ; 2 uses
  %i.as = add i64 %.sroa.01.0.i, %i.ar
  %i.at = and i64 %i.aq, %i.as
  br label %bb.b

_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.au = load ptr, ptr %0, align 8
  %i.av = getelementptr inbounds [48 x i8], ptr %i.au, i64 %i.ah
  br label %bb.h

bb.h:                                             ; preds = %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit, %bb.g
  %.sroa.0.0 = phi ptr [ %i.av, %bb.g ], [ null, %_RNvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_13RawTableInner10find_inner.exit ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE7reserveNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, i64 %1, ptr align 8 %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp ugt i64 %1, %i.b
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = tail call { i64, i64 } @_RINvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBQ_EE14reserve_rehashNCINvNtB8_3map11make_hasherBQ_BQ_NtNtNtCsG258MDvU3F_3std4hash6random11RandomStateE0ECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %0, i64 %1, ptr align 8 %2, i1 zeroext true) #21 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringB1a_EECs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 5 uses
  %i.b = alloca [16 x i8], align 16               ; 5 uses
  %i.c = alloca [16 x i8], align 16               ; 4 uses
  %i.d = alloca [16 x i8], align 16               ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8
  %i.g = icmp eq i64 %i.f, 0
  br i1 %i.g, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = load ptr, ptr %0, align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.d, ptr %i.h) #18
  %i.i = load <2 x i64>, ptr %i.d, align 16
  store <2 x i64> %i.i, ptr %i.c, align 16
  %i.j = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.c) #18
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.k = load i64, ptr %i.e, align 8              ; 2 uses
  %i.l = icmp eq i64 %i.k, 0
  br i1 %i.l, label %.loopexit, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.n = trunc i32 %i.j to i16
  %i.o = xor i16 %i.n, -1
  br label %.lr.ph

.loopexit:                                        ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit, %bb.c, %bb.b, %bb.a
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.c
  %.sroa.05.019 = phi ptr [ %.sroa.05.229, %bb.c ], [ %i.h, %.lr.ph.preheader ] ; 3 uses
  %.sroa.4.018 = phi ptr [ %.sroa.4.228, %bb.c ], [ %i.m, %.lr.ph.preheader ] ; 2 uses
  %.sroa.10.sroa.1.017 = phi i64 [ %i.z, %bb.c ], [ %i.k, %.lr.ph.preheader ]
  %.sroa.76.016 = phi i16 [ %i.ab, %bb.c ], [ %i.o, %.lr.ph.preheader ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %.not8.i = icmp eq i16 %.sroa.76.016, 0
  br i1 %.not8.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit

.lr.ph.i:                                         ; preds = %.lr.ph, %.lr.ph.i
  %.sroa.4.1 = phi ptr [ %i.t, %.lr.ph.i ], [ %.sroa.4.018, %.lr.ph ] ; 2 uses
  %.sroa.05.1 = phi ptr [ %i.s, %.lr.ph.i ], [ %.sroa.05.019, %.lr.ph ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %.sroa.4.1) #18
  %i.p = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.p, ptr %i.a, align 16
  %i.q = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
  %i.r = trunc i32 %i.q to i16                    ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.sroa.05.1, i64 -768 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.1, i64 16 ; 2 uses
  %.not.i = icmp eq i16 %i.r, -1
  br i1 %.not.i, label %.lr.ph.i, label %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread: ; preds = %.lr.ph.i
  %i.u = xor i16 %i.r, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.c

_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not = icmp eq ptr %.sroa.05.019, null
  br i1 %.not, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit
  %.lcssa.i30 = phi i16 [ %i.u, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.76.016, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ] ; 3 uses
  %.sroa.05.229 = phi ptr [ %i.s, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.05.019, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ] ; 2 uses
  %.sroa.4.228 = phi ptr [ %i.t, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit.thread ], [ %.sroa.4.018, %_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto.exit ]
  %i.v = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i30, i1 true)
  %i.w = zext nneg i16 %i.v to i64
  %i.x = sub nsw i64 0, %i.w
  %i.y = getelementptr inbounds [48 x i8], ptr %.sroa.05.229, i64 %i.x
  %i.z = add i64 %.sroa.10.sroa.1.017, -1         ; 2 uses
  %i.aa = add i16 %.lcssa.i30, -1
  %i.ab = and i16 %i.aa, %.lcssa.i30
  %i.ac = getelementptr inbounds i8, ptr %i.y, i64 -48
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueTNtNtCsexYYUdYSQU6_5alloc6string6StringBC_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.ac)
  %i.ad = icmp eq i64 %i.z, 0
  br i1 %i.ad, label %.loopexit, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto(ptr nofree readonly align 8 captures(none) %0, ptr %1, i64 %2, i64 %3) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringB1a_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %0)
  %i.d = load i64, ptr %i.a, align 8              ; 2 uses
  %i.e = add i64 %i.d, 1                          ; 2 uses
  %i.f = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %2, i64 %i.e)
  %i.g = extractvalue { i64, i1 } %i.f, 1
  br i1 %i.g, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %4 = mul nuw i64 %i.e, %2                       ; 2 uses
  %i.h = add i64 %3, -1
  %i.i = add i64 %i.h, %4                         ; 2 uses
  %i.j = icmp ult i64 %i.i, %4
  br i1 %i.j, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.k = sub i64 0, %3
  %i.l = and i64 %i.i, %i.k                       ; 3 uses
  %i.m = add i64 %i.d, 17
  %i.n = add i64 %i.m, %i.l                       ; 3 uses
  %i.o = icmp ult i64 %i.n, %i.l
  br i1 %i.o, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = sub i64 -9223372036854775808, %3
  %i.q = icmp ugt i64 %i.n, %i.p
  br i1 %i.q, label %bb.f, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit

bb.f:                                             ; preds = %bb.e
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b, %bb.f
  %.sroa.8.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.l, %bb.e ]
  %.sroa.6.0 = phi i64 [ undef, %bb.d ], [ undef, %bb.b ], [ undef, %bb.c ], [ undef, %bb.f ], [ %i.n, %bb.e ]
  %.sroa.0.0 = phi i64 [ 0, %bb.d ], [ 0, %bb.b ], [ 0, %bb.c ], [ 0, %bb.f ], [ %3, %bb.e ]
  %i.r = load ptr, ptr %0, align 8
  %i.s = sub nsw i64 0, %.sroa.8.0
  %i.t = getelementptr inbounds i8, ptr %i.r, i64 %i.s
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs63vnYBEjbPn_12yara_x_proto(ptr %1, ptr %i.t, i64 %.sroa.0.0, i64 %.sroa.6.0) #18
  br label %bb.g

bb.g:                                             ; preds = %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define ptr @_RINvMsi_NtCsjqcU1oJFKXj_9hashbrown3rawINtB6_12RawIterRangeTNtNtCsexYYUdYSQU6_5alloc6string6StringBV_EE9next_implKb0_ECs63vnYBEjbPn_12yara_x_proto(ptr nofree align 8 captures(none) %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 2 uses
  %i.b = alloca [16 x i8], align 16               ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.d = load i16, ptr %i.c, align 8              ; 2 uses
  %.not8 = icmp eq i16 %i.d, 0
  br i1 %.not8, label %.lr.ph, label %.._crit_edge_crit_edge

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.pre11 = load ptr, ptr %0, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.pre = load ptr, ptr %i.e, align 8
  br label %bb.b

._crit_edge.loopexit:                             ; preds = %bb.b
  %i.f = getelementptr inbounds i8, ptr %i.s, i64 -768
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.._crit_edge_crit_edge
  %i.g = phi ptr [ %.pre11, %.._crit_edge_crit_edge ], [ %i.f, %._crit_edge.loopexit ]
  %.lcssa = phi i16 [ %i.d, %.._crit_edge_crit_edge ], [ %i.r, %._crit_edge.loopexit ] ; 3 uses
  %i.h = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa, i1 true)
  %i.i = zext nneg i16 %i.h to i64
  %i.j = add i16 %.lcssa, -1
  %i.k = and i16 %i.j, %.lcssa
  store i16 %i.k, ptr %i.c, align 8
  %i.l = sub nsw i64 0, %i.i
  %i.m = getelementptr inbounds [48 x i8], ptr %i.g, i64 %i.l
  ret ptr %i.m

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.n = phi ptr [ %.pre, %.lr.ph ], [ %i.v, %bb.b ]
  call void @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse214__mm_load_si128Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 16 %i.b, ptr %i.n) #18
  %i.o = load <2 x i64>, ptr %i.b, align 16
  store <2 x i64> %i.o, ptr %i.a, align 16
  %i.p = call i32 @_RNvNtNtNtCskKLDkoKarTP_4core9core_arch3x864sse217__mm_movemask_epi8Cs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 16 %i.a) #18
  %i.q = trunc i32 %i.p to i16                    ; 2 uses
  %i.r = xor i16 %i.q, -1                         ; 2 uses
  store i16 %i.r, ptr %i.c, align 8
  %i.s = load ptr, ptr %0, align 8                ; 2 uses
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -768
  store ptr %i.t, ptr %0, align 8
  %i.u = load ptr, ptr %i.e, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 16 ; 2 uses
  store ptr %i.v, ptr %i.e, align 8
  %.not = icmp eq i16 %i.q, -1
  br i1 %.not, label %bb.b, label %._crit_edge.loopexit
}

; Function Attrs: inlinehint nonlazybind uwtable
define void @_RINvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalEBO_(ptr nofree writeonly sret([24 x i8]) align 8 captures(none) %0, ptr align 8 %1, i64 %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.024 = alloca [24 x i8], align 8          ; 2 uses
  %.sroa.427 = alloca [48 x i8], align 8          ; 2 uses
  %.sroa.528 = alloca [16 x i8], align 8          ; 2 uses
  %i.d = alloca [32 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = tail call { i64, ptr } @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7w4qHFuqA31_14iana_time_zone(i64 %2, i64 8, i64 96) #18 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0        ; 5 uses
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 2 uses
  store i64 %i.h, ptr %i.f, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.i, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  store i64 0, ptr %i.k, align 8
  store ptr %i.f, ptr %i.e, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 0, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw [96 x i8], ptr %1, i64 %2
  store ptr %1, ptr %i.d, align 8
  %.sroa.0.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.m, ptr %.sroa.0.sroa.2.0..sroa_idx, align 8
  %.sroa.0.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.0.sroa.3.0..sroa_idx, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.n = icmp eq i64 %i.h, 0
  br i1 %i.n, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.l
  %i.o = phi i64 [ %.pr, %bb.l ], [ %i.h, %bb.a ]
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.sroa.2.0..sroa_idx, align 8
  %i.q = invoke { i64, ptr } @_RNvXs_NtNtNtCskKLDkoKarTP_4core4iter8adapters9enumerateINtB4_9EnumerateINtNtNtBa_5slice4iter4IterNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageEENtNtNtB8_6traits8iterator8Iterator4nextB1B_(ptr nonnull align 8 %i.d)
          to label %bb.b unwind label %.loopexit  ; 2 uses

._crit_edge:                                      ; preds = %bb.b, %bb.l, %bb.a
  store i64 %2, ptr %i.k, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  ret void

.loopexit:                                        ; preds = %.lr.ph, %bb.d, %.noexc
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp:                               ; preds = %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %bb.e ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNvXNvMNtCsexYYUdYSQU6_5alloc5sliceSp9to_vec_inpNtBH_10ConvertVec6to_vec9DropGuardNtNtCs63vnYBEjbPn_12yara_x_proto9test_json10SubMessageNtNtBM_5alloc6GlobalEEB21_(ptr nonnull align 8 %i.e) #19
          to label %bb.n unwind label %bb.m

bb.b:                                             ; preds = %.lr.ph
  %i.r = extractvalue { i64, ptr } %i.q, 0        ; 4 uses
  %i.s = extractvalue { i64, ptr } %i.q, 1        ; 5 uses
  %.not = icmp eq ptr %i.s, null
  br i1 %.not, label %._crit_edge, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i64 %i.r, ptr %i.l, align 8
  %i.t = icmp ult i64 %i.r, %i.h
  br i1 %i.t, label %bb.d, label %bb.j

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %i.v = invoke { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_5clone5Clone5cloneCs2nizDKKJVD2_6chrono(ptr nonnull align 4 %i.u) #18
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %bb.d
  invoke void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr nonnull align 8 %i.s) #18
          to label %.noexc12 unwind label %.loopexit

.noexc12:                                         ; preds = %.noexc
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  invoke void @_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.w)
          to label %bb.g unwind label %bb.f

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn.i = phi { ptr, i32 } [ %i.z, %bb.h ], [ %i.x, %bb.f ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.c) #19
          to label %.body unwind label %bb.i

bb.f:                                             ; preds = %.noexc12
  %i.x = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.g:                                             ; preds = %.noexc12
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 80
  invoke void @_RNvXs3_NtCs5YNYYMCeUDn_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.y)
          to label %bb.l unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.b) #19
          to label %bb.e unwind label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.e
  %i.aa = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXsb_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4EnumNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull10descriptor:bb.a
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorEBH_(ptr nonnull align 8 %i.a) #19
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorEBH_(ptr nonnull align 8 %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4EnumNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull15enum_descriptor(ptr sret([24 x i8]) align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @_RINvMNtCs5YNYYMCeUDn_8protobuf4lazyINtB3_4LazyNtNtNtB5_7reflect5enums14EnumDescriptorE3getNCNvXsb_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB1y_4EnumNtNtB5_9enum_full8EnumFull15enum_descriptor0EB1A_(ptr nonnull align 8 @_RNvNvXsb_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB7_4EnumNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor)
  tail call void @_RNvXs9_NtNtCs5YNYYMCeUDn_8protobuf7reflect5enumsNtB5_14EnumDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr sret([24 x i8]) align 8 %0, ptr align 8 %i.a) #18
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsb_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nofree writeonly sret([32 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [32 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8
  %i.f = icmp eq i64 %i.e, 0
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  tail call void @_RNvXs5_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull %i.g) #18
  br i1 %i.f, label %bb.b, label %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE17new_uninitializedCs63vnYBEjbPn_12yara_x_proto.exit

_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE17new_uninitializedCs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.a
  %i.h = load i64, ptr %i.d, align 8
  %i.i = add i64 %i.h, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner17new_uninitializedNtNtCsexYYUdYSQU6_5alloc5alloc6GlobalECs5YNYYMCeUDn_8protobuf(ptr nonnull sret([32 x i8]) align 8 %i.b, ptr nonnull %i.a, i64 48, i64 16, i64 %i.i, i1 zeroext true)
  %i.j = load ptr, ptr %i.b, align 8              ; 2 uses
  %i.k = icmp eq ptr %i.j, null
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.417.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.417.0.copyload.i = load i64, ptr %.sroa.417.0..sroa_idx.i, align 8
  %.sroa.4.0 = select i1 %i.k, i64 undef, i64 %.sroa.417.0.copyload.i
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.m = load <2 x i64>, ptr %i.l, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.j, ptr %i.c, align 8
  store <2 x i64> %i.m, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %.sroa.4.0, ptr %.sroa.4.0..sroa_idx, align 8
  invoke void @_RNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE15clone_from_implCs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.c, ptr nonnull readonly align 8 %1)
          to label %_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtB5_13RawTableClone15clone_from_specCs63vnYBEjbPn_12yara_x_proto.exit unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) @86, i64 32, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE17new_uninitializedCs63vnYBEjbPn_12yara_x_proto.exit
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsjqcU1oJFKXj_9hashbrown3raw8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1i_EEECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.c) #19
          to label %bb.f unwind label %bb.e

_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtB5_13RawTableClone15clone_from_specCs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %_RNvMs6_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE17new_uninitializedCs63vnYBEjbPn_12yara_x_proto.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtB5_13RawTableClone15clone_from_specCs63vnYBEjbPn_12yara_x_proto.exit, %bb.b
  ret void

bb.e:                                             ; preds = %bb.c
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.f:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.n
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i8 @_RNvXsc_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_4EnumNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #6 {
bb.a:
  ret i8 1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsc_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtB5_13RawTableClone15clone_from_specCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, ptr nofree readonly align 8 captures(none) %1) unnamed_addr #2 {
bb.a:
  tail call void @_RNvMse_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EE15clone_from_implCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0, ptr align 8 %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i32 0, 256) i32 @_RNvXse_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf5enums4Enum5value(ptr nofree readonly captures(none) %0) unnamed_addr #8 {
bb.a:
  %i.a = load i8, ptr %0, align 1
  %i.b = zext i8 %i.a to i32
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define range(i8 0, 5) i8 @_RNvXse_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf5enums4Enum8from_i32(i32 %0) unnamed_addr #6 {
bb.a:
  %i.a = icmp ult i32 %0, 5
  %switch.cast = zext i32 %0 to i40
  %switch.shiftamt = shl nuw nsw i40 %switch.cast, 3
  %switch.downshift = lshr i40 17180000512, %switch.shiftamt
  %switch.masked = trunc i40 %switch.downshift to i8
  %.sroa.0.0 = select i1 %i.a, i8 %switch.masked, i8 0
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define range(i8 0, 5) i8 @_RNvXse_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf5enums4Enum8from_str(ptr %0, i64 %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr %0, i64 %1, ptr nonnull @87, i64 3) #18
  br i1 %i.a, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr %0, i64 %1, ptr nonnull @88, i64 3) #18
  br i1 %i.b, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = tail call zeroext i1 @_RNvXs_NtNtCskKLDkoKarTP_4core3str6traitseNtNtB8_3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr %0, i64 %1, ptr nonnull @89, i64 3) #18
  %. = select i1 %i.c, i8 4, i8 0
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c, %bb.a
  %.sroa.0.0 = phi i8 [ 2, %bb.b ], [ %., %bb.c ], [ 1, %bb.a ]
  ret i8 %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull10descriptor(ptr sret([32 x i8]) align 8 %0, ptr nofree readonly captures(none) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
switch.lookup:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i8, ptr %1, align 1
  %i.c = sext i8 %i.b to i64
  %i.d = getelementptr i8, ptr @switch.table._RNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull10descriptor, i64 %i.c
  %switch.gep = getelementptr i8, ptr %i.d, i64 -1
  %switch.load = load i8, ptr %switch.gep, align 1
  %switch.ext = zext i8 %switch.load to i64
  %i.e = tail call align 8 ptr @_RINvMNtCs5YNYYMCeUDn_8protobuf4lazyINtB3_4LazyNtNtNtB5_7reflect5enums14EnumDescriptorE3getNCNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB1y_5FlagsNtNtB5_9enum_full8EnumFull15enum_descriptor0EB1A_(ptr nonnull align 8 @_RNvNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB7_5FlagsNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor)
  call void @_RNvXs9_NtNtCs5YNYYMCeUDn_8protobuf7reflect5enumsNtB5_14EnumDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([24 x i8]) align 8 %i.a, ptr align 8 %i.e) #18
  invoke void @_RNvMs3_NtNtCs5YNYYMCeUDn_8protobuf7reflect5enumsNtB5_14EnumDescriptor14value_by_index(ptr sret([32 x i8]) align 8 %0, ptr nonnull align 8 %i.a, i64 %switch.ext)
          to label %bb.b unwind label %bb.a

bb.a:                                             ; preds = %switch.lookup
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorEBH_(ptr nonnull align 8 %i.a) #19
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %switch.lookup
  call void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs5YNYYMCeUDn_8protobuf7reflect5enums14EnumDescriptorEBH_(ptr nonnull align 8 %i.a)
  ret void

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.d:                                             ; preds = %bb.a
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull15enum_descriptor(ptr sret([24 x i8]) align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @_RINvMNtCs5YNYYMCeUDn_8protobuf4lazyINtB3_4LazyNtNtNtB5_7reflect5enums14EnumDescriptorE3getNCNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB1y_5FlagsNtNtB5_9enum_full8EnumFull15enum_descriptor0EB1A_(ptr nonnull align 8 @_RNvNvXsf_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB7_5FlagsNtNtCs5YNYYMCeUDn_8protobuf9enum_full8EnumFull15enum_descriptor10descriptor)
  tail call void @_RNvXs9_NtNtCs5YNYYMCeUDn_8protobuf7reflect5enumsNtB5_14EnumDescriptorNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr sret([24 x i8]) align 8 %0, ptr align 8 %i.a) #18
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef i8 @_RNvXsg_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_5FlagsNtNtCskKLDkoKarTP_4core7default7Default7default() unnamed_addr #6 {
bb.a:
  ret i8 1
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXsg_NtCsjqcU1oJFKXj_9hashbrown3rawINtB5_8RawTableTNtNtCsexYYUdYSQU6_5alloc6string6StringBP_EENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCs63vnYBEjbPn_12yara_x_proto(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner13drop_elementsTNtNtCsexYYUdYSQU6_5alloc6string6StringB1a_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull readonly align 8 %0)
  %i.e = load i64, ptr %i.b, align 8              ; 2 uses
  %i.f = add i64 %i.e, 1                          ; 2 uses
  %1 = icmp ugt i64 %i.f, 384307168202282325
  br i1 %1, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %2 = mul nuw i64 %i.f, 48                       ; 3 uses
  %i.g = add nsw i64 %i.e, 17
  %i.h = add i64 %i.g, %2                         ; 3 uses
  %i.i = icmp ult i64 %i.h, %2
  br i1 %i.i, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.j = icmp ugt i64 %i.h, 9223372036854775792
  br i1 %i.j, label %bb.e, label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i

bb.e:                                             ; preds = %bb.d
  br label %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i

_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.8.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %2, %bb.d ], [ undef, %bb.e ]
  %.sroa.6.0.i = phi i64 [ undef, %bb.c ], [ undef, %bb.b ], [ %i.h, %bb.d ], [ undef, %bb.e ]
  %.sroa.0.0.i = phi i64 [ 0, %bb.c ], [ 0, %bb.b ], [ 16, %bb.d ], [ 0, %bb.e ]
  %i.k = load ptr, ptr %0, align 8
  %i.l = sub nsw i64 0, %.sroa.8.0.i
  %i.m = getelementptr inbounds i8, ptr %i.k, i64 %i.l
  tail call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc5allocNtB5_6GlobalNtNtCskKLDkoKarTP_4core5alloc9Allocator10deallocateCs63vnYBEjbPn_12yara_x_proto(ptr nonnull %i.a, ptr %i.m, i64 %.sroa.0.0.i, i64 %.sroa.6.0.i) #18
  br label %_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit

_RINvMsa_NtCsjqcU1oJFKXj_9hashbrown3rawNtB6_13RawTableInner16drop_inner_tableTNtNtCsexYYUdYSQU6_5alloc6string6StringB1d_ENtNtB1h_5alloc6GlobalECs63vnYBEjbPn_12yara_x_proto.exit: ; preds = %bb.a, %_RNvMs1_NtCsjqcU1oJFKXj_9hashbrown3rawNtB5_11TableLayout20calculate_layout_forCs63vnYBEjbPn_12yara_x_proto.exit.i
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsj_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqB7_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = tail call zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_3cmp9PartialEq2eqCs2nizDKKJVD2_6chrono(ptr nonnull align 4 %i.a, ptr nonnull align 4 %i.b) #18
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.d = tail call zeroext i1 @_RNvXsf_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_3cmp9PartialEq2eqCsgMsMfCCMJGj_16protobuf_support(ptr align 8 %0, ptr align 8 %1) #18
  br i1 %i.d, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.g = tail call zeroext i1 @_RNvXs4_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.e, ptr nonnull align 8 %i.f)
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.j = tail call zeroext i1 @_RNvXs2_NtCs5YNYYMCeUDn_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eqCs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.h, ptr nonnull align 8 %i.i) #18
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0 = phi i1 [ %i.j, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsk_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = tail call { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_5clone5Clone5cloneCs2nizDKKJVD2_6chrono(ptr nonnull align 4 %i.d) #18 ; 2 uses
  call void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.c, ptr align 8 %1) #18
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 32
  invoke void @_RNvXs3_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([48 x i8]) align 8 %i.b, ptr nonnull align 8 %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.c) #19
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 80
  invoke void @_RNvXs3_NtCs5YNYYMCeUDn_8protobuf7specialNtB5_13SpecialFieldsNtNtCskKLDkoKarTP_4core5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.h)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.b) #19
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.j = extractvalue { i32, i32 } %i.e, 1
  %i.k = extractvalue { i32, i32 } %i.e, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.k, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.j, ptr %i.m, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.n, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.o, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsl_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCskKLDkoKarTP_4core7default7Default7defaultB7_(ptr nofree writeonly sret([96 x i8]) align 8 captures(none) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 3 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = tail call { i32, i32 } @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_7default7Default7defaultCs2nizDKKJVD2_6chrono() #18 ; 2 uses
  call void @_RNvXs7_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_7default7Default7defaultCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.c) #18
  invoke void @_RNvXs7_NtNtNtCsG258MDvU3F_3std11collections4hash3mapINtB5_7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB12_ENtNtCskKLDkoKarTP_4core7default7Default7defaultCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([48 x i8]) align 8 %i.b)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.f, %bb.e ], [ %i.e, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.c) #19
          to label %bb.h unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  invoke void @_RNvXs_NtCs5YNYYMCeUDn_8protobuf7specialNtB4_13SpecialFieldsNtNtCskKLDkoKarTP_4core7default7Default7defaultCs63vnYBEjbPn_12yara_x_proto(ptr nonnull sret([16 x i8]) align 8 %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtNtCsG258MDvU3F_3std11collections4hash3map7HashMapNtNtCsexYYUdYSQU6_5alloc6string6StringB1v_EECs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 8 %i.b) #19
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = extractvalue { i32, i32 } %i.d, 1
  %i.h = extractvalue { i32, i32 } %i.d, 0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 %i.h, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 %i.g, ptr %i.j, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.k, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 80
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  ret void

bb.g:                                             ; preds = %bb.e, %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #20
  unreachable

bb.h:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden zeroext i1 @_RNvXsm_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_10SubMessageNtNtCskKLDkoKarTP_4core3fmt5Debug3fmtB7_(ptr align 8 %0, ptr align 8 %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %i.d, ptr %i.a, align 8
  %i.e = call zeroext i1 @_RNvMsa_NtCskKLDkoKarTP_4core3fmtNtB5_9Formatter26debug_struct_field4_finish(ptr align 8 %1, ptr nonnull @4, i64 10, ptr nonnull @15, i64 3, ptr nonnull %i.b, ptr nonnull align 8 @90, ptr nonnull @17, i64 3, ptr %0, ptr nonnull align 8 @91, ptr nonnull @29, i64 17, ptr nonnull %i.c, ptr nonnull align 8 @92, ptr nonnull @93, i64 14, ptr nonnull %i.a, ptr nonnull align 8 @94)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @_RNvXsp_NtCs63vnYBEjbPn_12yara_x_proto9test_jsonNtB5_7MessageNtNtCskKLDkoKarTP_4core5clone5Clone5cloneB7_(ptr nofree writeonly sret([160 x i8]) align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  %i.c = alloca [24 x i8], align 8                ; 3 uses
  %i.d = alloca [24 x i8], align 8                ; 3 uses
  %i.e = alloca [24 x i8], align 8                ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.g = tail call { i32, i32 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionlENtNtB7_5clone5Clone5cloneCs2nizDKKJVD2_6chrono(ptr nonnull align 4 %i.f) #18 ; 2 uses
  %i.h = tail call { i64, i64 } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionxENtNtB7_5clone5Clone5cloneCs2nizDKKJVD2_6chrono(ptr align 8 %1) #18 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringENtNtB7_5clone5Clone5cloneCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr nonnull align 8 %i.i) #18
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 64
  invoke void @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionINtNtCsexYYUdYSQU6_5alloc3vec3VechEENtNtB7_5clone5Clone5cloneCs5YNYYMCeUDn_8protobuf(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECs7w4qHFuqA31_14iana_time_zone(ptr nonnull align 8 %i.e) #19
          to label %bb.s unwind label %bb.r

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.m = invoke { i32, float } @_RNvXs4_NtCskKLDkoKarTP_4core6optionINtB5_6OptionfENtNtB7_5clone5Clone5cloneCs63vnYBEjbPn_12yara_x_proto(ptr nonnull align 4 %i.l)
          to label %bb.g unwind label %bb.f       ; 2 uses

bb.e:                                             ; preds = %bb.j, %bb.f
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.j ], [ %i.n, %bb.f ]
end_hunk_1
