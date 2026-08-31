Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_def-69be49bbc58c11b8.hir_def.d5a59ee3d62324f7-cgu.07?download=true
inline.NumInlined: 1664
inline.NumDeleted: 903
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_RNvNvXs0_NvNtCsileJQcQObtj_7hir_def9lang_item1__NtB7_31crate_lang_items_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute6inner_:bb.a
bb.hj:                                            ; preds = %bb.hi
  %i.act = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.d) #53
          to label %.body unwind label %bb.hk, !noalias !2451

bb.hk:                                            ; preds = %bb.hj
  %i.acu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54, !noalias !2451
  unreachable

bb.hl:                                            ; preds = %bb.hp, %bb.hm
  %.pn.i208 = phi { ptr, i32 } [ %i.acv, %bb.hm ], [ %i.acz, %bb.hp ]
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span11EnteredSpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef align 8 dereferenceable(40) %i.f) #53
          to label %.body unwind label %bb.ib

bb.hm:                                            ; preds = %bb.ho, %bb.hn
  %i.acv = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hn:                                            ; preds = %bb.hi, %.noexc224, %.thread.i207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.d, i64 40, i1 false), !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2444
  store i32 %.val71, ptr %i.mg, align 4, !alias.scope !2453, !noalias !2444
  store i32 %.val72, ptr %i.mh, align 4, !alias.scope !2453, !noalias !2444
  store i32 9, ptr %i.c, align 4, !alias.scope !2453, !noalias !2444
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2458
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 4 dereferenceable(16) %i.c, i64 16, i1 false), !noalias !2462
  %i.acw = invoke noundef i64 @_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags5query(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(16) %i.a)
          to label %.noexc.i211 unwind label %bb.hm, !noalias !2463

.noexc.i211:                                      ; preds = %bb.hn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2458
  %i.acx = and i64 %i.acw, 2
  %.not.i.i.i212 = icmp eq i64 %i.acx, 0
  br i1 %.not.i.i.i212, label %_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.thread.i215, label %bb.ho

_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.thread.i215: ; preds = %.noexc.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2444
  br label %bb.hs

bb.ho:                                            ; preds = %.noexc.i211
  %i.acy = invoke noundef ptr @_RNvNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB7_9AttrFlags20lang_item_with_attrs9lang_item(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(16) %i.c)
          to label %_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.i213 unwind label %bb.hm, !noalias !2463 ; 2 uses

_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.i213: ; preds = %bb.ho
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2444
  %.not16.i214 = icmp eq ptr %i.acy, null
  br i1 %.not16.i214, label %bb.hs, label %bb.hq

bb.hp:                                            ; preds = %bb.hq
  %i.acz = landingpad { ptr, i32 }
          cleanup
  br label %bb.hl

bb.hq:                                            ; preds = %_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.i213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2444
  store i32 %.val71, ptr %i.mi, align 4, !alias.scope !2464, !noalias !2444
  store i32 %.val72, ptr %i.mj, align 4, !alias.scope !2464, !noalias !2444
  store i32 5, ptr %i.b, align 4, !alias.scope !2464, !noalias !2444
  invoke fastcc void @_RNvMsj_NtCsileJQcQObtj_7hir_def9lang_itemNtB5_9LangItems16assign_lang_item(ptr noalias nofree noundef nonnull align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %i.acy, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(12) %i.b)
          to label %bb.hr unwind label %bb.hp

bb.hr:                                            ; preds = %bb.hq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2444
  br label %bb.hs

bb.hs:                                            ; preds = %bb.hr, %_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.i213, %_RNvMsl_NtCsileJQcQObtj_7hir_def5attrsNtB5_9AttrFlags9lang_item.exit.thread.i215
  %i.ada = load i64, ptr %i.f, align 8, !range !328, !alias.scope !2469, !noundef !5 ; 2 uses
  %.not.i.i251 = icmp eq i64 %i.ada, 2
  br i1 %.not.i.i251, label %bb.ic, label %bb.ht

bb.ht:                                            ; preds = %bb.hs
  invoke void @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch4exit(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.mk)
          to label %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit.i254 unwind label %bb.hu

bb.hu:                                            ; preds = %bb.ht
  %i.adb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbDqbwph1Irx_7tracing4span4SpanECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #53
          to label %.body unwind label %bb.ia

_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit.i254: ; preds = %bb.ht
  %i.adc = load i64, ptr %i.mk, align 8, !range !382, !alias.scope !2472, !noundef !5
  %i.add = invoke noundef zeroext i1 @_RNvMs2_NtCsaMQbKjKCVRW_12tracing_core10dispatcherNtB5_8Dispatch9try_close(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f, i64 noundef %i.adc)
          to label %bb.hw unwind label %bb.hv     ; 0 uses

bb.hv:                                            ; preds = %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit.i254
  %i.ade = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtCsbDqbwph1Irx_7tracing4span5InnerEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.f) #53
          to label %.body unwind label %bb.hz

bb.hw:                                            ; preds = %_RNvXsf_NtCsbDqbwph1Irx_7tracing4spanNtB5_11EnteredSpanNtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4drop.exit.i254
  call void @llvm.experimental.noalias.scope.decl(metadata !2477)
  call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  call void @llvm.experimental.noalias.scope.decl(metadata !2486)
  %i.adf = icmp eq i64 %i.ada, 0
  br i1 %i.adf, label %bb.ic, label %bb.hx

bb.hx:                                            ; preds = %bb.hw
  call void @llvm.experimental.noalias.scope.decl(metadata !2489)
  call void @llvm.experimental.noalias.scope.decl(metadata !2492)
  %i.adg = load ptr, ptr %i.ml, align 8, !alias.scope !2495, !nonnull !5, !noundef !5
  %i.adh = atomicrmw sub ptr %i.adg, i64 1 release, align 8, !noalias !2496
  %i.adi = icmp eq i64 %i.adh, 1
  br i1 %i.adi, label %bb.hy, label %bb.ic

bb.hy:                                            ; preds = %bb.hx
  fence acquire
  invoke void @_RNvMsn_NtCsbSS6DM8SDEO_5alloc4syncINtB5_3ArcDNtNtCsaMQbKjKCVRW_12tracing_core10subscriber10SubscriberNtNtCshzWfHUSfYae_4core6marker4SyncNtB1D_4SendEL_E9drop_slowBL_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.ml) #52
          to label %bb.ic unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit

bb.hz:                                            ; preds = %bb.hv
  %i.adj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.ia:                                            ; preds = %bb.hu
  %i.adk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.ib:                                            ; preds = %bb.hl
  %i.adl = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable

bb.ic:                                            ; preds = %bb.hy, %bb.hs, %bb.hw, %bb.hx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2444
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.adm = invoke noundef nonnull align 8 ptr @_RNvMsa_NtNtCsileJQcQObtj_7hir_def7nameres5assocNtB5_9ImplItems2of(ptr noundef nonnull %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef range(i32 1, 0) %.val71, i32 noundef %.val72)
          to label %_RNvMsg_CsileJQcQObtj_7hir_defNtB5_6ImplId10impl_items.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit ; 2 uses

_RNvMsg_CsileJQcQObtj_7hir_defNtB5_6ImplId10impl_items.exit: ; preds = %bb.ic
  %i.adn = load ptr, ptr %i.adm, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ado = getelementptr inbounds nuw i8, ptr %i.adm, i64 8
  %i.adp = load i64, ptr %i.ado, align 8, !noundef !5 ; 2 uses
  %.idx325 = mul nuw nsw i64 %i.adp, 24
  %i.adq = getelementptr inbounds nuw i8, ptr %i.adn, i64 %.idx325
  %i.adr = icmp eq i64 %i.adp, 0
  br i1 %i.adr, label %.loopexit281, label %.lr.ph

