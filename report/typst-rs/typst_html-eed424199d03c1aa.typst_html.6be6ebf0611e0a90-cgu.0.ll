Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_html-eed424199d03c1aa.typst_html.6be6ebf0611e0a90-cgu.0?download=true
inline.NumInlined: 8941
inline.NumDeleted: 4345
loop-unroll.NumCompletelyUnrolled: 19
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_RNvYNCNvNtCs9gmjTwvRRSu_10typst_html5rules9LIST_RULE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1K_5model4list8ListElemEQNtNtB1K_6engine6EngineNtNtB1I_6styles10StyleChainEE9call_onceB8_:bb.a
  unreachable

bb.ab:                                            ; preds = %bb.z, %bb.y, %bb.x
  store i64 1, ptr %i.r, align 16, !alias.scope !25157, !noalias !25127
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx2.i.i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.i, i64 24, i1 false), !alias.scope !25158, !noalias !25127
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.k, ptr noundef nonnull align 16 dereferenceable(112) %i.j, i64 112, i1 false), !alias.scope !25160, !noalias !25127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !25127
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtCs9gmjTwvRRSu_10typst_html8HtmlElemEB1o_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.l, ptr noalias nofree noundef readonly align 16 captures(none) dereferenceable(112) %i.k), !noalias !25127
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !25127
  %i.cd = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  %i.ce = load i64, ptr %i.cd, align 8, !range !61, !noalias !25127, !noundef !52
  %i.cf = icmp eq i64 %i.ce, 1
  br i1 %i.cf, label %bb.ac, label %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules9LIST_RULE0B5_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ch = load i64, ptr %i.cg, align 8, !range !61, !alias.scope !25126, !noundef !52
  store i64 %i.ch, ptr %i.cd, align 8, !noalias !25127
  br label %_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules9LIST_RULE0B5_.exit

.body.i:                                          ; preds = %bb.ad, %.body.i.i
  %eh.lpad-body3.i = phi { ptr, i32 } [ %eh.lpad-body.ph.i, %bb.ad ], [ %i.cb, %.body.i.i ]
  resume { ptr, i32 } %eh.lpad-body3.i

bb.ad:                                            ; preds = %bb.w, %bb.v, %bb.q, %.body.i.i.i.i.i.i
  %eh.lpad-body.ph.i = phi { ptr, i32 } [ %i.bv, %bb.w ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i.i ], [ %lpad.thr_comm.split-lp.i.i, %bb.v ], [ %i.bq, %bb.q ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCs9gmjTwvRRSu_10typst_html8HtmlElemEBD_(ptr noalias nofree noundef align 16 dereferenceable(112) %i.j) #49
          to label %.body.i unwind label %bb.ae, !noalias !25127

bb.ae:                                            ; preds = %bb.ad
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !25127
  unreachable

_RNCNvNtCs9gmjTwvRRSu_10typst_html5rules9LIST_RULE0B5_.exit: ; preds = %bb.ab, %bb.ac
  call void @_RNvMs1_NtNtCsdaEETE4DqmE_13typst_library6layout9containerNtB5_9BlockElem6packed(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.l), !noalias !25161
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs9gmjTwvRRSu_10typst_html5typed5FUNCS0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 6 uses
  %.sroa.14.i.i.i.i.i.i.i.i = alloca [96 x i8], align 8 ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !25208
  call void @_RNvMs6_CsaPYV88GQHqL_7bumpaloNtB5_4Bump3new(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b), !noalias !25208
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !25209
  %i.c = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !25209 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.b, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i, !prof !55

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #54
          to label %.noexc.i unwind label %bb.c, !noalias !25208

.noexc.i:                                         ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.e = landingpad { ptr, i32 }
          cleanup
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.val.i = load ptr, ptr %i.f, align 8, !noalias !25208, !nonnull !52, !noundef !52
  call fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtCsaPYV88GQHqL_7bumpalo4BumpECs9gmjTwvRRSu_10typst_html(ptr nonnull %.val.i) #49, !noalias !25208
  br label %common.resume.i

common.resume.i:                                  ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit, %bb.c
  %common.resume.op.i = phi { ptr, i32 } [ %i.e, %bb.c ], [ %eh.lpad-body.i.i.i.i.i.i.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit ]
  resume { ptr, i32 } %common.resume.op.i

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !25208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !25208
  call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #53, !noalias !25210
  %i.g = call noundef align 8 dereferenceable_or_null(31360) ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef 31360, i64 noundef range(i64 1, 9) 8) #53, !noalias !25210 ; 7 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 31360) #54, !noalias !25211
  unreachable

