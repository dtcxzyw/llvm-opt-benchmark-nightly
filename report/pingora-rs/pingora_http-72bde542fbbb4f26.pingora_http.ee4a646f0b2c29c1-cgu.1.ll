Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pingora-rs/original/pingora_http-72bde542fbbb4f26.pingora_http.ee4a646f0b2c29c1-cgu.1?download=true
inline.NumInlined: 244
inline.NumDeleted: 119
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RNvMsc_CskspKcFIsYcD_12pingora_httpNtB5_14ResponseHeader17set_reason_phrase:bb.a
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.c = tail call { ptr, i64 } @_RNvMNtCs84JG9zk80ZV_4http6statusNtB2_10StatusCode16canonical_reason(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.b) ; 2 uses
  %i.d = extractvalue { ptr, i64 } %i.c, 0        ; 3 uses
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = extractvalue { ptr, i64 } %i.c, 1
  %.not29 = icmp ne ptr %i.d, null
  %i.f = icmp eq i64 %2, %i.e
  %or.cond = select i1 %.not29, i1 %i.f, i1 false
  br i1 %or.cond, label %bb.l, label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = icmp eq ptr %i.d, null
  br i1 %i.g, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.l, %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.i = load i64, ptr %i.h, align 8, !range !13, !alias.scope !358, !noundef !9
  %i.j = icmp eq i64 %i.i, -1
  br i1 %i.j, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i: ; preds = %bb.e
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit unwind label %bb.t

bb.h:                                             ; preds = %bb.o, %bb.p, %bb.c
  %.sroa.7.sroa.6.0 = phi i64 [ undef, %bb.c ], [ %2, %bb.p ], [ 0, %bb.o ] ; 2 uses
  %.sroa.7.sroa.0.0 = phi ptr [ undef, %bb.c ], [ %i.y, %bb.p ], [ %i.y, %bb.o ] ; 2 uses
  %.sroa.016.0 = phi i64 [ -1, %bb.c ], [ %i.v, %bb.p ], [ %i.v, %bb.o ] ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208 ; 6 uses
  %i.n = load i64, ptr %i.m, align 8, !range !13, !alias.scope !359, !noundef !9
  %i.o = icmp eq i64 %i.n, -1
  br i1 %i.o, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit37, label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i33 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body34 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i33: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit37 unwind label %bb.q

bb.l:                                             ; preds = %bb.b
  %bcmp = tail call i32 @bcmp(ptr nonnull %1, ptr nonnull %i.d, i64 %2)
  %i.r = icmp eq i32 %bcmp, 0
  br i1 %i.r, label %bb.d, label %bb.m

bb.m:                                             ; preds = %bb.b, %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs5_NtCsexYYUdYSQU6_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %2, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.s = load i64, ptr %i.a, align 8, !range !20, !noundef !9
  %i.t = trunc nuw i64 %i.s to i1
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.v = load i64, ptr %i.u, align 8, !range !21, !noundef !9 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.t, label %bb.n, label %bb.o, !prof !19

bb.n:                                             ; preds = %bb.m
  %i.x = load i64, ptr %i.w, align 8
  tail call void @_RNvNtCsexYYUdYSQU6_5alloc7raw_vec12handle_error(i64 noundef %i.v, i64 %i.x) #23
  unreachable

bb.o:                                             ; preds = %bb.m
  %i.y = load ptr, ptr %i.w, align 8, !nonnull !9, !noundef !9 ; 3 uses
  %i.z = icmp ule i64 %2, %i.v
  tail call void @llvm.assume(i1 %i.z)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not30 = icmp eq i64 %2, 0
  br i1 %.not30, label %bb.h, label %bb.p

bb.p:                                             ; preds = %bb.o
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.y, ptr nonnull align 1 %1, i64 %2, i1 false)
  br label %bb.h

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i33
  %i.aa = landingpad { ptr, i32 }
          cleanup
  br label %.body34

.body34:                                          ; preds = %bb.j, %bb.q
  %eh.lpad-body35 = phi { ptr, i32 } [ %i.aa, %bb.q ], [ %i.p, %bb.j ]
  store i64 %.sroa.016.0, ptr %i.m, align 8
  %.sroa.7.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx19, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx19.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx19.sroa_idx, align 8
  br label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit37: ; preds = %bb.h, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i33
  store i64 %.sroa.016.0, ptr %i.m, align 8
  %.sroa.7.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %0, i64 216
  store ptr %.sroa.7.sroa.0.0, ptr %.sroa.7.0..sroa_idx20, align 8
  %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx20.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 224
  store i64 %.sroa.7.sroa.6.0, ptr %.sroa.7.sroa.6.0..sroa.7.0..sroa_idx20.sroa_idx, align 8
  br label %bb.r

bb.r:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit37
  ret ptr null

bb.s:                                             ; preds = %.body, %.body34
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %eh.lpad-body35, %.body34 ]
  resume { ptr, i32 } %.pn

bb.t:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i
  %i.ab = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.f, %bb.t
  %eh.lpad-body = phi { ptr, i32 } [ %i.ab, %bb.t ], [ %i.k, %bb.f ]
  store i64 -1, ptr %i.h, align 8
  br label %bb.s

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsexYYUdYSQU6_5alloc6string6StringEECskspKcFIsYcD_12pingora_http.exit: ; preds = %bb.d, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECskspKcFIsYcD_12pingora_http.exit.i
  store i64 -1, ptr %i.h, align 8
  br label %bb.r
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvMsc_CskspKcFIsYcD_12pingora_httpNtB5_14ResponseHeader18set_content_length(ptr noalias nofree noundef align 8 dereferenceable(232) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i:
  %i.a = alloca [0 x i8], align 1                 ; 2 uses
  %i.b = alloca [96 x i8], align 8                ; 14 uses
  %i.c = alloca [96 x i8], align 8                ; 14 uses
  %i.d = alloca [104 x i8], align 8               ; 15 uses
  %i.e = alloca [104 x i8], align 8               ; 15 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.6.i.i = alloca [23 x i8], align 1        ; 4 uses
  %i.i = alloca [32 x i8], align 8                ; 19 uses
  %i.j = alloca [32 x i8], align 8                ; 15 uses
  %i.k = alloca [40 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 11 uses
  %i.m = alloca [32 x i8], align 8                ; 14 uses
  %i.n = alloca [32 x i8], align 8                ; 6 uses
  %i.o = alloca [24 x i8], align 8                ; 4 uses
  %i.p = alloca [40 x i8], align 8                ; 4 uses
  %i.q = alloca [40 x i8], align 8                ; 10 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !672)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !673
  call void @_RNvXsJ_NtNtCs84JG9zk80ZV_4http6header5valueNtB5_11HeaderValueINtNtCskKLDkoKarTP_4core7convert4FromjE4from(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.p, i64 noundef %1), !noalias !673
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !673
  store i16 13, ptr %i.o, align 8, !noalias !673
  call void @_RINvXs6_CsfsXztIhCltD_13pingora_errorINtNtCskKLDkoKarTP_4core6result6ResultNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValuezEINtB6_5OrErrB1b_zE11explain_errReNCINvMsc_CskspKcFIsYcD_12pingora_httpNtB2I_14ResponseHeader13insert_headerNtNtB1f_4name10HeaderNamejE0EB2I_(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.o), !noalias !674
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !673
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 32
  %i.s = load i8, ptr %i.r, align 8, !range !16, !noalias !673, !noundef !9 ; 2 uses
  %i.t = icmp eq i8 %i.s, 2
  %i.u = load ptr, ptr %i.q, align 8, !noalias !673 ; 18 uses
  br i1 %i.t, label %bb.a, label %bb.b

bb.a:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !673
  br label %_RINvMsc_CskspKcFIsYcD_12pingora_httpNtB6_14ResponseHeader13insert_headerNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNamejEB6_.exit

bb.b:                                             ; preds = %_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %.sroa.4.sroa.0.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !673 ; 10 uses
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %.sroa.4.sroa.4.0.copyload.i = load i64, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 10 uses
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.4.sroa.5.0.copyload.i = load ptr, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !noalias !673 ; 10 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.q, i64 33
  %.sroa.6.sroa.0.0.copyload.i = load i56, ptr %.sroa.6.0..sroa_idx.i, align 1, !noalias !673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !673
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 7 uses
  %i.w = load i64, ptr %i.v, align 8, !range !12, !alias.scope !672, !noundef !9
  %.not.i = icmp eq i64 %i.w, -1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !673
  store ptr null, ptr %i.n, align 8, !noalias !672
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store ptr inttoptr (i64 24 to ptr), ptr %.sroa.6.0..sroa_idx, align 8, !noalias !672
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !676)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.0..sroa_idx, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !677
  invoke void @_RNvXs3_NtCskspKcFIsYcD_12pingora_http16case_header_nameNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameNtB5_18IntoCaseHeaderName21into_case_header_name(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.m, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.n)
          to label %bb.c unwind label %.split.thread.i.i, !noalias !678

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit92.i.i: ; preds = %.thread.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i
  %.sroa.015.0.i.i = phi i1 [ %.sroa.015.2130.i.i, %.thread.i.i ], [ %.sroa.015.2.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i ]
  %.pn35.i.i = phi { ptr, i32 } [ %.pn131.i.i, %.thread.i.i ], [ %.pn.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i ] ; 2 uses
  br i1 %.sroa.015.0.i.i, label %bb.dv, label %.body.thread.i