.lr.ph:                                           ; preds = %_RNvMsg_CsileJQcQObtj_7hir_defNtB5_6ImplId10impl_items.exit, %bb.ig
  %.sroa.010.0301 = phi ptr [ %i.ads, %bb.ig ], [ %i.adn, %_RNvMsg_CsileJQcQObtj_7hir_defNtB5_6ImplId10impl_items.exit ] ; 4 uses
  %i.ads = getelementptr inbounds nuw i8, ptr %.sroa.010.0301, i64 24 ; 2 uses
  %i.adt = getelementptr inbounds nuw i8, ptr %.sroa.010.0301, i64 8
  %.sroa.012.0.copyload = load i32, ptr %i.adt, align 8
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.0301, i64 12
  %.sroa.413.0.copyload = load i32, ptr %.sroa.413.0..sroa_idx, align 4 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.010.0301, i64 16
  %.sroa.7.0.copyload = load i32, ptr %.sroa.7.0..sroa_idx, align 8 ; 3 uses
  switch i32 %.sroa.012.0.copyload, label %.loopexit282 [
    i32 0, label %bb.id
    i32 1, label %bb.ie
    i32 2, label %bb.if
  ]

bb.id:                                            ; preds = %.lr.ph
  invoke fastcc void @_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_10FunctionIdEB5_(ptr noalias nofree noundef align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.413.0.copyload, i32 noundef %.sroa.7.0.copyload)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ie:                                            ; preds = %.lr.ph
  invoke fastcc void @_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_7ConstIdEB5_(ptr noalias nofree noundef align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.413.0.copyload, i32 noundef %.sroa.7.0.copyload)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.if:                                            ; preds = %.lr.ph
  invoke fastcc void @_RINvMNtCsileJQcQObtj_7hir_def9lang_itemNtB3_9LangItems17collect_lang_itemNtB5_11TypeAliasIdEB5_(ptr noalias nofree noundef align 4 dereferenceable(1864) %i.ce, ptr noundef nonnull %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %1, i32 noundef %.sroa.413.0.copyload, i32 noundef %.sroa.7.0.copyload)
          to label %bb.ig unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.ig:                                            ; preds = %bb.if, %bb.ie, %bb.id
  %i.adu = icmp eq ptr %i.ads, %i.adq
  br i1 %i.adu, label %.loopexit281, label %.lr.ph

bb.ih:                                            ; preds = %.body
  %i.adv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #54
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs33K2ylI4knu_10hir_expand4name4NameINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #15 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %.val1 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.a = icmp eq ptr %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read, inaccessiblemem: write) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCs4kMRW8zVVbM_3cfg8cfg_expr7CfgAtomINtB2_10EquivalentBq_E10equivalentCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #16 {
bb.a:
  %.val = load ptr, ptr %0, align 8, !noundef !5  ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val1 = load ptr, ptr %2, align 8              ; 3 uses
  %.val2 = load ptr, ptr %1, align 8, !noundef !5 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %3, align 8              ; 3 uses
  %i.a = icmp ne ptr %.val, null                  ; 2 uses
  %i.b = icmp eq ptr %.val2, null                 ; 3 uses
  %not..i = xor i1 %i.b, true
  %i.c = xor i1 %i.a, %i.b
  br i1 %i.c, label %bb.b, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.a, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %not..i)
  %4 = icmp eq ptr %.val, %.val2
  %i.d = icmp eq ptr %.val1, %.val3
  %spec.select.i = select i1 %4, i1 %i.d, i1 false
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %5 = icmp eq ptr %.val1, %.val3
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.0.0.shrunk.i = phi i1 [ %spec.select.i, %bb.c ], [ false, %bb.a ], [ %5, %bb.d ]
  ret i1 %.sroa.0.0.shrunk.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_RNvXCsfjX3T6UU9IB_9hashbrownNtNtCsileJQcQObtj_7hir_def3hir17ExprOrPatIdPackedINtB2_10EquivalentBq_E10equivalentBu_(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %1) unnamed_addr #15 {
