Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/jobserver-32dab6677d2423f0.jobserver.bac8ce4039c11218-cgu.3?download=true
inline.NumInlined: 46
inline.NumDeleted: 9
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17hbe3aa75528f2abcbE":bb.a
  %i.v = sub nuw i64 %i.u, %i.t
  %i.w = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.t
  br label %"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit"

"_ZN90_$LT$core..str..iter..Split$LT$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd70443282be1026bE.exit": ; preds = %bb.b, %bb.c, %bb.e, %bb.f
  %.sroa.4.0.i.i = phi i64 [ undef, %bb.c ], [ %i.j, %bb.b ], [ %i.v, %bb.f ], [ undef, %bb.e ]
  %.sroa.0.0.i.i = phi ptr [ null, %bb.c ], [ %i.k, %bb.b ], [ %i.w, %bb.f ], [ null, %bb.e ]
  %i.x = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i.i, 0
  %i.y = insertvalue { ptr, i64 } %i.x, i64 %.sroa.4.0.i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret { ptr, i64 } %i.y
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hcaf07ba528896e88E"(ptr nofree readonly align 8 captures(none) %0) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load i64, ptr %i.c, align 8
  %i.e = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.f = insertvalue { ptr, i64 } %i.e, i64 %i.d, 1
  ret { ptr, i64 } %i.f
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN9jobserver6Client10mflags_env17hff3e05a69962e7eeE(ptr noalias nofree nonnull writeonly align 8 captures(none) %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [48 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %1)
  call void @_ZN9jobserver3imp6Client10string_arg17h7a45458e23f3af2cE(ptr nonnull sret([24 x i8]) align 8 %i.e, ptr align 8 %i.f)
  invoke void @_ZN4core3fmt2rt8Argument11new_display17h768a32b1b1494419E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr nonnull align 8 %i.e)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr nonnull align 8 %i.e) #22
          to label %bb.f unwind label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.b, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  store ptr @17, ptr %i.c, align 8, !alias.scope !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.h, align 8, !alias.scope !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr @18, ptr %i.i, align 8, !alias.scope !5
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store i64 2, ptr %i.j, align 8, !alias.scope !5
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.b, ptr %i.k, align 8, !alias.scope !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.l, align 8, !alias.scope !5
  invoke void @_ZN5alloc3fmt6format17he99a13f68852926eE(ptr nonnull sret([24 x i8]) align 8 %i.d, ptr nonnull align 8 %i.c)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr nonnull align 8 %i.e)
  ret void

bb.e:                                             ; preds = %bb.b
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.f:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN9jobserver6Client11acquire_raw17h6b3989fb67ecb51fE(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  %i.c = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %0)
  call void @_ZN9jobserver3imp6Client7acquire17hc2c4444a0ad53158E(ptr nonnull sret([16 x i8]) align 8 %i.a, ptr align 8 %i.c)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h78158d009a5bacd0E"(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
  %i.d = load i8, ptr %i.b, align 8
  %i.e = trunc nuw i8 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h43674a1d9210d25aE"(ptr %i.g, ptr nonnull align 8 @19)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.h, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define ptr @_ZN9jobserver6Client11release_raw17h38720cd7483a09f8E(ptr align 8 %0) unnamed_addr #2 {