.split.thread.i.i:                                ; preds = %bb.du, %bb.b
  %lpad.thr_comm254.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.dv

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !677
  %i.x = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !noalias !677, !noundef !9 ; 12 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.aa = load i64, ptr %i.z, align 8, !noalias !677, !noundef !9 ; 12 uses
  invoke void @_RNvMs_NtNtCs84JG9zk80ZV_4http6header4nameNtB4_10HeaderName10from_bytes(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.k, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.y, i64 noundef %i.aa)
          to label %bb.e unwind label %bb.d, !noalias !679

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i: ; preds = %bb.ds, %.body43.thread.i.i, %.body43.i.i, %bb.bl, %.thread145.i.i.i, %bb.bb, %bb.ba, %bb.ax, %bb.ac, %bb.ab, %bb.y
  %.sroa.015.2.i.i = phi i1 [ false, %.body43.i.i ], [ true, %.body43.thread.i.i ], [ true, %bb.ds ], [ false, %bb.y ], [ false, %bb.bl ], [ false, %.thread145.i.i.i ], [ false, %bb.bb ], [ false, %bb.ba ], [ false, %bb.ax ], [ false, %bb.ac ], [ false, %bb.ab ] ; 2 uses
  %.sroa.012.0.i.i = phi i8 [ %.sroa.012.1.i.i, %.body43.i.i ], [ %.sroa.012.2.lpad-body136.i.i, %.body43.thread.i.i ], [ %.sroa.012.2.lpad-body136.i.i, %bb.ds ], [ %.sroa.012.1.i.i, %bb.y ], [ %.sroa.012.1.i.i, %bb.bl ], [ %.sroa.012.1.i.i, %.thread145.i.i.i ], [ %.sroa.012.1.i.i, %bb.bb ], [ %.sroa.012.1.i.i, %bb.ba ], [ %.sroa.012.1.i.i, %bb.ax ], [ %.sroa.012.1.i.i, %bb.ac ], [ %.sroa.012.1.i.i, %bb.ab ]
  %.pn.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %.body43.i.i ], [ %eh.lpad-body44137.i.i, %.body43.thread.i.i ], [ %eh.lpad-body44137.i.i, %bb.ds ], [ %i.cs, %bb.y ], [ %.pn149.i.i.i, %bb.bl ], [ %.pn149.i.i.i, %.thread145.i.i.i ], [ %i.fl, %bb.bb ], [ %i.fl, %bb.ba ], [ %i.fh, %bb.ax ], [ %i.da, %bb.ac ], [ %i.da, %bb.ab ] ; 2 uses
  %i.ab = trunc nuw i8 %.sroa.012.0.i.i to i1
  br i1 %i.ab, label %.thread.i.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit92.i.i

bb.d:                                             ; preds = %bb.f, %bb.c
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i

bb.e:                                             ; preds = %bb.c
  %i.ad = load i64, ptr %i.k, align 8, !range !20, !noalias !677, !noundef !9
  %i.ae = trunc nuw i64 %i.ad to i1
  br i1 %i.ae, label %bb.f, label %bb.o

bb.f:                                             ; preds = %bb.e
  %i.af = invoke { ptr, ptr } @_RNvXse_NtNtCsexYYUdYSQU6_5alloc5boxed7convertINtB7_3BoxDNtNtCskKLDkoKarTP_4core5error5ErrorNtNtBW_6marker4SendNtB1t_4SyncEL_EINtNtBW_7convert4FromNtNtNtCs84JG9zk80ZV_4http6header4name17InvalidHeaderNameE4fromCskspKcFIsYcD_12pingora_http()
          to label %.noexc.i.i unwind label %bb.d, !noalias !679 ; 2 uses

.noexc.i.i:                                       ; preds = %bb.f
  %i.ag = extractvalue { ptr, ptr } %i.af, 0      ; 5 uses
  %i.ah = extractvalue { ptr, ptr } %i.af, 1      ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ah) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !680
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, i64 56
  %i.aj = load ptr, ptr %i.ai, align 8, !invariant.load !9, !noalias !681, !nonnull !9
  invoke void %i.aj(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noundef nonnull %i.ag)
          to label %bb.g unwind label %bb.m, !noalias !681

bb.g:                                             ; preds = %.noexc.i.i
  %i.ak = load i128, ptr %i.f, align 16, !noalias !680, !noundef !9
  %i.al = icmp eq i128 %i.ak, 169216051812186039609500687556145754511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !680
  br i1 %i.al, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.am = load ptr, ptr %i.ag, align 8, !noalias !681, !nonnull !9, !noundef !9
  %i.an = getelementptr inbounds nuw i8, ptr %i.am, i64 64
  %i.ao = load i8, ptr %i.an, align 8, !range !16, !noalias !681, !noundef !9
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.sroa.0.1.i.i.i.i = phi i8 [ %i.ao, %bb.h ], [ 0, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !680
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i16 13, ptr %i.ap, align 8, !noalias !682
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  store i8 3, ptr %i.aq, align 1, !noalias !680
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i8 %.sroa.0.1.i.i.i.i, ptr %i.ar, align 8, !noalias !680
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.ag, ptr %i.as, align 8, !noalias !680
  %i.at = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.ah, ptr %i.at, align 8, !noalias !680
  store i64 0, ptr %i.g, align 8, !noalias !683
  %.sroa.6.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @3, ptr %.sroa.6.0..sroa_idx3.i.i.i, align 8, !noalias !683
  %.sroa.8.0..sroa_idx5.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 19, ptr %.sroa.8.0..sroa_idx5.i.i.i, align 8, !noalias !683
  call void @_RNvCsbkii2mvYdKU_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #18, !noalias !684
  %i.au = call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsbkii2mvYdKU_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef 8) #18, !noalias !684 ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.j, label %bb.du, !prof !19

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCsexYYUdYSQU6_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 72) #23
          to label %.noexc.i.i.i.i unwind label %bb.k, !noalias !681

