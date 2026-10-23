Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_list:bb.a
  store ptr %i.ab, ptr %i.x, align 16, !alias.scope !15005
  store i64 %i.ac, ptr %i.ad, align 8, !alias.scope !15005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.s, ptr noundef nonnull align 16 dereferenceable(112) %i.r, i64 112, i1 false), !alias.scope !15007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %.sroa.01.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.42.0.copyload = load ptr, ptr %.sroa.42.0..sroa_idx, align 8, !nonnull !52, !noundef !52 ; 13 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.53.0.copyload = load i64, ptr %.sroa.53.0..sroa_idx, align 8 ; 3 uses
  %i.ah = icmp ult i64 %.sroa.53.0.copyload, 164703072086692426
  tail call void @llvm.assume(i1 %i.ah)
  %.idx = mul nuw nsw i64 %.sroa.53.0.copyload, 56
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.42.0.copyload, i64 %.idx ; 4 uses
  %i.aj = icmp sgt i64 %.sroa.01.0.copyload, -1
  tail call void @llvm.assume(i1 %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !15008
  store ptr %.sroa.42.0.copyload, ptr %i.k, align 8, !alias.scope !15009, !noalias !15010
  %.sroa.445.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 5 uses
  %.sroa.546.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  store i64 %.sroa.01.0.copyload, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !15009, !noalias !15010
  %.sroa.647.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
  store ptr %i.ai, ptr %.sroa.647.0..sroa_idx, align 8, !alias.scope !15009, !noalias !15010
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15011)
  %i.ak = mul i64 %.sroa.01.0.copyload, 56        ; 8 uses
  %i.al = udiv i64 %i.ak, 24                      ; 3 uses
  %.not.i34116 = icmp eq i64 %.sroa.53.0.copyload, 0
  br i1 %.not.i34116, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.g
  %i.am = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.an = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.4141.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.8142.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  %.sroa.9143.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  %.sroa.6147.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.4146.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.7148.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.8150.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %.sroa.9152.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i
  %.sroa.654.0118 = phi ptr [ %.sroa.42.0.copyload, %.lr.ph ], [ %i.bd, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 3 uses
  %.val.i.i3065117 = phi ptr [ %.sroa.42.0.copyload, %.lr.ph ], [ %i.ao, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.e, ptr noundef nonnull align 8 dereferenceable(56) %.val.i.i3065117, i64 56, i1 false)
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 56 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15012
  %i.ap = load i64, ptr %i.am, align 8, !noundef !52 ; 2 uses
  %i.aq = icmp ult i64 %i.ap, 164703072086692426
  call void @llvm.assume(i1 %i.aq), !noalias !15013
  %i.ar = icmp eq i64 %i.ap, 0                    ; 3 uses
  br i1 %i.ar, label %bb.i, label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i

_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i: ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15014
  %i.as = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.as, i64 24, i1 false)
  store i128 0, ptr %i.g, align 16, !alias.scope !15015, !noalias !15014
  store i64 1, ptr %.sroa.4141.0..sroa_idx, align 16, !alias.scope !15015, !noalias !15014
  store ptr null, ptr %.sroa.7.0..sroa_idx, align 16, !alias.scope !15015, !noalias !15014
  store ptr null, ptr %.sroa.8142.0..sroa_idx, align 16, !alias.scope !15015, !noalias !15014
  store i64 -9223372036854752988, ptr %.sroa.9143.0..sroa_idx, align 16, !alias.scope !15015, !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15014
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.g)
          to label %bb.j unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72, !noalias !15016, !inline_history !14964

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72: ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.au = getelementptr inbounds nuw i8, ptr %.val.i.i3065117, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.au, i64 24, i1 false)
  br label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i

bb.j:                                             ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit18.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15014
  invoke fastcc void @_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_list(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.f, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.l unwind label %bb.n

bb.k:                                             ; preds = %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br label %.body.i36

bb.l:                                             ; preds = %bb.j
  invoke void @_RNvXs4_NtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB5_7ContentNtNtNtCs3oUPovFnLWP_4core3ops5arith3Add3add(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.m unwind label %bb.k, !noalias !15016, !inline_history !14964

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !15014
  br label %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i

_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i: ; preds = %bb.i, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15014
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6147.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !15014
  store i128 0, ptr %i.d, align 16, !alias.scope !15017, !noalias !15014
  store i64 1, ptr %.sroa.4146.0..sroa_idx, align 16, !alias.scope !15017, !noalias !15014
  store ptr null, ptr %.sroa.7148.0..sroa_idx, align 16, !alias.scope !15017, !noalias !15014
  store ptr null, ptr %.sroa.8150.0..sroa_idx, align 16, !alias.scope !15017, !noalias !15014
  store i64 -9223372036854775508, ptr %.sroa.9152.0..sroa_idx, align 16, !alias.scope !15017, !noalias !15014
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15014
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.b, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.d)
          to label %bb.p unwind label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i, !noalias !15016, !inline_history !14964

bb.n:                                             ; preds = %bb.j
  %i.aw = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %.body.i36 unwind label %bb.o, !noalias !15018, !inline_history !14968

bb.o:                                             ; preds = %bb.r, %bb.n
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15016, !inline_history !14964
  unreachable

bb.p:                                             ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !15019
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15014
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15014
  br i1 %i.ar, label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i, label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i: ; preds = %bb.p
  %.val.i7.i = load i64, ptr %i.e, align 8, !range !67, !noundef !52 ; 2 uses
  %i.ay = icmp eq i64 %.val.i7.i, 0
  br i1 %i.ay, label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i, label %bb.q

bb.q:                                             ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i
  %i.az = load ptr, ptr %i.an, align 8, !nonnull !52, !noundef !52
  %i.ba = mul nuw i64 %.val.i7.i, 56
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.az, i64 noundef %i.ba, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15020, !inline_history !14971
  br label %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body.exit.i
  %i.bb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  store ptr %i.ao, ptr %.sroa.445.0..sroa_idx, align 8
  br i1 %i.ar, label %bb.r, label %.body.i36

bb.r:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i
  %i.bc = phi { ptr, i32 } [ %i.at, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i.thread72 ], [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(56) %i.e) #49
          to label %.body.i36 unwind label %bb.o, !inline_history !14964

_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i: ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i.i, %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.654.0118, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !15021
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.654.0118, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.i34 = icmp eq ptr %i.ao, %i.ai
  br i1 %.not.i34, label %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i, label %bb.h

.body.i36:                                        ; preds = %bb.n, %bb.k, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i, %bb.r
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.av, %bb.k ], [ %i.aw, %bb.n ], [ %i.bb, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentECs9gmjTwvRRSu_10typst_html.exit.i ], [ %i.bc, %bb.r ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr nonnull %.sroa.42.0.copyload, ptr nonnull %.sroa.654.0118) #49
          to label %.body39 unwind label %bb.s, !noalias !15021, !inline_history !14972

bb.s:                                             ; preds = %.body.i36
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15021, !inline_history !14972
  unreachable

.body39:                                          ; preds = %.body.i36, %bb.t
  %.pn.i.i = phi { ptr, i32 } [ %i.br, %bb.t ], [ %eh.lpad-body.i, %.body.i36 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB36_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.k) #49
          to label %.thread unwind label %bb.z, !noalias !15022, !inline_history !14975