bb.a:
  %.val = load i32, ptr %0, align 4, !noundef !5
  %.val1 = load i32, ptr %1, align 4, !noundef !5
  %i.a = icmp eq i32 %.val, %.val1
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9lang_item1__31crate_lang_items_Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @145, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9lang_items0_1__35crate_notable_traits_Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @146, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNtCsileJQcQObtj_7hir_def9lang_items_1__25lang_items_Configuration_ENtB2_3Any7type_idB1l_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @147, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1p_16UnstableFeatures5query1__21query__Configuration_ENtB2_3Any7type_idB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @148, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMs7_NtCsileJQcQObtj_7hir_def10visibilityNtNtB1r_10signatures13VariantFields18field_visibilities1__34field_visibilities__Configuration_ENtB2_3Any7type_idB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @149, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1r_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_ENtB2_3Any7type_idB1r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @150, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1p_10ExprScopes14variant_scopes1__30variant_scopes__Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @151, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1p_10ExprScopes15sig_expr_scopes1__31sig_expr_scopes__Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @152, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtCsd9Lm8bEdjjY_5salsa8function14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1p_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtB2_3Any7type_idB1t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @153, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNtCsileJQcQObtj_7hir_def9lang_item1__31crate_lang_items_Configuration_ENtB2_3Any7type_idB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @154, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNtCsileJQcQObtj_7hir_def9lang_items0_1__35crate_notable_traits_Configuration_ENtB2_3Any7type_idB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @155, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNtCsileJQcQObtj_7hir_def9lang_items_1__25lang_items_Configuration_ENtB2_3Any7type_idB1h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @156, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB1l_16UnstableFeatures5query1__21query__Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @157, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs7_NtCsileJQcQObtj_7hir_def10visibilityNtNtB1n_10signatures13VariantFields18field_visibilities1__34field_visibilities__Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @158, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMs8_NtCsileJQcQObtj_7hir_def10visibilityNtB1n_11AssocItemId16assoc_visibility1__32assoc_visibility__Configuration_ENtB2_3Any7type_idB1n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @159, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1l_10ExprScopes14variant_scopes1__30variant_scopes__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @160, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1l_10ExprScopes15sig_expr_scopes1__31sig_expr_scopes__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @161, i64 16, i1 false)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal void @_RNvXNtCshzWfHUSfYae_4core3anyINtNtNtCsd9Lm8bEdjjY_5salsa8function4memo4MemoNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB1l_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtB2_3Any7type_idB1p_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr nofree nonnull readnone align 8 captures(none) %1) unnamed_addr #3 {
bb.a:
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) @162, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXNtCsileJQcQObtj_7hir_def17unstable_featuresNtB2_16UnstableFeaturesNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9debug_set(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = call noundef nonnull align 8 ptr @_RINvMs5_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB6_8DebugSet7entriesRNtNtCs39E2wp1vf7X_6intern6symbol6SymbolRINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetB13_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0)
  %i.c = call noundef zeroext i1 @_RNvMs5_NtNtCshzWfHUSfYae_4core3fmt8buildersNtB5_8DebugSet6finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMs2_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB8_16UnstableFeatures5queryBP_NtB2_11InnerTrait_6query_(ptr dead_on_unwind noalias nofree noundef writable sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef nonnull align 4 ptr @_RNvNtCsileJQcQObtj_7hir_def7nameres19crate_local_def_map(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, i32 noundef range(i32 1, 0) %3, i32 noundef %4) ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !range !28, !noundef !5
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  %i.d = load i32, ptr %i.c, align 4, !noundef !5
  %i.e = tail call noundef nonnull align 8 ptr @_RINvMs8_NvNtCsileJQcQObtj_7hir_def7nameres1__NtB8_10DefMapPair7def_mapDNtCsgIpRO4v45SJ_7base_db14SourceDatabaseEL_EBa_(i32 noundef %i.b, i32 noundef %i.d, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  %i.f = getelementptr i8, ptr %i.e, i64 192
  %.val = load ptr, ptr %i.f, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 40
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2500)
  tail call void @_RNvXNtCsfjX3T6UU9IB_9hashbrown3mapINtB2_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core5clone5Clone5cloneCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %.val, i64 72
  %i.i = getelementptr inbounds nuw i8, ptr %.val, i64 80
  %i.j = getelementptr inbounds nuw i8, ptr %.val, i64 84
  %i.k = load i8, ptr %i.j, align 4, !range !345, !alias.scope !2500, !noalias !2497, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 85
  %i.m = load i8, ptr %i.l, align 1, !range !345, !alias.scope !2500, !noalias !2497, !noundef !5
  %i.n = getelementptr inbounds nuw i8, ptr %.val, i64 86
  %i.o = load i8, ptr %i.n, align 2, !range !345, !alias.scope !2500, !noalias !2497, !noundef !5
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load <8 x i8>, ptr %i.h, align 8, !alias.scope !2500, !noalias !2497
  store <8 x i8> %i.q, ptr %i.p, align 8, !alias.scope !2497, !noalias !2500
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.s = load <4 x i8>, ptr %i.i, align 8, !alias.scope !2500, !noalias !2497
  store <4 x i8> %i.s, ptr %i.r, align 8, !alias.scope !2497, !noalias !2500
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.k, ptr %i.t, align 4, !alias.scope !2497, !noalias !2500
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %i.m, ptr %i.u, align 1, !alias.scope !2497, !noalias !2500
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 46
  store i8 %i.o, ptr %i.v, align 2, !alias.scope !2497, !noalias !2500
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB8_10ExprScopes14variant_scopesBQ_NtB2_11InnerTrait_15variant_scopes_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef align 4 captures(address) dead_on_return dereferenceable(12) %3) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 8 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs29_NtCsileJQcQObtj_7hir_def10signaturesNtB6_13VariantFields2of(ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %3)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.d = tail call { ptr, ptr } @_RNvMs2_NtCsileJQcQObtj_7hir_def10expr_storeNtB5_15ExpressionStore10expr_roots(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c) ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0
  %i.f = extractvalue { ptr, ptr } %i.d, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_RINvMs0_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB6_10ExprScopes9new_storeINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtNtB1o_5slice4iter4IterNtB8_8ExprRootENCNvMs2_B8_NtB8_15ExpressionStore10expr_rootss_0EEBa_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(72) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.c, ptr noundef nonnull %i.e, ptr noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  invoke void @_RNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5_5ArenaNtNtNtCsileJQcQObtj_7hir_def10expr_store5scope9ScopeDataE13shrink_to_fitBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.a)
end_hunk_0
begin_hunk_1_@_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpNtNtCsileJQcQObtj_7hir_def3hir4ExprINtB5_14SlicePartialEqBC_E17equal_same_lengthBG_:bb.a

bb.bx:                                            ; preds = %bb.b
  %i.or = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.os = load i32, ptr %i.or, align 4, !range !1032, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.ot = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ou = trunc nuw i32 %i.os to i1
  %i.ov = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.ow = load i32, ptr %i.ov, align 4, !range !1032, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.ox = trunc nuw i32 %i.ow to i1               ; 2 uses
  br i1 %i.ou, label %bb.by, label %bb.bz

bb.by:                                            ; preds = %bb.bx
  br i1 %i.ox, label %.split59.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.bz:                                            ; preds = %bb.bx
  br i1 %i.ox, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.ca

.split59.i.i:                                     ; preds = %bb.by
  %i.oy = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.oz = load i32, ptr %i.ot, align 8, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pa = load i32, ptr %i.oy, align 8, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.pb = icmp eq i32 %i.oz, %i.pa
  br i1 %i.pb, label %bb.ca, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ca:                                            ; preds = %.split59.i.i, %bb.bz
  %i.pc = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %i.pd = load i32, ptr %i.pc, align 4, !range !1032, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pe = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.pf = trunc nuw i32 %i.pd to i1
  %i.pg = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %i.ph = load i32, ptr %i.pg, align 4, !range !1032, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.pi = trunc nuw i32 %i.ph to i1               ; 2 uses
  br i1 %i.pf, label %bb.cb, label %bb.cc

bb.cb:                                            ; preds = %bb.ca
  br i1 %i.pi, label %.split60.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cc:                                            ; preds = %bb.ca
  br i1 %i.pi, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %.split248

.split60.i.i:                                     ; preds = %bb.cb
  %i.pj = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.pk = load i32, ptr %i.pe, align 16, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pl = load i32, ptr %i.pj, align 16, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.pm = icmp eq i32 %i.pk, %i.pl
  br i1 %i.pm, label %.split248, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split248:                                        ; preds = %.split60.i.i, %bb.cc
  %i.pn = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.po = load i8, ptr %i.pn, align 4, !range !345, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pp = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.pq = load i8, ptr %i.pp, align 4, !range !345, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.pr = icmp eq i8 %i.po, %i.pq
  br i1 %i.pr, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cd:                                            ; preds = %bb.b
  %i.ps = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.pt = load i32, ptr %i.ps, align 4, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pu = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.pv = load i32, ptr %i.pu, align 4, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.pw = icmp eq i32 %i.pt, %i.pv
  br i1 %i.pw, label %.split241, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split241:                                        ; preds = %bb.cd
  %i.px = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.py = load i32, ptr %i.px, align 8, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.pz = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.qa = load i32, ptr %i.pz, align 8, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.qb = icmp eq i32 %i.py, %i.qa
  br i1 %i.qb, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ce:                                            ; preds = %bb.b
  %i.qc = getelementptr inbounds nuw i8, ptr %i.b, i64 44
  %i.qd = getelementptr inbounds nuw i8, ptr %i.b, i64 46
  %i.qe = getelementptr inbounds nuw i8, ptr %i.c, i64 44
  %i.qf = getelementptr inbounds nuw i8, ptr %i.c, i64 46
  %i.qg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.qh = load i64, ptr %i.qg, align 16, !alias.scope !2951, !noalias !2952, !noundef !5 ; 2 uses
  %i.qi = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.qj = load i64, ptr %i.qi, align 16, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.qk = icmp eq i64 %i.qh, %i.qj
  br i1 %i.qk, label %bb.cf, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cf:                                            ; preds = %bb.ce
  %i.ql = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.qm = load ptr, ptr %i.ql, align 8, !alias.scope !2952, !noalias !2951, !nonnull !5, !noundef !5
  %i.qn = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.qo = load ptr, ptr %i.qn, align 8, !alias.scope !2951, !noalias !2952, !nonnull !5, !noundef !5
  %i.qp = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir3PatEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1a_(ptr noundef nonnull %i.qo, ptr noundef nonnull %i.qm, i64 noundef %i.qh)
  br i1 %i.qp, label %bb.cg, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cg:                                            ; preds = %bb.cf
  %i.qq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.qr = load i64, ptr %i.qq, align 16, !alias.scope !2951, !noalias !2952, !noundef !5 ; 3 uses
  %i.qs = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.qt = load i64, ptr %i.qs, align 16, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.qu = icmp eq i64 %i.qr, %i.qt
  br i1 %i.qu, label %bb.ch, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ch:                                            ; preds = %bb.cg
  %i.qv = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.qw = load ptr, ptr %i.qv, align 8, !alias.scope !2952, !noalias !2951, !nonnull !5, !noundef !5
  %i.qx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.qy = load ptr, ptr %i.qx, align 8, !alias.scope !2951, !noalias !2952, !nonnull !5, !noundef !5
  %i.qz = icmp eq i64 %i.qr, 0
  br i1 %i.qz, label %.loopexit.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.ch, %bb.ci
  %.sroa.01.08.i.i.i = phi i64 [ %i.rh, %bb.ci ], [ 0, %bb.ch ] ; 3 uses
  %i.ra = getelementptr inbounds nuw [8 x i8], ptr %i.qy, i64 %.sroa.01.08.i.i.i ; 2 uses
  %i.rb = getelementptr inbounds nuw [8 x i8], ptr %i.qw, i64 %.sroa.01.08.i.i.i ; 2 uses
  %.val.i.i.i = load i32, ptr %i.ra, align 4, !range !1032, !noundef !5
  %.val6.i.i.i = load i32, ptr %i.rb, align 4
  %i.rc = trunc nuw i32 %.val.i.i.i to i1
  %i.rd = trunc nuw i32 %.val6.i.i.i to i1        ; 2 uses
  br i1 %i.rc, label %.split.i.i.i, label %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtB7_3cmp9PartialEq2neB1e_.exit.i.i.i