.noexc.i.i.i.i:                                   ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtCsfsXztIhCltD_13pingora_error5ErrorECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.g) #20
          to label %.thread.i.i unwind label %bb.l, !noalias !681

bb.l:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !681
  unreachable

bb.m:                                             ; preds = %.noexc.i.i
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCsexYYUdYSQU6_5alloc5boxed3BoxDNtNtB4_5error5ErrorNtNtB4_6marker4SendNtB1S_4SyncEL_EEECskspKcFIsYcD_12pingora_http(ptr nonnull %i.ag, ptr nonnull %i.ah) #20
          to label %.thread.i.i unwind label %bb.n, !noalias !681

bb.n:                                             ; preds = %bb.m
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !681
  unreachable

bb.o:                                             ; preds = %bb.e
  %i.ba = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %.sroa.016.0.copyload.i.i = load ptr, ptr %i.ba, align 8, !noalias !677 ; 3 uses
  %.sroa.417.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.417.0..sroa_idx.i.i, i64 24, i1 false), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !677
  store ptr %.sroa.016.0.copyload.i.i, ptr %i.l, align 8, !noalias !677
  br i1 %.not.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i, label %bb.p

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !677
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i)
  %.not33.i.i = icmp eq ptr %.sroa.016.0.copyload.i.i, null
  br i1 %.not33.i.i, label %bb.bn, label %bb.bm

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i: ; preds = %bb.do, %bb.dn, %.thread154.i.i, %bb.o
  %.sroa.012.1.i.i = phi i8 [ 1, %bb.o ], [ 0, %bb.dn ], [ 0, %.thread154.i.i ], [ 0, %bb.do ] ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !677
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.i, ptr noundef nonnull align 8 dereferenceable(32) %i.l, i64 32, i1 false), !noalias !677
  %.sroa.16.32.insert.ext.i = zext i56 %.sroa.6.sroa.0.0.copyload.i to i64
  %.sroa.16.32.insert.shift.i = shl nuw i64 %.sroa.16.32.insert.ext.i, 8
  %.sroa.14.32.insert.ext.i = zext nneg i8 %i.s to i64
  %.sroa.14.32.insert.insert.i = or disjoint i64 %.sroa.16.32.insert.shift.i, %.sroa.14.32.insert.ext.i ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !685)
  call void @llvm.experimental.noalias.scope.decl(metadata !686)
  %i.bb = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB5_9HeaderMap15try_reserve_oneCskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull align 8 dereferenceable(232) %0)
          to label %bb.q unwind label %bb.bj, !noalias !687

bb.q:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bd = load ptr, ptr %i.bc, align 8, !noalias !688, !nonnull !9, !noundef !9
  invoke void %i.bd(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i unwind label %bb.bh, !noalias !687, !inline_history !1

bb.s:                                             ; preds = %bb.q
  %i.be = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(232) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.i), !noalias !689 ; 6 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bg = load i16, ptr %i.bf, align 8, !alias.scope !690, !noundef !9 ; 3 uses
  %i.bh = and i16 %i.bg, %i.be
  %i.bi = zext nneg i16 %i.bh to i64
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !690, !noundef !9 ; 2 uses
  %i.bm = load ptr, ptr %i.bj, align 8, !alias.scope !690, !nonnull !9
  %i.bn = zext i16 %i.bg to i64
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 4 uses
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !690 ; 15 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !690, !nonnull !9 ; 3 uses
  %i.bs = load ptr, ptr %i.i, align 8, !alias.scope !686, !noalias !677 ; 9 uses
  %i.bt = icmp eq ptr %i.bs, null                 ; 7 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.bv = load i8, ptr %i.bu, align 8, !range !18, !alias.scope !686, !noalias !677
  %i.bw = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !686, !noalias !677 ; 9 uses
  %i.by = load ptr, ptr %i.bu, align 8, !alias.scope !686, !noalias !677 ; 8 uses
  %.not160 = icmp eq i64 %i.bl, 0
  br label %.outer121

.outer121:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i, %bb.s
  %.sroa.08.0.i.i.i.ph = phi i64 [ %i.do, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ 0, %bb.s ] ; 3 uses
  %.sroa.0.0.i.i.i.ph = phi i64 [ %i.dp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i.i.i ], [ %i.bi, %bb.s ] ; 2 uses
  %i.bz = icmp ult i64 %.sroa.0.0.i.i.i.ph, %i.bl ; 2 uses
  %.not160.not = xor i1 %.not160, true
  %brmerge = or i1 %i.bz, %.not160.not
end_hunk_0
begin_hunk_1_@_RNvMsc_CskspKcFIsYcD_12pingora_httpNtB5_14ResponseHeader18set_content_length:_RNvXs3_NtCskKLDkoKarTP_4core7convertjINtB5_7TryIntoNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueE8try_intoCskspKcFIsYcD_12pingora_http.exit.i
.outer:                                           ; preds = %bb.be, %bb.bd
  %.sroa.6.0.i.i.i.i.ph = phi i16 [ %i.gb, %bb.be ], [ %i.be, %bb.bd ] ; 2 uses
  %.sroa.09.0.i.i.i.i.ph = phi i16 [ %i.fx, %bb.be ], [ %i.fu, %bb.bd ] ; 2 uses
  %.sroa.07.0.i.i.i.i.ph = phi i64 [ %i.ga, %bb.be ], [ 0, %bb.bd ] ; 2 uses
  %.sroa.0.0.i.i.i.i.ph = phi i64 [ %i.gc, %bb.be ], [ %.sroa.0.0.i.i.i.ph.mux, %bb.bd ] ; 2 uses
  %i.fv = icmp ult i64 %.sroa.0.0.i.i.i.i.ph, %i.ft ; 2 uses
  %.not161.not = xor i1 %.not161, true
  %brmerge186 = or i1 %i.fv, %.not161.not
  %.sroa.0.0.i.i.i.i.ph.mux = select i1 %i.fv, i64 %.sroa.0.0.i.i.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge186, label %.loopexit158, label %infloop185

.loopexit158:                                     ; preds = %.outer
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.fs, i64 %.sroa.0.0.i.i.i.i.ph.mux ; 4 uses
  %i.fx = load i16, ptr %i.fw, align 2, !noalias !728, !noundef !9 ; 2 uses
  %i.fy = icmp eq i16 %i.fx, -1
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 2 ; 3 uses
  br i1 %i.fy, label %bb.bf, label %bb.be

bb.be:                                            ; preds = %.loopexit158
  %i.ga = add i64 %.sroa.07.0.i.i.i.i.ph, 1
  %i.gb = load i16, ptr %i.fz, align 2, !noalias !728, !noundef !9
  store i16 %.sroa.09.0.i.i.i.i.ph, ptr %i.fw, align 2, !noalias !728
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fz, align 2, !noalias !728
  %i.gc = add nuw i64 %.sroa.0.0.i.i.i.i.ph.mux, 1
  br label %.outer