bb.e:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i.i
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  %.sroa.14.112..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.i.i.i.i.i.i.i.i, i64 24
  br label %bb.f

.loopexit.i.i.i.i.i.i.i:                          ; preds = %bb.h, %bb.g
  %lpad.loopexit.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp.i.i.i.i.i.i.i:                 ; preds = %.invoke, %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread2.i.i.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.f:                                             ; preds = %bb.m, %bb.e
  %.val10.i.i.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.bp, %bb.m ] ; 7 uses
  %i.k = getelementptr inbounds nuw [48 x i8], ptr @878, i64 %.val10.i.i.i.i.i.i.i ; 6 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !25212)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !25213)
  call void @llvm.experimental.noalias.scope.decl(metadata !25214)
  %i.l = load ptr, ptr %i.i, align 8, !noalias !25215, !nonnull !52, !noundef !52 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !noalias !25215, !nonnull !52, !noundef !52 ; 2 uses
  %i.o = load ptr, ptr %i.l, align 8, !noalias !25215, !nonnull !52, !noundef !52 ; 2 uses
  %i.p = ptrtoint ptr %i.n to i64
  %i.q = and i64 %i.p, 7
  %i.r = sub nsw i64 0, %i.q
  %i.s = getelementptr i8, ptr %i.n, i64 %i.r     ; 3 uses
  %i.t = ptrtoint ptr %i.s to i64
  %i.u = ptrtoint ptr %i.o to i64
  %i.v = sub i64 %i.t, %i.u
  %i.w = icmp ult ptr %i.s, %i.o
  %i.x = icmp ult i64 %i.v, 8
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.w, %i.x
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, label %bb.g, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit46.i.i.i.i.i.i.i.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit46.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.f
  %i.y = getelementptr i8, ptr %i.s, i64 -8       ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.y) ], !noalias !25216
  store ptr %i.y, ptr %i.m, align 8, !noalias !25215
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit39.i.i.i.i.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.z = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.c, i64 noundef 8, i64 noundef 8) #55
          to label %.noexc.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !25217 ; 2 uses

.noexc.i.i.i.i.i.i.i:                             ; preds = %bb.g
  %.not5.i38.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not5.i38.i.i.i.i.i.i.i.i.i.i, label %.invoke, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit39.i.i.i.i.i.i.i.i.i.i, !prof !55

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit39.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit46.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i37.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.y, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit46.i.i.i.i.i.i.i.i.i.i ], [ %i.z, %.noexc.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.k, ptr %.sroa.0.0.i37.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !25218
  %i.aa = load ptr, ptr %i.k, align 8, !alias.scope !25219, !noalias !25217, !nonnull !52, !noundef !52 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !25219, !noalias !25217, !noundef !52 ; 8 uses
  %i.ad = load ptr, ptr %i.i, align 8, !noalias !25220, !nonnull !52, !noundef !52 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 32 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !25221, !nonnull !52, !noundef !52 ; 2 uses
  %i.ag = load ptr, ptr %i.ad, align 8, !noalias !25221, !nonnull !52, !noundef !52
  %i.ah = ptrtoint ptr %i.af to i64
  %i.ai = ptrtoint ptr %i.ag to i64
  %i.aj = sub i64 %i.ah, %i.ai
  %i.ak = icmp ugt i64 %i.ac, %i.aj
  br i1 %i.ak, label %bb.h, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit39.i.i.i.i.i.i.i.i.i.i
  %i.al = sub i64 0, %i.ac
  %i.am = getelementptr i8, ptr %i.af, i64 %i.al  ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.am) ]
  store ptr %i.am, ptr %i.ae, align 8, !noalias !25221
  br label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit39.i.i.i.i.i.i.i.i.i.i
  %i.an = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.c, i64 noundef 1, i64 noundef %i.ac) #55
          to label %.noexc16.i.i.i.i.i.i.i unwind label %.loopexit.i.i.i.i.i.i.i, !noalias !25217 ; 2 uses

