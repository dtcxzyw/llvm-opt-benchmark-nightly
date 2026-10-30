Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/xet-core-rs/original/xet_client-75c402fe18a1f54a.xet_client.d88642a81e22a8c9-cgu.04?download=true
inline.NumInlined: 1023
inline.NumDeleted: 449
loop-unroll.NumCompletelyUnrolled: 12
loop-unroll.NumUnrolled: 12
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_sliceNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBN_:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !48)
  call void @llvm.experimental.noalias.scope.decl(metadata !49)
  %i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !50, !noalias !45, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !51, !noalias !45 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.d
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !50, !noalias !45, !nonnull !5, !noundef !5
  br label %bb.e

bb.e:                                             ; preds = %bb.f, %.lr.ph.i.i.i
  %i.l = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.f ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !53, !noundef !5
  switch i8 %i.n, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i [
    i8 32, label %bb.f
    i8 10, label %bb.f
    i8 9, label %bb.f
    i8 13, label %bb.f
  ]

bb.f:                                             ; preds = %bb.e, %bb.e, %bb.e, %bb.e
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !54, !noalias !45
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.e

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !55
  store i64 22, ptr %i.a, align 8, !noalias !55
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.h unwind label %bb.g, !noalias !45

bb.g:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.b) #14
          to label %.body.i unwind label %bb.p, !noalias !45

bb.h:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !55
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !44
  store i64 -1, ptr %0, align 8, !alias.scope !44
  %i.s = load i64, ptr %i.b, align 8, !range !6, !alias.scope !56, !noalias !45, !noundef !5 ; 2 uses
  %i.t = icmp ne i64 %i.s, -9223372036854775805
  call void @llvm.assume(i1 %i.t)
  %i.u = icmp sgt i64 %i.s, -1
  br i1 %i.u, label %bb.i, label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_.exit.i

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i unwind label %bb.j, !noalias !45

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %.body.i unwind label %bb.k, !noalias !45

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.i
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_.exit.i unwind label %bb.b, !noalias !45

.loopexit.i:                                      ; preds = %bb.f, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEB19_.exit unwind label %bb.l, !noalias !45

bb.l:                                             ; preds = %.loopexit.i
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume.i unwind label %bb.m, !noalias !45

bb.m:                                             ; preds = %bb.l
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

common.resume.i:                                  ; preds = %bb.n, %bb.l, %.body.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.z, %bb.n ], [ %i.x, %bb.l ], [ %.pn.i, %.body.i ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_.exit.i: ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsexYYUdYSQU6_5alloc6string6StringECsiAynQAjgDuT_10xet_client.exit.i.i, %bb.h, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !45
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEB19_.exit unwind label %bb.n, !noalias !45

bb.n:                                             ; preds = %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_.exit.i
  %i.z = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume.i unwind label %bb.o, !noalias !45

bb.o:                                             ; preds = %bb.n
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

bb.p:                                             ; preds = %bb.g, %.body.i
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !45
  unreachable

_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEB19_.exit: ; preds = %.loopexit.i, %_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types16ShardUploadEventEBF_.exit.i
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c), !noalias !45
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !45
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_sliceNtNtCsiAynQAjgDuT_10xet_client9cas_types18UploadXorbResponseEBN_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !70)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !71
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !noalias !70
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !70
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !70
  store i64 0, ptr %i.b, align 8, !noalias !71
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !71
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !71
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 -128, ptr %i.d, align 8, !noalias !71
  invoke void @_RINvXNvNtCsiAynQAjgDuT_10xet_client9cas_typess_1__NtB5_18UploadXorbResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2e_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.b unwind label %bb.f, !noalias !72

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !7, !alias.scope !70, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !73)
  call void @llvm.experimental.noalias.scope.decl(metadata !74)
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !75, !noalias !71, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !76, !noalias !71 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !75, !noalias !71, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !77)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !78, !noundef !5
  switch i8 %i.l, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !79, !noalias !71
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.d

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !80
  store i64 22, ptr %i.a, align 8, !noalias !80
  %i.n = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f, !noalias !71

bb.f:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #14
          to label %common.resume.i unwind label %bb.m, !noalias !71

bb.g:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !80
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !70
  store i8 1, ptr %0, align 8, !alias.scope !70
  br label %bb.j

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types18UploadXorbResponseEB19_.exit unwind label %bb.h, !noalias !71

bb.h:                                             ; preds = %.loopexit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume.i unwind label %bb.i, !noalias !71

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !71
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.q, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.g, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types18UploadXorbResponseEB19_.exit unwind label %bb.k, !noalias !71

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume.i unwind label %bb.l, !noalias !71

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !71
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !71
  unreachable