.split.i.i.i:                                     ; preds = %.lr.ph.i.i.i
  %i.re = getelementptr i8, ptr %i.rb, i64 4
  %.val7.i.i.i = load i32, ptr %i.re, align 4
  %i.rf = getelementptr i8, ptr %i.ra, i64 4
  %.val5.i.i.i = load i32, ptr %i.rf, align 4
  %i.rg = icmp eq i32 %.val5.i.i.i, %.val7.i.i.i
  %spec.select.i.i.not.i.i.i = select i1 %i.rd, i1 %i.rg, i1 false
  br i1 %spec.select.i.i.not.i.i.i, label %bb.ci, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

_RNvYINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtB7_3cmp9PartialEq2neB1e_.exit.i.i.i: ; preds = %.lr.ph.i.i.i
  br i1 %i.rd, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.ci

bb.ci:                                            ; preds = %_RNvYINtNtCshzWfHUSfYae_4core6option6OptionINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtNtCsileJQcQObtj_7hir_def3hir8type_ref7TypeRefEENtNtB7_3cmp9PartialEq2neB1e_.exit.i.i.i, %.split.i.i.i
  %i.rh = add nuw i64 %.sroa.01.08.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.rh, %i.qr
  br i1 %exitcond.not.i.i.i, label %.loopexit.i.i, label %.lr.ph.i.i.i

.loopexit.i.i:                                    ; preds = %bb.ci, %bb.ch
  %i.ri = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.rj = trunc nuw i32 %i.d to i1
  %i.rk = trunc nuw i32 %i.h to i1                ; 2 uses
  br i1 %i.rj, label %bb.cj, label %bb.ck

bb.cj:                                            ; preds = %.loopexit.i.i
  br i1 %i.rk, label %.split62.i.i, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ck:                                            ; preds = %.loopexit.i.i
  br i1 %i.rk, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.cl

.split62.i.i:                                     ; preds = %bb.cj
  %i.rl = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  %i.rm = load i32, ptr %i.ri, align 4, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.rn = load i32, ptr %i.rl, align 4, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.ro = icmp eq i32 %i.rm, %i.rn
  br i1 %i.ro, label %bb.cl, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cl:                                            ; preds = %.split62.i.i, %bb.ck
  %i.rp = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.rq = load i32, ptr %i.rp, align 8, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.rr = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.rs = load i32, ptr %i.rr, align 8, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.rt = icmp eq i32 %i.rq, %i.rs
  br i1 %i.rt, label %bb.cm, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cm:                                            ; preds = %bb.cl
  %.val47.i.i = load i8, ptr %i.qc, align 4, !range !1583, !alias.scope !2951, !noalias !2952, !noundef !5
  %i.ru = getelementptr inbounds nuw i8, ptr %i.b, i64 45
  %.val48.i.i = load i8, ptr %i.ru, align 1, !alias.scope !2951, !noalias !2952
  %.val49.i.i = load i8, ptr %i.qe, align 4, !range !1583, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.rv = getelementptr inbounds nuw i8, ptr %i.c, i64 45
  %.val50.i.i = load i8, ptr %i.rv, align 1, !alias.scope !2952, !noalias !2951
  %i.rw = tail call fastcc noundef zeroext i1 @_RNvXs1W_NtCsileJQcQObtj_7hir_def3hirNtB6_11ClosureKindNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(i8 %.val47.i.i, i8 %.val48.i.i, i8 %.val49.i.i, i8 %.val50.i.i) #58
  br i1 %i.rw, label %.split256, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split256:                                        ; preds = %bb.cm
  %.val51.i.i = load i8, ptr %i.qd, align 2, !range !345, !alias.scope !2951, !noalias !2952, !noundef !5
  %.val52.i.i = load i8, ptr %i.qf, align 2, !range !345, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.rx = icmp eq i8 %.val51.i.i, %.val52.i.i
  br i1 %i.rx, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cn:                                            ; preds = %bb.b
  %i.ry = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.rz = load i64, ptr %i.ry, align 16, !alias.scope !2951, !noalias !2952, !noundef !5 ; 2 uses
  %i.sa = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.sb = load i64, ptr %i.sa, align 16, !alias.scope !2952, !noalias !2951, !noundef !5
  %i.sc = icmp eq i64 %i.rz, %i.sb
  br i1 %i.sc, label %.split290, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split290:                                        ; preds = %bb.cn
  %i.sd = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.se = load ptr, ptr %i.sd, align 8, !alias.scope !2952, !noalias !2951, !nonnull !5, !noundef !5
  %i.sf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.sg = load ptr, ptr %i.sf, align 8, !alias.scope !2951, !noalias !2952, !nonnull !5, !noundef !5
  %i.sh = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1a_(ptr noundef nonnull %i.sg, ptr noundef nonnull %i.se, i64 noundef %i.rz)
  br i1 %i.sh, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.co:                                            ; preds = %bb.b
  %i.si = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.sj = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2971)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2974)
  %i.sk = load ptr, ptr %i.si, align 8, !alias.scope !2971, !noalias !2974, !noundef !5 ; 2 uses
  %i.sl = icmp eq ptr %i.sk, null                 ; 2 uses
  %i.sm = load ptr, ptr %i.sj, align 8, !alias.scope !2974, !noalias !2971, !noundef !5 ; 2 uses
  %i.sn = icmp eq ptr %i.sm, null                 ; 3 uses
  %i.so = xor i1 %i.sl, %i.sn
  br i1 %i.so, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread, label %bb.cp