.noexc16.i.i.i.i.i.i.i:                           ; preds = %bb.h
  %.not5.i42.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.an, null
  br i1 %.not5.i42.i.i.i.i.i.i.i.i.i.i, label %.invoke, label %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i, !prof !55

.invoke:                                          ; preds = %.noexc16.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i
  invoke void @_RNvCsaPYV88GQHqL_7bumpalo3oom() #51
          to label %.cont unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !25217

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc16.i.i.i.i.i.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.am, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump21try_alloc_layout_fastCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.an, %.noexc16.i.i.i.i.i.i.i ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, ptr nonnull align 1 %i.aa, i64 %i.ac, i1 false), !noalias !25221
  switch i64 %i.ac, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i.i.i [
    i64 0, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread2.i.i.i.i.i.i.i.i.i.i.i
    i64 1, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE9index_mut.exit.i.i.i.i.i.i.i.i.i.i
  ], !prof !25222

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, i64 1
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !25223, !noalias !25221, !noundef !52
  %i.aq = icmp sgt i8 %i.ap, -65
  br i1 %i.aq, label %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE9index_mut.exit.i.i.i.i.i.i.i.i.i.i, label %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread2.i.i.i.i.i.i.i.i.i.i.i, !prof !89

_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread2.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.ac, i64 noundef 0, i64 noundef 1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1440) #51
          to label %.noexc18.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i, !noalias !25217

.noexc18.i.i.i.i.i.i.i:                           ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.thread2.i.i.i.i.i.i.i.i.i.i.i
  unreachable

_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE9index_mut.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %_RNvNtNtCs3oUPovFnLWP_4core3str6traits11check_range.exit.i.i.i.i.i.i.i.i.i.i.i, %_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump12alloc_layoutCs9gmjTwvRRSu_10typst_html.exit43.i.i.i.i.i.i.i.i.i.i
  %.promoted.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !25224, !noalias !25221 ; 2 uses
  %i.ar = add i8 %.promoted.i.i.i.i.i.i.i.i.i.i.i, -97
  %i.as = icmp ult i8 %i.ar, 26
  %i.at = select i1 %i.as, i8 32, i8 0
  %.sroa.03.0.i.i.i.i.i.i.i.i.i.i.i = xor i8 %i.at, %.promoted.i.i.i.i.i.i.i.i.i.i.i
  store i8 %.sroa.03.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, align 1, !alias.scope !25224, !noalias !25221
  %i.au = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.av = load ptr, ptr %i.au, align 8, !alias.scope !25219, !noalias !25217, !nonnull !52, !noundef !52
  %i.aw = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.ax = load i64, ptr %i.aw, align 8, !alias.scope !25219, !noalias !25217, !noundef !52
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !25218
  store i32 3, ptr %i.j, align 16, !noalias !25218
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr @1443>, ptr %i.a, align 16, !noalias !25218
  %i.ay = load ptr, ptr %i.i, align 8, !noalias !25220, !nonnull !52, !noundef !52 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 32 ; 2 uses
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !25221, !nonnull !52, !noundef !52 ; 2 uses
  %i.bb = load ptr, ptr %i.ay, align 8, !noalias !25221, !nonnull !52, !noundef !52 ; 2 uses
  %i.bc = ptrtoint ptr %i.ba to i64
  %i.bd = and i64 %i.bc, 7
  %i.be = sub nsw i64 0, %i.bd
  %i.bf = getelementptr i8, ptr %i.ba, i64 %i.be  ; 3 uses
  %i.bg = ptrtoint ptr %i.bf to i64
  %i.bh = ptrtoint ptr %i.bb to i64
  %i.bi = sub i64 %i.bg, %i.bh
  %i.bj = icmp ult ptr %i.bf, %i.bb
  %i.bk = icmp ult i64 %i.bi, 8
  %or.cond.i47.i.i.i.i.i.i.i.i.i.i = or i1 %i.bj, %i.bk
  br i1 %or.cond.i47.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %.noexc33.i.i.i.i.i.i.i.i.i.i

