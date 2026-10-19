Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.15?download=true
inline.NumInlined: 1271
inline.NumDeleted: 426
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvMNtNtCs4NRVxsYgnAr_4core4char7methodsc13is_whitespaceNtB5_7Pattern12find_matchesB9_:bb.a
  br i1 %i.l, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.h, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  ret void

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1937, !noundef !4 ; 3 uses
  %i.o = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1937, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #33
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1937, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.n ; 3 uses
  store i64 %i.k, ptr %i.t, align 8, !noalias !1937
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx38, align 8, !noalias !1937
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx39, align 8, !noalias !1937
  %i.u = add i64 %i.n, 1
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !1937
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvNtNtB9_14pre_tokenizers11punctuation7is_puncNtB5_7Pattern12find_matchesB9_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, ptr noalias noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.e, align 8
  %i.f = icmp eq i64 %3, 0
  br i1 %i.f, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvCs9wFQrvczXsK_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #35
  %i.g = tail call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCs9wFQrvczXsK_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef range(i64 1, -9223372036854775807) 8) #35 ; 3 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit, !prof !5

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvNtCscdodAO9FK5_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef 24) #36
  unreachable

_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit: ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.g, i8 0, i64 17, i1 false)
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.g, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.e

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 %3
  store ptr null, ptr %i.a, align 8
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.520.0..sroa_idx, align 8
  %.sroa.722.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %2, ptr %.sroa.722.0..sroa_idx, align 8
  %.sroa.722.sroa.4.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store ptr %i.i, ptr %.sroa.722.sroa.4.0..sroa.722.0..sroa_idx.sroa_idx, align 8
  %.sroa.722.sroa.5.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 80
  store i64 0, ptr %.sroa.722.sroa.5.0..sroa.722.0..sroa_idx.sroa_idx, align 8
  %.sroa.722.sroa.6.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.c, ptr %.sroa.722.sroa.6.0..sroa.722.0..sroa_idx.sroa_idx, align 8
  %.sroa.722.sroa.7.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store ptr %i.e, ptr %.sroa.722.sroa.7.0..sroa.722.0..sroa_idx.sroa_idx, align 8
  %.sroa.722.sroa.8.0..sroa.722.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store ptr %i.d, ptr %.sroa.722.sroa.8.0..sroa.722.0..sroa_idx.sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTTjjEbEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters7flatten7FlatMapNtNtNtB1x_3str4iter11CharIndicesBJ_NCNvXs3_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternNvNtNtB35_14pre_tokenizers11punctuation7is_puncNtB31_7Pattern12find_matches0EE9from_iterB35_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(112) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = load i64, ptr %i.c, align 8, !noundef !4 ; 2 uses
  %i.k = load i64, ptr %i.d, align 8, !noundef !4 ; 2 uses
  %i.l = icmp ugt i64 %i.j, %i.k
  br i1 %i.l, label %bb.f, label %bb.h

bb.e:                                             ; preds = %bb.h, %_RNvNtCscdodAO9FK5_5alloc5boxed14box_new_uninit.exit
  ret void

bb.f:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1940)
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !1940, !noundef !4 ; 3 uses
  %i.o = load i64, ptr %i.b, align 8, !range !14, !alias.scope !1940, !noundef !4
  %i.p = icmp eq i64 %i.n, %i.o
  br i1 %i.p, label %bb.g, label %bb.j

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvMs3_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecTTjjEbEE8grow_oneCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.d, %bb.j
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.e

bb.i:                                             ; preds = %bb.g
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTTjjEbEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.b) #33
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %bb.f, %bb.g
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !1940, !nonnull !4, !noundef !4
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %i.s, i64 %i.n ; 3 uses
  store i64 %i.k, ptr %i.t, align 8, !noalias !1940
  %.sroa.4.0..sroa_idx38 = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %i.j, ptr %.sroa.4.0..sroa_idx38, align 8, !noalias !1940
  %.sroa.5.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx39, align 8, !noalias !1940
  %i.u = add i64 %i.n, 1
  store i64 %i.u, ptr %i.m, align 8, !alias.scope !1940
  br label %bb.h