bb.cp:                                            ; preds = %bb.co
  br i1 %i.sl, label %bb.cq, label %bb.cr

bb.cq:                                            ; preds = %bb.cp
  tail call void @llvm.assume(i1 %i.sn)
  %i.sp = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.sq = load i32, ptr %i.sp, align 16, !alias.scope !2971, !noalias !2974, !noundef !5
  %i.sr = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.ss = load i32, ptr %i.sr, align 16, !alias.scope !2974, !noalias !2971, !noundef !5
  %i.st = icmp eq i32 %i.sq, %i.ss
  br i1 %i.st, label %.split272, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cr:                                            ; preds = %bb.cp
  %i.su = xor i1 %i.sn, true
  tail call void @llvm.assume(i1 %i.su)
  %i.sv = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.sw = load i64, ptr %i.sv, align 16, !alias.scope !2971, !noalias !2974, !noundef !5 ; 2 uses
  %i.sx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.sy = load i64, ptr %i.sx, align 16, !alias.scope !2974, !noalias !2971, !noundef !5
  %i.sz = icmp eq i64 %i.sw, %i.sy
  br i1 %i.sz, label %.split261, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split261:                                        ; preds = %bb.cr
  %i.ta = tail call noundef zeroext i1 @_RNvXs2_NtNtCshzWfHUSfYae_4core5slice3cmpINtCsbq3eHDLgq0Z_8la_arena3IdxNtNtCsileJQcQObtj_7hir_def3hir4ExprEINtB5_14SlicePartialEqBC_E17equal_same_lengthB1a_(ptr noundef nonnull %i.sk, ptr noundef nonnull %i.sm, i64 noundef %i.sw), !noalias !2976
  br i1 %i.ta, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split272:                                        ; preds = %bb.cq
  %i.tb = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.tc = load i32, ptr %i.tb, align 4, !alias.scope !2971, !noalias !2974, !noundef !5
  %i.td = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.te = load i32, ptr %i.td, align 4, !alias.scope !2974, !noalias !2971, !noundef !5
  %i.tf = icmp eq i32 %i.tc, %i.te
  br i1 %i.tf, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cs:                                            ; preds = %bb.b
  %i.tg = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.th = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2977)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2980)
  %i.ti = load i8, ptr %i.tg, align 16, !range !1222, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %i.tj = load i8, ptr %i.th, align 16, !range !1222, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.tk = icmp eq i8 %i.ti, %i.tj
  br i1 %i.tk, label %bb.ct, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.ct:                                            ; preds = %bb.cs
  switch i8 %i.ti, label %.unreachabledefault [
    i8 0, label %.split258
    i8 1, label %bb.cu
    i8 2, label %bb.cv
    i8 3, label %.split242
    i8 4, label %.split292
    i8 5, label %bb.cw
    i8 6, label %bb.cx
    i8 7, label %bb.cy
  ]

.unreachabledefault:                              ; preds = %bb.ct
  unreachable

default.unreachable:                              ; preds = %bb.dk
  unreachable

.split258:                                        ; preds = %bb.ct
  %i.tl = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.tm = load ptr, ptr %i.tl, align 8, !alias.scope !2977, !noalias !2980, !nonnull !5, !noundef !5
  %i.tn = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.to = load ptr, ptr %i.tn, align 8, !alias.scope !2980, !noalias !2977, !nonnull !5, !noundef !5
  %i.tp = icmp eq ptr %i.tm, %i.to
  br i1 %i.tp, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cu:                                            ; preds = %bb.ct
  %i.tq = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.tr = load i64, ptr %i.tq, align 16, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.tt = load i64, ptr %i.ts, align 16, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.tu = icmp eq i64 %i.tr, %i.tt
  br i1 %i.tu, label %.split253, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cv:                                            ; preds = %bb.ct
  %i.tv = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.tw = load i64, ptr %i.tv, align 16, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %i.tx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ty = load i64, ptr %i.tx, align 16, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.tz = icmp eq i64 %i.tw, %i.ty
  br i1 %i.tz, label %.split247, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split242:                                        ; preds = %bb.ct
  %i.ua = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  %i.ub = load i32, ptr %i.ua, align 4, !range !2982, !alias.scope !2977, !noalias !2980, !noundef !5
  %i.uc = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  %i.ud = load i32, ptr %i.uc, align 4, !range !2982, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.ue = icmp eq i32 %i.ub, %i.ud
  br i1 %i.ue, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split292:                                        ; preds = %bb.ct
  %i.uf = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.ug = load i8, ptr %i.uf, align 1, !range !345, !alias.scope !2977, !noalias !2980, !noundef !5
  %i.uh = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.ui = load i8, ptr %i.uh, align 1, !range !345, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.uj = icmp eq i8 %i.ug, %i.ui
  br i1 %i.uj, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cw:                                            ; preds = %bb.ct
  %i.uk = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ul = load i128, ptr %i.uk, align 16, !alias.scope !2977, !noalias !2980, !noundef !5
  %i.um = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.un = load i128, ptr %i.um, align 16, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.uo = icmp eq i128 %i.ul, %i.un
  br i1 %i.uo, label %bb.cz, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cx:                                            ; preds = %bb.ct
  %i.up = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.uq = load i128, ptr %i.up, align 16, !alias.scope !2977, !noalias !2980, !noundef !5
  %i.ur = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.us = load i128, ptr %i.ur, align 16, !alias.scope !2980, !noalias !2977, !noundef !5
  %i.ut = icmp eq i128 %i.uq, %i.us
  br i1 %i.ut, label %bb.da, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cy:                                            ; preds = %bb.ct
  %i.uu = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.uv = load ptr, ptr %i.uu, align 8, !alias.scope !2977, !noalias !2980, !nonnull !5, !noundef !5
  %i.uw = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ux = load ptr, ptr %i.uw, align 8, !alias.scope !2980, !noalias !2977, !nonnull !5, !noundef !5
  %i.uy = icmp eq ptr %i.uv, %i.ux
  br i1 %i.uy, label %bb.db, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split253:                                        ; preds = %bb.cu
  %i.uz = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.va = load ptr, ptr %i.uz, align 8, !alias.scope !2980, !noalias !2977, !nonnull !5, !noundef !5
  %i.vb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.vc = load ptr, ptr %i.vb, align 8, !alias.scope !2977, !noalias !2980, !nonnull !5, !noundef !5
  %bcmp9.i = tail call i32 @bcmp(ptr nonnull %i.vc, ptr nonnull %i.va, i64 %i.tr), !noalias !2983
  %i.vd = icmp eq i32 %bcmp9.i, 0
  br i1 %i.vd, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split247:                                        ; preds = %bb.cv
  %i.ve = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.vf = load ptr, ptr %i.ve, align 8, !alias.scope !2980, !noalias !2977, !nonnull !5, !noundef !5
  %i.vg = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.vh = load ptr, ptr %i.vg, align 8, !alias.scope !2977, !noalias !2980, !nonnull !5, !noundef !5
  %bcmp.i = tail call i32 @bcmp(ptr nonnull %i.vh, ptr nonnull %i.vf, i64 %i.tw), !noalias !2983
  %i.vi = icmp eq i32 %bcmp.i, 0
  br i1 %i.vi, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.cz:                                            ; preds = %bb.cw
  %i.vj = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.vk = load i8, ptr %i.vj, align 1, !range !1223, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %.not7.i = icmp eq i8 %i.vk, -1
  %i.vl = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.vm = load i8, ptr %i.vl, align 1, !range !1223, !alias.scope !2980, !noalias !2977, !noundef !5 ; 2 uses
  br i1 %.not7.i, label %.split277, label %.split245