_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i: ; preds = %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i, %bb.g
  %.lcssa110 = phi ptr [ %.sroa.42.0.copyload, %bb.g ], [ %i.ai, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 2 uses
  %.sroa.654.0.lcssa = phi ptr [ %.sroa.42.0.copyload, %bb.g ], [ %i.bd, %_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_.exit.i ] ; 2 uses
  %i.bf = ptrtoint ptr %.sroa.654.0.lcssa to i64
  %i.bg = ptrtoint ptr %.sroa.42.0.copyload to i64
  %i.bh = sub nuw i64 %i.bf, %i.bg                ; 3 uses
  %i.bi = udiv exact i64 %i.bh, 24                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !15023
  store ptr %.sroa.42.0.copyload, ptr %i.j, align 8, !noalias !15023
  %i.bj = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store i64 %i.bi, ptr %i.bj, align 8, !noalias !15023
  %i.bk = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %.sroa.01.0.copyload, ptr %i.bk, align 8, !noalias !15023
  %i.bl = ptrtoint ptr %i.ai to i64
  %i.bm = ptrtoint ptr %.lcssa110 to i64
  %i.bn = sub nuw i64 %i.bl, %i.bm
  %i.bo = udiv exact i64 %i.bn, 56
  store i64 0, ptr %.sroa.546.0..sroa_idx, align 8, !alias.scope !15024, !noalias !15025
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !15024, !noalias !15025
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.445.0..sroa_idx, align 8, !alias.scope !15024, !noalias !15025
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.647.0..sroa_idx, align 8, !alias.scope !15024, !noalias !15025
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 %.lcssa110, i64 noundef %i.bo)
          to label %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i unwind label %bb.t, !noalias !15026, !inline_history !14979

_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i
  %.not.i.i = icmp ne i64 %.sroa.01.0.copyload, 0
  %i.bp = mul nuw i64 %i.al, 24                   ; 5 uses
  %i.bq = icmp ne i64 %i.ak, %i.bp
  %or.cond = select i1 %.not.i.i, i1 %i.bq, i1 false
  br i1 %or.cond, label %bb.u, label %.noexc

bb.t:                                             ; preds = %bb.x, %_RNvXs0_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB7_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEINtB5_18SpecInPlaceCollectNtNtNtB2a_11foundations7content7ContentBP_E16collect_in_placeB3d_.exit.i
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeNtNtNtB1R_11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.j) #49
          to label %.body39 unwind label %bb.z, !noalias !15022, !inline_history !14975

bb.u:                                             ; preds = %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i
  %i.bs = icmp ult i64 %i.ak, 24
  br i1 %i.bs, label %bb.v, label %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i

bb.v:                                             ; preds = %bb.u
  %i.bt = icmp eq i64 %i.ak, 0
  br i1 %i.bt, label %.noexc, label %bb.w

bb.w:                                             ; preds = %bb.v
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.42.0.copyload, i64 noundef %i.ak, i64 noundef 8) #53, !noalias !15022, !inline_history !14979
  br label %.noexc

_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i: ; preds = %bb.u
  %i.bu = icmp ule i64 %i.bp, %i.ak
  call void @llvm.assume(i1 %i.bu), !noalias !15025
  %i.bv = call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc14___rust_realloc(ptr noundef nonnull %.sroa.42.0.copyload, i64 noundef %i.ak, i64 noundef 8, i64 noundef range(i64 0, -15) %i.bp) #53, !noalias !15022, !inline_history !14979 ; 2 uses
  %i.bw = icmp eq ptr %i.bv, null
  br i1 %i.bw, label %bb.x, label %.noexc, !prof !138

bb.x:                                             ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.bp) #54
          to label %bb.y unwind label %bb.t, !noalias !15022, !inline_history !14975

bb.y:                                             ; preds = %bb.x
  unreachable

bb.z:                                             ; preds = %bb.t, %.body39
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15022, !inline_history !14975
  unreachable

.noexc:                                           ; preds = %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i, %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i, %bb.v, %bb.w
  %.sroa.03.0.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.w ], [ %i.bv, %_RNvMs0_NtCs1xwejQucwHj_5alloc5allocNtB5_6Global19shrink_impl_runtime.exit.i ], [ %.sroa.42.0.copyload, %_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html.exit.i ], [ inttoptr (i64 8 to ptr), %bb.v ] ; 8 uses
  store i64 %i.al, ptr %i.m, align 8
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %.sroa.03.0.i.i, ptr %i.by, align 8
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.bi, ptr %i.bz, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !15023
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !15008
  %i.ca = icmp ult i64 %i.bh, -9223372036854775792
  call void @llvm.assume(i1 %i.ca)
  switch i64 %i.bi, label %bb.ac [
    i64 0, label %bb.aa
    i64 1, label %bb.ab
  ]

bb.aa:                                            ; preds = %.noexc
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB2_7Content5empty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i unwind label %bb.ak, !noalias !15027, !inline_history !14982

bb.ab:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !15028
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 %i.bh
  store ptr %.sroa.03.0.i.i, ptr %i.n, align 8, !noalias !15028
  %i.cc = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %i.al, ptr %i.cc, align 8, !noalias !15028
  %i.cd = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.03.0.i.i, ptr %i.cd, align 8, !noalias !15028
  %i.ce = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.cb, ptr %i.ce, align 8, !noalias !15028
  call void @llvm.experimental.noalias.scope.decl(metadata !15029)
  %i.cf = icmp eq ptr %.sroa.654.0.lcssa, %.sroa.42.0.copyload
  br i1 %i.cf, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit

bb.ac:                                            ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !15028
  invoke fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtB5_12SequenceElemECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %i.m)
          to label %bb.ai unwind label %.thread81

bb.ad:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n) #49
          to label %.thread unwind label %bb.ah, !noalias !15028, !inline_history !14982

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.ab
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 24
  store ptr %i.ch, ptr %i.cd, align 8, !alias.scope !15029, !noalias !15028
  %.sroa.048.0.copyload49 = load ptr, ptr %.sroa.03.0.i.i, align 8, !noalias !15030 ; 2 uses
  %.not.i = icmp eq ptr %.sroa.048.0.copyload49, null
  br i1 %.not.i, label %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread, label %bb.ae, !prof !63

bb.ae:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit
  %.sroa.650.0..sroa_idx51 = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i, i64 8
  store ptr %.sroa.048.0.copyload49, ptr %i.p, align 8, !noalias !15027
  %.sroa.650.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.650.0..sroa_idx51, i64 16, i1 false)
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(32) %i.n)
          to label %bb.ag unwind label %.thread81, !noalias !15028, !inline_history !14982

_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread: ; preds = %bb.ab, %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @25) #54
          to label %bb.af unwind label %bb.ad, !noalias !15028, !inline_history !14982

bb.af:                                            ; preds = %_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html.exit.thread
  unreachable

.thread81:                                        ; preds = %bb.ac, %bb.ae
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.ag:                                            ; preds = %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !15028
  br label %bb.al

bb.ah:                                            ; preds = %bb.ak, %bb.ad
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15028, !inline_history !14982
  unreachable

bb.ai:                                            ; preds = %bb.ac
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !15027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !15028
  br label %bb.al

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.aa
  %i.cj = icmp ult i64 %i.ak, 24
  br i1 %i.cj, label %bb.al, label %bb.aj

bb.aj:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.03.0.i.i, i64 noundef %i.bp, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !15031
  br label %bb.al

bb.ak:                                            ; preds = %bb.aa
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %i.m) #49
          to label %.thread unwind label %bb.ah, !inline_history !14982