bb.bf:                                            ; preds = %.loopexit158
  store i16 %.sroa.09.0.i.i.i.i.ph, ptr %i.fw, align 2, !noalias !728
  store i16 %.sroa.6.0.i.i.i.i.ph, ptr %i.fz, align 2, !noalias !728
  %i.gd = icmp ugt i64 %.sroa.07.0.i.i.i.i.ph, 127
  %or.cond.i.i.i.i = select i1 %.sroa.013.0.i.i.i, i1 true, i1 %i.gd
  %i.ge = load i64, ptr %0, align 8, !range !14, !alias.scope !727
  %i.gf = icmp eq i64 %i.ge, 0
  %or.cond3.i.i.i.i = select i1 %or.cond.i.i.i.i, i1 %i.gf, i1 false
  br i1 %or.cond3.i.i.i.i, label %bb.bg, label %.thread177.i.i

bb.bg:                                            ; preds = %bb.bf
  store i64 1, ptr %0, align 8, !alias.scope !727
  br label %.thread177.i.i

bb.bh:                                            ; preds = %bb.r
  %i.gg = landingpad { ptr, i32 }
          cleanup
  br label %.thread145.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i: ; preds = %bb.r
  %i.gh = load ptr, ptr %i.i, align 8, !alias.scope !729, !noalias !677, !noundef !9 ; 2 uses
  %i.gi = icmp eq ptr %i.gh, null
  br i1 %i.gi, label %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i, label %bb.bi

bb.bi:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header5value11HeaderValueECskspKcFIsYcD_12pingora_http.exit.i.i.i
  %i.gj = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gk = load ptr, ptr %i.gj, align 8, !alias.scope !730, !noalias !677, !noundef !9
  %i.gl = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gm = load ptr, ptr %i.gl, align 8, !alias.scope !730, !noalias !677, !noundef !9
  %i.gn = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.go = load i64, ptr %i.gn, align 8, !alias.scope !730, !noalias !677, !noundef !9
  br label %.invoke279.i.i

bb.bj:                                            ; preds = %bb.am, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB11_.exit.i.i
  %lpad.thr_comm.i.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.u) ]
  %i.gp = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.gq = load ptr, ptr %i.gp, align 8, !noalias !731, !nonnull !9, !noundef !9
  invoke void %i.gq(ptr noundef %.sroa.4.sroa.5.0.copyload.i, ptr noundef %.sroa.4.sroa.0.0.copyload.i, i64 noundef %.sroa.4.sroa.4.0.copyload.i)
          to label %.thread145.i.i.i unwind label %bb.bk, !noalias !687, !inline_history !1

bb.bk:                                            ; preds = %bb.bl, %bb.bj
  %i.gr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !687
  unreachable

.thread145.i.i.i:                                 ; preds = %bb.bj, %bb.bh, %bb.ao
  %.pn149.i.i.i = phi { ptr, i32 } [ %i.eh, %bb.ao ], [ %i.gg, %bb.bh ], [ %lpad.thr_comm.i.i.i, %bb.bj ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !732)
  call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.gs = load ptr, ptr %i.i, align 8, !alias.scope !734, !noalias !677, !noundef !9 ; 2 uses
  %i.gt = icmp eq ptr %i.gs, null
  br i1 %i.gt, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i, label %bb.bl

bb.bl:                                            ; preds = %.thread145.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !735)
  call void @llvm.experimental.noalias.scope.decl(metadata !736)
  call void @llvm.experimental.noalias.scope.decl(metadata !737)
  call void @llvm.experimental.noalias.scope.decl(metadata !738)
  %i.gu = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.gv = load ptr, ptr %i.gu, align 8, !alias.scope !739, !noalias !677, !noundef !9
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gs, i64 32
  %i.gx = load ptr, ptr %i.gw, align 8, !noalias !740, !nonnull !9, !noundef !9
  %i.gy = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.gz = load ptr, ptr %i.gy, align 8, !alias.scope !739, !noalias !677, !noundef !9
  %i.ha = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.hb = load i64, ptr %i.ha, align 8, !alias.scope !739, !noalias !677, !noundef !9
  invoke void %i.gx(ptr noundef %i.gv, ptr noundef %i.gz, i64 noundef %i.hb)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i unwind label %bb.bk, !noalias !687, !inline_history !0

bb.bm:                                            ; preds = %bb.p
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !677
  %i.hc = load ptr, ptr %.sroa.016.0.copyload.i.i, align 8, !noalias !679, !nonnull !9, !noundef !9
  %i.hd = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.he = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !677, !noundef !9
  %i.hf = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.hg = load i64, ptr %i.hf, align 8, !noalias !677, !noundef !9
  invoke void %i.hc(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.h, ptr noundef nonnull align 8 %i.hd, ptr noundef %i.he, i64 noundef %i.hg)
          to label %bb.dl unwind label %.body43.thread145.i.i, !noalias !679

bb.bn:                                            ; preds = %bb.p
  %i.hh = load i8, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !range !18, !noalias !677, !noundef !9
  br label %bb.bo

bb.bo:                                            ; preds = %bb.dl, %bb.bn
  %.sroa.522.0.i.i = phi i8 [ %.sroa.430.0.copyload.i.i, %bb.dl ], [ %i.hh, %bb.bn ] ; 2 uses
  %.sroa.020.0.i.i = phi ptr [ %.sroa.029.0.copyload.i.i, %bb.dl ], [ null, %bb.bn ] ; 12 uses
  store ptr %.sroa.020.0.i.i, ptr %i.j, align 8, !noalias !677
  %.sroa.522.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  store i8 %.sroa.522.0.i.i, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !noalias !677
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.6.i.i, i64 23, i1 false), !noalias !677
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i)
  %.sroa.098.0.copyload.i.i = load ptr, ptr %i.m, align 8, !noalias !677 ; 13 uses
  %.sroa.18.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.18.0.copyload.i.i = load ptr, ptr %.sroa.18.0..sroa_idx.i.i, align 8, !noalias !677 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !741)
  call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.hi = invoke noundef zeroext i1 @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE15try_reserve_oneBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.v)
          to label %bb.bp unwind label %bb.di, !noalias !743

bb.bp:                                            ; preds = %bb.bo
  br i1 %i.hi, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.098.0.copyload.i.i) ]
  %i.hj = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i.i, i64 32
  %i.hk = load ptr, ptr %i.hj, align 8, !noalias !744, !nonnull !9, !noundef !9
  invoke void %i.hk(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i unwind label %bb.dg, !noalias !743, !inline_history !2

bb.br:                                            ; preds = %bb.bp
  %i.hl = call fastcc noundef i16 @_RINvNtNtCs84JG9zk80ZV_4http6header3map15hash_elem_usingNtNtB4_4name10HeaderNameECskspKcFIsYcD_12pingora_http(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) dereferenceable_or_null(96) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.j), !noalias !745 ; 6 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hn = load i16, ptr %i.hm, align 8, !alias.scope !746, !noundef !9 ; 3 uses
  %i.ho = and i16 %i.hn, %i.hl
  %i.hp = zext nneg i16 %i.ho to i64
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 3 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %0, i64 192 ; 3 uses
  %i.hs = load i64, ptr %i.hr, align 8, !alias.scope !746, !noundef !9 ; 2 uses
  %i.ht = load ptr, ptr %i.hq, align 8, !alias.scope !746, !nonnull !9
  %i.hu = zext i16 %i.hn to i64
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 4 uses
  %i.hw = load i64, ptr %i.hv, align 8, !alias.scope !746 ; 15 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 4 uses
  %i.hy = load ptr, ptr %i.hx, align 8, !alias.scope !746, !nonnull !9 ; 3 uses
  %i.hz = icmp eq ptr %.sroa.020.0.i.i, null      ; 7 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ib = load i64, ptr %i.ia, align 8, !alias.scope !742, !noalias !677 ; 9 uses
  %i.ic = load ptr, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !742, !noalias !677 ; 8 uses
  %.not = icmp eq i64 %i.hs, 0
  br label %.outer135