.split245:                                        ; preds = %bb.cz
  %i.vn = icmp eq i8 %i.vk, %i.vm
  br i1 %i.vn, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split277:                                        ; preds = %bb.cz
  %i.vo = icmp eq i8 %i.vm, -1
  br i1 %i.vo, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.da:                                            ; preds = %bb.cx
  %i.vp = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.vq = load i8, ptr %i.vp, align 1, !range !1223, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %.not5.i = icmp eq i8 %i.vq, -1
  %i.vr = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.vs = load i8, ptr %i.vr, align 1, !range !1223, !alias.scope !2980, !noalias !2977, !noundef !5 ; 2 uses
  br i1 %.not5.i, label %.split249, label %.split284

.split284:                                        ; preds = %bb.da
  %i.vt = icmp eq i8 %i.vq, %i.vs
  br i1 %i.vt, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split249:                                        ; preds = %bb.da
  %i.vu = icmp eq i8 %i.vs, -1
  br i1 %i.vu, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.db:                                            ; preds = %bb.cy
  %i.vv = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %i.vw = load i8, ptr %i.vv, align 1, !range !2984, !alias.scope !2977, !noalias !2980, !noundef !5 ; 2 uses
  %.not.i = icmp eq i8 %i.vw, -1
  %i.vx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  %i.vy = load i8, ptr %i.vx, align 1, !range !2984, !alias.scope !2980, !noalias !2977, !noundef !5 ; 2 uses
  br i1 %.not.i, label %.split243, label %.split268

.split268:                                        ; preds = %bb.db
  %i.vz = icmp eq i8 %i.vw, %i.vy
  br i1 %i.vz, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

.split243:                                        ; preds = %bb.db
  %i.wa = icmp eq i8 %i.vy, -1
  br i1 %i.wa, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.dc:                                            ; preds = %bb.b
  %i.wb = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.wc = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2985)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2988)
  %i.wd = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.we = load i32, ptr %i.wd, align 8, !alias.scope !2985, !noalias !2988, !noundef !5
  %i.wf = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.wg = load i32, ptr %i.wf, align 8, !alias.scope !2988, !noalias !2985, !noundef !5
  %i.wh = icmp eq i32 %i.we, %i.wg
  br i1 %i.wh, label %bb.dd, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.dd:                                            ; preds = %bb.dc
  %i.wi = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.wj = load i64, ptr %i.wi, align 16, !alias.scope !2985, !noalias !2988, !noundef !5 ; 3 uses
  %i.wk = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.wl = load i64, ptr %i.wk, align 16, !alias.scope !2988, !noalias !2985, !noundef !5
  %i.wm = icmp eq i64 %i.wj, %i.wl
  br i1 %i.wm, label %bb.de, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread

bb.de:                                            ; preds = %bb.dd
  %i.wn = load ptr, ptr %i.wc, align 8, !alias.scope !2988, !noalias !2985, !nonnull !5, !noundef !5
  %i.wo = load ptr, ptr %i.wb, align 8, !alias.scope !2985, !noalias !2988, !nonnull !5, !noundef !5
  %i.wp = icmp eq i64 %i.wj, 0
  br i1 %i.wp, label %_RNvYNtNtCsileJQcQObtj_7hir_def3hir4ExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2neB6_.exit.thread25, label %.lr.ph.i.i8

bb.df:                                            ; preds = %.lr.ph.i.i8
end_hunk_1
begin_hunk_2_@_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes15sig_expr_scopes1__31sig_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient8locationB19_
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes15sig_expr_scopes1__31sig_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient8locationB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @321
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, i64 } @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient10debug_nameB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret { ptr, i64 } { ptr @322, i64 29 }
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient14is_persistableB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define internal noundef i32 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient16ingredient_indexB19_(ptr nofree noundef nonnull readonly align 8 captures(none) %0) unnamed_addr #15 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 592
  %i.b = load i32, ptr %i.a, align 8, !noundef !5
  ret i32 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal void @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient19remove_stale_outputB19_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree nonnull readnone align 8 captures(none) %1, ptr noalias nofree readonly align 4 captures(none) dead_on_return %2, i32 range(i32 1, 0) %3, i32 %4) unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient31requires_reset_for_new_revisionB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient8jar_kindB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal noundef nonnull align 8 ptr @_RNvXs_NtCsd9Lm8bEdjjY_5salsa8functionINtB4_14IngredientImplNtNvNvMsi_NtNtCsileJQcQObtj_7hir_def10expr_store5scopeNtB15_10ExprScopes16body_expr_scopes1__32body_expr_scopes__Configuration_ENtNtB6_10ingredient10Ingredient8locationB19_(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #4 {
bb.a:
  ret ptr @323
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @_RNvXs_NtCsileJQcQObtj_7hir_def10visibilityNtB4_10VisibilityNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(address, read_provenance) dereferenceable(12) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #9 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = load i8, ptr %0, align 4, !range !351, !noundef !5
  switch i8 %i.c, label %default.unreachable1 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 1
  store ptr %i.e, ptr %i.b, align 8
  %i.f = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field2_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @326, i64 noundef 6, ptr noundef nonnull %i.d, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @324, ptr noundef nonnull %i.b, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @325)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 4
  store ptr %i.g, ptr %i.a, align 8
  %i.h = call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter25debug_tuple_field1_finish(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @327, i64 noundef 8, ptr noundef nonnull %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @299)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  %i.i = tail call noundef zeroext i1 @_RNvMsa_NtCshzWfHUSfYae_4core3fmtNtB5_9Formatter9write_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @328, i64 noundef 6)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.i, %bb.d ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXs_NtCsileJQcQObtj_7hir_def17unstable_featuresNtB4_16UnstableFeaturesNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3463)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3466)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !3463, !noalias !3466, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !3466, !noalias !3463, !noundef !5
  %.not.i = icmp eq i64 %i.c, %i.e
  br i1 %.not.i, label %bb.b, label %_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3468
  call void @_RNvMs0_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE4iterCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0), !noalias !3466
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %i.f = call { ptr, ptr } @_RNvXsG_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymboluENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.a)
  %i.g = extractvalue { ptr, ptr } %i.f, 0        ; 2 uses
  %.not.not.not.not.i.not.i = icmp eq ptr %i.g, null ; 2 uses
  br i1 %.not.not.not.not.i.not.i, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkRBV_NCNvXs4_B6_INtB6_7HashSetBV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.h = call noundef zeroext i1 @_RINvMs1_NtCsfjX3T6UU9IB_9hashbrown3mapINtB6_7HashMapNtNtCs39E2wp1vf7X_6intern6symbol6SymboluNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE12contains_keyBO_ECsileJQcQObtj_7hir_def(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.g)
  br i1 %i.h, label %bb.c, label %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkRBV_NCNvXs4_B6_INtB6_7HashSetBV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit.i

_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkRBV_NCNvXs4_B6_INtB6_7HashSetBV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit.i: ; preds = %bb.d, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3468
  br label %_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit

