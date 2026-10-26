Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/syn-rs/original/syn-2b0ecb81dd371323.syn.bc9ad91376fc82fa-cgu.03?download=true
inline.NumInlined: 559
inline.NumDeleted: 171
begin_hunk_0_@_RNvXs3_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_9TypeParamNtNtB9_5parse5Parse5parse:bb.a
bb.af:                                            ; preds = %.loopexit
  %i.as = load i64, ptr %i.b, align 8, !range !10, !noundef !6 ; 2 uses
  %.not108 = icmp eq i64 %i.as, -1
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.091.0.copyload = load i64, ptr %i.at, align 8 ; 3 uses
  br i1 %.not108, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.597.0.copyload = load i64, ptr %.sroa.597.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.as, ptr %i.au, align 8
  %.sroa.499.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.091.0.copyload, ptr %.sroa.499.0..sroa_idx, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.597.0.copyload, ptr %.sroa.5100.0..sroa_idx, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.av, align 8
  br label %bb.ae

bb.ah:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.250.0.extract.shift = lshr i64 %.sroa.091.0.copyload, 32
  %i.aw = trunc i64 %.sroa.091.0.copyload to i1
  br i1 %i.aw, label %bb.ai, label %bb.am

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.656)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RINvMs9_NtCsgbWeKYPjk8w_3syn5parseNtB6_11ParseBuffer5parseNtNtB8_2ty4TypeEB8_(ptr noalias nofree noundef nonnull sret([248 x i8]) align 8 captures(address) dereferenceable(248) %i.a, ptr noundef nonnull align 8 %1)
          to label %bb.aj unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aj:                                            ; preds = %bb.ai
  %i.ax = load i64, ptr %i.a, align 8, !range !9, !noundef !6 ; 2 uses
  %i.ay = icmp eq i64 %i.ax, -1
  %i.az = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.656, ptr noundef nonnull align 8 dereferenceable(24) %i.az, i64 24, i1 false)
  br i1 %i.ay, label %bb.ak, label %bb.al

bb.ak:                                            ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ba, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.656, i64 24, i1 false)
  %i.bb = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 -2, ptr %i.bb, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.656)
  br label %bb.ae

bb.al:                                            ; preds = %bb.aj
  %.sroa.5103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.261.32..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.261, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(216) %.sroa.261.32..sroa_idx, ptr noundef nonnull align 8 dereferenceable(216) %.sroa.5103.0..sroa_idx, i64 216, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.261, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.656, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.656)
  br label %bb.am

bb.am:                                            ; preds = %bb.ah, %bb.al
  %.sroa.2.0 = phi i64 [ %i.ax, %bb.al ], [ -1, %bb.ah ]
  %.sroa.665.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.665.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 337
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.10.sroa.6.0..sroa.10.0..sroa_idx.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.11, i64 7, i1 false)
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.766.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false)
  store i64 %.sroa.250.0.extract.shift, ptr %0, align 8
  %.sroa.463.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.2.0, ptr %.sroa.463.0..sroa_idx, align 8
  %.sroa.564.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(240) %.sroa.564.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(240) %.sroa.261, i64 240, i1 false)
  %.sroa.867.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 312
  store i64 %.sroa.068.0.copyload, ptr %.sroa.867.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 320
  store ptr %.sroa.0155.0.copyload, ptr %.sroa.10.0..sroa_idx, align 8
  %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 328
  store i64 %.sroa.4156.0.copyload, ptr %.sroa.10.sroa.4.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 336
  store i8 %.sroa.5157.0.copyload, ptr %.sroa.10.sroa.5.0..sroa.10.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %bb.an

bb.an:                                            ; preds = %bb.b, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void

bb.ao:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ap

bb.ap:                                            ; preds = %bb.ao, %bb.l
  %i.bc = icmp eq i8 %.sroa.5157.0.copyload, 2
  %i.bd = icmp eq i64 %.sroa.4156.0.copyload, 0
  %or.cond163 = select i1 %i.bc, i1 true, i1 %i.bd
  br i1 %or.cond163, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit115, label %bb.aq