bb.k:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.l:                                             ; preds = %bb.i
  resume { ptr, i32 } %i.q
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtB5_10LinkedListINtNtB9_3vec3VecTTTmmElEjEEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %.promoted = load ptr, ptr %0, align 8
  %.promoted11 = load i64, ptr %i.b, align 8
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %bb.a
  %i.c = phi i64 [ %i.h, %bb.f ], [ %.promoted11, %bb.a ]
  %i.d = phi ptr [ %i.f, %bb.f ], [ %.promoted, %bb.a ] ; 3 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !4 ; 4 uses
  store ptr %i.f, ptr %0, align 8
  %.not3 = icmp eq ptr %i.f, null
  br i1 %.not3, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.g, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  store ptr null, ptr %i.a, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.h = add i64 %i.c, -1                         ; 2 uses
  store i64 %i.h, ptr %i.b, align 8
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTTTmmElEjEEERNtNtB12_5alloc6GlobalEEECs2JiOgHzbbc7_10tokenizers(ptr nonnull %i.d)
          to label %bb.b unwind label %.loopexit

bb.g:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCscdodAO9FK5_5alloc5boxed3BoxINtNtNtB12_11collections11linked_list4NodeINtNtB12_3vec3VecTTTmmElEjEEERNtNtB12_5alloc6GlobalEEECs2JiOgHzbbc7_10tokenizers(ptr null)
          to label %bb.h unwind label %.loopexit.split-lp

.loopexit:                                        ; preds = %bb.f
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %1

.loopexit.split-lp:                               ; preds = %bb.g
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %1

1:                                                ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNvXs7_NtNtCscdodAO9FK5_5alloc11collections11linked_listINtBK_10LinkedListppENtNtNtB4_3ops4drop4Drop4drop9DropGuardINtNtBO_3vec3VecTTTmmElEjEENtNtBO_5alloc6GlobalEECs2JiOgHzbbc7_10tokenizers(ptr nonnull %0) #33
          to label %bb.j unwind label %bb.i

bb.h:                                             ; preds = %bb.g
  ret void

bb.i:                                             ; preds = %1
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #34
  unreachable

bb.j:                                             ; preds = %1
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtCshgwszQZps6S_11compact_str13CompactStringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1953, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtCshgwszQZps6S_11compact_str13CompactStringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1954
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1955)
  %.not12.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1954 ; 2 uses
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted14.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1954
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !1954
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !1954
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted14.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val10.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1954
  %i.k = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1954
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s ; 2 uses
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1953
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -9
  %i.w = load i8, ptr %i.v, align 1, !range !26, !alias.scope !1956, !noalias !1953, !noundef !4
  %i.x = icmp eq i8 %i.w, -40
  br i1 %i.x, label %bb.d, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i, !prof !5

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 -32
  tail call void @_RNvNvXs2_NtCshgwszQZps6S_11compact_str4reprNtB7_4ReprNtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.y), !noalias !1953
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.d, %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtCshgwszQZps6S_11compact_str13CompactStringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtCshgwszQZps6S_11compact_str13CompactStringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtCshgwszQZps6S_11compact_str13CompactStringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtCshgwszQZps6S_11compact_str13CompactStringmEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.a
  %i.z = load i64, ptr %0, align 8, !range !16, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.e

bb.e:                                             ; preds = %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtCshgwszQZps6S_11compact_str13CompactStringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ab = load i64, ptr %i.aa, align 8, !noundef !4 ; 2 uses
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ae = load ptr, ptr %i.ad, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ae, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) %i.z) #35
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit

_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit: ; preds = %bb.f, %bb.e, %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtCshgwszQZps6S_11compact_str13CompactStringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXsC_NtCsgQfI1edjipl_9hashbrown3rawINtB5_11RawIntoIterTNtNtCscdodAO9FK5_5alloc6string6StringmEENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1973)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !1973, !noundef !4 ; 2 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCscdodAO9FK5_5alloc6string6StringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %.promoted = load i16, ptr %i.e, align 8, !alias.scope !1974
  br label %bb.b