_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types18UploadXorbResponseEB19_.exit: ; preds = %.loopexit.i, %bb.j
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b), !noalias !71
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !71
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_sliceNtNtCsiAynQAjgDuT_10xet_client9cas_types19UploadShardResponseEBN_(ptr dead_on_unwind noalias nofree noundef writable sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [56 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !94)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !95
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  store ptr %1, ptr %i.c, align 8, !noalias !94
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !94
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !94
  store i64 0, ptr %i.b, align 8, !noalias !95
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !95
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !95
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  store i8 -128, ptr %i.d, align 8, !noalias !95
  invoke void @_RINvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessh_1__NtB5_19UploadShardResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2g_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %bb.b unwind label %bb.f, !noalias !96

bb.b:                                             ; preds = %bb.a
  %i.e = load i8, ptr %0, align 8, !range !7, !alias.scope !94, !noundef !5
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.j, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !97)
  call void @llvm.experimental.noalias.scope.decl(metadata !98)
  %i.g = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !99, !noalias !95, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !100, !noalias !95 ; 2 uses
  %i.h = icmp ult i64 %.promoted.i.i.i, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.c
  %i.i = load ptr, ptr %i.c, align 8, !alias.scope !99, !noalias !95, !nonnull !5, !noundef !5
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %.lr.ph.i.i.i
  %i.j = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.m, %bb.e ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !noalias !102, !noundef !5
  switch i8 %i.l, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i [
    i8 32, label %bb.e
    i8 10, label %bb.e
    i8 9, label %bb.e
    i8 13, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d, %bb.d, %bb.d
  %i.m = add nuw i64 %i.j, 1                      ; 3 uses
  store i64 %i.m, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !103, !noalias !95
  %exitcond.not.i.i.i = icmp eq i64 %i.m, %i.g
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.d

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i64 22, ptr %i.a, align 8, !noalias !104
  %i.n = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.g unwind label %bb.f, !noalias !95

bb.f:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i, %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.b) #14
          to label %common.resume.i unwind label %bb.m, !noalias !95

bb.g:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.p, align 8, !alias.scope !94
  store i8 1, ptr %0, align 8, !alias.scope !94
  br label %bb.j

.loopexit.i:                                      ; preds = %bb.e, %bb.c
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types19UploadShardResponseEB19_.exit unwind label %bb.h, !noalias !95

bb.h:                                             ; preds = %.loopexit.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume.i unwind label %bb.i, !noalias !95

bb.i:                                             ; preds = %bb.h
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !95
  unreachable

common.resume.i:                                  ; preds = %bb.k, %bb.h, %bb.f
  %common.resume.op.i = phi { ptr, i32 } [ %i.s, %bb.k ], [ %i.q, %bb.h ], [ %i.o, %bb.f ]
  resume { ptr, i32 } %common.resume.op.i

bb.j:                                             ; preds = %bb.g, %bb.b
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types19UploadShardResponseEB19_.exit unwind label %bb.k, !noalias !95

bb.k:                                             ; preds = %bb.j
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b)
          to label %common.resume.i unwind label %bb.l, !noalias !95

bb.l:                                             ; preds = %bb.k
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !95
  unreachable

bb.m:                                             ; preds = %bb.f
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !95
  unreachable

_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types19UploadShardResponseEB19_.exit: ; preds = %.loopexit.i, %bb.j
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.b), !noalias !95
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !95
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_sliceNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEBN_(ptr dead_on_unwind noalias nofree noundef writable sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [88 x i8], align 8                ; 6 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !118)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !119
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !noalias !118
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !118
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !118
  store i64 0, ptr %i.c, align 8, !noalias !119
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !119
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !119
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store i8 -128, ptr %i.e, align 8, !noalias !119
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !119
  invoke void @_RINvXNvNtCsiAynQAjgDuT_10xet_client9cas_typessr_1__NtB5_23FileChunkHashesResponseNtNtCs6SYjS1KFWza_10serde_core2de11Deserialize11deserializeQINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtB2k_4read9SliceReadEEB7_(ptr noalias nofree noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %bb.d unwind label %bb.c, !noalias !120

bb.b:                                             ; preds = %bb.h, %bb.c
  %.pn.i = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.h ]
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueINtNtCsiWcPrHiWZDL_10serde_json2de12DeserializerNtNtBG_4read9SliceReadEECsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef align 8 dereferenceable(56) %i.c) #14
          to label %common.resume.i unwind label %bb.o, !noalias !119