bb.aq:                                            ; preds = %bb.ap
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0155.0.copyload) ]
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0155.0.copyload, i64 noundef range(i64 1, 0) %.sroa.4156.0.copyload, i64 noundef 1) #14, !noalias !1112
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit115

bb.ar:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit115: ; preds = %bb.aq, %bb.ap, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBJ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit unwind label %bb.as

bb.as:                                            ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit115
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

common.resume:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit, %bb.as
  %common.resume.op = phi { ptr, i32 } [ %i.bf, %bb.as ], [ %.pn110, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEEB1c_.exit: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueNtCs6et67aoV1xO_11proc_macro25IdentECsgbWeKYPjk8w_3syn.exit115
  call void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtCsgbWeKYPjk8w_3syn4attr9AttributeENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %bb.an
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs3_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_13LifetimeParamNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(96) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw [248 x i8], ptr %i.d, i64 %i.f
  store ptr %i.d, ptr %i.b, align 8, !alias.scope !1115
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !1115
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_RNvNvXs1_NtCsgbWeKYPjk8w_3syn4attrRSNtB7_9AttributeNtB7_11FilterAttrs5outer8is_outer, ptr %i.i, align 8, !alias.scope !1115
  call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtB26_5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEFG0_RL1_RL0_B3i_EbEEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 64
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn8lifetime8printingNtB4_8LifetimeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.val = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 48
  %.val1 = load ptr, ptr %i.l, align 8
  %i.m = icmp ult i64 %.val, 230584300921369396
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.val, 0
  %.not.i = icmp eq ptr %.val1, null
  %.sroa.0.0.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.p, ptr %i.a, align 8
  call void @_RNvXNtCsgbWeKYPjk8w_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token5ColonENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8lifetime8LifetimeNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs4_NtCsgbWeKYPjk8w_3syn8genericsNtB5_11ConstParamsNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !5, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a) #20 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noundef !6
  %i.h = icmp samesign ult i64 %i.g, 17
  br i1 %i.h, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b, %tailrecurse
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBoundNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  tail call void @_RNvMs5_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_14TypeParamBound12parse_single(ptr noalias nofree noundef nonnull sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1, i1 zeroext poison, i1 zeroext poison)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs4_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_9TypeParamNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(344) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.f = load i64, ptr %i.e, align 8, !noundef !6
  %i.g = getelementptr inbounds nuw [248 x i8], ptr %i.d, i64 %i.f
  store ptr %i.d, ptr %i.b, align 8, !alias.scope !1118
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.g, ptr %i.h, align 8, !alias.scope !1118
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_RNvNvXs1_NtCsgbWeKYPjk8w_3syn4attrRSNtB7_9AttributeNtB7_11FilterAttrs5outer8is_outer, ptr %i.i, align 8, !alias.scope !1118
  call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtB26_5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEFG0_RL1_RL0_B3i_EbEEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 320
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 296
  %.val = load i64, ptr %i.k, align 8, !noundef !6 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 304
  %.val1 = load ptr, ptr %i.l, align 8
  %i.m = icmp ult i64 %.val, 72057594037927936
  tail call void @llvm.assume(i1 %i.m)
  %i.n = icmp eq i64 %.val, 0
  %.not.i = icmp eq ptr %.val1, null
  %.sroa.0.0.i = select i1 %i.n, i1 %.not.i, i1 false
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 312
  store ptr %i.p, ptr %i.a, align 8
  call void @_RNvXNtCsgbWeKYPjk8w_3syn5printINtB2_15TokensOrDefaultNtNtB4_5token5ColonENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB4_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14TypeParamBoundNtNtB6_5token4PlusENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.o, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !range !9, !noundef !6
  %.not = icmp eq i64 %i.r, -1
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %i.q, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef align 8 ptr @_RNvXs5_NtCsgbWeKYPjk8w_3syn8genericsNtB5_14ConstParamsMutNtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator4next(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !6, !noundef !6
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !align !5, !noundef !6
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !6, !nonnull !6
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.b, %bb.a
  %i.f = tail call noundef align 8 ptr %i.e(ptr noundef nonnull %i.a) #20 ; 3 uses
  %.not = icmp eq ptr %i.f, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %tailrecurse
  %i.g = load i64, ptr %i.f, align 8, !range !13, !noundef !6
  %i.h = icmp samesign ult i64 %i.g, 17
  br i1 %i.h, label %bb.c, label %tailrecurse

bb.c:                                             ; preds = %bb.b, %tailrecurse
  ret ptr %i.f
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs5_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.b = load i32, ptr %i.a, align 8, !range !21, !noundef !6
  %i.c = trunc nuw i32 %i.b to i1
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 100
  tail call void @_RINvMscE_NtCsgbWeKYPjk8w_3syn5tokenNtB7_5Paren8surroundNCNvXs5_NtNtB9_8generics8printingNtB11_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0EB9_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(12) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
  br label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = load i64, ptr %i.e, align 8, !range !10, !noalias !1121, !noundef !6
  %.not.i = icmp eq i64 %i.f, -1
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @_RNvXs2F_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3ForNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.g, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 84
  tail call void @_RNvXs7R_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2LtNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.h, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics12GenericParamNtNtB6_5token5CommaENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  tail call void @_RNvXs7F_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2GtNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.k = load i32, ptr %i.j, align 8, !range !21, !noalias !1121, !noundef !6
  %i.l = trunc nuw i32 %i.k to i1
  br i1 %i.l, label %bb.f, label %_RNCNvXs5_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB9_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0Bb_.exit

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 116
  tail call void @_RNvXs8L_NtCsgbWeKYPjk8w_3syn5tokenNtB6_8QuestionNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.m, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %_RNCNvXs5_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB9_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0Bb_.exit

_RNCNvXs5_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB9_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0Bb_.exit: ; preds = %bb.e, %bb.f
  tail call void @_RNvXs0_NtNtCsgbWeKYPjk8w_3syn4path8printingNtB7_4PathNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.g

bb.g:                                             ; preds = %_RNCNvXs5_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB9_10TraitBoundNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens0Bb_.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_10TraitBoundNtNtB9_5parse5Parse5parse(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([120 x i8]) align 8 captures(none) dereferenceable(120) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  call fastcc void @_RNvMs7_NtNtCsgbWeKYPjk8w_3syn8generics7parsingNtB7_10TraitBound8do_parse(ptr noalias nofree noundef align 8 captures(none) dereferenceable(120) %i.a, ptr noundef nonnull align 8 %1)
  %i.b = load i64, ptr %i.a, align 8, !range !18, !noundef !6 ; 2 uses
  switch i64 %i.b, label %bb.c [
    i64 -2, label %bb.b
    i64 -1, label %bb.d
  ], !prof !1122

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(112) %.sroa.5.0..sroa_idx, i64 112, i1 false)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  tail call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @9) #19
  unreachable