.outer135:                                        ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i, %bb.br
  %.sroa.08.0.i46.i.i.ph = phi i64 [ %i.jo, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i ], [ 0, %bb.br ] ; 3 uses
  %.sroa.0.0.i47.i.i.ph = phi i64 [ %i.jp, %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i ], [ %i.hp, %bb.br ] ; 2 uses
  %i.id = icmp ult i64 %.sroa.0.0.i47.i.i.ph, %i.hs ; 2 uses
  %.not.not = xor i1 %.not, true
  %brmerge188 = or i1 %i.id, %.not.not
  %.sroa.0.0.i47.i.i.ph.mux = select i1 %i.id, i64 %.sroa.0.0.i47.i.i.ph, i64 0 ; 7 uses
  br i1 %brmerge188, label %.loopexit, label %infloop187

.loopexit:                                        ; preds = %.outer135
  %i.ie = getelementptr inbounds nuw [4 x i8], ptr %i.ht, i64 %.sroa.0.0.i47.i.i.ph.mux ; 2 uses
  %i.if = load i16, ptr %i.ie, align 2, !noalias !743, !noundef !9 ; 2 uses
  %.not.i50.i.i = icmp eq i16 %i.if, -1
  br i1 %.not.i50.i.i, label %bb.bu, label %bb.bt

bb.bs:                                            ; preds = %bb.cl
  unreachable

bb.bt:                                            ; preds = %.loopexit
  %i.ig = zext i16 %i.if to i64                   ; 6 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ie, i64 2
  %i.ii = load i16, ptr %i.ih, align 2, !noalias !743, !noundef !9 ; 2 uses
  %i.ij = and i16 %i.ii, %i.hn
  %i.ik = zext i16 %i.ij to i64
  %i.il = sub i64 %.sroa.0.0.i47.i.i.ph.mux, %i.ik
  %i.im = and i64 %i.il, %i.hu
  %i.in = icmp samesign ult i64 %i.im, %.sroa.08.0.i46.i.i.ph
  br i1 %i.in, label %bb.ct, label %bb.cg

bb.bu:                                            ; preds = %.loopexit
  %i.io = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.io)
  %.sroa.6108.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.6108.0.copyload.i.i.i = load ptr, ptr %.sroa.6108.0..sroa_idx.i.i.i, align 8, !alias.scope !742, !noalias !677 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %i.ip = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.ip, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !748
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store i16 %i.hl, ptr %i.ir, align 8, !noalias !748
  %i.is = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.sroa.020.0.i.i, ptr %i.is, align 8, !noalias !749
  %.sroa.693.0..sroa_idx94.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store ptr %i.ic, ptr %.sroa.693.0..sroa_idx94.i.i.i, align 8, !noalias !749
  %.sroa.897.0..sroa_idx98.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store i64 %i.ib, ptr %.sroa.897.0..sroa_idx98.i.i.i, align 8, !noalias !749
  %.sroa.10101.0..sroa_idx102.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store ptr %.sroa.6108.0.copyload.i.i.i, ptr %.sroa.10101.0..sroa_idx102.i.i.i, align 8, !noalias !749
  %i.it = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr %.sroa.098.0.copyload.i.i, ptr %i.it, align 8, !noalias !750
  %.sroa.5111.0..sroa_idx112.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr %i.y, ptr %.sroa.5111.0..sroa_idx112.i.i.i, align 8, !noalias !750
  %.sroa.6114.0..sroa_idx115.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 %i.aa, ptr %.sroa.6114.0..sroa_idx115.i.i.i, align 8, !noalias !750
  %.sroa.7117.0..sroa_idx118.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.7117.0..sroa_idx118.i.i.i, align 8, !noalias !750
  store i64 0, ptr %i.c, align 8, !noalias !748
  %i.iu = load i64, ptr %i.iq, align 8, !range !10, !alias.scope !751, !noundef !9
  %i.iv = icmp eq i64 %i.hw, %i.iu
  br i1 %i.iv, label %bb.bw, label %bb.cd

bb.bw:                                            ; preds = %bb.bv
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.iq)
          to label %._crit_edge180.i.i.i unwind label %bb.bx, !noalias !752

._crit_edge180.i.i.i:                             ; preds = %bb.bw
  %.pre181.i.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !751
  br label %bb.cd

bb.bx:                                            ; preds = %bb.bw
  %i.iw = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.c) #20
          to label %.body43.thread.i.i unwind label %bb.by, !noalias !753

bb.by:                                            ; preds = %bb.bx
  %i.ix = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !752
  unreachable

bb.bz:                                            ; preds = %bb.bu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.098.0.copyload.i.i) ]
  %i.iy = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i.i, i64 32
  %i.iz = load ptr, ptr %i.iy, align 8, !noalias !754, !nonnull !9, !noundef !9
  invoke void %i.iz(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i unwind label %bb.ca, !noalias !755, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i: ; preds = %bb.bz
  br i1 %i.hz, label %bb.dm, label %.invoke.i.i

bb.ca:                                            ; preds = %bb.bz
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body43.thread.i.i, label %bb.cb

bb.cb:                                            ; preds = %bb.ca
  %i.jb = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.jc = load ptr, ptr %i.jb, align 8, !noalias !756, !nonnull !9, !noundef !9
  invoke void %i.jc(ptr noundef %.sroa.6108.0.copyload.i.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body43.thread.i.i unwind label %bb.cc, !noalias !755, !inline_history !0

bb.cc:                                            ; preds = %bb.cb
  %i.jd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !755
  unreachable

bb.cd:                                            ; preds = %._crit_edge180.i.i.i, %bb.bv
  %i.je = phi ptr [ %.pre181.i.i.i, %._crit_edge180.i.i.i ], [ %i.hy, %bb.bv ]
  %i.jf = getelementptr inbounds nuw [96 x i8], ptr %i.je, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.jf, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.c, i64 96, i1 false), !noalias !753
  %i.jg = add nuw nsw i64 %i.hw, 1
  store i64 %i.jg, ptr %i.hv, align 8, !alias.scope !751
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !748
  %i.jh = load i64, ptr %i.hr, align 8, !alias.scope !746, !noundef !9 ; 2 uses
  %i.ji = icmp ult i64 %.sroa.0.0.i47.i.i.ph.mux, %i.jh
  br i1 %i.ji, label %bb.ce, label %bb.cf

bb.ce:                                            ; preds = %bb.cd
  %i.jj = load ptr, ptr %i.hq, align 8, !alias.scope !746, !nonnull !9, !noundef !9
  %i.jk = trunc nuw nsw i64 %i.hw to i16
  %i.jl = getelementptr inbounds nuw [4 x i8], ptr %i.jj, i64 %.sroa.0.0.i47.i.i.ph.mux ; 2 uses
  store i16 %i.jk, ptr %i.jl, align 2, !noalias !743
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 2
  store i16 %i.hl, ptr %i.jm, align 2, !noalias !743
  br label %.thread154.i.i

bb.cf:                                            ; preds = %bb.cd
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %.sroa.0.0.i47.i.i.ph.mux, i64 noundef %i.jh, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @5) #23
          to label %.noexc75.i.i unwind label %.body43.thread145.i.i, !noalias !679