bb.a:
  %i.a = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %0)
  %i.b = tail call ptr @_ZN9jobserver3imp6Client7release17h5ad56262c7d2afcfE(ptr align 8 %i.a, ptr align 1 null)
  %i.c = tail call ptr @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h37739db2ca3354acE"(ptr %i.b) ; 2 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call ptr @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h43674a1d9210d25aE"(ptr nonnull %i.c, ptr nonnull align 8 @20)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client11try_acquire17he6b9a1cc70fd2816E(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 2 uses
  %i.b = alloca [16 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  %i.d = tail call align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %1)
  call void @_ZN9jobserver3imp6Client11try_acquire17hb3cde0e0346ed725E(ptr nonnull sret([16 x i8]) align 8 %i.b, ptr align 8 %i.d)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17he359e4ef9ef40d8cE"(ptr nonnull sret([16 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.e = load i8, ptr %i.c, align 8
  %i.f = trunc nuw i8 %i.e to i1
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  call void @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17hc8265ed123d486a8E"(ptr sret([16 x i8]) align 8 %0, ptr %i.h, ptr nonnull align 8 @21)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 1
  %i.j = load i8, ptr %i.i, align 1
  %i.k = trunc nuw i8 %i.j to i1
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 2
  %i.m = load i8, ptr %i.l, align 2
  call void @"_ZN4core6option15Option$LT$T$GT$3map17hc9de580ec231db1eE"(ptr nonnull sret([16 x i8]) align 8 %i.a, i1 zeroext %i.k, i8 %i.m, ptr align 8 %1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN9jobserver6Client11try_acquire28_$u7b$$u7b$closure$u7d$$u7d$17hf77410e97af18fb9E"(ptr nofree writeonly sret([16 x i8]) align 8 captures(none) initializes((0, 10)) %0, ptr align 8 %1, i8 %2) unnamed_addr #8 {
bb.a:
  %i.a = tail call ptr @"_ZN68_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h05e93a853709faebE"(ptr align 8 %1)
  store ptr %i.a, ptr %0, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 0, ptr %i.c, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client12from_env_ext17h4c2c8ef55b0a04ffE(ptr nofree writeonly sret([72 x i8]) align 8 captures(none) %0, i1 zeroext %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 8 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %i.c = alloca [32 x i8], align 8                ; 11 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [40 x i8], align 8                ; 3 uses
  %i.f = alloca [24 x i8], align 8                ; 2 uses
  %i.g = alloca [24 x i8], align 8                ; 2 uses
  %i.h = alloca [32 x i8], align 8                ; 3 uses
  %i.i = alloca [16 x i8], align 8                ; 3 uses
  %i.j = alloca [40 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 8 uses
  store ptr @25, ptr %i.i, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr getelementptr inbounds nuw (i8, ptr @25, i64 48), ptr %i.l, align 8
  call void @_ZN4core4iter6traits8iterator8Iterator8find_map17h33e1c5b51e7e80a8E(ptr nonnull sret([40 x i8]) align 8 %i.j, ptr nonnull align 8 %i.i)
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not = icmp eq i64 %i.n, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = load ptr, ptr %i.j, align 8              ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.q = load i64, ptr %i.p, align 8              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false)
  %i.r = invoke { ptr, i64 } @"_ZN70_$LT$std..ffi..os_str..OsString$u20$as$u20$core..ops..deref..Deref$GT$5deref17hcb87e1aa5bf8e49fE"(ptr nonnull align 8 %i.k)
          to label %bb.i unwind label %bb.y       ; 2 uses

bb.c:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %i.h, align 8
  invoke void @"_ZN69_$LT$std..ffi..os_str..OsString$u20$as$u20$core..default..Default$GT$7default17h61add9c1e0c9b0baE"(ptr nonnull sret([24 x i8]) align 8 %i.g)
          to label %bb.d unwind label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.s, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %.sroa.33.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %bb.u, %bb.s, %bb.q, %bb.d
  %.sink34 = phi ptr [ %i.o, %bb.w ], [ %i.o, %bb.u ], [ %i.o, %bb.s ], [ %i.o, %bb.q ], [ inttoptr (i64 1 to ptr), %bb.d ]
  %.sink33 = phi i64 [ %i.q, %bb.w ], [ %i.q, %bb.u ], [ %i.q, %bb.s ], [ %i.q, %bb.q ], [ 0, %bb.d ]
  store ptr %.sink34, ptr %0, align 8
  %.sroa.25.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink33, ptr %.sroa.25.0..sroa_idx.i, align 8
  ret void

bb.f:                                             ; preds = %bb.y, %bb.x, %bb.g
  %.pn = phi { ptr, i32 } [ %i.be, %bb.x ], [ %i.t, %bb.g ], [ %i.bf, %bb.y ]
  resume { ptr, i32 } %.pn

bb.g:                                             ; preds = %bb.c
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr56drop_in_place$LT$jobserver..error..FromEnvErrorInner$GT$17h168af2ff5c486282E"(ptr nonnull align 8 %i.h) #22
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.y, %bb.x, %bb.g
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.i:                                             ; preds = %bb.b
  %i.v = extractvalue { ptr, i64 } %i.r, 0
  %i.w = extractvalue { ptr, i64 } %i.r, 1
  %i.x = invoke { ptr, i64 } @_ZN3std3ffi6os_str5OsStr6to_str17ha7b3674a57d73c84E(ptr align 1 %i.v, i64 %i.w)
          to label %bb.j unwind label %bb.y       ; 2 uses

bb.j:                                             ; preds = %bb.i
  %i.y = extractvalue { ptr, i64 } %i.x, 0        ; 7 uses
  %.not13 = icmp eq ptr %i.y, null
  br i1 %.not13, label %bb.p, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.z = extractvalue { ptr, i64 } %i.x, 1        ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.32.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hf3d14f3267cac7fdE"(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr nonnull align 1 @13, i64 17, ptr nonnull align 1 %i.y, i64 %i.z)
          to label %.noexc unwind label %bb.y

.noexc:                                           ; preds = %bb.k
  invoke void @"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17hd08d7ea919cf28d3E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %.noexc16 unwind label %bb.y

.noexc16:                                         ; preds = %.noexc
  %i.ac = load i64, ptr %i.b, align 8
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.l, label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.i"

bb.l:                                             ; preds = %.noexc16
  %i.ae = load i64, ptr %i.aa, align 8
  %i.af = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ag = sub nuw i64 %i.z, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.af
  store i64 %i.ae, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  store ptr %i.ah, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 8
  store i64 %i.ag, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  br label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.i"

"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.i": ; preds = %bb.l, %.noexc16
  %.sink.i.i.i.i = phi ptr [ %i.y, %bb.l ], [ null, %.noexc16 ]
  store ptr %.sink.i.i.i.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ai = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h7e677e59b98c57c8E"(ptr nonnull align 8 %i.c)
          to label %.noexc17 unwind label %bb.y   ; 2 uses

.noexc17:                                         ; preds = %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.aj = extractvalue { ptr, i64 } %i.ai, 0      ; 2 uses
  %.not9.i.i = icmp eq ptr %i.aj, null
  br i1 %.not9.i.i, label %bb.m, label %bb.o

bb.m:                                             ; preds = %.noexc17
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$13into_searcher17hf3d14f3267cac7fdE"(ptr nonnull sret([104 x i8]) align 8 %i.a, ptr nonnull align 1 @14, i64 16, ptr nonnull align 1 %i.y, i64 %i.z)
          to label %.noexc18 unwind label %bb.y

.noexc18:                                         ; preds = %bb.m
  invoke void @"_ZN87_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..ReverseSearcher$GT$15next_match_back17hd08d7ea919cf28d3E"(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr nonnull align 8 %i.a)
          to label %.noexc19 unwind label %bb.y

.noexc19:                                         ; preds = %.noexc18
  %i.ak = load i64, ptr %i.b, align 8
  %i.al = trunc nuw i64 %i.ak to i1
  br i1 %i.al, label %bb.n, label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.1.i"

bb.n:                                             ; preds = %.noexc19
  %i.am = load i64, ptr %i.aa, align 8
  %i.an = load i64, ptr %i.ab, align 8            ; 2 uses
  %i.ao = sub nuw i64 %i.z, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.an
  store i64 %i.am, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8
  store ptr %i.ap, ptr %.sroa.32.0..sroa_idx.i.i.i.i, align 8
  store i64 %i.ao, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8
  br label %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.1.i"

"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.1.i": ; preds = %bb.n, %.noexc19
  %.sink.i.i.i.1.i = phi ptr [ %i.y, %bb.n ], [ null, %.noexc19 ]
  store ptr %.sink.i.i.i.1.i, ptr %i.c, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aq = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$3map17h7e677e59b98c57c8E"(ptr nonnull align 8 %i.c)
          to label %.noexc20 unwind label %bb.y   ; 2 uses

.noexc20:                                         ; preds = %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.1.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = extractvalue { ptr, i64 } %i.aq, 0      ; 2 uses
  %.not9.i.1.i = icmp eq ptr %i.ar, null
  br i1 %.not9.i.1.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE.exit.i", label %bb.o

bb.o:                                             ; preds = %.noexc20, %.noexc17
  %.lcssa2.i = phi { ptr, i64 } [ %i.ai, %.noexc17 ], [ %i.aq, %.noexc20 ]
  %.lcssa.i = phi ptr [ %i.aj, %.noexc17 ], [ %i.ar, %.noexc20 ]
  %i.as = extractvalue { ptr, i64 } %.lcssa2.i, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE.exit.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE.exit.i": ; preds = %bb.o, %.noexc20
  %.sroa.3.0.i.i = phi i64 [ %i.as, %bb.o ], [ undef, %.noexc20 ]
  %.sroa.0.0.i.i = phi ptr [ %.lcssa.i, %bb.o ], [ null, %.noexc20 ]
  %i.at = invoke { ptr, i64 } @"_ZN4core6option15Option$LT$T$GT$8and_then17h9a8293f145d98931E"(ptr align 1 %.sroa.0.0.i.i, i64 %.sroa.3.0.i.i)
          to label %_ZN9jobserver19find_jobserver_auth17hba55766094e526beE.exit unwind label %bb.y ; 2 uses

bb.p:                                             ; preds = %bb.j
  invoke void @"_ZN45_$LT$T$u20$as$u20$alloc..string..ToString$GT$9to_string17h40a909441bd58fabE"(ptr nonnull sret([24 x i8]) align 8 %i.f, ptr nonnull align 1 @26, i64 15)
          to label %bb.q unwind label %bb.y

bb.q:                                             ; preds = %bb.p
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.au, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775806, ptr %2, align 8
  br label %bb.e

_ZN9jobserver19find_jobserver_auth17hba55766094e526beE.exit: ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE.exit.i"
  %i.av = extractvalue { ptr, i64 } %i.at, 0      ; 2 uses
  %.not14 = icmp eq ptr %i.av, null
  br i1 %.not14, label %bb.s, label %bb.r

bb.r:                                             ; preds = %_ZN9jobserver19find_jobserver_auth17hba55766094e526beE.exit
  %i.aw = extractvalue { ptr, i64 } %i.at, 1
  invoke void @_ZN9jobserver3imp6Client4open17he52129cd658fe7d7E(ptr nonnull sret([40 x i8]) align 8 %i.e, ptr nonnull align 1 %i.av, i64 %i.aw, i1 zeroext %1)
          to label %bb.t unwind label %bb.y

bb.s:                                             ; preds = %_ZN9jobserver19find_jobserver_auth17hba55766094e526beE.exit
  %.sroa.33.0..sroa_idx.i24 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i24, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775807, ptr %i.ax, align 8
  br label %bb.e

bb.t:                                             ; preds = %bb.r
  %i.ay = load i64, ptr %i.e, align 8
  %i.az = trunc nuw i64 %i.ay to i1
  %i.ba = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  br i1 %i.az, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %.sroa.33.0..sroa_idx.i26 = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.33.0..sroa_idx.i26, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  br label %bb.e

bb.v:                                             ; preds = %bb.t
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  %i.bc = invoke ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17hfc9da8a26766cb39E"(ptr nonnull align 8 %i.d)
          to label %bb.w unwind label %bb.x

bb.w:                                             ; preds = %bb.v
  %.sroa.36.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.36.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false)
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 -9223372036854775800, ptr %i.bd, align 8, !alias.scope !8
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.bc, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !8
  br label %bb.e

bb.x:                                             ; preds = %bb.v
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h1a9106aaabecb286E"(ptr nonnull align 8 %i.k) #22
          to label %bb.f unwind label %bb.h

bb.y:                                             ; preds = %bb.b, %bb.i, %bb.p, %bb.r, %bb.k, %.noexc, %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.i", %bb.m, %.noexc18, %"_ZN9jobserver19find_jobserver_auth28_$u7b$$u7b$closure$u7d$$u7d$17h7607d0ac142e3e55E.exit.i.1.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hecfca7193995ed1eE.exit.i"
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr47drop_in_place$LT$std..ffi..os_str..OsString$GT$17h1a9106aaabecb286E"(ptr nonnull align 8 %i.k) #22
          to label %bb.f unwind label %bb.h
}

; Function Attrs: inlinehint nonlazybind uwtable
define hidden void @"_ZN9jobserver6Client12from_env_ext28_$u7b$$u7b$closure$u7d$$u7d$17h238fce6c5ede51d0E"(ptr sret([40 x i8]) align 8 %0, ptr nofree readnone align 1 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 2 uses
  %i.c = alloca [16 x i8], align 8                ; 3 uses
  %i.d = load ptr, ptr %2, align 8                ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.f = load i64, ptr %i.e, align 8              ; 2 uses
  store ptr %i.d, ptr %i.c, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.f, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.f, ptr %i.h, align 8
  %i.i = call { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h62a93cc30acbc4feE"(ptr nonnull align 8 %i.a) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @_ZN3std3env7_var_os17h5af5bd490bdba3d6E(ptr nonnull sret([24 x i8]) align 8 %i.b, ptr align 1 %i.j, i64 %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @"_ZN4core6option15Option$LT$T$GT$3map17hfe62fb47a9fb17e0E"(ptr sret([40 x i8]) align 8 %0, ptr nonnull align 8 %i.b, ptr nonnull align 8 %i.c)
  ret void
}

; Function Attrs: inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @"_ZN9jobserver6Client12from_env_ext28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17h3afb15829c0b41f8E"(ptr nofree writeonly sret([40 x i8]) align 8 captures(none) initializes((0, 40)) %0, ptr nofree readonly align 8 captures(none) %1, ptr nofree readonly align 8 captures(none) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8
  store ptr %i.a, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.c, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client14configure_make17h9dba2d0c7bf4db99E(ptr align 8 %0, ptr align 8 %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  call fastcc void @_ZN9jobserver6Client10mflags_env17hff3e05a69962e7eeE(ptr noalias align 8 %i.g, ptr align 8 %0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr @22, ptr %i.f, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 15, ptr %i.h, align 8
  store ptr %i.g, ptr %i.e, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 3 uses
  %i.j = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h62a93cc30acbc4feE"(ptr nonnull align 8 %i.f)
          to label %.noexc unwind label %bb.b     ; 2 uses

.noexc:                                           ; preds = %bb.a
  %i.k = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h7469bf2022ed91adE"(ptr nonnull align 8 %i.e)
          to label %.noexc1 unwind label %bb.b    ; 2 uses

.noexc1:                                          ; preds = %.noexc
  %i.l = extractvalue { ptr, i64 } %i.j, 1
  %i.m = extractvalue { ptr, i64 } %i.j, 0
  %i.n = extractvalue { ptr, i64 } %i.k, 0
  %i.o = extractvalue { ptr, i64 } %i.k, 1
  invoke void @_ZN3std3sys7process3env10CommandEnv3set17h064f2409c7d3b1b2E(ptr nonnull align 8 %i.i, ptr align 1 %i.m, i64 %i.l, ptr align 1 %i.n, i64 %i.o)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.noexc8, %.noexc7, %bb.d, %.noexc4, %.noexc3, %bb.c, %.noexc1, %.noexc, %bb.a, %bb.f, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr nonnull align 8 %i.g) #22
          to label %bb.i unwind label %bb.h

bb.c:                                             ; preds = %.noexc1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr @23, ptr %i.d, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 9, ptr %i.q, align 8
  store ptr %i.g, ptr %i.c, align 8
  %i.r = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h62a93cc30acbc4feE"(ptr nonnull align 8 %i.d)
          to label %.noexc3 unwind label %bb.b    ; 2 uses

.noexc3:                                          ; preds = %bb.c
  %i.s = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h7469bf2022ed91adE"(ptr nonnull align 8 %i.c)
          to label %.noexc4 unwind label %bb.b    ; 2 uses

.noexc4:                                          ; preds = %.noexc3
  %i.t = extractvalue { ptr, i64 } %i.r, 1
  %i.u = extractvalue { ptr, i64 } %i.r, 0
  %i.v = extractvalue { ptr, i64 } %i.s, 0
  %i.w = extractvalue { ptr, i64 } %i.s, 1
  invoke void @_ZN3std3sys7process3env10CommandEnv3set17h064f2409c7d3b1b2E(ptr nonnull align 8 %i.i, ptr align 1 %i.u, i64 %i.t, ptr align 1 %i.v, i64 %i.w)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %.noexc4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @24, ptr %i.b, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 6, ptr %i.x, align 8
  store ptr %i.g, ptr %i.a, align 8
  %i.y = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h62a93cc30acbc4feE"(ptr nonnull align 8 %i.b)
          to label %.noexc7 unwind label %bb.b    ; 2 uses

.noexc7:                                          ; preds = %bb.d
  %i.z = invoke { ptr, i64 } @"_ZN55_$LT$$RF$T$u20$as$u20$core..convert..AsRef$LT$U$GT$$GT$6as_ref17h7469bf2022ed91adE"(ptr nonnull align 8 %i.a)
          to label %.noexc8 unwind label %bb.b    ; 2 uses

.noexc8:                                          ; preds = %.noexc7
  %i.aa = extractvalue { ptr, i64 } %i.y, 1
  %i.ab = extractvalue { ptr, i64 } %i.y, 0
  %i.ac = extractvalue { ptr, i64 } %i.z, 0
  %i.ad = extractvalue { ptr, i64 } %i.z, 1
  invoke void @_ZN3std3sys7process3env10CommandEnv3set17h064f2409c7d3b1b2E(ptr nonnull align 8 %i.i, ptr align 1 %i.ab, i64 %i.aa, ptr align 1 %i.ac, i64 %i.ad)
          to label %bb.e unwind label %bb.b

bb.e:                                             ; preds = %.noexc8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ae = invoke align 8 ptr @"_ZN73_$LT$alloc..sync..Arc$LT$T$C$A$GT$$u20$as$u20$core..ops..deref..Deref$GT$5deref17h27f43b7f59ea692aE"(ptr align 8 %0)
          to label %bb.f unwind label %bb.b

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN9jobserver3imp6Client9configure17hfe2f1ea51b4c18a2E(ptr align 8 %i.ae, ptr align 8 %1)
          to label %bb.g unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  call void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hac1e1e3627c65915E"(ptr nonnull align 8 %i.g)
  ret void

bb.h:                                             ; preds = %bb.b
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #23
  unreachable

bb.i:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.p
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN9jobserver6Client3new17h9fab54293c3c6e26E(i64 %0) unnamed_addr #2 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = alloca [32 x i8], align 8                ; 4 uses
  call void @_ZN9jobserver3imp6Client3new17h16b7c422baa2baf0E(ptr nonnull sret([32 x i8]) align 8 %i.b, i64 %0)
  call void @"_ZN79_$LT$core..result..Result$LT$T$C$E$GT$$u20$as$u20$core..ops..try_trait..Try$GT$6branch17h56e4156b5f106fa8E"(ptr nonnull sret([32 x i8]) align 8 %i.c, ptr nonnull align 8 %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load i8, ptr %i.d, align 8
  %i.f = icmp eq i8 %i.e, 2
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = load ptr, ptr %i.c, align 8
  %i.h = call { i64, ptr } @"_ZN153_$LT$core..result..Result$LT$T$C$F$GT$$u20$as$u20$core..ops..try_trait..FromResidual$LT$core..result..Result$LT$core..convert..Infallible$C$E$GT$$GT$$GT$13from_residual17h7dde79b2b0359d8bE"(ptr %i.g, ptr nonnull align 8 @27)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false)
  %i.i = call ptr @"_ZN5alloc4sync12Arc$LT$T$GT$3new17hfc9da8a26766cb39E"(ptr nonnull align 8 %i.a)
  %i.j = insertvalue { i64, ptr } { i64 0, ptr poison }, ptr %i.i, 1
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.merged = phi { i64, ptr } [ %i.h, %bb.b ], [ %i.j, %bb.c ]
  ret { i64, ptr } %.merged
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9jobserver6Client7acquire17hf18b2174aa5b8cdcE(ptr sret([16 x i8]) align 8 %0, ptr align 8 %1) unnamed_addr #2 {
end_hunk_0