.noexc33.i.i.i.i.i.i.i.i.i.i:                     ; preds = %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE9index_mut.exit.i.i.i.i.i.i.i.i.i.i
  %i.bl = getelementptr i8, ptr %i.bf, i64 -8     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bl) ]
  store ptr %i.bl, ptr %i.az, align 8, !noalias !25221
  br label %bb.m

bb.i:                                             ; preds = %_RNvXs6_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtB9_5range5RangejEINtNtNtB9_5slice5index10SliceIndexeE9index_mut.exit.i.i.i.i.i.i.i.i.i.i
  %i.bm = invoke noundef ptr @_RNvMs7_CsaPYV88GQHqL_7bumpaloNtB5_4Bump17alloc_layout_slowB5_(ptr noundef nonnull align 8 %i.c, i64 noundef 8, i64 noundef 8) #55
          to label %.noexc34.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit19.i.i.i.i.i.i.i, !noalias !25221 ; 2 uses

.noexc34.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i
  %.not5.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bm, null
  br i1 %.not5.i.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.m, !prof !55

bb.j:                                             ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i
  invoke void @_RNvCsaPYV88GQHqL_7bumpalo3oom() #51
          to label %.noexc35.i.i.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp20.i.i.i.i.i.i.i, !noalias !25221

.noexc35.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.j
  unreachable

.loopexit19.i.i.i.i.i.i.i:                        ; preds = %bb.i
  %lpad.loopexit21.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

.loopexit.split-lp20.i.i.i.i.i.i.i:               ; preds = %bb.j
  %lpad.loopexit.split-lp22.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.k:                                             ; preds = %.loopexit.split-lp20.i.i.i.i.i.i.i, %.loopexit19.i.i.i.i.i.i.i
  %lpad.phi23.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit21.i.i.i.i.i.i.i, %.loopexit19.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp22.i.i.i.i.i.i.i, %.loopexit.split-lp20.i.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsaL1QbXo9JQH_3std4sync9lazy_lock8LazyLockNtNtNtCsdaEETE4DqmE_13typst_library11foundations5scope5ScopeRDINtNtNtB4_3ops8function2FnuEp6OutputB1o_NtNtB4_6marker4SendNtB34_4SyncEL_EECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(72) %i.a) #49
          to label %.body.i.i unwind label %bb.l, !noalias !25221

bb.l:                                             ; preds = %bb.k
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !25221
  unreachable

bb.m:                                             ; preds = %.noexc34.i.i.i.i.i.i.i.i.i.i, %.noexc33.i.i.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i = phi ptr [ %i.bl, %.noexc33.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %.noexc34.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  store ptr %i.k, ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !25221
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.14.112..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !noalias !25225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !25218
  %i.bo = getelementptr inbounds nuw [280 x i8], ptr %i.g, i64 %.val10.i.i.i.i.i.i.i ; 18 uses
  store ptr %.sroa.0.0.i37.i.i.i.i.i.i.i.i.i.i, ptr %i.bo, align 8, !noalias !25226
  %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 8
  store ptr @1439, ptr %.sroa.46.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store ptr %i.aa, ptr %.sroa.57.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 24
  store i64 %i.ac, ptr %.sroa.68.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.79.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 32
  store ptr %.sroa.0.0.i41.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.79.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.810.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 40
  store i64 %i.ac, ptr %.sroa.810.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.911.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 48
  store ptr %i.av, ptr %.sroa.911.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1012.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 56
  store i64 %i.ax, ptr %.sroa.1012.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1113.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 64
  store ptr @1442, ptr %.sroa.1113.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1214.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 72
  store i64 1, ptr %.sroa.1214.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1315.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 80
  store ptr null, ptr %.sroa.1315.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1416.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 88
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.1416.0..sroa_idx.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.14.i.i.i.i.i.i.i.i, i64 96, i1 false), !noalias !25227
  %.sroa.1517.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 184
  store ptr %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.1517.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1618.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 192
  store ptr @1444, ptr %.sroa.1618.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.1820.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 208
  store i32 3, ptr %.sroa.1820.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.2022.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 216
  store <2 x ptr> <ptr inttoptr (i64 1 to ptr), ptr @1445>, ptr %.sroa.2022.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 264
  store i32 3, ptr %.sroa.23.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bo, i64 272
  store i8 0, ptr %.sroa.25.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !25226
  %i.bp = add nuw nsw i64 %.val10.i.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i.i.i.i)
  %i.bq = icmp eq i64 %i.bp, 112
  br i1 %i.bq, label %_RNCNvNtCs9gmjTwvRRSu_10typst_html5typed5FUNCS0B5_.exit, label %bb.f