bb.e:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ %i.b, %bb.c ], [ -1, %bb.b ]
  store i64 %storemerge, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs6_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_10ConstParamNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(480) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !6, !noundef !6 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.e = load i64, ptr %i.d, align 8, !noundef !6
  %i.f = getelementptr inbounds nuw [248 x i8], ptr %i.c, i64 %i.e
  store ptr %i.c, ptr %i.a, align 8, !alias.scope !1125
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8, !alias.scope !1125
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr @_RNvNvXs1_NtCsgbWeKYPjk8w_3syn4attrRSNtB7_9AttributeNtB7_11FilterAttrs5outer8is_outer, ptr %i.h, align 8, !alias.scope !1125
  call void @_RINvNvXNtCs6p3UlaoheVH_5quote3extNtCs6et67aoV1xO_11proc_macro211TokenStreamNtB5_14TokenStreamExt10append_all13do_append_allINtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtB26_5slice4iter4IterNtNtCsgbWeKYPjk8w_3syn4attr9AttributeEFG0_RL1_RL0_B3i_EbEEB3m_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 472
  tail call void @_RNvXs1q_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ConstNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 448
  tail call void @_RNvXsq_NtCs6p3UlaoheVH_5quote9to_tokensNtCs6et67aoV1xO_11proc_macro25IdentNtB5_8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.j, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 476
  tail call void @_RNvXs6X_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5ColonNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtCsgbWeKYPjk8w_3syn2tyNtB2_4TypeNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(248) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 280 ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !range !17, !noundef !6
  %.not = icmp eq i64 %i.m, -1
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 272
  tail call void @_RNvXs7p_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2EqNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvNtNtCsgbWeKYPjk8w_3syn8generics8printing20print_const_argument(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(168) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtCsgbWeKYPjk8w_3syn8genericsNtB5_14BoundLifetimesNtNtCsj6eKBz9Db1c_4core7default7Default7default(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = tail call noundef i32 @_RNvXs2C_NtCsgbWeKYPjk8w_3syn5tokenNtB6_3ForNtNtCsj6eKBz9Db1c_4core7default7Default7default()
  %i.c = tail call noundef i32 @_RNvXsaN_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2LtNtNtCsj6eKBz9Db1c_4core7default7Default7default()
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx, i8 0, i64 16, i1 false)
  %i.d = invoke noundef i32 @_RNvXsaC_NtCsgbWeKYPjk8w_3syn5tokenNtB6_2GtNtNtCsj6eKBz9Db1c_4core7default7Default7default()
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCsgbWeKYPjk8w_3syn10punctuated10PunctuatedNtNtBG_8generics12GenericParamNtNtBG_5token5CommaEEBG_(ptr noalias nofree noundef align 8 dereferenceable(32) %i.a) #16
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 %i.b, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.c, ptr %i.g, align 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.d, ptr %i.h, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #15
  unreachable

bb.e:                                             ; preds = %bb.b
  resume { ptr, i32 } %i.e
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn3gen5cloneNtNtB9_8generics14BoundLifetimesNtNtCsj6eKBz9Db1c_4core5clone5Clone5clone(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load <2 x i32>, ptr %i.a, align 8
  tail call void @_RNvXs_NtCsgbWeKYPjk8w_3syn10punctuatedINtB4_10PunctuatedNtNtB6_8generics12GenericParamNtNtB6_5token5CommaENtNtCsj6eKBz9Db1c_4core5clone5Clone5cloneB6_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1)
  %.val8 = load i32, ptr %i.b, align 8
  store <2 x i32> %i.d, ptr %i.c, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.val8, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs7_NtNtCsgbWeKYPjk8w_3syn8generics8printingNtB7_11WhereClauseNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %0, ptr noalias nofree noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val = load i64, ptr %i.a, align 8, !noundef !6 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val1 = load ptr, ptr %i.b, align 8
  %i.c = icmp ult i64 %.val, 25063510969714065
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %.val, 0
  %.not.i = icmp eq ptr %.val1, null
  %.sroa.0.0.i = select i1 %i.d, i1 %.not.i, i1 false
  br i1 %.sroa.0.0.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RNvXs6h_NtCsgbWeKYPjk8w_3syn5tokenNtB6_5WhereNtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokens(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  tail call void @_RNvXNtNtCsgbWeKYPjk8w_3syn10punctuated8printingINtB4_10PunctuatedNtNtB6_8generics14WherePredicateNtNtB6_5token5CommaENtNtCs6p3UlaoheVH_5quote9to_tokens8ToTokens9to_tokensB6_(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
end_hunk_0
