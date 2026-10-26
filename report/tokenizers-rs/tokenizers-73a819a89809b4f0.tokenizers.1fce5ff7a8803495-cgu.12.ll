Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.12?download=true
inline.NumInlined: 1265
inline.NumDeleted: 570
loop-unroll.NumCompletelyUnrolled: 7
loop-unroll.NumUnrolled: 7
begin_hunk_0_@_RINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB6_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEEBc_:bb.a
  %i.g = alloca [16 x i8], align 8                ; 6 uses
  %i.h = alloca [24 x i8], align 8                ; 13 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 -1, ptr %i.j, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.k = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.559.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.625.0..sroa_idx26 = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.728.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit, %bb.a
  %.sroa.013.0 = phi i8 [ 0, %bb.a ], [ %.sroa.013.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  %.sroa.39.0 = phi i64 [ undef, %bb.a ], [ %.sroa.39.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  %.sroa.08.0 = phi i64 [ 0, %bb.a ], [ %.sroa.08.1, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.body:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %bb.o, %.loopexit.split-lp97
  %.pn78 = phi { ptr, i32 } [ %.pn, %.loopexit.split-lp97 ], [ %i.ay, %bb.o ], [ %i.bs, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.j) #22
          to label %common.resume unwind label %bb.an

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.b
  %i.n = load i64, ptr %i.i, align 8, !range !24, !noundef !3 ; 3 uses
  %i.o = icmp eq i64 %i.n, -2
  %i.p = load ptr, ptr %.sroa.455.0..sroa_idx, align 8 ; 9 uses
  br i1 %i.o, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.p, ptr %i.q, align 8
  store i64 2, ptr %0, align 8
  br label %bb.aj

bb.d:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.556.0.copyload = load i64, ptr %.sroa.556.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not = icmp eq i64 %i.n, -1
  br i1 %.not, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %i.n, ptr %i.h, align 8
  store ptr %i.p, ptr %.sroa.3.0..sroa_idx, align 8
  store i64 %.sroa.556.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8
  switch i64 %.sroa.556.0.copyload, label %bb.n [
    i64 6, label %bb.g
    i64 13, label %bb.i
    i64 5, label %bb.k
    i64 4, label %bb.m
  ]

bb.f:                                             ; preds = %bb.d
  %.sroa.033.0.copyload = load i64, ptr %i.j, align 8 ; 2 uses
  %.not72 = icmp eq i64 %.sroa.033.0.copyload, -1
  br i1 %.not72, label %bb.ap, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.r = load i32, ptr %i.p, align 1
  %i.s = xor i32 %i.r, 1600876149
  %i.t = getelementptr i8, ptr %i.p, i64 4
  %i.u = load i16, ptr %i.t, align 1
  %i.v = zext i16 %i.u to i32
  %i.w = xor i32 %i.v, 25705
  %i.x = or i32 %i.s, %i.w
  %i.y = icmp ne i32 %i.x, 0
  %i.z = zext i1 %i.y to i32
  %i.aa = icmp eq i32 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB2Z_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.i:                                             ; preds = %bb.e
  %i.ab = load i64, ptr %i.p, align 1
  %i.ac = xor i64 %i.ab, 7809635788747209058
  %i.ad = getelementptr i8, ptr %i.p, i64 5
  %i.ae = load i64, ptr %i.ad, align 1
  %i.af = xor i64 %i.ae, 7738135660106375526
  %i.ag = or i64 %i.ac, %i.af
  %i.ah = icmp ne i64 %i.ag, 0
  %i.ai = zext i1 %i.ah to i32
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.k:                                             ; preds = %bb.e
  %i.ak = load i32, ptr %i.p, align 1
  %i.al = xor i32 %i.ak, 1633906550
  %i.am = getelementptr i8, ptr %i.p, i64 4
  %i.an = load i8, ptr %i.am, align 1
  %i.ao = zext i8 %i.an to i32
  %i.ap = xor i32 %i.ao, 98
  %i.aq = or i32 %i.al, %i.ap
  %i.ar = icmp ne i32 %i.aq, 0
  %i.as = zext i1 %i.ar to i32
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB3H_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.m:                                             ; preds = %bb.e
  %i.au = load i32, ptr %i.p, align 1
  %i.av = icmp ne i32 %i.au, 1701869940
  %i.aw = zext i1 %i.av to i32
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.k, %bb.i, %bb.t, %bb.g, %bb.e, %bb.ai, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit, %bb.m
  %.sroa.013.1 = phi i8 [ %.sroa.013.0, %bb.e ], [ %.sroa.013.0, %bb.ai ], [ %.sroa.013.0, %bb.i ], [ %i.cg, %bb.ag ], [ %.sroa.013.0, %bb.t ], [ %.sroa.013.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.013.0, %bb.g ], [ %.sroa.013.0, %bb.m ], [ %.sroa.013.0, %bb.k ]
  %.sroa.39.1 = phi i64 [ %.sroa.39.0, %bb.e ], [ %i.ck, %bb.ai ], [ %.sroa.39.0, %bb.i ], [ %.sroa.39.0, %bb.ag ], [ %.sroa.39.0, %bb.t ], [ %.sroa.39.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.39.0, %bb.g ], [ %.sroa.39.0, %bb.m ], [ %.sroa.39.0, %bb.k ]
  %.sroa.08.1 = phi i64 [ %.sroa.08.0, %bb.e ], [ %i.ch, %bb.ai ], [ %.sroa.08.0, %bb.i ], [ %.sroa.08.0, %bb.ag ], [ %.sroa.08.0, %bb.t ], [ %.sroa.08.0, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ %.sroa.08.0, %bb.g ], [ %.sroa.08.0, %bb.m ], [ %.sroa.08.0, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ay = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.az = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  invoke void @_RINvXsJ_NtNtNtCsctIyQp3ax5j_5serde7private2de7contentINtB6_18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataReEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp97:                             ; preds = %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body91
  %.pn = phi { ptr, i32 } [ %eh.lpad-body92, %.body91 ], [ %lpad.loopexit.split-lp297, %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %.body unwind label %bb.an

.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.l, %bb.j, %bb.h, %bb.u
  %lpad.loopexit.split-lp297 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp97

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.q
  %i.ba = load ptr, ptr %i.d, align 8, !noundef !3 ; 4 uses
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit
  %i.bc = load ptr, ptr %i.k, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.w

bb.s:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit
  %i.bd = load i64, ptr %i.k, align 8, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.be = icmp eq i64 %i.bd, 7
  br i1 %i.be, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.bf = load i32, ptr %i.ba, align 1
  %i.bg = xor i32 %i.bf, 1734962773
  %i.bh = getelementptr i8, ptr %i.ba, i64 3
  %i.bi = load i32, ptr %i.bh, align 1
  %i.bj = xor i32 %i.bi, 1835102823
  %i.bk = or i32 %i.bg, %i.bj
  %i.bl = icmp ne i32 %i.bk, 0
  %i.bm = zext i1 %i.bl to i32
  %i.bn = icmp eq i32 %i.bm, 0
  br i1 %i.bn, label %bb.n, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.s, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bo = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ba, ptr %i.bo, align 8
  %i.bp = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bd, ptr %i.bp, align 8
  store i8 5, ptr %i.c, align 8
  %i.bq = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.v unwind label %.loopexit.split-lp97.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.w

bb.w:                                             ; preds = %bb.r, %bb.v, %bb.ah, %bb.af, %bb.z
  %.sink236 = phi ptr [ %i.cj, %bb.ah ], [ %i.cf, %bb.af ], [ %i.bw, %bb.z ], [ %i.bq, %bb.v ], [ %i.bc, %bb.r ]
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink236, ptr %i.br, align 8
  store i64 2, ptr %0, align 8
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87 unwind label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body unwind label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87: ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.l
  %i.bu = load i64, ptr %i.e, align 8, !range !4, !noundef !3 ; 3 uses
  %i.bv = icmp eq i64 %i.bu, -1
  %i.bw = load ptr, ptr %.sroa.458.0..sroa_idx, align 8 ; 3 uses
  br i1 %i.bv, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.w

bb.aa:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2V_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.559.0.copyload = load i64, ptr %.sroa.559.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.bx = load i64, ptr %i.j, align 8, !range !4, !alias.scope !211, !noundef !3
  %i.by = icmp eq i64 %i.bx, -1
  br i1 %i.by, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body91 unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.ae

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cb = landingpad { ptr, i32 }
          cleanup
  br label %.body91

.body91:                                          ; preds = %bb.ac, %bb.ae
  %eh.lpad-body92 = phi { ptr, i32 } [ %i.cb, %bb.ae ], [ %i.bz, %bb.ac ]
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %.loopexit.split-lp97

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  store i64 %i.bu, ptr %i.j, align 8
  store ptr %i.bw, ptr %.sroa.625.0..sroa_idx26, align 8
  store i64 %.sroa.559.0.copyload, ptr %.sroa.728.0..sroa_idx29, align 8
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.j
  %i.cc = load i8, ptr %i.f, align 8, !range !30, !noundef !3
  %i.cd = trunc nuw i8 %i.cc to i1
  br i1 %i.cd, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.ce = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cf = load ptr, ptr %i.ce, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.w

bb.ag:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit
  %i.cg = load i8, ptr %i.l, align 1, !range !30, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  %i.ch = load i64, ptr %i.g, align 8, !range !5, !noundef !3 ; 2 uses
  %i.ci = icmp eq i64 %i.ch, 2
  br i1 %i.ci, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.cj = load ptr, ptr %i.m, align 8, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.w

bb.ai:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorENtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit
  %i.ck = load i64, ptr %i.m, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90, %bb.c
  %i.cl = load i64, ptr %i.j, align 8, !range !4, !alias.scope !212, !noundef !3
  %i.cm = icmp eq i64 %i.cl, -1
  br i1 %i.cm, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94 unwind label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.cn = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %common.resume unwind label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

common.resume:                                    ; preds = %.body, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.cn, %bb.al ], [ %.pn78, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94: ; preds = %bb.ak
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.an:                                            ; preds = %.loopexit.split-lp97, %.body
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 %.sroa.033.0.copyload, ptr %i.b, align 8
  %.sroa.335.0..sroa_idx36 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.335.0..sroa_idx36, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.cq = trunc nuw i8 %.sroa.013.0 to i1
  call void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.08.0, i64 %.sroa.39.0, i1 noundef zeroext %i.cq)
  %i.cr = load i64, ptr %i.a, align 8, !range !5, !noundef !3 ; 2 uses
  %i.cs = icmp eq i64 %i.cr, 2
  %i.ct = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.cu = load ptr, ptr %i.ct, align 8            ; 2 uses
  %i.cv = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.cs, label %bb.aq, label %bb.ar

bb.ap:                                            ; preds = %bb.f
  %i.cw = call noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13)
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cw, ptr %i.cx, align 8
  store i64 2, ptr %0, align 8
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.aq:                                            ; preds = %bb.ao
  %i.cy = load ptr, ptr %i.cv, align 8, !nonnull !3, !align !18, !noundef !3
  %i.cz = call fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB8_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQINtNtNtNtCsctIyQp3ax5j_5serde7private2de7content18MapRefDeserializerNtNtCs5PtHgSLqj5O_10serde_json5error5ErrorEE0Be_(ptr noundef nonnull %i.cu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.cy)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cz, ptr %i.da, align 8
  store i64 2, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit95

bb.ar:                                            ; preds = %bb.ao
  %.sroa.353.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(312) %.sroa.353.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(312) %i.cv, i64 312, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i64 %i.cr, ptr %0, align 8
  %.sroa.252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cu, ptr %.sroa.252.0..sroa_idx, align 8
end_hunk_0
begin_hunk_1_@_RINvXs1_NtNtCs5PtHgSLqj5O_10serde_json5value2deINtNtBa_3map3MapNtNtCscdodAO9FK5_5alloc6string6StringNtB8_5ValueENtNtCsboAIIHEtPkY_10serde_core2de12Deserializer15deserialize_anyNtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serialization14UnigramVisitorEB2W_:bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 72 ; 8 uses
  store i8 -1, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !288)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !289
  store i64 -1, ptr %i.j, align 8, !noalias !289
  %.sroa.455.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.556.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.458.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.559.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.625.0..sroa_idx26.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.728.0..sroa_idx29.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.f, i64 1
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.a
  %.sroa.013.0.i = phi i8 [ 0, %bb.a ], [ %.sroa.013.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 9 uses
  %.sroa.39.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.39.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 9 uses
  %.sroa.08.0.i = phi i64 [ 0, %bb.a ], [ %.sroa.08.1.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !289
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess13next_key_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataNtNtCscdodAO9FK5_5alloc6string6StringEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

.body.i:                                          ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.x, %.loopexit.split-lp97.i, %bb.o
  %.pn78.i = phi { ptr, i32 } [ %.pn.i, %.loopexit.split-lp97.i ], [ %i.bg, %bb.o ], [ %i.ca, %bb.x ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.j) #22
          to label %.body unwind label %bb.an, !noalias !288

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.b, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b
  %i.v = load i64, ptr %i.i, align 8, !range !24, !noalias !289, !noundef !3 ; 3 uses
  %i.w = icmp eq i64 %i.v, -2
  %i.x = load ptr, ptr %.sroa.455.0..sroa_idx.i, align 8, !noalias !289 ; 9 uses
  br i1 %i.w, label %bb.c, label %bb.d

bb.c:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !289
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.x, ptr %i.y, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  br label %bb.aj

bb.d:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess8next_keyNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.556.0.copyload.i = load i64, ptr %.sroa.556.0..sroa_idx.i, align 8, !noalias !289 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !289
  %.not.i = icmp eq i64 %i.v, -1
  br i1 %.not.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !289
  store i64 %i.v, ptr %i.h, align 8, !noalias !289
  store ptr %i.x, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !289
  store i64 %.sroa.556.0.copyload.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !289
  switch i64 %.sroa.556.0.copyload.i, label %bb.n [
    i64 6, label %bb.g
    i64 13, label %bb.i
    i64 5, label %bb.k
    i64 4, label %bb.m
  ]

bb.f:                                             ; preds = %bb.d
  %.sroa.033.0.copyload.i = load i64, ptr %i.j, align 8, !noalias !289 ; 2 uses
  %.not72.i = icmp eq i64 %.sroa.033.0.copyload.i, -1
  br i1 %.not72.i, label %bb.ap, label %bb.ao

bb.g:                                             ; preds = %bb.e
  %i.z = load i32, ptr %i.x, align 1
  %i.aa = xor i32 %i.z, 1600876149
  %i.ab = getelementptr i8, ptr %i.x, i64 4
  %i.ac = load i16, ptr %i.ab, align 1
  %i.ad = zext i16 %i.ac to i32
  %i.ae = xor i32 %i.ad, 25705
  %i.af = or i32 %i.aa, %i.ae
  %i.ag = icmp ne i32 %i.af, 0
  %i.ah = zext i1 %i.ag to i32
  %i.ai = icmp eq i32 %i.ah, 0
  br i1 %i.ai, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !289
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtB28_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

bb.i:                                             ; preds = %bb.e
  %i.aj = load i64, ptr %i.x, align 1
  %i.ak = xor i64 %i.aj, 7809635788747209058
  %i.al = getelementptr i8, ptr %i.x, i64 5
  %i.am = load i64, ptr %i.al, align 1
  %i.an = xor i64 %i.am, 7738135660106375526
  %i.ao = or i64 %i.ak, %i.an
  %i.ap = icmp ne i64 %i.ao, 0
  %i.aq = zext i1 %i.ap to i32
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %bb.j, label %bb.n

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !289
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDatabEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

bb.k:                                             ; preds = %bb.e
  %i.as = load i32, ptr %i.x, align 1
  %i.at = xor i32 %i.as, 1633906550
  %i.au = getelementptr i8, ptr %i.x, i64 4
  %i.av = load i8, ptr %i.au, align 1
  %i.aw = zext i8 %i.av to i32
  %i.ax = xor i32 %i.aw, 98
  %i.ay = or i32 %i.at, %i.ax
  %i.az = icmp ne i32 %i.ay, 0
  %i.ba = zext i1 %i.az to i32
  %i.bb = icmp eq i32 %i.ba, 0
  br i1 %i.bb, label %bb.l, label %bb.n

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !289
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB2Q_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

bb.m:                                             ; preds = %bb.e
  %i.bc = load i32, ptr %i.x, align 1
  %i.bd = icmp ne i32 %i.bc, 1701869940
  %i.be = zext i1 %i.bd to i32
  %i.bf = icmp eq i32 %i.be, 0
  br i1 %i.bf, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.ai, %bb.ag, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.t, %bb.m, %bb.k, %bb.i, %bb.g, %bb.e
  %.sroa.013.1.i = phi i8 [ %.sroa.013.0.i, %bb.e ], [ %.sroa.013.0.i, %bb.ai ], [ %.sroa.013.0.i, %bb.i ], [ %i.co, %bb.ag ], [ %.sroa.013.0.i, %bb.t ], [ %.sroa.013.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.013.0.i, %bb.g ], [ %.sroa.013.0.i, %bb.m ], [ %.sroa.013.0.i, %bb.k ]
  %.sroa.39.1.i = phi i64 [ %.sroa.39.0.i, %bb.e ], [ %i.cs, %bb.ai ], [ %.sroa.39.0.i, %bb.i ], [ %.sroa.39.0.i, %bb.ag ], [ %.sroa.39.0.i, %bb.t ], [ %.sroa.39.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.39.0.i, %bb.g ], [ %.sroa.39.0.i, %bb.m ], [ %.sroa.39.0.i, %bb.k ]
  %.sroa.08.1.i = phi i64 [ %.sroa.08.0.i, %bb.e ], [ %i.cp, %bb.ai ], [ %.sroa.08.0.i, %bb.i ], [ %.sroa.08.0.i, %bb.ag ], [ %.sroa.08.0.i, %bb.t ], [ %.sroa.08.0.i, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %.sroa.08.0.i, %bb.g ], [ %.sroa.08.0.i, %bb.m ], [ %.sroa.08.0.i, %bb.k ]
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.o, !noalias !288

bb.o:                                             ; preds = %bb.n
  %i.bg = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.p, !noalias !288

bb.p:                                             ; preds = %bb.o
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.n
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

bb.q:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !289
  invoke void @_RINvXsa_NtNtCs5PtHgSLqj5O_10serde_json5value2deNtB6_15MapDeserializerNtNtCsboAIIHEtPkY_10serde_core2de9MapAccess15next_value_seedINtNtCs4NRVxsYgnAr_4core6marker11PhantomDataReEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(104) %i.l)
          to label %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

.loopexit.split-lp97.i:                           ; preds = %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body91.i
  %.pn.i = phi { ptr, i32 } [ %eh.lpad-body92.i, %.body91.i ], [ %lpad.loopexit.split-lp278, %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #22
          to label %.body.i unwind label %bb.an, !noalias !288

.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.q, %bb.l, %bb.j, %bb.h, %bb.u
  %lpad.loopexit.split-lp278 = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp97.i

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.q
  %i.bi = load ptr, ptr %i.d, align 8, !noalias !289, !noundef !3 ; 4 uses
  %i.bj = icmp eq ptr %i.bi, null
  br i1 %i.bj, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bk = load ptr, ptr %i.s, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !289
  br label %bb.w

bb.s:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueReECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.bl = load i64, ptr %i.s, align 8, !noalias !289, !noundef !3 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !289
  %i.bm = icmp eq i64 %i.bl, 7
  br i1 %i.bm, label %bb.t, label %bb.u, !prof !22

bb.t:                                             ; preds = %bb.s
  %i.bn = load i32, ptr %i.bi, align 1
  %i.bo = xor i32 %i.bn, 1734962773
  %i.bp = getelementptr i8, ptr %i.bi, i64 3
  %i.bq = load i32, ptr %i.bp, align 1
  %i.br = xor i32 %i.bq, 1835102823
  %i.bs = or i32 %i.bo, %i.br
  %i.bt = icmp ne i32 %i.bs, 0
  %i.bu = zext i1 %i.bt to i32
  %i.bv = icmp eq i32 %i.bu, 0
  br i1 %i.bv, label %bb.n, label %bb.u, !prof !22

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !289
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.bi, ptr %i.bw, align 8, !noalias !289
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.bl, ptr %i.bx, align 8, !noalias !289
  store i8 5, ptr %i.c, align 8, !noalias !289
  %i.by = invoke noundef nonnull align 8 ptr @_RNvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB5_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error13invalid_value(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @14, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @5)
          to label %bb.v unwind label %.loopexit.split-lp97.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

bb.v:                                             ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !289
  br label %bb.w

bb.w:                                             ; preds = %bb.ah, %bb.af, %bb.z, %bb.v, %bb.r
  %.sink236.i = phi ptr [ %i.cr, %bb.ah ], [ %i.cn, %bb.af ], [ %i.ce, %bb.z ], [ %i.by, %bb.v ], [ %i.bk, %bb.r ]
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sink236.i, ptr %i.bz, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i unwind label %bb.x, !noalias !288

bb.x:                                             ; preds = %bb.w
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i unwind label %bb.y, !noalias !288

bb.y:                                             ; preds = %bb.x
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i: ; preds = %bb.w
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !288

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.l
  %i.cc = load i64, ptr %i.e, align 8, !range !4, !noalias !289, !noundef !3 ; 3 uses
  %i.cd = icmp eq i64 %i.cc, -1
  %i.ce = load ptr, ptr %.sroa.458.0..sroa_idx.i, align 8, !noalias !289 ; 3 uses
  br i1 %i.cd, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  br label %bb.w

bb.aa:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB24_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i
  %.sroa.559.0.copyload.i = load i64, ptr %.sroa.559.0..sroa_idx.i, align 8, !noalias !289 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !289
  %i.cf = load i64, ptr %i.j, align 8, !range !4, !alias.scope !290, !noalias !289, !noundef !3
  %i.cg = icmp eq i64 %i.cf, -1
  br i1 %i.cg, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i unwind label %bb.ac, !noalias !288

bb.ac:                                            ; preds = %bb.ab
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body91.i unwind label %bb.ad, !noalias !288

bb.ad:                                            ; preds = %bb.ac
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %bb.ab
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.ae, !noalias !288

bb.ae:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body91.i

.body91.i:                                        ; preds = %bb.ae, %bb.ac
  %eh.lpad-body92.i = phi { ptr, i32 } [ %i.cj, %bb.ae ], [ %i.ch, %bb.ac ]
  store i64 %i.cc, ptr %i.j, align 8, !noalias !289
  store ptr %i.ce, ptr %.sroa.625.0..sroa_idx26.i, align 8, !noalias !289
  store i64 %.sroa.559.0.copyload.i, ptr %.sroa.728.0..sroa_idx29.i, align 8, !noalias !289
  br label %.loopexit.split-lp97.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtB12_6string6StringdEEEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i.i, %bb.aa
  store i64 %i.cc, ptr %i.j, align 8, !noalias !289
  store ptr %i.ce, ptr %.sroa.625.0..sroa_idx26.i, align 8, !noalias !289
  store i64 %.sroa.559.0.copyload.i, ptr %.sroa.728.0..sroa_idx29.i, align 8, !noalias !289
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.j
  %i.ck = load i8, ptr %i.f, align 8, !range !30, !noalias !289, !noundef !3
  %i.cl = trunc nuw i8 %i.ck to i1
  br i1 %i.cl, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cm = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.cn = load ptr, ptr %i.cm, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !289
  br label %bb.w

bb.ag:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valuebECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.co = load i8, ptr %i.t, align 1, !range !30, !noalias !289, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !289
  br label %bb.n

_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.h
  %i.cp = load i64, ptr %i.g, align 8, !range !5, !noalias !289, !noundef !3 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, 2
  br i1 %i.cq, label %bb.ah, label %bb.ai

bb.ah:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cr = load ptr, ptr %i.u, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !289
  br label %bb.w

bb.ai:                                            ; preds = %_RINvXs5_NtCsboAIIHEtPkY_10serde_core2deQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerNtB6_9MapAccess10next_valueINtNtCs4NRVxsYgnAr_4core6option6OptionjEECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.cs = load i64, ptr %i.u, align 8, !noalias !289
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !289
  br label %bb.n

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !289
  br label %bb.b

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i87.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !289
  br label %bb.aj

bb.aj:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit90.i, %bb.c
  %i.ct = load i64, ptr %i.j, align 8, !range !4, !alias.scope !291, !noalias !289, !noundef !3
  %i.cu = icmp eq i64 %i.ct, -1
  br i1 %i.cu, label %.thread, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i unwind label %bb.al, !noalias !288

bb.al:                                            ; preds = %bb.ak
  %i.cv = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body unwind label %bb.am, !noalias !288

bb.am:                                            ; preds = %bb.al
  %i.cw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTNtNtBG_6string6StringdEEECs2JiOgHzbbc7_10tokenizers.exit.i94.i: ; preds = %bb.ak
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.thread unwind label %bb.ar

bb.an:                                            ; preds = %.loopexit.split-lp97.i, %.body.i
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23, !noalias !288
  unreachable

bb.ao:                                            ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !289
  store i64 %.sroa.033.0.copyload.i, ptr %i.b, align 8, !noalias !289
  %.sroa.335.0..sroa_idx36.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.335.0..sroa_idx36.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.625.0..sroa_idx26.i, i64 16, i1 false), !noalias !289
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !289
  %i.cy = trunc nuw i8 %.sroa.013.0.i to i1
  invoke void @_RNvMs2_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram5modelNtB5_7Unigram4from(ptr noalias noundef nonnull sret([328 x i8]) align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %.sroa.08.0.i, i64 %.sroa.39.0.i, i1 noundef zeroext %i.cy)
          to label %.noexc39 unwind label %bb.ar

.noexc39:                                         ; preds = %bb.ao
  %i.cz = load i64, ptr %i.a, align 8, !range !5, !noalias !289, !noundef !3 ; 2 uses
  %i.da = icmp eq i64 %i.cz, 2
  %i.db = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !noalias !289 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.da, label %bb.aq, label %bb.av

bb.ap:                                            ; preds = %bb.f
  %i.de = invoke noundef nonnull align 8 ptr @_RINvXs6_NtCs5PtHgSLqj5O_10serde_json5errorNtB6_5ErrorNtNtCsboAIIHEtPkY_10serde_core2de5Error6customReECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly captures(address, read_provenance) @15, i64 noundef 13)
          to label %.noexc40 unwind label %bb.ar

.noexc40:                                         ; preds = %bb.ap
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.de, ptr %i.df, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  br label %.thread

bb.aq:                                            ; preds = %.noexc39
  %i.dg = load ptr, ptr %i.dd, align 8, !noalias !289, !nonnull !3, !align !18, !noundef !3
  %i.dh = invoke fastcc noundef nonnull align 8 ptr @_RNCINvXs0_NtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram13serializationNtB8_14UnigramVisitorNtNtCsboAIIHEtPkY_10serde_core2de7Visitor9visit_mapQNtNtNtCs5PtHgSLqj5O_10serde_json5value2de15MapDeserializerE0Be_(ptr noundef nonnull %i.dc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.dg)
          to label %.noexc41 unwind label %bb.ar

.noexc41:                                         ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !289
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dh, ptr %i.di, align 8, !alias.scope !288
  store i64 2, ptr %0, align 8, !alias.scope !288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !289
  br label %.thread

.body:                                            ; preds = %bb.ar, %bb.al, %.body.i, %bb.bb
  %.pn = phi { ptr, i32 } [ %i.dz, %bb.bb ], [ %i.dj, %bb.ar ], [ %i.cv, %bb.al ], [ %.pn78.i, %.body.i ]
end_hunk_1
begin_hunk_2_@_RNvXs_NtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers9delimiterNtB4_18CharDelimiterSplitNtNtB8_9tokenizer12PreTokenizer12pre_tokenize:bb.a
  %i.a = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %0, ptr %i.a, align 8
  %i.b = call { ptr, ptr } @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer13pre_tokenizerNtB6_18PreTokenizedString5splitNCNvXs_NtNtBa_14pre_tokenizers9delimiterNtB1B_18CharDelimiterSplitNtB8_12PreTokenizer12pre_tokenize0INtNtCscdodAO9FK5_5alloc3vec3VecNtNtB8_10normalizer16NormalizedStringEB3C_EBa_(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsa_NtCsgbNVBrIJ05E_5rayon5sliceINtB5_15IterMutProducerNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtB7_4iter8plumbing8Producer8split_atB10_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, i64 noundef %3) unnamed_addr #0 {
bb.a:
  %.not.i = icmp ugt i64 %3, %2
  br i1 %.not.i, label %bb.b, label %_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8Encoding12split_at_mutBA_.exit, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking9panic_fmt(ptr noundef nonnull @76, ptr noundef nonnull inttoptr (i64 19 to ptr), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @99) #25, !noalias !2137
  unreachable

_RNvMNtCs4NRVxsYgnAr_4core5sliceSNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8Encoding12split_at_mutBA_.exit: ; preds = %bb.a
  %i.a = getelementptr inbounds nuw [256 x i8], ptr %1, i64 %3
  %i.b = sub nuw nsw i64 %2, %3
  store ptr %1, ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.a, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.b, ptr %i.e, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXsb_NtCscdodAO9FK5_5alloc6borrowINtB5_3CoweENtNtCs4NRVxsYgnAr_4core3fmt7Display3fmtCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXsq_NtCscdodAO9FK5_5alloc6stringNtB5_6StringNtNtCs4NRVxsYgnAr_4core3fmt7Display3fmt(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !3, !noundef !3
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !3
  %i.e = tail call noundef zeroext i1 @_RNvXsi_NtCs4NRVxsYgnAr_4core3fmteNtB5_7Display3fmt(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtCshiFeWPMd8WI_9itertools9Itertools4joinCs2JiOgHzbbc7_10tokenizers(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull readonly captures(none) %2, i64 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [16 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 12 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = tail call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterReuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  %i.i = extractvalue { ptr, ptr } %i.h, 0        ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.i, ptr %i.g, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val = load i64, ptr %i.j, align 8, !noundef !3
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.k = mul i64 %.val, %3                        ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.k, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.l = load i64, ptr %i.d, align 8, !range !16, !noundef !3
  %i.m = trunc nuw i64 %i.l to i1
  %i.n = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.o = load i64, ptr %i.n, align 8, !range !23, !noundef !3 ; 3 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  br i1 %i.m, label %bb.f, label %bb.g, !prof !19

bb.c:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callRB1J_NCNvYBR_NtCshiFeWPMd8WI_9itertools9Itertools4join0E0ECs2JiOgHzbbc7_10tokenizers.exit, %bb.c
  ret void

bb.e:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp58

bb.f:                                             ; preds = %bb.b
  %i.q = load i64, ptr %i.p, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.q) #25
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.r = load ptr, ptr %i.p, align 8, !nonnull !3, !noundef !3
  %i.s = icmp ule i64 %i.k, %i.o
  tail call void @llvm.assume(i1 %i.s)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 %i.o, ptr %i.f, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  store ptr %i.r, ptr %.sroa.45.0..sroa_idx, align 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.g, ptr %i.e, align 8
  %.sroa.410.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.410.0..sroa_idx, align 8
  %i.t = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @73, ptr noundef nonnull @72, ptr noundef nonnull %i.e)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us.i.i, %.noexc28, %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.us.i.i, %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i, %.noexc31, %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i, %.split.us.i.i.invoke, %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit, %bb.g
  %lpad.loopexit.split-lp58 = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #22
          to label %bb.e unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  br i1 %i.t, label %.split.us.i.i.invoke, label %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit, !prof !19

_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.experimental.noalias.scope.decl(metadata !2153)
  call void @llvm.experimental.noalias.scope.decl(metadata !2154)
  %i.u = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterReuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc27 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc27:                                         ; preds = %_RNvMNtCs4NRVxsYgnAr_4core6resultINtB2_6ResultuNtNtB4_3fmt5ErrorE6unwrapCs2JiOgHzbbc7_10tokenizers.exit
  %i.v = extractvalue { ptr, ptr } %i.u, 0        ; 3 uses
  %.not5.i.i = icmp eq ptr %i.v, null
  br i1 %.not5.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callRB1J_NCNvYBR_NtCshiFeWPMd8WI_9itertools9Itertools4join0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.noexc27
  %.not.i.i.i.i.i.i = icmp eq i64 %3, 0
  %.sroa.43.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us.i.i, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us.i.i: ; preds = %.lr.ph.i.i, %.noexc30
  %i.w = phi ptr [ %i.z, %.noexc30 ], [ %i.v, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2155
  store ptr %i.w, ptr %i.c, align 8, !noalias !2156
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef 0)
          to label %.noexc28 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc28:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2156
  store ptr %i.c, ptr %i.b, align 8, !noalias !2156
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2156
  %i.x = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @73, ptr noundef nonnull @72, ptr noundef nonnull %i.b)
          to label %.noexc29 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc29:                                         ; preds = %.noexc28
  br i1 %i.x, label %.split.us.i.i.invoke, label %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.us.i.i, !prof !19

_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.us.i.i: ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2155
  %i.y = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterReuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc30 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc30:                                         ; preds = %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.us.i.i
  %i.z = extractvalue { ptr, ptr } %i.y, 0        ; 2 uses
  %.not.us.i.i = icmp eq ptr %i.z, null
  br i1 %.not.us.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callRB1J_NCNvYBR_NtCshiFeWPMd8WI_9itertools9Itertools4join0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.us.i.i

_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i, %.noexc34
  %i.aa = phi ptr [ %i.aj, %.noexc34 ], [ %i.v, %.lr.ph.i.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2155
  store ptr %i.aa, ptr %i.c, align 8, !noalias !2156
  invoke void @_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE7reserveCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f, i64 noundef %3)
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i
  %i.ab = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !2157, !noalias !2158, !noundef !3 ; 2 uses
  %i.ac = icmp sgt i64 %i.ab, -1
  call void @llvm.assume(i1 %i.ac)
  %i.ad = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !2157, !noalias !2158, !nonnull !3, !noundef !3
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 %i.ab
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ae, ptr nonnull readonly align 1 %2, i64 %3, i1 false), !noalias !2159
  %.pre.i.i.i.i.i.i = load i64, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !2157, !noalias !2158
  %i.af = add i64 %.pre.i.i.i.i.i.i, %3
  store i64 %i.af, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !2157, !noalias !2158
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2156
  store ptr %i.c, ptr %i.b, align 8, !noalias !2156
  store ptr @_RNvXs1i_NtCs4NRVxsYgnAr_4core3fmtRReNtB6_7Display3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.43.0..sroa_idx.i.i.i.i.i, align 8, !noalias !2156
  %i.ag = invoke noundef zeroext i1 @_RNvNtCs4NRVxsYgnAr_4core3fmt5write(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @73, ptr noundef nonnull @72, ptr noundef nonnull %i.b)
          to label %.noexc32 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc32:                                         ; preds = %.noexc31
  br i1 %i.ag, label %.split.us.i.i.invoke, label %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i, !prof !19

.split.us.i.i.invoke:                             ; preds = %.noexc32, %.noexc29, %bb.h
  %i.ah = phi ptr [ @100, %bb.h ], [ @75, %.noexc29 ], [ @75, %.noexc32 ]
  invoke void @_RNvNtCs4NRVxsYgnAr_4core6result13unwrap_failed(ptr noalias noundef nonnull readonly captures(address, read_provenance) @77, i64 noundef 43, ptr noundef nonnull %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @78, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ah) #25
          to label %.split.us.i.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.split.us.i.i.cont:                               ; preds = %.split.us.i.i.invoke
  unreachable

_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i: ; preds = %.noexc32
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2156
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2155
  %i.ai = invoke { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterReuENtNtNtNtCs4NRVxsYgnAr_4core4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %.noexc34 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc34:                                         ; preds = %_RNCINvMNtNtCs4NRVxsYgnAr_4core3ops9try_traitINtB5_17NeverShortCircuituE10wrap_mut_2uRReNCINvNvNtNtNtNtB9_4iter6traits8iterator8Iterator8for_each4callB1k_NCNvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterB1l_ENtCshiFeWPMd8WI_9itertools9Itertools4join0E0E0Cs2JiOgHzbbc7_10tokenizers.exit.i.i
  %i.aj = extractvalue { ptr, ptr } %i.ai, 0      ; 2 uses
  %.not.i.i = icmp eq ptr %i.aj, null
  br i1 %.not.i.i, label %_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callRB1J_NCNvYBR_NtCshiFeWPMd8WI_9itertools9Itertools4join0E0ECs2JiOgHzbbc7_10tokenizers.exit, label %_RNvMs_NtCscdodAO9FK5_5alloc3vecINtB4_3VechE15append_elementsCs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i.i

_RINvXs2_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3set4IterReENtB6_15IteratorRefSpec9spec_folduNCINvNvNtB6_8Iterator8for_each4callRB1J_NCNvYBR_NtCshiFeWPMd8WI_9itertools9Itertools4join0E0ECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %.noexc34, %.noexc30, %.noexc27
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.d

bb.i:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #23
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderNtNtBb_2fs4FileENtB9_7BufRead9read_lineCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderNtNtB4_2fs4FileENtB2_7BufRead9read_line0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @_RNvYINtNtNtNtCs2AWtUsOyxgP_3std2io8buffered9bufreader9BufReaderRShENtB9_7BufRead9read_lineCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_RINvNtCs2AWtUsOyxgP_3std2io16append_to_stringNCNvYINtNtNtB2_8buffered9bufreader9BufReaderRShENtB2_7BufRead9read_line0ECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull align 8 dereferenceable(56) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #12

; Function Attrs: nonlazybind uwtable
declare void @_RNvMsr_NtCs2AWtUsOyxgP_3std4pathNtB5_7PathBuf5__push(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() unnamed_addr #13

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.fshl.i64(i64, i64, i64) #14

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtCs7oYvdc6j6uT_9daachorse6OutputmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1h_EEENtNtNtBJ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBI_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBF_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtCs7oYvdc6j6uT_9daachorse6OutputmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecINtNtCs4NRVxsYgnAr_4core6option6OptionTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentB1o_EEENtNtNtBQ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtB7_6string6StringENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers10processors20PostProcessorWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers11normalizers17NormalizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers14pre_tokenizers19PreTokenizerWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs2JiOgHzbbc7_10tokenizers8decoders14DecoderWrapperENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBP_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtCs7oYvdc6j6uT_9daachorse8bytewise5StateENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template5PieceENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary16AddedTokenWithIdENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtB7_6string6StringdEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTNtNtNtCsboAIIHEtPkY_10serde_core7private7content7ContentBM_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecjENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecmENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringINtNtBT_3vec3VecBP_EEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringNtNtNtCs2JiOgHzbbc7_10tokenizers10processors8template12SpecialTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropB1w_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTNtNtCscdodAO9FK5_5alloc6string6StringuEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTTmmEBP_EENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableThINtNtNtNtCs2JiOgHzbbc7_10tokenizers6models7unigram4trie4NodehEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBZ_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtCscdodAO9FK5_5alloc6string6StringEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsg_NtCsgQfI1edjipl_9hashbrown3rawINtB5_8RawTableTmNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer16added_vocabulary10AddedTokenEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBW_(ptr noalias noundef align 8 dereferenceable(32)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtNtCscdodAO9FK5_5alloc11collections5btree3mapINtB2_8BTreeMapNtNtB8_6string6StringNtNtCs5PtHgSLqj5O_10serde_json5value5ValueENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
end_hunk_2