.noexc75.i.i:                                     ; preds = %bb.cf
  unreachable

bb.cg:                                            ; preds = %bb.bt
  %i.jn = icmp eq i16 %i.ii, %i.hl
  br i1 %i.jn, label %bb.ch, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i: ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i.i, %.split.i57.i.i, %bb.ck, %bb.ci, %bb.cg
  %i.jo = add nuw nsw i64 %.sroa.08.0.i46.i.i.ph, 1
  %i.jp = add i64 %.sroa.0.0.i47.i.i.ph.mux, 1
  br label %.outer135

bb.ch:                                            ; preds = %bb.cg
  %i.jq = icmp ugt i64 %i.hw, %i.ig
  br i1 %i.jq, label %bb.ci, label %bb.cl

bb.ci:                                            ; preds = %bb.ch
  %i.jr = getelementptr inbounds nuw [96 x i8], ptr %i.hy, i64 %i.ig ; 6 uses
  %i.js = getelementptr inbounds nuw i8, ptr %i.jr, i64 56
  %i.jt = load ptr, ptr %i.js, align 8, !noalias !743, !noundef !9
  %i.ju = icmp ne ptr %i.jt, null                 ; 2 uses
  %i.jv = xor i1 %i.hz, %i.ju
  br i1 %i.jv, label %bb.cj, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i

bb.cj:                                            ; preds = %bb.ci
  br i1 %i.ju, label %bb.ck, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i.i

bb.ck:                                            ; preds = %bb.cj
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.020.0.i.i) ]
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jr, i64 72
  %i.jx = load i64, ptr %i.jw, align 8, !noalias !743, !noundef !9
  %i.jy = icmp eq i64 %i.jx, %i.ib
  br i1 %i.jy, label %.split.i57.i.i, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i

.split.i57.i.i:                                   ; preds = %bb.ck
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.ka = load ptr, ptr %i.jz, align 8, !noalias !743, !noundef !9
  %bcmp.i.i.i.i.i58.i.i = call i32 @bcmp(ptr %i.ka, ptr %i.ic, i64 %i.ib), !noalias !743
  %i.kb = icmp eq i32 %bcmp.i.i.i.i.i58.i.i, 0
  br i1 %i.kb, label %bb.cm, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i

bb.cl:                                            ; preds = %bb.ch
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef %i.ig, i64 noundef %i.hw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #23
          to label %bb.bs unwind label %bb.di, !noalias !743

_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i.i: ; preds = %bb.cj
  call void @llvm.assume(i1 %i.hz)
  %i.kc = getelementptr inbounds nuw i8, ptr %i.jr, i64 64
  %i.kd = load i8, ptr %i.kc, align 8, !range !18, !noalias !743, !noundef !9
  %i.ke = icmp eq i8 %i.kd, %.sroa.522.0.i.i
  br i1 %i.ke, label %bb.cm, label %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.thread.i51.i.i

bb.cm:                                            ; preds = %_RNvXsy_NtNtCs84JG9zk80ZV_4http6header4nameNtB5_10HeaderNameNtNtCskKLDkoKarTP_4core3cmp9PartialEq2eq.exit.i52.i.i, %.split.i57.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %i.kf = load i64, ptr %i.jr, align 8, !range !20, !noalias !758, !noundef !9
  %i.kg = trunc nuw i64 %i.kf to i1
  br i1 %i.kg, label %bb.co, label %bb.cp

bb.cn:                                            ; preds = %.invoke.i.i53.i.i, %bb.co
  %i.kh = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.098.0.copyload.i.i) ]
  %i.ki = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i.i, i64 32
  %i.kj = load ptr, ptr %i.ki, align 8, !noalias !759, !nonnull !9, !noundef !9
  invoke void %i.kj(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %.thread133.i.i.i unwind label %bb.cq, !noalias !760, !inline_history !2

bb.co:                                            ; preds = %bb.cm
  %i.kk = getelementptr inbounds nuw i8, ptr %i.jr, i64 8
  %i.kl = load i64, ptr %i.kk, align 8, !noalias !758, !noundef !9
  invoke void @_RNvMs0_NtNtCs84JG9zk80ZV_4http6header3mapINtB5_9HeaderMapNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameE23remove_all_extra_valuesBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(96) dereferenceable_or_null(96) %i.v, i64 noundef %i.kl)
          to label %._crit_edge.i.i55.i.i unwind label %bb.cn, !noalias !760

._crit_edge.i.i55.i.i:                            ; preds = %bb.co
  %.pre.i.i56.i.i = load i64, ptr %i.hv, align 8, !alias.scope !761
  br label %bb.cp

bb.cp:                                            ; preds = %._crit_edge.i.i55.i.i, %bb.cm
  %i.km = phi i64 [ %.pre.i.i56.i.i, %._crit_edge.i.i55.i.i ], [ %i.hw, %bb.cm ] ; 2 uses
  %i.kn = icmp ugt i64 %i.km, %i.ig
  br i1 %i.kn, label %bb.cr, label %.invoke.i.i53.i.i