_RNvXs4_NtNtNtCscAsMj0W7j8b_3std11collections4hash3setINtB5_7HashSetNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtCshzWfHUSfYae_4core3cmp9PartialEq2eqCsileJQcQObtj_7hir_def.exit: ; preds = %bb.a, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkRBV_NCNvXs4_B6_INtB6_7HashSetBV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit.i
  %.sroa.0.0.i = phi i1 [ %.not.not.not.not.i.not.i, %_RINvYINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtNtCs39E2wp1vf7X_6intern6symbol6SymbolENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1z_3all5checkRBV_NCNvXs4_B6_INtB6_7HashSetBV_NtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtB1H_3cmp9PartialEq2eq0E0INtNtNtB1H_3ops12control_flow11ControlFlowuEECsileJQcQObtj_7hir_def.exit.i ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NtCsileJQcQObtj_7hir_def3hirNtB5_10AsmOptionsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def3hir10AsmOptionsQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsb_NvNtCsileJQcQObtj_7hir_def6per_ns1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt5Debug3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = load i32, ptr %0, align 4, !noundef !5   ; 2 uses
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3469
  store i32 %i.c, ptr %i.a, align 4, !noalias !3469
  %i.e = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def6per_ns14NsAvailabilityQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1), !noalias !3473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3469
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr @349, ptr %i.b, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @_RNvXsu_NtNtCshzWfHUSfYae_4core3fmt3nummNtB7_8LowerHex3fmt, ptr %.sroa.43.0..sroa_idx, align 8
  %i.f = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !6, !noundef !5
  %i.i = call noundef zeroext i1 @_RNvNtCshzWfHUSfYae_4core3fmt5write(ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h, ptr noundef nonnull @350, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsc_NvNtCsileJQcQObtj_7hir_def6per_ns1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt7Display3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !5
  store i32 %i.b, ptr %i.a, align 4
  %i.c = call noundef zeroext i1 @_RINvNtCslRtAOKA59qD_8bitflags6parser9to_writerNtNtCsileJQcQObtj_7hir_def6per_ns14NsAvailabilityQNtNtCshzWfHUSfYae_4core3fmt9FormatterEBM_(ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nofree nosync nounwind nonlazybind memory(read, inaccessiblemem: write, target_mem: none) uwtable
define internal fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #32 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !range !2730, !noundef !5 ; 2 uses
  %i.b = load i64, ptr %1, align 8, !range !2730, !noundef !5
  %i.c = icmp eq i64 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i64 [ %i.i, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr1024 = phi ptr [ %i.h, %tailrecurse ], [ %1, %bb.a ] ; 7 uses
  %.tr23 = phi ptr [ %i.f, %tailrecurse ], [ %0, %bb.a ] ; 7 uses
  switch i64 %i.d, label %default.unreachable56 [
    i64 1, label %bb.b
    i64 2, label %bb.f
    i64 3, label %bb.h
    i64 4, label %tailrecurse
    i64 0, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
  ]

_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %.lr.ph28, %.lr.ph34, %bb.a, %bb.i, %bb.g, %bb.e, %bb.d, %bb.b, %bb.h, %bb.f
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.h ], [ false, %bb.a ], [ %5, %bb.e ], [ %spec.select.i, %bb.d ], [ false, %bb.b ], [ false, %bb.f ], [ true, %bb.i ], [ true, %bb.g ], [ %i.ap, %.lr.ph28 ], [ %i.ac, %.lr.ph34 ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

default.unreachable56:                            ; preds = %.lr.ph
  unreachable

tailrecurse:                                      ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr23, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.tr1024, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.i = load i64, ptr %i.f, align 8, !range !2730, !noundef !5 ; 2 uses
  %i.j = load i64, ptr %i.h, align 8, !range !2730, !noundef !5
  %i.k = icmp eq i64 %i.i, %i.j
  br i1 %i.k, label %.lr.ph, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.b:                                             ; preds = %.lr.ph
  %i.l = getelementptr inbounds nuw i8, ptr %.tr23, i64 8
  %i.m = getelementptr inbounds nuw i8, ptr %.tr1024, i64 8
  %.val = load ptr, ptr %i.l, align 8, !noundef !5 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %.tr23, i64 16
  %.val4 = load ptr, ptr %2, align 8              ; 3 uses
  %.val.a = load ptr, ptr %i.m, align 8, !noundef !5 ; 2 uses
  %3 = getelementptr inbounds nuw i8, ptr %.tr1024, i64 16
  %.val5 = load ptr, ptr %3, align 8              ; 3 uses
  %i.n = icmp ne ptr %.val, null                  ; 2 uses
  %i.o = icmp eq ptr %.val.a, null                ; 3 uses
  %not..i = xor i1 %i.o, true
  %i.p = xor i1 %i.n, %i.o
  br i1 %i.p, label %bb.c, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %bb.b
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %not..i)
  %4 = icmp eq ptr %.val, %.val.a
  %i.q = icmp eq ptr %.val4, %.val5
  %spec.select.i = select i1 %4, i1 %i.q, i1 false
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.assume(i1 %i.o)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val4) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %5 = icmp eq ptr %.val4, %.val5
  br label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.r = getelementptr inbounds nuw i8, ptr %.tr23, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !5 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.tr1024, i64 16
  %i.u = load i64, ptr %i.t, align 8, !noundef !5
  %i.v = icmp eq i64 %i.s, %i.u
  br i1 %i.v, label %bb.g, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %bb.f
  %i.w = getelementptr inbounds nuw i8, ptr %.tr1024, i64 8
  %i.x = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.y = getelementptr inbounds nuw i8, ptr %.tr23, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !5, !noundef !5
  %.not932.not = icmp eq i64 %i.s, 0
  br i1 %.not932.not, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.lr.ph34

.lr.ph34:                                         ; preds = %bb.g, %.lr.ph34
  %.sroa.01.0.i33 = phi i64 [ %i.ad, %.lr.ph34 ], [ 0, %bb.g ] ; 3 uses
  %i.aa = getelementptr inbounds nuw [24 x i8], ptr %i.z, i64 %.sroa.01.0.i33
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %i.x, i64 %.sroa.01.0.i33
  %i.ac = tail call fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) #58, !inline_history !3474 ; 2 uses
  %i.ad = add nuw i64 %.sroa.01.0.i33, 1          ; 2 uses
  %exitcond50.not = icmp ne i64 %i.ad, %i.s
  %or.cond.not = select i1 %i.ac, i1 %exitcond50.not, i1 false
  br i1 %or.cond.not, label %.lr.ph34, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr23, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !5 ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %.tr1024, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !5
  %i.ai = icmp eq i64 %i.af, %i.ah
  br i1 %i.ai, label %bb.i, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit

bb.i:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr1024, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %.tr23, i64 8
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %.not26.not = icmp eq i64 %i.af, 0
  br i1 %.not26.not, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit, label %.lr.ph28

.lr.ph28:                                         ; preds = %bb.i, %.lr.ph28
  %.sroa.01.0.i727 = phi i64 [ %i.aq, %.lr.ph28 ], [ 0, %bb.i ] ; 3 uses
  %i.an = getelementptr inbounds nuw [24 x i8], ptr %i.am, i64 %.sroa.01.0.i727
  %i.ao = getelementptr inbounds nuw [24 x i8], ptr %i.ak, i64 %.sroa.01.0.i727
  %i.ap = tail call fastcc noundef zeroext i1 @_RNvXsd_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgExprNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.an, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ao) #58, !inline_history !3474 ; 2 uses
  %i.aq = add nuw i64 %.sroa.01.0.i727, 1         ; 2 uses
  %exitcond.not = icmp ne i64 %i.aq, %i.af
  %or.cond82.not = select i1 %i.ap, i1 %exitcond.not, i1 false
  br i1 %or.cond82.not, label %.lr.ph28, label %_RNvXs7_NtCs4kMRW8zVVbM_3cfg8cfg_exprNtB5_7CfgAtomNtNtCshzWfHUSfYae_4core3cmp9PartialEq2eq.exit
}