bb.b:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i, %.preheader.i
  %i.g = phi i16 [ %.promoted, %.preheader.i ], [ %i.r, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 2 uses
  %i.h = phi i64 [ %i.c, %.preheader.i ], [ %i.u, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1975)
  %.not12.i.i = icmp eq i16 %i.g, 0
  %.promoted.i.i = load ptr, ptr %i.a, align 8, !alias.scope !1974 ; 2 uses
  br i1 %.not12.i.i, label %.lr.ph.i.i, label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i

.lr.ph.i.i:                                       ; preds = %bb.b
  %.promoted14.i.i = load ptr, ptr %i.f, align 8, !alias.scope !1974
  br label %bb.c

._crit_edge.i.i:                                  ; preds = %bb.c
  store ptr %i.m, ptr %i.f, align 8, !alias.scope !1974
  store ptr %i.l, ptr %i.a, align 8, !alias.scope !1974
  br label %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i
  %i.i = phi ptr [ %.promoted14.i.i, %.lr.ph.i.i ], [ %i.m, %bb.c ] ; 2 uses
  %i.j = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %i.l, %bb.c ]
  %.val10.i.i = load <16 x i8>, ptr %i.i, align 16, !noalias !1974
  %i.k = icmp sgt <16 x i8> %.val10.i.i, splat (i8 -1)
  %i.l = getelementptr inbounds i8, ptr %i.j, i64 -512 ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %.cast.i.i = bitcast <16 x i1> %i.k to i16      ; 2 uses
  %.not.i.i = icmp eq i16 %.cast.i.i, 0
  br i1 %.not.i.i, label %bb.c, label %._crit_edge.i.i

_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.b, %._crit_edge.i.i
  %i.n = phi ptr [ %i.l, %._crit_edge.i.i ], [ %.promoted.i.i, %bb.b ]
  %.lcssa.i.i = phi i16 [ %.cast.i.i, %._crit_edge.i.i ], [ %i.g, %bb.b ] ; 3 uses
  %i.o = add i16 %.lcssa.i.i, -1
  %i.p = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i, i1 true)
  %i.q = zext nneg i16 %i.p to i64
  %i.r = and i16 %i.o, %.lcssa.i.i                ; 2 uses
  store i16 %i.r, ptr %i.e, align 8, !alias.scope !1974
  %i.s = sub nsw i64 0, %i.q
  %i.t = getelementptr inbounds [32 x i8], ptr %i.n, i64 %i.s ; 3 uses
  %i.u = add i64 %i.h, -1                         ; 3 uses
  store i64 %i.u, ptr %i.b, align 8, !alias.scope !1973
  %i.v = getelementptr inbounds i8, ptr %i.t, i64 -32 ; 3 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %bb.f unwind label %bb.d, !noalias !1973

bb.d:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  %.val2.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1976, !noalias !1973 ; 2 uses
  %i.x = icmp eq i64 %.val2.i.i.i.i, 0
  br i1 %i.x, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.y = getelementptr inbounds i8, ptr %i.t, i64 -24
  %.val3.i.i.i.i = load ptr, ptr %i.y, align 8, !alias.scope !1977, !noalias !1973, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i, i64 noundef %.val2.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1978
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i

bb.f:                                             ; preds = %_RINvMsi_NtCsgQfI1edjipl_9hashbrown3rawINtB6_12RawIterRangeTNtNtCscdodAO9FK5_5alloc6string6StringmEE9next_implKb0_ECs2JiOgHzbbc7_10tokenizers.exit.i
  %.val.i.i.i.i = load i64, ptr %i.v, align 8, !alias.scope !1976, !noalias !1973 ; 2 uses
  %i.z = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.z, label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.aa = getelementptr inbounds i8, ptr %i.t, i64 -24
  %.val1.i.i.i.i = load ptr, ptr %i.aa, align 8, !alias.scope !1977, !noalias !1973, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i, i64 noundef %.val.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #35, !noalias !1979
  br label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc7raw_vec6RawVechEECs2JiOgHzbbc7_10tokenizers.exit.i.i.i.i: ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %i.w

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.g, %bb.f
  %.old3.i = icmp eq i64 %i.u, 0
  br i1 %.old3.i, label %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCscdodAO9FK5_5alloc6string6StringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCscdodAO9FK5_5alloc6string6StringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueTNtNtCscdodAO9FK5_5alloc6string6StringmEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.a
  %i.ab = load i64, ptr %0, align 8, !range !16, !noundef !4 ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.h

bb.h:                                             ; preds = %_RNvMso_NtCsgQfI1edjipl_9hashbrown3rawINtB5_7RawIterTNtNtCscdodAO9FK5_5alloc6string6StringmEE13drop_elementsCs2JiOgHzbbc7_10tokenizers.exit
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !4 ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !4, !noundef !4
  tail call void @_RNvCs9wFQrvczXsK_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ag, i64 noundef %i.ad, i64 noundef range(i64 1, -9223372036854775807) %i.ab) #35
  br label %_RNvXs_NtCscdodAO9FK5_5alloc5allocNtB4_6GlobalNtNtCs4NRVxsYgnAr_4core5alloc9Allocator10deallocate.exit
end_hunk_0