.invoke.i.i53.i.i:                                ; preds = %bb.cp
  invoke void @_RNvNtCskKLDkoKarTP_4core9panicking18panic_bounds_check(i64 noundef range(i64 0, 65536) %i.ig, i64 noundef %i.km, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #23
          to label %.cont.i.i54.i.i unwind label %bb.cn, !noalias !760

.cont.i.i54.i.i:                                  ; preds = %.invoke.i.i53.i.i
  unreachable

bb.cq:                                            ; preds = %bb.cn
  %i.ko = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !760
  unreachable

bb.cr:                                            ; preds = %bb.cp
  %i.kp = load ptr, ptr %i.hx, align 8, !alias.scope !761, !nonnull !9, !noundef !9
  %i.kq = getelementptr inbounds nuw [96 x i8], ptr %i.kp, i64 %i.ig ; 4 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 24 ; 2 uses
  %.sroa.077.0.copyload.i.i.i = load ptr, ptr %i.kr, align 8, !noalias !762 ; 2 uses
  %.sroa.478.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 32 ; 2 uses
  %.sroa.9120.16.copyload.i.i = load ptr, ptr %.sroa.478.0..sroa_idx.i.i.i, align 8, !noalias !763
  %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 40 ; 2 uses
  %.sroa.11.16.copyload.i.i = load i64, ptr %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !763
  %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.kq, i64 48 ; 2 uses
  %.sroa.12.16.copyload.i.i = load ptr, ptr %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !763
  store ptr %.sroa.098.0.copyload.i.i, ptr %i.kr, align 8, !noalias !764
  store ptr %i.y, ptr %.sroa.478.0..sroa_idx.i.i.i, align 8, !noalias !764
  store i64 %i.aa, ptr %.sroa.11.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !764
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.12.16..sroa.478.0..sroa_idx.i.sroa_idx.i.i, align 8, !noalias !764
  call void @llvm.experimental.noalias.scope.decl(metadata !765)
  call void @llvm.experimental.noalias.scope.decl(metadata !766)
  br i1 %i.hz, label %bb.dn, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  call void @llvm.experimental.noalias.scope.decl(metadata !767)
  call void @llvm.experimental.noalias.scope.decl(metadata !768)
  call void @llvm.experimental.noalias.scope.decl(metadata !769)
  call void @llvm.experimental.noalias.scope.decl(metadata !770)
  %i.ks = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.kt = load ptr, ptr %i.ks, align 8, !alias.scope !771, !noalias !677, !noundef !9
  %i.ku = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.kv = load ptr, ptr %i.ku, align 8, !noalias !772, !nonnull !9, !noundef !9
  invoke void %i.kv(ptr noundef %i.kt, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %bb.dn unwind label %.body43.thread145.i.i, !noalias !679, !inline_history !551

bb.ct:                                            ; preds = %bb.bt
  %i.kw = icmp samesign ugt i64 %.sroa.08.0.i46.i.i.ph, 511
  %i.kx = load i64, ptr %i.v, align 8, !range !14, !alias.scope !746
  %i.ky = icmp ne i64 %i.kx, 2
  %.sroa.013.0.i59.i.i = select i1 %i.kw, i1 %i.ky, i1 false
  %.sroa.666.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.666.0.copyload.i.i.i = load ptr, ptr %.sroa.666.0..sroa_idx.i.i.i, align 8, !alias.scope !742, !noalias !677 ; 3 uses
  %i.kz = icmp ult i64 %i.hw, 96076792050570582
  call void @llvm.assume(i1 %i.kz)
  call void @llvm.experimental.noalias.scope.decl(metadata !773)
  %i.la = icmp samesign ugt i64 %i.hw, 32767
  br i1 %i.la, label %bb.cy, label %bb.cu

bb.cu:                                            ; preds = %bb.ct
  %i.lb = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !774
  %i.lc = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  store i16 %i.hl, ptr %i.lc, align 8, !noalias !774
  %i.ld = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %.sroa.020.0.i.i, ptr %i.ld, align 8, !noalias !775
  %.sroa.6.0..sroa_idx55.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %i.ic, ptr %.sroa.6.0..sroa_idx55.i.i.i, align 8, !noalias !775
  %.sroa.8.0..sroa_idx58.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store i64 %i.ib, ptr %.sroa.8.0..sroa_idx58.i.i.i, align 8, !noalias !775
  %.sroa.10.0..sroa_idx61.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %.sroa.666.0.copyload.i.i.i, ptr %.sroa.10.0..sroa_idx61.i.i.i, align 8, !noalias !775
  %i.le = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %.sroa.098.0.copyload.i.i, ptr %i.le, align 8, !noalias !776
  %.sroa.569.0..sroa_idx70.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.y, ptr %.sroa.569.0..sroa_idx70.i.i.i, align 8, !noalias !776
  %.sroa.672.0..sroa_idx73.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 %i.aa, ptr %.sroa.672.0..sroa_idx73.i.i.i, align 8, !noalias !776
  %.sroa.7.0..sroa_idx75.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store ptr %.sroa.18.0.copyload.i.i, ptr %.sroa.7.0..sroa_idx75.i.i.i, align 8, !noalias !776
  store i64 0, ptr %i.b, align 8, !noalias !774
  %i.lf = load i64, ptr %i.lb, align 8, !range !10, !alias.scope !777, !noundef !9
  %i.lg = icmp eq i64 %i.hw, %i.lf
  br i1 %i.lg, label %bb.cv, label %bb.dc

bb.cv:                                            ; preds = %bb.cu
  invoke void @_RNvMs4_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVecINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEE8grow_oneB1y_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.lb)
          to label %._crit_edge.i73.i.i unwind label %bb.cw, !noalias !778

._crit_edge.i73.i.i:                              ; preds = %bb.cv
  %.pre.i74.i.i = load ptr, ptr %i.hx, align 8, !alias.scope !777
  br label %bb.dc

bb.cw:                                            ; preds = %bb.cv
  %i.lh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtNtCs84JG9zk80ZV_4http6header3map6BucketNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEEB1n_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(96) %i.b) #20
          to label %.body43.thread.i.i unwind label %bb.cx, !noalias !779

bb.cx:                                            ; preds = %bb.cw
  %i.li = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !778
  unreachable

bb.cy:                                            ; preds = %bb.ct
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.098.0.copyload.i.i) ]
  %i.lj = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i.i, i64 32
  %i.lk = load ptr, ptr %i.lj, align 8, !noalias !780, !nonnull !9, !noundef !9
  invoke void %i.lk(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i unwind label %bb.cz, !noalias !781, !inline_history !2

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i: ; preds = %bb.cy
  br i1 %i.hz, label %bb.dm, label %.invoke.i.i

bb.cz:                                            ; preds = %bb.cy
  %i.ll = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.hz, label %.body43.thread.i.i, label %bb.da

bb.da:                                            ; preds = %bb.cz
  %i.lm = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.ln = load ptr, ptr %i.lm, align 8, !noalias !782, !nonnull !9, !noundef !9
  invoke void %i.ln(ptr noundef %.sroa.666.0.copyload.i.i.i, ptr noundef %i.ic, i64 noundef %i.ib)
          to label %.body43.thread.i.i unwind label %bb.db, !noalias !781, !inline_history !0

bb.db:                                            ; preds = %bb.da
  %i.lo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !781
  unreachable

bb.dc:                                            ; preds = %._crit_edge.i73.i.i, %bb.cu
  %i.lp = phi ptr [ %.pre.i74.i.i, %._crit_edge.i73.i.i ], [ %i.hy, %bb.cu ]
  %i.lq = getelementptr inbounds nuw [96 x i8], ptr %i.lp, i64 %i.hw
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.lq, ptr noundef nonnull readonly align 8 dereferenceable(96) %i.b, i64 96, i1 false), !noalias !779
  %i.lr = add nuw nsw i64 %i.hw, 1
  store i64 %i.lr, ptr %i.hv, align 8, !alias.scope !777
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !774
  %i.ls = load ptr, ptr %i.hq, align 8, !alias.scope !783, !nonnull !9, !noundef !9
  %i.lt = load i64, ptr %i.hr, align 8, !alias.scope !783, !noundef !9 ; 2 uses
  %i.lu = trunc nuw nsw i64 %i.hw to i16
  %.not159 = icmp eq i64 %i.lt, 0
  br label %.outer132

.outer132:                                        ; preds = %bb.dd, %bb.dc
  %.sroa.6.0.i.i62.i.i.ph = phi i16 [ %i.mb, %bb.dd ], [ %i.hl, %bb.dc ] ; 2 uses
  %.sroa.09.0.i.i63.i.i.ph = phi i16 [ %i.lx, %bb.dd ], [ %i.lu, %bb.dc ] ; 2 uses
  %.sroa.07.0.i.i64.i.i.ph = phi i64 [ %i.ma, %bb.dd ], [ 0, %bb.dc ] ; 2 uses
  %.sroa.0.0.i.i65.i.i.ph = phi i64 [ %i.mc, %bb.dd ], [ %.sroa.0.0.i47.i.i.ph.mux, %bb.dc ] ; 2 uses
  %i.lv = icmp ult i64 %.sroa.0.0.i.i65.i.i.ph, %i.lt ; 2 uses
  %.not159.not = xor i1 %.not159, true
  %brmerge190 = or i1 %i.lv, %.not159.not
  %.sroa.0.0.i.i65.i.i.ph.mux = select i1 %i.lv, i64 %.sroa.0.0.i.i65.i.i.ph, i64 0 ; 2 uses
  br i1 %brmerge190, label %.loopexit150, label %infloop189