.body.i.i:                                        ; preds = %bb.k, %.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  %eh.lpad-body.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.phi23.i.i.i.i.i.i.i, %bb.k ], [ %lpad.loopexit.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i ]
  %i.br = icmp eq i64 %.val10.i.i.i.i.i.i.i, 0
  br i1 %i.br, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph

bb.n:                                             ; preds = %.lr.ph
  %i.bs = icmp eq i64 %i.bu, %.val10.i.i.i.i.i.i.i
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.body.i.i, %bb.n
  %.sroa.0.0.i.i.i78 = phi i64 [ %i.bu, %bb.n ], [ 0, %.body.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds nuw [280 x i8], ptr %i.g, i64 %.sroa.0.0.i.i.i78
  %i.bu = add nuw nsw i64 %.sroa.0.0.i.i.i78, 1   ; 4 uses
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(280) %i.bt)
          to label %bb.n unwind label %bb.p, !noalias !25228

bb.o:                                             ; preds = %.lr.ph80
  %i.bv = add nuw nsw i64 %.sroa.0.1.i.i.i79, 1   ; 2 uses
  %i.bw = icmp eq i64 %i.bv, %.val10.i.i.i.i.i.i.i
  br i1 %i.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph80

bb.p:                                             ; preds = %.lr.ph
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  %i.by = icmp eq i64 %i.bu, %.val10.i.i.i.i.i.i.i
  br i1 %i.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit.i, label %.lr.ph80

.lr.ph80:                                         ; preds = %bb.p, %bb.o
  %.sroa.0.1.i.i.i79 = phi i64 [ %i.bv, %bb.o ], [ %i.bu, %bb.p ] ; 2 uses
  %i.bz = getelementptr inbounds nuw [280 x i8], ptr %i.g, i64 %.sroa.0.1.i.i.i79
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef align 8 dereferenceable(280) %i.bz) #49
          to label %bb.o unwind label %bb.q, !noalias !25228

bb.q:                                             ; preds = %.lr.ph80
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !25228
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc7raw_vec6RawVecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit.i: ; preds = %bb.o, %bb.p
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 31360, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !25228
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #50, !noalias !25211
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCsdaEETE4DqmE_13typst_library11foundations4func14NativeFuncDataEECs9gmjTwvRRSu_10typst_html.exit: ; preds = %bb.n, %.body.i.i
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.g, i64 noundef 31360, i64 noundef range(i64 1, -9223372036854775807) 8) #53, !noalias !25228
  br label %common.resume.i

_RNCNvNtCs9gmjTwvRRSu_10typst_html5typed5FUNCS0B5_.exit: ; preds = %bb.m
  store i64 112, ptr %0, align 8, !noalias !25229
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !25229
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 112, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !25229
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtCs9gmjTwvRRSu_10typst_html6mathml19EQUATION_CSS_STYLES0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceB8_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [160 x i8], align 8               ; 23 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 7 uses
  %i.g = alloca [16 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !25236
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.g, i8 0, i64 15, i1 false), !noalias !25236
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 15
  store i8 -128, ptr %.sroa.45.0..sroa_idx.i, align 1, !noalias !25236
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !25236
  invoke fastcc void @_RINvYNtNtNtCsdaEETE4DqmE_13typst_library6layout2em2EmNtNtNtCs9gmjTwvRRSu_10typst_html3css6encode5ToCss6to_cssuEBV_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %i.f, double 5.000000e-01)
          to label %bb.d unwind label %bb.c, !noalias !25236

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn60.i = phi { ptr, i32 } [ %i.h, %bb.c ], [ %.pn.i, %bb.e ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs9gmjTwvRRSu_10typst_html(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.g) #49
          to label %bb.p unwind label %bb.o, !noalias !25236

bb.c:                                             ; preds = %_RNvMs0_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVechE4sizeCs9gmjTwvRRSu_10typst_html.exit.i.i.i.i74.i, %bb.n, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b
end_hunk_0