bb.al:                                            ; preds = %bb.ai, %bb.ag, %bb.aj, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.p, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.experimental.noalias.scope.decl(metadata !15032)
  call void @llvm.experimental.noalias.scope.decl(metadata !15033)
  %i.ck = getelementptr inbounds nuw i8, ptr %i.s, i64 32 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !15034)
  %i.cl = load i64, ptr %i.ck, align 16, !range !60, !alias.scope !15035, !noundef !52
  %i.cm = icmp eq i64 %i.cl, 0
  br i1 %i.cm, label %bb.ap, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.cn = getelementptr inbounds nuw i8, ptr %i.s, i64 40 ; 3 uses
  %i.co = load ptr, ptr %i.cn, align 8, !alias.scope !15036, !noundef !52
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.ap, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.cn)
          to label %bb.ap unwind label %.body.i22, !noalias !15037

.body.i22:                                        ; preds = %bb.an
  %i.cq = landingpad { ptr, i32 }
          cleanup
  store i64 1, ptr %i.ck, align 16, !alias.scope !15038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cn, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !15039
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.s) #49
          to label %.body20.thread87 unwind label %bb.ao, !noalias !15040

bb.ao:                                            ; preds = %.body.i22
  %i.cr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !15040
  unreachable

bb.ap:                                            ; preds = %bb.an, %bb.am, %bb.al
  store i64 1, ptr %i.ck, align 16, !alias.scope !15038
  %.sroa.5.0..sroa_idx2.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !alias.scope !15039
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.t, ptr noundef nonnull align 16 dereferenceable(112) %i.s, i64 112, i1 false), !alias.scope !15041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

.thread:                                          ; preds = %bb.ad, %bb.ak, %.thread81, %.body39
  %eh.lpad-body21.ph = phi { ptr, i32 } [ %.pn.i.i, %.body39 ], [ %lpad.thr_comm, %.thread81 ], [ %i.cg, %bb.ad ], [ %lpad.thr_comm.split-lp, %bb.ak ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.s) #49
          to label %.body20.thread87 unwind label %bb.aq

bb.aq:                                            ; preds = %.body20, %.body, %.thread
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50
  unreachable

.body:                                            ; preds = %bb.b
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.r) #49
          to label %.body20 unwind label %bb.aq

.body20.thread87:                                 ; preds = %.body.i22, %.thread, %.body20
  %.pn90 = phi { ptr, i32 } [ %.pn, %.body20 ], [ %i.cq, %.body.i22 ], [ %eh.lpad-body21.ph, %.thread ]
  resume { ptr, i32 } %.pn90

.body20:                                          ; preds = %.body.i, %.body
  %.pn = phi { ptr, i32 } [ %i.z, %.body ], [ %i.af, %.body.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(24) %1) #49
          to label %.body20.thread87 unwind label %bb.aq
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noalias noundef nonnull ptr @_RNvNtCs1xwejQucwHj_5alloc5boxed14box_new_uninit(i64 noundef range(i64 1, 17) %0, i64 noundef range(i64 1, 249) %1) unnamed_addr #1 {
bb.a:
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53
  %i.a = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %1, i64 noundef range(i64 1, -9223372036854775807) %0) #53 ; 2 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !55

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %0, i64 noundef %1) #54
  unreachable