bb.c:                                             ; preds = %bb.i, %bb.a
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.g = load i64, ptr %0, align 8, !range !8, !alias.scope !118, !noundef !5
  %i.h = icmp eq i64 %i.g, -1
  br i1 %i.h, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.b, ptr noundef nonnull align 8 dereferenceable(88) %0, i64 88, i1 false), !noalias !120
  call void @llvm.experimental.noalias.scope.decl(metadata !121)
  call void @llvm.experimental.noalias.scope.decl(metadata !122)
  %i.i = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !123, !noalias !119, !noundef !5 ; 2 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !124, !noalias !119 ; 2 uses
  %i.j = icmp ult i64 %.promoted.i.i.i, %i.i
  br i1 %i.j, label %.lr.ph.i.i.i, label %.loopexit.i

.lr.ph.i.i.i:                                     ; preds = %bb.e
  %i.k = load ptr, ptr %i.d, align 8, !alias.scope !123, !noalias !119, !nonnull !5, !noundef !5
  br label %bb.f

bb.f:                                             ; preds = %bb.g, %.lr.ph.i.i.i
  %i.l = phi i64 [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.o, %bb.g ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !125)
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 %i.l
  %i.n = load i8, ptr %i.m, align 1, !noalias !126, !noundef !5
  switch i8 %i.n, label %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i [
    i8 32, label %bb.g
    i8 10, label %bb.g
    i8 9, label %bb.g
    i8 13, label %bb.g
  ]

bb.g:                                             ; preds = %bb.f, %bb.f, %bb.f, %bb.f
  %i.o = add nuw i64 %i.l, 1                      ; 3 uses
  store i64 %i.o, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !127, !noalias !119
  %exitcond.not.i.i.i = icmp eq i64 %i.o, %i.i
  br i1 %exitcond.not.i.i.i, label %.loopexit.i, label %bb.f

_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !128
  store i64 22, ptr %i.a, align 8, !noalias !128
  %i.p = invoke noundef nonnull align 8 ptr @_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE10peek_errorCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.i unwind label %bb.h, !noalias !119

bb.h:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b) #14
          to label %bb.b unwind label %bb.o, !noalias !119

bb.i:                                             ; preds = %_RNvMs3_NtCsiWcPrHiWZDL_10serde_json2deINtB5_12DeserializerNtNtB7_4read9SliceReadE16parse_whitespaceCsiAynQAjgDuT_10xet_client.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !128
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.r, align 8, !alias.scope !118
  store i64 -1, ptr %0, align 8, !alias.scope !118
  invoke fastcc void @_RINvNtCskKLDkoKarTP_4core3ptr9drop_glueNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEBF_(ptr noalias nofree noundef align 8 dereferenceable(88) %i.b)
          to label %bb.l unwind label %bb.c, !noalias !119

.loopexit.i:                                      ; preds = %bb.g, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEB19_.exit unwind label %bb.j, !noalias !119

bb.j:                                             ; preds = %.loopexit.i
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume.i unwind label %bb.k, !noalias !119

bb.k:                                             ; preds = %bb.j
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !119
  unreachable

common.resume.i:                                  ; preds = %bb.m, %bb.j, %bb.b
  %common.resume.op.i = phi { ptr, i32 } [ %i.u, %bb.m ], [ %i.s, %bb.j ], [ %.pn.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %bb.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !119
  invoke void @_RNvXsp_NtCsexYYUdYSQU6_5alloc3vecINtB5_3VechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEB19_.exit unwind label %bb.m, !noalias !119

bb.m:                                             ; preds = %bb.l
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c)
          to label %common.resume.i unwind label %bb.n, !noalias !119

bb.n:                                             ; preds = %bb.m
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !119
  unreachable

bb.o:                                             ; preds = %bb.h, %bb.b
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCskKLDkoKarTP_4core9panicking16panic_in_cleanup() #15, !noalias !119
  unreachable

_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_traitNtNtB4_4read9SliceReadNtNtCsiAynQAjgDuT_10xet_client9cas_types23FileChunkHashesResponseEB19_.exit: ; preds = %.loopexit.i, %bb.l
  call void @_RNvXs1_NtCsexYYUdYSQU6_5alloc7raw_vecINtB5_6RawVechENtNtNtCskKLDkoKarTP_4core3ops4drop4Drop4dropCsiAynQAjgDuT_10xet_client(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.c), !noalias !119
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !119
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtCsiWcPrHiWZDL_10serde_json2de10from_sliceNtNtCsiAynQAjgDuT_10xet_client9cas_types27QueryReconstructionResponseEBN_(ptr dead_on_unwind noalias nofree noundef writable sret([80 x i8]) align 8 captures(address) dereferenceable(80) %0, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef range(i64 0, -9223372036854775808) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [80 x i8], align 8                ; 10 uses
  %i.c = alloca [56 x i8], align 8                ; 17 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !143
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  store ptr %1, ptr %i.d, align 8, !noalias !142
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32 ; 2 uses
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !142
end_hunk_0