; Function Attrs: nonlazybind uwtable
define range(i64 0, -4294902014) i64 @_RNvXsd_NvNtCsileJQcQObtj_7hir_def6per_ns1__NtB5_16InternalBitFlagsNtNtNtCshzWfHUSfYae_4core3str6traits7FromStr8from_str(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call i64 @_RINvNtCslRtAOKA59qD_8bitflags6parser8from_strNtNtCsileJQcQObtj_7hir_def6per_ns14NsAvailabilityEBL_(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %0, i64 noundef %1)
  %.sroa.0.0.insert.insert = and i64 %i.a, -4294902015
  ret i64 %.sroa.0.0.insert.insert
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read, inaccessiblemem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsf_NtNtCshzWfHUSfYae_4core5slice3cmpINtNtB9_6option6OptionjENtB5_13SliceContains14slice_containsCsileJQcQObtj_7hir_def(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 576460752303423488) %2) unnamed_addr #24 personality ptr @rust_eh_personality {
bb.a:
  %.idx = shl nuw nsw i64 %2, 4
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3475)
  %.not.i = icmp eq i64 %2, 0
  br i1 %.not.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.val2.i.i = load i64, ptr %0, align 8, !alias.scope !3475, !noalias !3478
  %.val2.i.fr.i = freeze i64 %.val2.i.i
  %i.b = trunc i64 %.val2.i.fr.i to i1
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val3.i.i = load i64, ptr %i.c, align 8, !alias.scope !3475, !noalias !3478
  br i1 %i.b, label %.lr.ph.split.us.i, label %.lr.ph.split.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %.backedge.us.i
  %i.d = phi ptr [ %i.e, %.backedge.us.i ], [ %1, %.lr.ph.i ] ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.val2.us.i = load i64, ptr %i.d, align 8, !range !326, !noalias !3480, !noundef !5
  %i.f = trunc nuw i64 %.val2.us.i to i1
  br i1 %i.f, label %.split.us.i, label %.backedge.us.i

.split.us.i:                                      ; preds = %.lr.ph.split.us.i
  %i.g = getelementptr i8, ptr %i.d, i64 8
  %.val3.us.i = load i64, ptr %i.g, align 8, !noalias !3480
  %i.h = icmp eq i64 %.val3.us.i, %.val3.i.i
  br i1 %i.h, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit, label %.backedge.us.i

.backedge.us.i:                                   ; preds = %.split.us.i, %.lr.ph.split.us.i
  %.not21.i = icmp eq ptr %i.e, %i.a
  br i1 %.not21.i, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit, label %.lr.ph.split.us.i

.lr.ph.split.split.i:                             ; preds = %.lr.ph.i
  %.val218.i = load i64, ptr %1, align 8, !range !326, !noalias !3480, !noundef !5
  %i.i = trunc nuw i64 %.val218.i to i1
  br i1 %i.i, label %.split.i.preheader, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit

.split.i.preheader:                               ; preds = %.lr.ph.split.split.i
  %.not20.i.not10 = icmp eq i64 %2, 1
  br i1 %.not20.i.not10, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.split.i.preheader
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %.lr.ph
  %i.k = phi ptr [ %i.j, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %.val2.i = load i64, ptr %i.k, align 8, !range !326, !noalias !3480, !noundef !5
  %i.l = trunc nuw i64 %.val2.i to i1             ; 2 uses
  %.not = xor i1 %i.l, true
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 16 ; 2 uses
  %.not20.i.not = icmp eq ptr %i.m, %i.a
  %or.cond = select i1 %.not, i1 true, i1 %.not20.i.not
  br i1 %or.cond, label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit.loopexit12, label %bb.b

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit.loopexit12: ; preds = %bb.b
  %.lcssa.i.ph13 = xor i1 %i.l, true
  br label %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit

_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit: ; preds = %.split.us.i, %.backedge.us.i, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit.loopexit12, %.split.i.preheader, %.lr.ph.split.split.i, %bb.a
  %.lcssa.i = phi i1 [ false, %bb.a ], [ false, %.split.i.preheader ], [ true, %.lr.ph.split.split.i ], [ %.lcssa.i.ph13, %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterINtNtBb_6option6OptionjEENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvXsf_NtB9_3cmpBQ_NtB26_13SliceContains14slice_contains0ECsileJQcQObtj_7hir_def.exit.loopexit12 ], [ false, %.backedge.us.i ], [ true, %.split.us.i ]
  ret i1 %.lcssa.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsh_NtCsd9Lm8bEdjjY_5salsa6updateINtNtCshzWfHUSfYae_4core6option6OptionNtCsileJQcQObtj_7hir_def10ModuleIdLtENtB5_6Update12maybe_updateB1c_(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %.not8 = icmp eq i32 %1, 0                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split

_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split: ; preds = %bb.c, %bb.b, %bb.d
  store i32 %1, ptr %0, align 4
  store i32 %2, ptr %i.b, align 4
  br label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit

_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit: ; preds = %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split, %bb.d, %bb.c
  %.sroa.07.0 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split ]
  ret i1 %.sroa.07.0

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 4, !noundef !5
  %i.d = icmp eq i32 %i.c, %2
  %.not.i = icmp eq i32 %i.a, %1
  %or.cond = and i1 %.not.i, %i.d
  br i1 %or.cond, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsi_1__NtB7_10ModuleIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvXsh_NtCsd9Lm8bEdjjY_5salsa6updateINtNtCshzWfHUSfYae_4core6option6OptionNtCsileJQcQObtj_7hir_def9BlockIdLtENtB5_6Update12maybe_updateB1c_(ptr nofree noundef captures(none) %0, i32 noundef %1, i32 %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %0, align 4, !noundef !5   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  %.not8 = icmp eq i32 %1, 0                      ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  br i1 %.not8, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %.not8, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split

_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split: ; preds = %bb.c, %bb.b, %bb.d
  store i32 %1, ptr %0, align 4
  store i32 %2, ptr %i.b, align 4
  br label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit

_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit: ; preds = %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split, %bb.d, %bb.c
  %.sroa.07.0 = phi i1 [ false, %bb.c ], [ false, %bb.d ], [ true, %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split ]
  ret i1 %.sroa.07.0

bb.d:                                             ; preds = %bb.b
  %i.c = load i32, ptr %i.b, align 4, !noundef !5
  %i.d = icmp eq i32 %i.c, %2
  %.not.i = icmp eq i32 %i.a, %1
  %or.cond = and i1 %.not.i, %i.d
  br i1 %or.cond, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit, label %_RNvXs7_NvCsileJQcQObtj_7hir_defsh_1__NtB7_9BlockIdLtNtNtCsd9Lm8bEdjjY_5salsa6update6Update12maybe_update.exit.sink.split
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @_RNvXsi_NvNtCsileJQcQObtj_7hir_def6per_ns1__NtB5_16InternalBitFlagsNtNtCshzWfHUSfYae_4core3fmt6Binary3fmt(ptr noalias nofree noundef readonly align 4 captures(none) dereferenceable(4) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = load i32, ptr %0, align 4, !noundef !5
  store i32 %i.b, ptr %i.a, align 4
end_hunk_2