end_hunk_0
begin_hunk_1_@llvm.minimumnum.v4f32
!14825 = distinct !{!14825, !14823, !"_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_mapINtB6_9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1d_NtB1d_10StyleChain10properties0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtB1h_4text8TextSizeNCINvNtB8_6filter11filter_foldRNtB1d_8PropertyB3x_NCB2e_s_0NCINvNtB8_3map8map_foldB4n_RNtB1d_5BlockB3x_NCB2e_s0_0NCIB4T_B5h_B3x_B3x_NCINvB2g_10get_foldedB3x_E0FB3x_B3x_EB3x_E0E0E0ECs9gmjTwvRRSu_10typst_html: argument 0"}
!14826 = distinct !{!14826, i1 true, !"_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldNtNtB9_4text8TextSizeNCINvNtNtB1a_8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB5_5StyleERNtB5_8PropertyB24_NCNvMsk_B5_NtB5_10StyleChain10properties0NCINvNtB2w_6filter11filter_foldB4b_B24_NCB4w_s_0NCINvNtB2w_3map8map_foldB4b_RNtB5_5BlockB24_NCB4w_s0_0NCIB5Y_B6n_B24_B24_NCINvB4y_10get_foldedB24_E0FB24_B24_EB24_E0E0E0E0ECs9gmjTwvRRSu_10typst_html"}
!14827 = distinct !{!14827, !14826, !"_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldNtNtB9_4text8TextSizeNCINvNtNtB1a_8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB5_5StyleERNtB5_8PropertyB24_NCNvMsk_B5_NtB5_10StyleChain10properties0NCINvNtB2w_6filter11filter_foldB4b_B24_NCB4w_s_0NCINvNtB2w_3map8map_foldB4b_RNtB5_5BlockB24_NCB4w_s0_0NCIB5Y_B6n_B24_B24_NCINvB4y_10get_foldedB24_E0FB24_B24_EB24_E0E0E0E0ECs9gmjTwvRRSu_10typst_html: argument 1"}
!14828 = distinct !{!14828, !14826, !"_RINvYNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4foldNtNtB9_4text8TextSizeNCINvNtNtB1a_8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtB5_5StyleERNtB5_8PropertyB24_NCNvMsk_B5_NtB5_10StyleChain10properties0NCINvNtB2w_6filter11filter_foldB4b_B24_NCB4w_s_0NCINvNtB2w_3map8map_foldB4b_RNtB5_5BlockB24_NCB4w_s0_0NCIB5Y_B6n_B24_B24_NCINvB4y_10get_foldedB24_E0FB24_B24_EB24_E0E0E0E0ECs9gmjTwvRRSu_10typst_html: argument 0"}
!14829 = distinct !{!14829, i1 true, !"_RNvXsr_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_7EntriesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next"}
!14830 = distinct !{!14830, !14829, !"_RNvXsr_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_7EntriesNtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4next: argument 0"}
!14831 = distinct !{!14831, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyNtNtB21_4text8TextSizeNCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB3z_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB3z_s0_0NCIB52_B5q_B3b_B3b_NCINvB3B_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs9gmjTwvRRSu_10typst_html"}
!14832 = distinct !{!14832, !14831, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyNtNtB21_4text8TextSizeNCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB3z_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB3z_s0_0NCIB52_B5q_B3b_B3b_NCINvB3B_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14833 = distinct !{!14833, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyNtNtB18_4text8TextSizeNCNvMsk_B14_NtB14_10StyleChain10propertiess_0NCINvNtB6_3map8map_foldB11_RNtB14_5BlockB24_NCB2s_s0_0NCIB3c_B3A_B24_B24_NCINvB2u_10get_foldedB24_E0FB24_B24_EB24_E0E0E0Cs9gmjTwvRRSu_10typst_html"}
!14834 = distinct !{!14834, !14833, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyNtNtB18_4text8TextSizeNCNvMsk_B14_NtB14_10StyleChain10propertiess_0NCINvNtB6_3map8map_foldB11_RNtB14_5BlockB24_NCB2s_s0_0NCIB3c_B3A_B24_B24_NCINvB2u_10get_foldedB24_E0FB24_B24_EB24_E0E0E0Cs9gmjTwvRRSu_10typst_html: argument 1"}
!14835 = distinct !{!14835, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockNtNtB11_4text8TextSizeNCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB2z_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs9gmjTwvRRSu_10typst_html"}
!14836 = distinct !{!14836, !14835, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockNtNtB11_4text8TextSizeNCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB2z_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs9gmjTwvRRSu_10typst_html: argument 1"}
!14837 = distinct !{!14837, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5BlockNtNtB11_4text8TextSizeB1U_NCINvMsk_BX_NtBX_10StyleChain10get_foldedB1U_E0FB1U_B1U_EB1U_E0Cs9gmjTwvRRSu_10typst_html"}
!14838 = distinct !{!14838, !14837, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5BlockNtNtB11_4text8TextSizeB1U_NCINvMsk_BX_NtBX_10StyleChain10get_foldedB1U_E0FB1U_B1U_EB1U_E0Cs9gmjTwvRRSu_10typst_html: argument 1"}
!14839 = distinct !{!14839, i1 true, !"_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedNtNtBc_4text8TextSizeE0Cs9gmjTwvRRSu_10typst_html"}
!14840 = distinct !{!14840, !14839, !"_RNCINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB8_10StyleChain10get_foldedNtNtBc_4text8TextSizeE0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14841 = distinct !{!14841, i1 true, !"_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastNtNtBa_4text8TextSizeECs9gmjTwvRRSu_10typst_html"}
!14842 = distinct !{!14842, !14841, !"_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastNtNtBa_4text8TextSizeECs9gmjTwvRRSu_10typst_html: argument 0"}
!14843 = distinct !{!14843, !14833, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters6filter11filter_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyNtNtB18_4text8TextSizeNCNvMsk_B14_NtB14_10StyleChain10propertiess_0NCINvNtB6_3map8map_foldB11_RNtB14_5BlockB24_NCB2s_s0_0NCIB3c_B3A_B24_B24_NCINvB2u_10get_foldedB24_E0FB24_B24_EB24_E0E0E0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14844 = distinct !{!14844, !14835, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockNtNtB11_4text8TextSizeNCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB2z_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14845 = distinct !{!14845, !14837, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5BlockNtNtB11_4text8TextSizeB1U_NCINvMsk_BX_NtBX_10StyleChain10get_foldedB1U_E0FB1U_B1U_EB1U_E0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14846 = distinct !{!14846, !14841, !"_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastNtNtBa_4text8TextSizeECs9gmjTwvRRSu_10typst_html: argument 1"}
!14847 = distinct !{!14847, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs9gmjTwvRRSu_10typst_html"}
!14848 = distinct !{!14848, !14847, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs9gmjTwvRRSu_10typst_html: argument 0"}
!14849 = distinct !{!14849, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs9gmjTwvRRSu_10typst_html"}
!14850 = distinct !{!14850, !14849, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!14851 = distinct !{!14851, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!14852 = distinct !{!14852, !14851, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!14853 = !{!14806, !14804, !14803, !14801, !14799, !14797, !14795, !14793, !14792, !14790, !14789, !14787, !14785}
!14854 = !{!14804, !14803, !14801, !14799, !14797, !14795, !14793, !14792, !14790, !14789, !14787, !14785}
!14855 = !{!14808}
!14856 = !{!14810}
!14857 = !{!14812}
!14858 = !{!14812, !14810}
!14859 = !{!14793, !14792, !14790, !14789, !14787, !14785}
!14860 = !{!14812, !14813, !14810, !14793, !14792, !14790, !14789, !14787, !14785}
!14861 = !{!14810, !14793, !14792, !14790, !14789, !14787, !14785}
!14862 = !{!14830, !14828, !14827, !14825, !14824, !14822, !14821, !14819, !14818, !14816, !14790, !14789, !14787, !14785}
!14863 = !{!14832, !14828, !14827, !14825, !14824, !14822, !14821, !14819, !14818, !14816, !14790, !14789, !14787, !14785}
!14864 = !{!14834}
!14865 = !{!14836}
!14866 = !{!14838}
!14867 = !{!14840}
!14868 = !{!14842}
!14869 = !{!14842, !14840, !14838, !14836, !14834}
!14870 = !{!14842, !14846, !14840, !14845, !14838, !14844, !14836, !14843, !14834, !14832, !14828, !14827, !14825, !14824, !14822, !14821, !14819, !14818, !14816, !14790, !14789, !14787, !14785}
!14871 = !{!14840, !14845, !14838, !14844, !14836, !14843, !14834, !14832, !14828, !14827, !14825, !14824, !14822, !14821, !14819, !14818, !14816, !14790, !14789, !14787, !14785}
!14872 = !{!14848}
!14873 = !{!14850}
!14874 = !{!14852}
!14875 = !{!14852, !14850, !14848}
!14876 = distinct !{!14876, i1 true, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html"}
!14877 = distinct !{!14877, !14876, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE16deallocating_endNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 0"}
!14878 = distinct !{!14878, i1 true, !"_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10take_frontCs9gmjTwvRRSu_10typst_html"}
!14879 = distinct !{!14879, !14878, !"_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10take_frontCs9gmjTwvRRSu_10typst_html: argument 1"}
!14880 = distinct !{!14880, !14878, !"_RNvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10take_frontCs9gmjTwvRRSu_10typst_html: argument 0"}
!14881 = distinct !{!14881, !134}
!14882 = distinct !{!14882, i1 true, !"_RINvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html"}
!14883 = distinct !{!14883, !14882, !"_RINvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 0"}
!14884 = distinct !{!14884, i1 true, !"_RNvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs9gmjTwvRRSu_10typst_html"}
!14885 = distinct !{!14885, !14884, !"_RNvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs9gmjTwvRRSu_10typst_html: argument 0"}
!14886 = distinct !{!14886, i1 true, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html"}
!14887 = distinct !{!14887, !14886, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 1"}
!14888 = distinct !{!14888, i1 true, !"_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html"}
!14889 = distinct !{!14889, !14888, !"_RNvMsc_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB5_13LazyLeafRangeNtNtNtB7_4node6marker5DyingjNtNtB7_7set_val9SetValZSTE10init_frontCs9gmjTwvRRSu_10typst_html: argument 0"}
!14890 = distinct !{!14890, i1 true, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_jB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECs9gmjTwvRRSu_10typst_html"}
!14891 = distinct !{!14891, !14890, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_jB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECs9gmjTwvRRSu_10typst_html: argument 1"}
!14892 = distinct !{!14892, !14886, !"_RINvMsb_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtB6_13LazyLeafRangeNtNtNtB8_4node6marker5DyingjNtNtB8_7set_val9SetValZSTE27deallocating_next_uncheckedNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 0"}
!14893 = distinct !{!14893, !134}
!14894 = distinct !{!14894, !14890, !"_RINvNtNtNtCs1xwejQucwHj_5alloc11collections5btree3mem7replaceINtNtB4_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB4_7set_val9SetValZSTNtB1y_4LeafENtB1y_4EdgeEIBY_IB1i_B1w_jB1S_NtB1y_14LeafOrInternalENtB1y_2KVENCINvMsm_NtB4_8navigateBX_27deallocating_next_uncheckedNtNtB8_5alloc6GlobalE0ECs9gmjTwvRRSu_10typst_html: argument 0"}
!14895 = distinct !{!14895, i1 true, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingjNtNtBa_7set_val9SetValZSTNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Cs9gmjTwvRRSu_10typst_html"}
!14896 = distinct !{!14896, !14895, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingjNtNtBa_7set_val9SetValZSTNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Cs9gmjTwvRRSu_10typst_html: argument 1"}
!14897 = distinct !{!14897, !14895, !"_RNCINvMsm_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtBa_4node6HandleINtB13_7NodeRefNtNtB13_6marker5DyingjNtNtBa_7set_val9SetValZSTNtB1B_4LeafENtB1B_4EdgeE27deallocating_next_uncheckedNtNtBe_5alloc6GlobalE0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!14898 = distinct !{!14898, i1 true, !"_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html"}
!14899 = distinct !{!14899, !14898, !"_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 1"}
!14900 = distinct !{!14900, !14898, !"_RINvMsj_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB8_4node6HandleINtB11_7NodeRefNtNtB11_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1z_4LeafENtB1z_4EdgeE17deallocating_nextNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 0"}
!14901 = distinct !{!14901, i1 true, !"_RINvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html"}
!14902 = distinct !{!14902, !14901, !"_RINvMsh_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB6_7NodeRefNtNtB6_6marker5DyingjNtNtB8_7set_val9SetValZSTNtB1a_14LeafOrInternalE21deallocate_and_ascendNtNtBc_5alloc6GlobalECs9gmjTwvRRSu_10typst_html: argument 0"}
!14903 = distinct !{!14903, i1 true, !"_RNvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs9gmjTwvRRSu_10typst_html"}
!14904 = distinct !{!14904, !14903, !"_RNvMse_NtNtNtCs1xwejQucwHj_5alloc11collections5btree4nodeINtB5_7NodeRefNtNtB5_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB19_14LeafOrInternalE6ascendCs9gmjTwvRRSu_10typst_html: argument 0"}
!14905 = distinct !{!14905, i1 true, !"_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs9gmjTwvRRSu_10typst_html"}
!14906 = distinct !{!14906, !14905, !"_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs9gmjTwvRRSu_10typst_html: argument 1"}
!14907 = distinct !{!14907, !14905, !"_RNvMsp_NtNtNtCs1xwejQucwHj_5alloc11collections5btree8navigateINtNtB7_4node6HandleINtB10_7NodeRefNtNtB10_6marker5DyingjNtNtB7_7set_val9SetValZSTNtB1y_14LeafOrInternalENtB1y_2KVE14next_leaf_edgeCs9gmjTwvRRSu_10typst_html: argument 0"}
!14908 = distinct !{!14908, !134}
!14909 = !{!14877}
!14910 = !{!14879}
!14911 = !{!14879, !14877}
!14912 = !{!14880, !14879, !14877}
!14913 = !{!14885, !14883, !14877}
!14914 = !{!14883, !14877}
!14915 = !{!14887}
!14916 = !{!14889}
!14917 = !{!14889, !14887}
!14918 = !{!14891, !14887}
!14919 = !{!14889, !14892, !14887}
!14920 = !{!14891}
!14921 = !{!14900, !14899, !14897, !14896, !14894, !14891, !14892, !14887}
!14922 = !{!14904, !14902, !14900, !14899, !14897, !14896, !14894, !14891, !14892, !14887}
!14923 = !{!14907, !14906, !14900, !14899, !14897, !14896, !14894, !14891, !14892, !14887}
!14924 = !{!14902, !14900, !14899, !14897, !14896, !14894, !14891, !14892, !14887}
!14925 = !{!14894, !14891, !14892, !14887}
!14926 = !{!14892, !14887}
!14927 = distinct !{!14927, i1 true, !"_RINvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB3_10Properties4withReEB7_"}
!14928 = distinct !{!14928, !14927, !"_RINvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB3_10Properties4withReEB7_: argument 1"}
!14929 = distinct !{!14929, !14927, !"_RINvMNtNtCs9gmjTwvRRSu_10typst_html3css6encodeNtB3_10Properties4withReEB7_: argument 0"}
!14930 = distinct !{!14930, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesEBH_"}
!14931 = distinct !{!14931, !14930, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode10PropertiesEBH_: argument 0"}
!14932 = distinct !{!14932, i1 true, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem8with_css"}
!14933 = distinct !{!14933, !14932, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem8with_css: argument 0"}
!14934 = distinct !{!14934, !14932, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem8with_css: argument 1"}
!14935 = distinct !{!14935, i1 true, !"_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh3_E3setB1m_"}
!14936 = distinct !{!14936, !14935, !"_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh3_E3setB1m_: argument 0"}
!14937 = distinct !{!14937, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1L_11foundations7content7ContentEEB2O_"}
!14938 = distinct !{!14938, !14937, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1L_11foundations7content7ContentEEB2O_: argument 1"}
!14939 = distinct !{!14939, !14937, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtBa_6traits8iterator8Iterator7collectINtBW_3VecNtNtNtB1L_11foundations7content7ContentEEB2O_: argument 0"}
!14940 = distinct !{!14940, i1 true, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Q_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtBM_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB4z_"}
!14941 = distinct !{!14941, !14940, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Q_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtBM_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB4z_: argument 1"}
!14942 = distinct !{!14942, !14940, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtB1Q_8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtBM_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB4z_: argument 0"}
!14943 = distinct !{!14943, i1 true, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtB2_12IntoIterator9into_iterB39_"}
!14944 = distinct !{!14944, !14943, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtB2_12IntoIterator9into_iterB39_: argument 1"}
!14945 = distinct !{!14945, !14943, !"_RNvXNtNtNtCs3oUPovFnLWP_4core4iter6traits7collectINtNtNtB6_8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtB2_12IntoIterator9into_iterB39_: argument 0"}
!14946 = distinct !{!14946, i1 true, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB14_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEE9from_iterB4F_"}
!14947 = distinct !{!14947, !14946, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB14_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEE9from_iterB4F_: argument 1"}
!14948 = distinct !{!14948, !14946, !"_RNvXs_NtNtCs1xwejQucwHj_5alloc3vec16in_place_collectINtB6_3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterNtNtNtB14_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEE9from_iterB4F_: argument 0"}
!14949 = distinct !{!14949, i1 true, !"_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtB13_11foundations7content7ContentENCINvNtNtB24_8adapters3map12map_try_foldBX_B3C_B32_INtNtB26_6result6ResultB32_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB8_16in_place_collect24write_in_place_with_dropB3C_E0E0B55_EB5G_"}
!14950 = distinct !{!14950, !14949, !"_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtB13_11foundations7content7ContentENCINvNtNtB24_8adapters3map12map_try_foldBX_B3C_B32_INtNtB26_6result6ResultB32_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB8_16in_place_collect24write_in_place_with_dropB3C_E0E0B55_EB5G_: argument 1"}
!14951 = distinct !{!14951, !14949, !"_RINvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtB13_11foundations7content7ContentENCINvNtNtB24_8adapters3map12map_try_foldBX_B3C_B32_INtNtB26_6result6ResultB32_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB8_16in_place_collect24write_in_place_with_dropB3C_E0E0B55_EB5G_: argument 0"}
!14952 = distinct !{!14952, i1 true, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeNtNtNtB15_11foundations7content7ContentINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2C_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB2H_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4e_"}
!14953 = distinct !{!14953, !14952, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeNtNtNtB15_11foundations7content7ContentINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2C_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB2H_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4e_: argument 1"}
!14954 = distinct !{!14954, !14952, !"_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map12map_try_foldNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeNtNtNtB15_11foundations7content7ContentINtNtNtCs1xwejQucwHj_5alloc3vec13in_place_drop11InPlaceDropB1Z_EINtNtBa_6result6ResultB2C_zENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeNCINvNtB2H_16in_place_collect24write_in_place_with_dropB1Z_E0E0B4e_: argument 0"}
!14955 = distinct !{!14955, i1 true, !"_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_"}
!14956 = distinct !{!14956, !14955, !"_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_: argument 1"}
!14957 = distinct !{!14957, !14955, !"_RNvYNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeINtNtNtCs3oUPovFnLWP_4core3ops8function5FnMutTNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEE8call_mutBa_: argument 0"}
!14958 = distinct !{!14958, i1 true, !"_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_node"}
!14959 = distinct !{!14959, !14958, !"_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_node: argument 1"}
!14960 = distinct !{!14960, !14958, !"_RNvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_node: argument 0"}
!14961 = distinct !{!14961, i1 true, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body"}
!14962 = distinct !{!14962, !14961, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 1"}
!14963 = distinct !{!14963, !14961, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 0"}
!14964 = distinct !{null, null, null, null, null, null, null, null, null}
!14965 = distinct !{!14965, i1 true, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body"}
!14966 = distinct !{!14966, !14965, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 1"}
!14967 = distinct !{!14967, !14965, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 0"}
!14968 = distinct !{null, null, null, null, null, null}
!14969 = distinct !{!14969, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html"}
!14970 = distinct !{!14970, !14969, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html: argument 0"}
!14971 = distinct !{null, null, null, null, null, null, ptr @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeEECs9gmjTwvRRSu_10typst_html, null, null}
!14972 = distinct !{null, null, null, null, null, null, null}
!14973 = distinct !{!14973, i1 true, !"_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtB2r_11foundations7content7ContentEB3u_"}
!14974 = distinct !{!14974, !14973, !"_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtB2r_11foundations7content7ContentEB3u_: argument 0"}
!14975 = distinct !{null, null, null, null}
!14976 = distinct !{!14976, !14973, !"_RINvNtNtCs1xwejQucwHj_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeENtNtNtB2r_11foundations7content7ContentEB3u_: argument 1"}
!14977 = distinct !{!14977, i1 true, !"_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html"}
!14978 = distinct !{!14978, !14977, !"_RNvMs0_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library5model7outline11OutlineNodeE32forget_allocation_drop_remainingCs9gmjTwvRRSu_10typst_html: argument 0"}
!14979 = distinct !{null, null, null}
!14980 = distinct !{!14980, i1 true, !"_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB7_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB3C_"}
!14981 = distinct !{!14981, !14980, !"_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB7_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB3C_: argument 1"}
!14982 = distinct !{null}
!14983 = distinct !{!14983, !14980, !"_RINvMNtNtCsdaEETE4DqmE_13typst_library11foundations7contentNtB3_7Content8sequenceINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtB7_5model7outline11OutlineNodeENvNCNvNtCs9gmjTwvRRSu_10typst_html5rules12OUTLINE_RULE012convert_nodeEEB3C_: argument 0"}
!14984 = distinct !{!14984, i1 true, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!14985 = distinct !{!14985, !14984, !"_RNvXs4_NtNtCs1xwejQucwHj_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentENtNtNtNtCs3oUPovFnLWP_4core4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!14986 = distinct !{!14986, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html"}
!14987 = distinct !{!14987, !14986, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html: argument 0"}
!14988 = distinct !{!14988, i1 true, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body"}
!14989 = distinct !{!14989, !14988, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 0"}
!14990 = distinct !{!14990, !14988, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 2"}
!14991 = distinct !{!14991, i1 true, !"_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh2_E3setB1m_"}
!14992 = distinct !{!14992, !14991, !"_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh2_E3setB1m_: argument 1"}
!14993 = distinct !{!14993, !14988, !"_RNvMNvCs9gmjTwvRRSu_10typst_html1__NtB4_8HtmlElem9with_body: argument 1"}
!14994 = distinct !{!14994, !14991, !"_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtCs9gmjTwvRRSu_10typst_html8HtmlElemKh2_E3setB1m_: argument 0"}
!14995 = distinct !{!14995, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html"}
!14996 = distinct !{!14996, !14995, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!14997 = distinct !{!14997, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html"}
!14998 = distinct !{!14998, !14997, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content7ContentEECs9gmjTwvRRSu_10typst_html: argument 0"}
!14999 = !{!14929, !14928}
!15000 = !{!14931}
!15001 = !{!14928}
!15002 = !{!14933}
!15003 = !{!14934}
!15004 = !{!14936}
!15005 = !{!14936, !14934}
!15006 = !{!14936, !14933, !14934}
!15007 = !{!14933, !14934}
!15008 = !{!14942, !14941, !14939, !14938}
!15009 = !{!14945, !14944}
!15010 = !{!14942, !14939}
!15011 = !{!14947}
!15012 = !{!14957, !14956, !14954, !14953, !14951, !14950, !14948}
!15013 = !{!14954, !14953, !14948}
!15014 = !{!14960, !14959, !14957, !14956, !14954, !14953, !14951, !14950, !14948}
!15015 = !{!14963, !14962}
!15016 = !{!14960, !14959, !14957, !14956, !14954, !14953, !14951, !14948}
!15017 = !{!14967, !14966}
!15018 = !{!14951, !14948}
!15019 = !{!14959, !14956, !14954, !14953, !14951, !14950, !14948}
!15020 = !{!14970, !14951, !14948}
!15021 = !{!14954, !14953, !14951, !14948}
!15022 = !{!14974, !14948}
!15023 = !{!14974, !14976, !14948, !14947}
!15024 = !{!14978, !14947}
!15025 = !{!14974}
!15026 = !{!14948}
!15027 = !{!14981}
!15028 = !{!14983, !14981}
!15029 = !{!14985}
!15030 = !{!14985, !14983, !14981}
!15031 = !{!14987}
!15032 = !{!14989}
!15033 = !{!14990}
!15034 = !{!14992}
!15035 = !{!14996, !14994, !14993}
!15036 = !{!14998, !14996, !14994, !14993}
!15037 = !{!14992, !14989, !14990}
!15038 = !{!14994, !14993}
!15039 = !{!14994, !14992, !14993, !14990}
!15040 = !{!14989, !14990}
!15041 = !{!14989, !14993}
!15042 = distinct !{!15042, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15043 = distinct !{!15043, !15042, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15044 = distinct !{!15044, !15042, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!15045 = distinct !{!15045, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15046 = distinct !{!15046, !15045, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0:It1"}
!15047 = distinct !{!15047, !15045, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1:It1"}
!15048 = distinct !{!15048, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15049 = distinct !{!15049, !15048, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0:It2"}
!15050 = distinct !{!15050, !15048, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1:It2"}
!15051 = distinct !{!15051, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15052 = distinct !{!15052, !15051, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0:It3"}
!15053 = distinct !{!15053, !15051, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1:It3"}
!15054 = distinct !{!15054, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15055 = distinct !{!15055, !15054, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0:It4"}
!15056 = distinct !{!15056, !15054, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1:It4"}
!15057 = distinct !{!15057, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html"}
!15058 = distinct !{!15058, !15057, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 0:It5"}
!15059 = distinct !{!15059, !15057, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj8_ECs9gmjTwvRRSu_10typst_html: argument 1:It5"}
!15060 = distinct !{!15060, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj4_ECs9gmjTwvRRSu_10typst_html"}
!15061 = distinct !{!15061, !15060, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj4_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15062 = distinct !{!15062, !15060, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj4_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!15063 = distinct !{!15063, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj2_ECs9gmjTwvRRSu_10typst_html"}
!15064 = distinct !{!15064, !15063, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj2_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15065 = distinct !{!15065, !15063, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj2_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!15066 = distinct !{!15066, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj1_ECs9gmjTwvRRSu_10typst_html"}
!15067 = distinct !{!15067, !15066, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj1_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15068 = distinct !{!15068, !15066, !"_RINvNtCs3oUPovFnLWP_4core3ptr10swap_chunkKj1_ECs9gmjTwvRRSu_10typst_html: argument 1"}
!15069 = !{!15043}
!15070 = !{!15044}
!15071 = !{!15046}
!15072 = !{!15047}
!15073 = !{!15049}
!15074 = !{!15050}
!15075 = !{!15052}
!15076 = !{!15053}
!15077 = !{!15055}
!15078 = !{!15056}
!15079 = !{!15058}
!15080 = !{!15059}
!15081 = !{!15061}
!15082 = !{!15062}
!15083 = !{!15064}
!15084 = !{!15065}
!15085 = !{!15067}
!15086 = !{!15068}
!15087 = distinct !{!15087, i1 true, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12contains_keyBO_ECs9gmjTwvRRSu_10typst_html"}
!15088 = distinct !{!15088, !15087, !"_RINvMs1_NtCskt5MLIAl8nl_9hashbrown3mapINtB6_7HashMapNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherE12contains_keyBO_ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15089 = distinct !{!15089, i1 true, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs9gmjTwvRRSu_10typst_html"}
!15090 = distinct !{!15090, !15089, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs9gmjTwvRRSu_10typst_html: argument 1"}
!15091 = distinct !{!15091, !15089, !"_RINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB6_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE4findNCINvNtB8_3map14equivalent_keyBQ_BQ_uE0ECs9gmjTwvRRSu_10typst_html: argument 0"}
!15092 = distinct !{!15092, i1 true, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner"}
!15093 = distinct !{!15093, !15092, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 1"}
!15094 = distinct !{!15094, !15092, !"_RNvMsa_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_13RawTableInner10find_inner: argument 0"}
!15095 = distinct !{!15095, i1 true, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128"}
!15096 = distinct !{!15096, !15095, !"_RNvNtNtNtCs3oUPovFnLWP_4core9core_arch3x864sse215__mm_loadu_si128: argument 0"}
!15097 = distinct !{!15097, i1 true, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs9gmjTwvRRSu_10typst_html"}
!15098 = distinct !{!15098, !15097, !"_RNCINvMs6_NtCskt5MLIAl8nl_9hashbrown3rawINtB8_8RawTableTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationuEE4findNCINvNtBa_3map14equivalent_keyBS_BS_uE0E0Cs9gmjTwvRRSu_10typst_html: argument 0"}
!15099 = distinct !{!15099, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html"}
!15100 = distinct !{!15100, !15099, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15101 = distinct !{!15101, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15102 = distinct !{!15102, !15101, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15103 = distinct !{!15103, i1 true, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB6_6string9EcoStringEE4pushCs9gmjTwvRRSu_10typst_html"}
!15104 = distinct !{!15104, !15103, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB6_6string9EcoStringEE4pushCs9gmjTwvRRSu_10typst_html: argument 0"}
!15105 = distinct !{!15105, !15103, !"_RNvMs_NtCsakL8LGkl72C_4ecow3vecINtB4_6EcoVecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB6_6string9EcoStringEE4pushCs9gmjTwvRRSu_10typst_html: argument 1"}
!15106 = distinct !{null}
!15107 = !{!15096, !15094, !15093, !15091, !15090, !15088}
!15108 = !{!15098, !15094, !15093, !15091, !15090, !15088}
!15109 = !{!15100}
!15110 = !{!15102}
!15111 = !{!15102, !15100}
!15112 = !{!15104}
!15113 = !{!15104, !15105}
!15114 = !{!15105}
!15115 = distinct !{!15115, i1 true, !"_RNvMNtCs9gmjTwvRRSu_10typst_html3domNtB2_12HtmlDocument8root_mut"}
!15116 = distinct !{!15116, !15115, !"_RNvMNtCs9gmjTwvRRSu_10typst_html3domNtB2_12HtmlDocument8root_mut: argument 0"}
!15117 = distinct !{!15117, i1 true, !"_RNvMNtCs9gmjTwvRRSu_10typst_html8documentNtB2_10HtmlOutput8root_mut"}
!15118 = distinct !{!15118, !15117, !"_RNvMNtCs9gmjTwvRRSu_10typst_html8documentNtB2_10HtmlOutput8root_mut: argument 0"}
!15119 = distinct !{!15119, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEEB1d_"}
!15120 = distinct !{!15120, !15119, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEEB1d_: argument 0"}
!15121 = distinct !{!15121, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!15122 = distinct !{!15122, !15121, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!15123 = distinct !{!15123, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEEB1d_"}
!15124 = distinct !{!15124, !15123, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorEEB1d_: argument 0"}
!15125 = distinct !{!15125, i1 true, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_"}
!15126 = distinct !{!15126, !15125, !"_RNvXsE_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtCs9gmjTwvRRSu_10typst_html10introspect16HtmlIntrospectorENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBK_: argument 0"}
!15127 = !{!15116}
!15128 = !{!15118}
!15129 = !{!15118, !15116}
!15130 = !{!15122, !15120}
!15131 = !{!15126, !15124}
!15132 = distinct !{!15132, i1 true, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses0_0EB5_"}
!15133 = distinct !{!15133, !15132, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses0_0EB5_: argument 0"}
!15134 = distinct !{!15134, !15132, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses0_0EB5_: argument 1"}
!15135 = distinct !{!15135, i1 true, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses0_0B5_"}
!15136 = distinct !{!15136, !15135, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses0_0B5_: argument 1"}
!15137 = distinct !{!15137, !15132, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses0_0EB5_: argument 2"}
!15138 = distinct !{!15138, !15135, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses0_0B5_: argument 2"}
!15139 = distinct !{!15139, !15135, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses0_0B5_: argument 0"}
!15140 = distinct !{!15140, i1 true, !"_RNvMs6_NtCs9gmjTwvRRSu_10typst_html3domNtB5_11HtmlElement3new"}
!15141 = distinct !{!15141, !15140, !"_RNvMs6_NtCs9gmjTwvRRSu_10typst_html3domNtB5_11HtmlElement3new: argument 0"}
!15142 = distinct !{!15142, i1 true, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!15143 = distinct !{!15143, !15142, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!15144 = distinct !{!15144, !15142, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!15145 = distinct !{!15145, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html"}
!15146 = distinct !{!15146, !15145, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15147 = distinct !{!15147, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15148 = distinct !{!15148, !15147, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15149 = distinct !{!15149, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15150 = distinct !{!15150, !15149, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15151 = distinct !{!15151, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15152 = distinct !{!15152, !15151, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15153 = distinct !{!15153, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15154 = distinct !{!15154, !15153, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15155 = distinct !{!15155, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15156 = distinct !{!15156, !15155, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15157 = distinct !{!15157, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15158 = distinct !{!15158, !15157, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15159 = distinct !{!15159, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15160 = distinct !{!15160, !15159, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15161 = distinct !{!15161, i1 true, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses_0EB5_"}
!15162 = distinct !{!15162, !15161, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses_0EB5_: argument 0"}
!15163 = distinct !{!15163, !15161, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses_0EB5_: argument 2"}
!15164 = distinct !{!15164, !15161, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses_0EB5_: argument 1"}
!15165 = distinct !{!15165, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15166 = distinct !{!15166, !15165, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15167 = distinct !{!15167, i1 true, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!15168 = distinct !{!15168, !15167, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!15169 = distinct !{!15169, !15167, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!15170 = distinct !{!15170, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html"}
!15171 = distinct !{!15171, !15170, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15172 = distinct !{!15172, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15173 = distinct !{!15173, !15172, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15174 = distinct !{!15174, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15175 = distinct !{!15175, !15174, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15176 = distinct !{!15176, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15177 = distinct !{!15177, !15176, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15178 = distinct !{!15178, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15179 = distinct !{!15179, !15178, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15180 = distinct !{!15180, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15181 = distinct !{!15181, !15180, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15182 = distinct !{!15182, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15183 = distinct !{!15183, !15182, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15184 = distinct !{!15184, i1 true, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses1_0EB5_"}
!15185 = distinct !{!15185, !15184, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses1_0EB5_: argument 0"}
!15186 = distinct !{!15186, !15184, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses1_0EB5_: argument 1"}
!15187 = distinct !{!15187, i1 true, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_0B5_"}
!15188 = distinct !{!15188, !15187, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_0B5_: argument 1"}
!15189 = distinct !{!15189, i1 true, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringE18get_or_insert_withNCNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_00EB1P_"}
!15190 = distinct !{!15190, !15189, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringE18get_or_insert_withNCNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_00EB1P_: argument 0"}
!15191 = distinct !{!15191, !15184, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work5drainNCNvB3_8traverses1_0EB5_: argument 2"}
!15192 = distinct !{!15192, !15187, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_0B5_: argument 2"}
!15193 = distinct !{!15193, !15187, !"_RNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_0B5_: argument 0"}
!15194 = distinct !{!15194, !15189, !"_RINvMNtCs3oUPovFnLWP_4core6optionINtB3_6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringE18get_or_insert_withNCNCNvNtCs9gmjTwvRRSu_10typst_html4link8traverses1_00EB1P_: argument 1"}
!15195 = distinct !{!15195, i1 true, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html"}
!15196 = distinct !{!15196, !15195, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 1"}
!15197 = distinct !{!15197, !15195, !"_RNvXs3_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtNtB2m_4iter6traits8iterator8Iterator4nextCs9gmjTwvRRSu_10typst_html: argument 0"}
!15198 = distinct !{!15198, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html"}
!15199 = distinct !{!15199, !15198, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15200 = distinct !{!15200, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15201 = distinct !{!15201, !15200, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15202 = distinct !{!15202, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15203 = distinct !{!15203, !15202, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15204 = distinct !{!15204, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15205 = distinct !{!15205, !15204, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15206 = distinct !{!15206, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15207 = distinct !{!15207, !15206, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15208 = distinct !{!15208, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html"}
!15209 = distinct !{!15209, !15208, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drain5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtB4_6option6OptionNtNtNtB1K_11foundations5label5LabelEEEECs9gmjTwvRRSu_10typst_html: argument 0"}
!15210 = distinct !{!15210, i1 true, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html"}
!15211 = distinct !{!15211, !15210, !"_RNvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque5drainINtB5_5DrainTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1h_11foundations5label5LabelEEENtNtNtB2m_3ops4drop4Drop4dropCs9gmjTwvRRSu_10typst_html: argument 0"}
!15212 = distinct !{!15212, i1 true, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html"}
!15213 = distinct !{!15213, !15212, !"_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html: argument 0"}
!15214 = distinct !{!15214, i1 true, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work6removeNCNvB3_8traverse0EB5_"}
!15215 = distinct !{!15215, !15214, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work6removeNCNvB3_8traverse0EB5_: argument 0"}
!15216 = distinct !{!15216, i1 true, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1c_11foundations5label5LabelEEE4iterCs9gmjTwvRRSu_10typst_html"}
!15217 = distinct !{!15217, !15216, !"_RNvMs4_NtNtCs1xwejQucwHj_5alloc11collections9vec_dequeINtB5_8VecDequeTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1c_11foundations5label5LabelEEE4iterCs9gmjTwvRRSu_10typst_html: argument 1"}
!15218 = distinct !{!15218, !15214, !"_RINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB3_4Work6removeNCNvB3_8traverse0EB5_: argument 1"}
!15219 = distinct !{!15219, i1 true, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1g_11foundations5label5LabelEEENtNtNtNtB2l_4iter6traits8iterator8Iterator8try_folduNCINvNvB3u_8position5checkRB19_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4V_4Work6removeNCNvB4V_8traverse0E0E0INtNtNtB2l_3ops12control_flow11ControlFlowjEEB4X_"}
!15220 = distinct !{!15220, !15219, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1g_11foundations5label5LabelEEENtNtNtNtB2l_4iter6traits8iterator8Iterator8try_folduNCINvNvB3u_8position5checkRB19_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4V_4Work6removeNCNvB4V_8traverse0E0E0INtNtNtB2l_3ops12control_flow11ControlFlowjEEB4X_: argument 2"}
!15221 = distinct !{!15221, !15219, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1g_11foundations5label5LabelEEENtNtNtNtB2l_4iter6traits8iterator8Iterator8try_folduNCINvNvB3u_8position5checkRB19_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4V_4Work6removeNCNvB4V_8traverse0E0E0INtNtNtB2l_3ops12control_flow11ControlFlowjEEB4X_: argument 1"}
!15222 = distinct !{!15222, !15219, !"_RINvXs2_NtNtNtCs1xwejQucwHj_5alloc11collections9vec_deque4iterINtB6_4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB1g_11foundations5label5LabelEEENtNtNtNtB2l_4iter6traits8iterator8Iterator8try_folduNCINvNvB3u_8position5checkRB19_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4V_4Work6removeNCNvB4V_8traverse0E0E0INtNtNtB2l_3ops12control_flow11ControlFlowjEEB4X_: argument 0"}
!15223 = distinct !{!15223, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtBa_6option6OptionNtNtNtBQ_11foundations5label5LabelEEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB2N_8position5checkRBJ_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4d_4Work6removeNCNvB4d_8traverse0E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB4f_"}
!15224 = distinct !{!15224, !15223, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtBa_6option6OptionNtNtNtBQ_11foundations5label5LabelEEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB2N_8position5checkRBJ_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4d_4Work6removeNCNvB4d_8traverse0E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB4f_: argument 1"}
!15225 = distinct !{!15225, !15223, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtBa_6option6OptionNtNtNtBQ_11foundations5label5LabelEEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB2N_8position5checkRBJ_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4d_4Work6removeNCNvB4d_8traverse0E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB4f_: argument 0"}
!15226 = distinct !{!15226, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterTNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationINtNtBa_6option6OptionNtNtNtBQ_11foundations5label5LabelEEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduQNCINvNvB2N_8position5checkRBJ_NCINvMNtCs9gmjTwvRRSu_10typst_html4linkNtB4d_4Work6removeNCNvB4d_8traverse0E0E0INtNtNtBa_3ops12control_flow11ControlFlowjEEB4f_"}
end_hunk_1