.loopexit150:                                     ; preds = %.outer132
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %i.ls, i64 %.sroa.0.0.i.i65.i.i.ph.mux ; 4 uses
  %i.lx = load i16, ptr %i.lw, align 2, !noalias !784, !noundef !9 ; 2 uses
  %i.ly = icmp eq i16 %i.lx, -1
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 2 ; 3 uses
  br i1 %i.ly, label %bb.de, label %bb.dd

bb.dd:                                            ; preds = %.loopexit150
  %i.ma = add i64 %.sroa.07.0.i.i64.i.i.ph, 1
  %i.mb = load i16, ptr %i.lz, align 2, !noalias !784, !noundef !9
  store i16 %.sroa.09.0.i.i63.i.i.ph, ptr %i.lw, align 2, !noalias !784
  store i16 %.sroa.6.0.i.i62.i.i.ph, ptr %i.lz, align 2, !noalias !784
  %i.mc = add nuw i64 %.sroa.0.0.i.i65.i.i.ph.mux, 1
  br label %.outer132

bb.de:                                            ; preds = %.loopexit150
  store i16 %.sroa.09.0.i.i63.i.i.ph, ptr %i.lw, align 2, !noalias !784
  store i16 %.sroa.6.0.i.i62.i.i.ph, ptr %i.lz, align 2, !noalias !784
  %i.md = icmp ugt i64 %.sroa.07.0.i.i64.i.i.ph, 127
  %or.cond.i.i70.i.i = select i1 %.sroa.013.0.i59.i.i, i1 true, i1 %i.md
  %i.me = load i64, ptr %i.v, align 8, !range !14, !alias.scope !783
  %i.mf = icmp eq i64 %i.me, 0
  %or.cond3.i.i71.i.i = select i1 %or.cond.i.i70.i.i, i1 %i.mf, i1 false
  br i1 %or.cond3.i.i71.i.i, label %bb.df, label %.thread154.i.i

bb.df:                                            ; preds = %bb.de
  store i64 1, ptr %i.v, align 8, !alias.scope !783
  br label %.thread154.i.i

bb.dg:                                            ; preds = %bb.bq
  %i.mg = landingpad { ptr, i32 }
          cleanup
  br label %.thread133.i.i.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i: ; preds = %bb.bq
  %i.mh = icmp eq ptr %.sroa.020.0.i.i, null
  br i1 %i.mh, label %bb.dm, label %bb.dh

bb.dh:                                            ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.mj = load ptr, ptr %i.mi, align 8, !alias.scope !785, !noalias !677, !noundef !9
  %i.mk = load ptr, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !785, !noalias !677, !noundef !9
  %i.ml = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.mm = load i64, ptr %i.ml, align 8, !alias.scope !785, !noalias !677, !noundef !9
  br label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.dh, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i
  %i.mn = phi ptr [ %i.mj, %bb.dh ], [ %.sroa.666.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i ], [ %.sroa.6108.0.copyload.i.i.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i ]
  %i.mo = phi ptr [ %i.mk, %bb.dh ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i ], [ %i.ic, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i ]
  %i.mp = phi i64 [ %i.mm, %bb.dh ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i46.i.i.i ], [ %i.ib, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCskspKcFIsYcD_12pingora_http16case_header_name14CaseHeaderNameEBF_.exit.i.i.i.i ]
  %.in.i.i = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.mq = load ptr, ptr %.in.i.i, align 8, !noalias !743, !nonnull !9, !noundef !9
  invoke void %i.mq(ptr noundef %i.mn, ptr noundef %i.mo, i64 noundef %i.mp)
          to label %bb.dm unwind label %.body43.thread145.i.i, !noalias !679, !inline_history !551

bb.di:                                            ; preds = %bb.cl, %bb.bo
  %lpad.thr_comm.i45.i.i = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.098.0.copyload.i.i) ]
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.098.0.copyload.i.i, i64 32
  %i.ms = load ptr, ptr %i.mr, align 8, !noalias !786, !nonnull !9, !noundef !9
  invoke void %i.ms(ptr noundef %.sroa.18.0.copyload.i.i, ptr noundef nonnull %i.y, i64 noundef %i.aa)
          to label %.thread133.i.i.i unwind label %bb.dj, !noalias !743, !inline_history !2

bb.dj:                                            ; preds = %bb.dk, %bb.di
  %i.mt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #19, !noalias !743
  unreachable

.thread133.i.i.i:                                 ; preds = %bb.di, %bb.dg, %bb.cn
  %.pn137.i.i.i = phi { ptr, i32 } [ %i.kh, %bb.cn ], [ %i.mg, %bb.dg ], [ %lpad.thr_comm.i45.i.i, %bb.di ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !787)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  %i.mu = icmp eq ptr %.sroa.020.0.i.i, null
  br i1 %i.mu, label %.body43.thread.i.i, label %bb.dk

bb.dk:                                            ; preds = %.thread133.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !789)
  call void @llvm.experimental.noalias.scope.decl(metadata !790)
  call void @llvm.experimental.noalias.scope.decl(metadata !791)
  call void @llvm.experimental.noalias.scope.decl(metadata !792)
  %i.mv = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.mw = load ptr, ptr %i.mv, align 8, !alias.scope !793, !noalias !677, !noundef !9
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.020.0.i.i, i64 32
  %i.my = load ptr, ptr %i.mx, align 8, !noalias !794, !nonnull !9, !noundef !9
  %i.mz = load ptr, ptr %.sroa.522.0..sroa_idx.i.i, align 8, !alias.scope !793, !noalias !677, !noundef !9
  %i.na = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.nb = load i64, ptr %i.na, align 8, !alias.scope !793, !noalias !677, !noundef !9
  invoke void %i.my(ptr noundef %i.mw, ptr noundef %i.mz, i64 noundef %i.nb)
          to label %.body43.thread.i.i unwind label %bb.dj, !noalias !743, !inline_history !0

.body43.thread145.i.i:                            ; preds = %bb.do, %bb.dm, %.invoke.i.i, %bb.cs, %bb.cf, %bb.bm
  %.sroa.012.2.ph.i.i = phi i8 [ 0, %bb.cs ], [ 0, %bb.do ], [ 0, %bb.cf ], [ 1, %bb.bm ], [ 0, %.invoke.i.i ], [ 0, %bb.dm ]
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body43.thread.i.i

.body43.i.i:                                      ; preds = %bb.dq, %_RINvMs0_NtNtCs84JG9zk80ZV_4http6header3mapNtB6_9HeaderMap11try_insert2NtNtB8_4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.thread.i.i, %bb.at, %bb.ag, %.invoke279.i.i
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtNtCs84JG9zk80ZV_4http6header4name10HeaderNameECskspKcFIsYcD_12pingora_http.exit.i.i

bb.dl:                                            ; preds = %bb.bm
  %.sroa.029.0.copyload.i.i = load ptr, ptr %i.h, align 8, !noalias !677
end_hunk_1
