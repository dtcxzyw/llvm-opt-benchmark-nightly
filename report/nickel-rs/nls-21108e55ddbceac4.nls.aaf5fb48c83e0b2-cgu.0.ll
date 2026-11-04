Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$18deserialize_struct17hf16726dcae659682E":bb.a
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bx, ptr %i.cg, align 8, !alias.scope !13293
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !13293
  %i.ch = icmp eq i64 %.sroa.083.0.i.i.ph, 0
  br i1 %i.ch, label %"_ZN4core3ptr54drop_in_place$LT$lsp_types..TextDocumentIdentifier$GT$17hf9f275ce8ebd0adcE.exit11.i7", label %bb.az

bb.az:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.14.0.i.i.ph) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.14.0.i.i.ph, i64 noundef %.sroa.083.0.i.i.ph, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13325
  br label %"_ZN4core3ptr54drop_in_place$LT$lsp_types..TextDocumentIdentifier$GT$17hf9f275ce8ebd0adcE.exit11.i7"

"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17h8b1592c1392e02e2E.exit.sink.split.i": ; preds = %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h7daf33e7eb55dcd5E.exit.i9.i", %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h7daf33e7eb55dcd5E.exit.i.i"
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.ao)
          to label %"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17heb57781753e5c1adE.exit" unwind label %bb.bb

bb.ba:                                            ; preds = %.body.i
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !13295
  unreachable

"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17heb57781753e5c1adE.exit": ; preds = %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17h8b1592c1392e02e2E.exit.sink.split.i", %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h7daf33e7eb55dcd5E.exit.i.i", %"_ZN4core3ptr46drop_in_place$LT$serde_json..map..IntoIter$GT$17h7daf33e7eb55dcd5E.exit.i9.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13295
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.13.i)
  %.pre = load i8, ptr %1, align 8, !range !101
  br label %bb.bc

bb.bb:                                            ; preds = %"_ZN4core3ptr59drop_in_place$LT$serde_json..value..de..MapDeserializer$GT$17h8b1592c1392e02e2E.exit.sink.split.i", %bb.q, %"_ZN4core3ptr54drop_in_place$LT$lsp_types..TextDocumentIdentifier$GT$17hf9f275ce8ebd0adcE.exit11.i", %bb.c, %bb.b
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bb, %bb.av, %bb.au, %bb.ap, %bb.ao, %.body.i, %"_ZN4core3ptr54drop_in_place$LT$lsp_types..TextDocumentIdentifier$GT$17hf9f275ce8ebd0adcE.exit.i"
  %eh.lpad-body = phi { ptr, i32 } [ %.pn.i, %"_ZN4core3ptr54drop_in_place$LT$lsp_types..TextDocumentIdentifier$GT$17hf9f275ce8ebd0adcE.exit.i" ], [ %i.cj, %bb.bb ], [ %i.by, %bb.au ], [ %i.bo, %bb.ao ], [ %i.bo, %bb.ap ], [ %i.by, %bb.av ], [ %.pn.i5, %.body.i ]
  %i.ck = load i8, ptr %1, align 8, !range !101, !noundef !44
  %i.cl = and i8 %i.ck, 6
  %switch = icmp eq i8 %i.cl, 4
  br i1 %switch, label %bb.bh, label %bb.bg

bb.bc:                                            ; preds = %"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17heb57781753e5c1adE.exit", %bb.bd
  %i.cm = phi i8 [ %.pre, %"_ZN10serde_json5value2de135_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..map..Map$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$15deserialize_any17heb57781753e5c1adE.exit" ], [ %i.m, %bb.bd ]
  %i.cn = and i8 %i.cm, 6
  %switch3 = icmp eq i8 %i.cn, 4
  br i1 %switch3, label %bb.bf, label %bb.be

bb.bd:                                            ; preds = %bb.b
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.co, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.bc

bb.be:                                            ; preds = %bb.bc
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef align 8 dereferenceable(32) %1)
  br label %bb.bf

bb.bf:                                            ; preds = %.thread, %bb.bc, %bb.be
  ret void

bb.bg:                                            ; preds = %.body
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef align 8 dereferenceable(32) %1) #77
          to label %bb.bh unwind label %bb.bi

bb.bh:                                            ; preds = %.body, %bb.bg
  resume { ptr, i32 } %eh.lpad-body

bb.bi:                                            ; preds = %bb.bg
  %i.cp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h59295ec4a063bcceE"(ptr dead_on_unwind noalias noundef nonnull writable align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 12 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %i.e = alloca [72 x i8], align 8                ; 12 uses
  %i.f = alloca [48 x i8], align 8                ; 4 uses
  %i.g = alloca [48 x i8], align 8                ; 16 uses
  %i.h = load i8, ptr %1, align 8, !range !101, !noundef !44
  switch i8 %i.h, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.h
    i8 4, label %bb.k
    i8 5, label %.preheader
  ]

default.unreachable:                              ; preds = %bb.d, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  store i8 0, ptr %0, align 8, !alias.scope !13439
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !range !45, !noundef !44
  store i8 1, ptr %0, align 8, !alias.scope !13440
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !13440
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.d:                                             ; preds = %bb.a
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13441)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13442)
  %i.l = load i64, ptr %i.k, align 8, !range !71, !alias.scope !13442, !noundef !44
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  switch i64 %i.l, label %default.unreachable [
    i64 0, label %bb.e
    i64 1, label %bb.f
    i64 2, label %bb.g
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !13442, !noundef !44
  store i8 2, ptr %0, align 8, !alias.scope !13443
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13443
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !13443
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.f:                                             ; preds = %bb.d
  %i.o = load i64, ptr %i.m, align 8, !alias.scope !13442, !noundef !44 ; 2 uses
  %.lobit.i.i = lshr i64 %i.o, 63
  store i8 2, ptr %0, align 8, !alias.scope !13444
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.lobit.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i1.i, align 8, !alias.scope !13444
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i2.i, align 8, !alias.scope !13444
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.g:                                             ; preds = %bb.d
  %i.p = load double, ptr %i.m, align 8, !alias.scope !13442, !noundef !44
  tail call void @"_ZN10serde_json5value4from85_$LT$impl$u20$core..convert..From$LT$f64$GT$$u20$for$u20$serde_json..value..Value$GT$4from17h4539978c3e7ceaf0E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, double noundef %i.p), !noalias !13442
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.h:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !44, !noundef !44
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.t = load i64, ptr %i.s, align 8, !noundef !44 ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13445)
  %i.u = icmp slt i64 %i.t, 0
  br i1 %i.u, label %bb.j, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.h
  %i.v = icmp eq i64 %i.t, 0
  br i1 %i.v, label %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h57864f06c1d3b47aE.exit", label %bb.i

bb.i:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !13446
  %i.w = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.t, i64 noundef range(i64 1, 9) 1) #66, !noalias !13446 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %bb.j, label %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h57864f06c1d3b47aE.exit"

bb.j:                                             ; preds = %bb.i, %bb.h
  %.sroa.4.0.ph.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %bb.h ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75, !noalias !13447
  unreachable

"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h57864f06c1d3b47aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, %bb.i
  %.sroa.10.0.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i ], [ %i.w, %bb.i ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i, ptr nonnull readonly align 1 %i.r, i64 %i.t, i1 false), !noalias !13448
  store i8 3, ptr %0, align 8, !alias.scope !13445
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.t, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13445
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.10.0.i.i.i, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13445
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.t, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !13445
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.k:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call fastcc void @_ZN10serde_core3ser10Serializer11collect_seq17h2924866c65c24c40E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.y)
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit": ; preds = %bb.g, %bb.f, %bb.e, %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17haa0ef2e22a7a09adE.exit", %._crit_edge, %bb.k, %"_ZN82_$LT$serde_json..value..ser..Serializer$u20$as$u20$serde_core..ser..Serializer$GT$13serialize_str17h57864f06c1d3b47aE.exit", %bb.c, %bb.b
  ret void

.preheader:                                       ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 -9223372036854775808, ptr %i.g, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 6 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.656.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 4 uses
  store ptr null, ptr %.sroa.656.0..sroa_idx, align 8
  %.sroa.757.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  %.sroa.858.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40 ; 3 uses
  store i64 0, ptr %.sroa.858.0..sroa_idx, align 8
  %i.ab = load ptr, ptr %i.aa, align 8, !noundef !44 ; 2 uses
  %.not.not = icmp eq ptr %i.ab, null
  %i.ac = load i64, ptr %i.z, align 8             ; 2 uses
  %2 = icmp eq i64 %i.ac, 0
  %.not99 = select i1 %.not.not, i1 true, i1 %2
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %i.ae = ptrtoint ptr %i.ab to i64
  %.sroa.5.0..sroa_idx.i45 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %3 = load i64, ptr %.sroa.5.0..sroa_idx.i45, align 8
  br label %bb.l

bb.l:                                             ; preds = %.lr.ph, %bb.ae
  %.sroa.10.097 = phi i64 [ 0, %bb.ae ], [ %i.ae, %.lr.ph ] ; 2 uses
  %.sroa.23.096 = phi i64 [ %i.af, %bb.ae ], [ %i.ac, %.lr.ph ]
  %.sroa.660.094 = phi ptr [ %.sroa.07.0.i.i.i, %bb.ae ], [ null, %.lr.ph ] ; 2 uses
  %.sroa.15.093 = phi i64 [ %.sroa.7.0.i.i.i, %bb.ae ], [ %3, %.lr.ph ] ; 6 uses
  %i.af = add i64 %.sroa.23.096, -1               ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.660.094, null
  br i1 %.not.i.i, label %bb.m, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i"

bb.m:                                             ; preds = %bb.l
  %i.ag = inttoptr i64 %.sroa.10.097 to ptr       ; 3 uses
  %i.ah = icmp eq i64 %.sroa.15.093, 0
  br i1 %i.ah, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i", label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.m
  %xtraiter = and i64 %.sroa.15.093, 7            ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ], [ %i.ag, %.lr.ph.i.i.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aj, %.lr.ph.i.i.prol ], [ %.sroa.15.093, %.lr.ph.i.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 632
  %i.aj = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ai, align 8, !noalias !13449, !nonnull !44, !noundef !44 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !13351

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %i.ag, %.lr.ph.i.i.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %.sroa.15.093, %.lr.ph.i.i.preheader ], [ %i.aj, %.lr.ph.i.i.prol ]
  %i.ak = icmp ult i64 %.sroa.15.093, 8
  br i1 %i.ak, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.at, %.lr.ph.i.i ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 632
  %.sroa.012.0.i.i = load ptr, ptr %i.al, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 632
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.am, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 632
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.an, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 632
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.ao, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 632
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ap, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 632
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.aq, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 632
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ar, align 8, !noalias !13449, !nonnull !44, !noundef !44
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 632
  %i.at = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.as, align 8, !noalias !13449, !nonnull !44, !noundef !44 ; 2 uses
  %i.au = icmp eq i64 %i.at, 0
  br i1 %i.au, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i", label %.lr.ph.i.i

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i": ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.m, %bb.l
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.15.093, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.10.097, %bb.l ], [ 0, %bb.m ], [ 0, %.lr.ph.i.i ], [ 0, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %.sroa.660.094, %bb.l ], [ %i.ag, %bb.m ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i ] ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 626
  %i.aw = load i16, ptr %i.av, align 2, !noalias !13450, !noundef !44
  %i.ax = zext i16 %i.aw to i64
  %i.ay = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.ax
  br i1 %i.ay, label %bb.o, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i", %bb.n
  %.sroa.0.038.i.i.i.i = phi ptr [ %i.ba, %bb.n ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i" ] ; 2 uses
  %.sroa.5.037.i.i.i.i = phi i64 [ %i.bc, %bb.n ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i" ]
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 352
  %i.ba = load ptr, ptr %i.az, align 8, !noalias !13451, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.ba, null
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.n

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.n
  %i.bb = zext i16 %i.be to i64
  br label %bb.o

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.bc = add i64 %.sroa.5.037.i.i.i.i, 1         ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.0.038.i.i.i.i, i64 624
  %i.be = load i16, ptr %i.bd, align 8, !noalias !13451 ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.ba, i64 626
  %i.bg = load i16, ptr %i.bf, align 2, !noalias !13450, !noundef !44
  %i.bh = icmp ult i16 %i.be, %i.bg
  br i1 %i.bh, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.o:                                             ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i"
  %.sroa.6.sroa.4.0.ph.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i" ], [ %i.bb, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.6.sroa.0.0.ph.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i" ], [ %i.bc, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17hb73a2192ca766df9E.exit.i" ], [ %i.ba, %._crit_edge.loopexit.i.i.i.i ] ; 5 uses
  %i.bi = icmp eq i64 %.sroa.6.sroa.0.0.ph.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.sroa.4.0.ph.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %.loopexit, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 632
  %i.bl = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter214 = and i64 %.sroa.6.sroa.0.0.ph.i.i.i, 7 ; 2 uses
  %lcmp.mod215.not = icmp eq i64 %xtraiter214, 0
  br i1 %lcmp.mod215.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.p, %.prol.preheader
  %.pn30.in.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.p ]
  %.pn28.in.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.p ]
  %prol.iter216 = phi i64 [ %prol.iter216.next, %.prol.preheader ], [ 0, %bb.p ]
  %.pn28.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.prol, align 8, !noalias !13452, !nonnull !44, !noundef !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter216.next = add i64 %prol.iter216, 1   ; 2 uses
  %prol.iter216.cmp.not = icmp eq i64 %prol.iter216.next, %xtraiter214
  br i1 %prol.iter216.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !13365

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.p
  %.pn30.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.p ], [ %.pn30.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.unr = phi ptr [ %i.bm, %bb.p ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.unr = phi i64 [ %.sroa.6.sroa.0.0.ph.i.i.i, %bb.p ], [ %.pn28.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.6.sroa.0.0.ph.i.i.i, 8
  br i1 %i.bo, label %.loopexit, label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i, i64 632
  %.pn30.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.1, i64 632
  %.pn30.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.2, i64 632
  %.pn30.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.3, i64 632
  %.pn30.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.4, i64 632
  %.pn30.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.5, i64 632
  %.pn30.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !13452, !nonnull !44, !noundef !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.6, i64 632
  %.pn28.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !13452, !nonnull !44, !noundef !44 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.7, i64 632
  br i1 %i.bw, label %.loopexit, label %.new

bb.q:                                             ; preds = %.lr.ph.i.i.i.i
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1477) #75
          to label %.noexc.i.i unwind label %bb.r, !noalias !13453

.noexc.i.i:                                       ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.q
  %i.by = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  call void @llvm.trap()
  unreachable

.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ad, %bb.ac, %bb.t
  %lpad.loopexit.split-lp203 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.loopexit:                                        ; preds = %.prol.loopexit, %.new, %bb.o
  %.sroa.7.0.i.i.i = phi i64 [ %i.bj, %bb.o ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.07.0.i.i.i = phi ptr [ %.sroa.0.0.ph.i.i.i, %bb.o ], [ %.pn30.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.7, %.new ]
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i.i.i, i64 360
  %i.ca = icmp samesign ult i64 %.sroa.6.sroa.4.0.ph.i.i.i, 11
  call void @llvm.assume(i1 %i.ca)
  %i.cb = getelementptr inbounds nuw [24 x i8], ptr %i.bz, i64 %.sroa.6.sroa.4.0.ph.i.i.i ; 2 uses
  %i.cc = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.ph.i.i.i, i64 %.sroa.6.sroa.4.0.ph.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.ph.i.i.i) ]
  %i.cd = getelementptr i8, ptr %i.cb, i64 8
  %.val.i = load ptr, ptr %i.cd, align 8, !alias.scope !13454, !nonnull !44, !noundef !44
  %i.ce = getelementptr i8, ptr %i.cb, i64 16
  %.val4.i = load i64, ptr %i.ce, align 8, !alias.scope !13454, !noundef !44 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13455)
  %i.cf = icmp slt i64 %.val4.i, 0
  br i1 %i.cf, label %bb.t, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %.loopexit
  %i.cg = icmp eq i64 %.val4.i, 0                 ; 3 uses
  br i1 %i.cg, label %bb.u, label %bb.s

bb.s:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !13456
  %i.ch = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val4.i, i64 noundef range(i64 1, 9) 1) #66, !noalias !13456 ; 2 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s, %.loopexit
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %.loopexit ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %.val4.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
          to label %.noexc51 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc51:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ %i.ch, %bb.s ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i, i64 %.val4.i, i1 false), !noalias !13457
  call void @llvm.experimental.noalias.scope.decl(metadata !13458)
  %i.cj = load i64, ptr %i.g, align 8, !range !70, !alias.scope !13459, !noundef !44 ; 3 uses
  %i.ck = icmp eq i64 %i.cj, -9223372036854775808
  br i1 %i.ck, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  call void @llvm.experimental.noalias.scope.decl(metadata !13460)
  call void @llvm.experimental.noalias.scope.decl(metadata !13461)
  %i.cl = icmp eq i64 %i.cj, 0
  br i1 %i.cl, label %bb.x, label %bb.w

bb.w:                                             ; preds = %bb.v
  %.val1.i.i.i.i50 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13462, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i50, i64 noundef %i.cj, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13462
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %bb.v, %bb.u
  store ptr %.sroa.10.0.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13455
  store i64 %.val4.i, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !13455
  call void @llvm.experimental.noalias.scope.decl(metadata !13463)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !13464
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.ad, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false), !noalias !13465
  store i64 -9223372036854775808, ptr %i.g, align 8, !alias.scope !13463
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !13464
  store i64 %.val4.i, ptr %i.c, align 8, !noalias !13464
  invoke fastcc void @"_ZN10serde_json5value3ser81_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$serde_json..value..Value$GT$9serialize17h59295ec4a063bcceE"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.cc)
          to label %_ZN10serde_json5value8to_value17hab81b2ed41c7460bE.exit.i unwind label %bb.y, !inline_history !13391

_ZN10serde_json5value8to_value17hab81b2ed41c7460bE.exit.i: ; preds = %bb.x
  %i.cm = load i8, ptr %i.b, align 8, !range !98, !noundef !44
  %i.cn = icmp eq i8 %i.cm, 6
  br i1 %i.cn, label %bb.aa, label %bb.ac

bb.y:                                             ; preds = %bb.x
  %i.co = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13466)
  call void @llvm.experimental.noalias.scope.decl(metadata !13467)
  br i1 %i.cg, label %.body.thread, label %bb.z

bb.z:                                             ; preds = %bb.y
  %.val1.i.i.i = load ptr, ptr %i.ad, align 8, !alias.scope !13468, !noalias !13464, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13469, !inline_history !13396
  br label %.body.thread

bb.aa:                                            ; preds = %_ZN10serde_json5value8to_value17hab81b2ed41c7460bE.exit.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cq = load ptr, ptr %i.cp, align 8, !nonnull !44, !align !50, !noundef !44
  call void @llvm.experimental.noalias.scope.decl(metadata !13470)
  call void @llvm.experimental.noalias.scope.decl(metadata !13471)
  br i1 %i.cg, label %bb.af, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %.val1.i.i9.i = load ptr, ptr %i.ad, align 8, !alias.scope !13472, !noalias !13464, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i9.i, i64 noundef %.val4.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13473, !inline_history !13396
  br label %bb.af

bb.ac:                                            ; preds = %_ZN10serde_json5value8to_value17hab81b2ed41c7460bE.exit.i
  invoke fastcc void @"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3cae2dd7e0404da8E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef align 8 dereferenceable(24) %.sroa.656.0..sroa_idx, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.b)
          to label %.noexc48 unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13464
  %i.cr = load i8, ptr %i.d, align 8, !range !98, !alias.scope !13474, !noalias !13464, !noundef !44
  %i.cs = icmp eq i8 %i.cr, 6
  br i1 %i.cs, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %.noexc48
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.d)
          to label %bb.ae unwind label %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !13396

._crit_edge:                                      ; preds = %bb.ae, %.preheader
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.f, ptr noundef nonnull align 8 dereferenceable(48) %i.g, i64 48, i1 false)
  call void @"_ZN86_$LT$serde_json..value..ser..SerializeMap$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h726880423f27c777E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

bb.ae:                                            ; preds = %.noexc48, %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13464
  %i.ct = icmp eq i64 %i.af, 0
  br i1 %i.ct, label %._crit_edge, label %bb.l

bb.af:                                            ; preds = %bb.aa, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !13464
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !13464
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.cq, ptr %i.cu, align 8
  store i8 6, ptr %0, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !13475)
  call void @llvm.experimental.noalias.scope.decl(metadata !13476)
  call void @llvm.experimental.noalias.scope.decl(metadata !13477)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13478
  %.sroa.0.0.copyload.i.i.i = load ptr, ptr %.sroa.656.0..sroa_idx, align 8, !alias.scope !13479 ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i, null
  br i1 %.not.i.i.i.i, label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %.sroa.5.0.copyload.i.i.i = load i64, ptr %.sroa.858.0..sroa_idx, align 8, !alias.scope !13479
  %.sroa.4.0.copyload.i.i.i = load i64, ptr %.sroa.757.0..sroa_idx, align 8, !alias.scope !13479 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !13480, !noalias !13478
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i"

"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i": ; preds = %bb.ag, %bb.af
  %.sink23.i.i.i.i = phi i64 [ 1, %bb.ag ], [ 0, %bb.af ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i = phi i64 [ %.sroa.5.0.copyload.i.i.i, %bb.ag ], [ 0, %bb.af ]
  store i64 %.sink23.i.i.i.i, ptr %i.e, align 8, !alias.scope !13480, !noalias !13478
  %i.cv = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store i64 %.sink23.i.i.i.i, ptr %i.cv, align 8, !alias.scope !13480, !noalias !13478
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i, ptr %i.cw, align 8, !alias.scope !13480, !noalias !13478
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h989dc77987b96008E"(ptr noalias noundef align 8 dereferenceable(72) %i.e)
          to label %bb.ai unwind label %bb.ah, !noalias !13475, !inline_history !99

bb.ah:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i"
  %i.cx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cy = load i64, ptr %i.g, align 8, !range !70, !alias.scope !13481, !noundef !44 ; 2 uses
  %switch = icmp sgt i64 %i.cy, 0
  br i1 %switch, label %common.resume.sink.split, label %common.resume

bb.ai:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13478
  call void @llvm.experimental.noalias.scope.decl(metadata !13482)
  %i.cz = load i64, ptr %i.g, align 8, !range !70, !alias.scope !13483, !noundef !44 ; 3 uses
  %i.da = icmp eq i64 %i.cz, -9223372036854775808
  br i1 %i.da, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17haa0ef2e22a7a09adE.exit", label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.experimental.noalias.scope.decl(metadata !13484)
  call void @llvm.experimental.noalias.scope.decl(metadata !13485)
  %i.db = icmp eq i64 %i.cz, 0
  br i1 %i.db, label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17haa0ef2e22a7a09adE.exit", label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %.val1.i.i.i1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13486, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i, i64 noundef %i.cz, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13486
  br label %"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17haa0ef2e22a7a09adE.exit"

common.resume.sink.split:                         ; preds = %bb.ap, %bb.ah
  %.sink = phi i64 [ %i.di, %bb.ap ], [ %i.cy, %bb.ah ]
  %common.resume.op.ph = phi { ptr, i32 } [ %eh.lpad-body67, %bb.ap ], [ %i.cx, %bb.ah ]
  %.val1.i.i.i1.i146 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i1.i146, i64 noundef %.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !44
  br label %common.resume

common.resume:                                    ; preds = %bb.ap, %bb.ah, %common.resume.sink.split
  %common.resume.op = phi { ptr, i32 } [ %common.resume.op.ph, %common.resume.sink.split ], [ %eh.lpad-body67, %bb.ap ], [ %i.cx, %bb.ah ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr57drop_in_place$LT$serde_json..value..ser..SerializeMap$GT$17haa0ef2e22a7a09adE.exit": ; preds = %bb.ak, %bb.aj, %bb.ai
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %"_ZN73_$LT$serde_json..number..Number$u20$as$u20$serde_core..ser..Serialize$GT$9serialize17h118ebbb0c64cf009E.exit"

.body.thread:                                     ; preds = %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.z, %bb.y
  %eh.lpad-body67 = phi { ptr, i32 } [ %i.co, %bb.z ], [ %i.co, %bb.y ], [ %lpad.loopexit.split-lp203, %.body.thread68.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13487)
  call void @llvm.experimental.noalias.scope.decl(metadata !13488)
  call void @llvm.experimental.noalias.scope.decl(metadata !13489)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13490
  %.sroa.0.0.copyload.i.i.i132 = load ptr, ptr %.sroa.656.0..sroa_idx, align 8, !alias.scope !13491 ; 3 uses
  %.not.i.i.i.i133 = icmp eq ptr %.sroa.0.0.copyload.i.i.i132, null
  br i1 %.not.i.i.i.i133, label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i142", label %bb.al

bb.al:                                            ; preds = %.body.thread
  %.sroa.5.0.copyload.i.i.i134 = load i64, ptr %.sroa.858.0..sroa_idx, align 8, !alias.scope !13491
  %.sroa.4.0.copyload.i.i.i135 = load i64, ptr %.sroa.757.0..sroa_idx, align 8, !alias.scope !13491 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i136 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.2.0..sroa_idx.i.i.i.i136, align 8, !alias.scope !13492, !noalias !13490
  %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i137 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %.sroa.0.0.copyload.i.i.i132, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i137, align 8, !alias.scope !13492, !noalias !13490
  %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i138 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.4.0.copyload.i.i.i135, ptr %.sroa.2.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i.i.i138, align 8, !alias.scope !13492, !noalias !13490
  %.sroa.4.0..sroa_idx.i.i.i.i139 = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.4.0..sroa_idx.i.i.i.i139, align 8, !alias.scope !13492, !noalias !13490
  %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i140 = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %.sroa.0.0.copyload.i.i.i132, ptr %.sroa.4.sroa.2.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i140, align 8, !alias.scope !13492, !noalias !13490
  %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i141 = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.4.0.copyload.i.i.i135, ptr %.sroa.4.sroa.3.0..sroa.4.0..sroa_idx.sroa_idx.i.i.i.i141, align 8, !alias.scope !13492, !noalias !13490
  br label %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i142"

"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i142": ; preds = %bb.al, %.body.thread
  %.sink23.i.i.i.i143 = phi i64 [ 1, %bb.al ], [ 0, %.body.thread ] ; 2 uses
  %.sroa.7.0.copyload.sink.i.i.i.i144 = phi i64 [ %.sroa.5.0.copyload.i.i.i134, %bb.al ], [ 0, %.body.thread ]
  store i64 %.sink23.i.i.i.i143, ptr %i.a, align 8, !alias.scope !13492, !noalias !13490
  %i.dc = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sink23.i.i.i.i143, ptr %i.dc, align 8, !alias.scope !13492, !noalias !13490
  %i.dd = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.7.0.copyload.sink.i.i.i.i144, ptr %i.dd, align 8, !alias.scope !13492, !noalias !13490
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..IntoIter$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h989dc77987b96008E"(ptr noalias noundef align 8 dereferenceable(72) %i.a)
          to label %bb.ap unwind label %bb.am, !noalias !13487, !inline_history !99

bb.am:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i142"
  %i.de = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !13493)
  %i.df = load i64, ptr %i.g, align 8, !range !70, !alias.scope !13494, !noundef !44 ; 3 uses
  %i.dg = icmp eq i64 %i.df, -9223372036854775808
  br i1 %i.dg, label %.body, label %bb.an

bb.an:                                            ; preds = %bb.am
  call void @llvm.experimental.noalias.scope.decl(metadata !13495)
  call void @llvm.experimental.noalias.scope.decl(metadata !13496)
  %i.dh = icmp eq i64 %i.df, 0
  br i1 %i.dh, label %.body, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %.val1.i.i.i.i145 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !13497, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i145, i64 noundef %i.df, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !13497
  br label %.body

bb.ap:                                            ; preds = %"_ZN4core3ptr117drop_in_place$LT$alloc..collections..btree..map..BTreeMap$LT$alloc..string..String$C$serde_json..value..Value$GT$$GT$17h6b6192f3249d4755E.exit.i.i142"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !13490
  %i.di = load i64, ptr %i.g, align 8, !range !70, !alias.scope !13498, !noundef !44 ; 2 uses
  %switch202 = icmp sgt i64 %i.di, 0
  br i1 %switch202, label %common.resume.sink.split, label %common.resume

.body:                                            ; preds = %bb.am, %bb.an, %bb.ao
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN110_$LT$nickel_lang_vector..slice..Slice$LT$T$C$_$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17h73fd5fb643cadbc7E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 6 uses
  %i.d = alloca [48 x i8], align 8                ; 6 uses
  %i.e = alloca [296 x i8], align 8               ; 7 uses
  %i.f = alloca [64 x i8], align 8                ; 16 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.h = load i64, ptr %i.g, align 8, !noundef !44
  %.sink.i.sroa.gep = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sink.i.sroa.gep3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sink.i.sroa.gep4 = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i.sroa.gep6 = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sink.i.sroa.gep7 = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sink.i.sroa.gep8 = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i.sroa.gep10 = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sink.i.sroa.gep11 = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sink.i.sroa.gep12 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
end_hunk_0
begin_hunk_1_@"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$6insert17h3cae2dd7e0404da8E":bb.a
  store i64 %.sroa.14.0.i.i, ptr %.sroa.6.0..sroa_idx5.i.i.i, align 8, !noalias !95196
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.cj, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.15.i.i, i64 32, i1 false), !noalias !95142
  %i.ko = getelementptr inbounds nuw i8, ptr %i.cj, i64 640
  store ptr %.sroa.1051.0184.lcssa.i.i, ptr %i.ko, align 8, !noalias !95168
  %i.kp = getelementptr inbounds nuw i8, ptr %.sroa.1051.0184.lcssa.i.i, i64 352
  store ptr %i.cj, ptr %i.kp, align 8, !noalias !95197
  %i.kq = getelementptr inbounds nuw i8, ptr %.sroa.1051.0184.lcssa.i.i, i64 624
  store i16 1, ptr %i.kq, align 8, !noalias !95197
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !95142
  br label %bb.bs

bb.bs:                                            ; preds = %bb.br, %.loopexit119.i.i, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.15.i.i), !noalias !95139
  br label %bb.bx

bb.bt:                                            ; preds = %bb.bu
  %i.kr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !95139
  unreachable

bb.bu:                                            ; preds = %bb.i
  %i.ks = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %3) #77
          to label %bb.bv unwind label %bb.bt

bb.bv:                                            ; preds = %bb.bu
  %i.kt = icmp eq i64 %.sroa.022.0.copyload.i, 0
  br i1 %i.kt, label %.body, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.524.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload.i, i64 noundef %.sroa.022.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !95198
  br label %.body

bb.bx:                                            ; preds = %bb.j, %bb.bs
  %i.ku = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.kv = load i64, ptr %i.ku, align 8, !noalias !95139, !noundef !44
  %i.kw = add i64 %i.kv, 1
  store i64 %i.kw, ptr %i.ku, align 8, !noalias !95139
  store i8 6, ptr %0, align 8
  br label %bb.by

bb.by:                                            ; preds = %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit.thread", %bb.bx
  ret void

"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit.thread": ; preds = %bb.g, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h49de399eb0e2c371E.exit.i", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit", %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit.thread31"
  %.sroa.7.030 = phi ptr [ %.sroa.524.0.copyload.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit.thread31" ], [ %.val.i, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit" ], [ %.sroa.0.0.i.i, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h49de399eb0e2c371E.exit.i" ], [ %.sroa.0.0.i.i, %bb.g ] ; 2 uses
  %.sroa.14.029 = phi i64 [ %i.an, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit.thread31" ], [ %i.al, %"_ZN5alloc11collections5btree3map25BTreeMap$LT$K$C$V$C$A$GT$5entry17h4c51504973e4263aE.exit" ], [ %.sroa.8.0.i.i.i291, %"_ZN5alloc11collections5btree6search142_$LT$impl$u20$alloc..collections..btree..node..NodeRef$LT$BorrowType$C$K$C$V$C$alloc..collections..btree..node..marker..LeafOrInternal$GT$$GT$11search_tree17h49de399eb0e2c371E.exit.i" ], [ %.sroa.8.0.i.i.i291, %bb.g ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.030) ]
  %i.kx = getelementptr inbounds nuw [32 x i8], ptr %.sroa.7.030, i64 %.sroa.14.029 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, ptr noundef nonnull align 8 dereferenceable(32) %i.kx, i64 32, i1 false), !noalias !95199
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.kx, ptr noundef nonnull readonly align 8 dereferenceable(32) %3, i64 32, i1 false), !noalias !95200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.by

.body:                                            ; preds = %bb.bw, %bb.bv, %bb.bo, %bb.bn, %bb.aq, %bb.am, %bb.al, %bb.z, %bb.y
  %.pn = phi { ptr, i32 } [ %i.cw, %bb.aq ], [ %i.ct, %bb.al ], [ %i.ks, %bb.bw ], [ %i.ct, %bb.am ], [ %i.by, %bb.z ], [ %i.ks, %bb.bv ], [ %lpad.loopexit.split-lp295, %bb.bo ], [ %i.by, %bb.y ], [ %lpad.loopexit.split-lp295, %bb.bn ]
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17h1cc50027e1483fafE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95236)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95237)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !95238
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !95238 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95238 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95238 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !95238
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hd65137446b2d4613E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 544
  %i.g = load ptr, ptr %i.f, align 8, !noalias !95239, !nonnull !44, !noundef !44 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !95208

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 544
  %i.k = load ptr, ptr %i.j, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 544
  %i.m = load ptr, ptr %i.l, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 544
  %i.o = load ptr, ptr %i.n, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 544
  %i.q = load ptr, ptr %i.p, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 544
  %i.s = load ptr, ptr %i.r, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 544
  %i.u = load ptr, ptr %i.t, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 544
  %i.w = load ptr, ptr %i.v, align 8, !noalias !95239, !nonnull !44, !noundef !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 544
  %i.y = load ptr, ptr %i.x, align 8, !noalias !95239, !nonnull !44, !noundef !44 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !95240, !noundef !44 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h67f99ebc8d8f5e0aE.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #66, !noalias !95241
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !95240, !noundef !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h67f99ebc8d8f5e0aE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h67f99ebc8d8f5e0aE.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #66, !noalias !95241
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hd65137446b2d4613E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hd65137446b2d4613E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17h67f99ebc8d8f5e0aE.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95242)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95243)
  %i.ah = load i64, ptr %1, align 8, !range !60, !alias.scope !95244, !noundef !44
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !95244, !noundef !44 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !95245
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !95245
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !95244, !noundef !44 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !95244, !nonnull !44, !noundef !44 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 544
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !95246, !nonnull !44, !noundef !44 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !95220

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 544
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 544
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 544
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 544
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 544
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 544
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 544
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !95246, !nonnull !44, !noundef !44
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 544
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !95246, !nonnull !44, !noundef !44 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95247)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 538
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !95248, !noundef !44
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !95249, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17he14e28acd5d57e4eE.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea897cafcd0b2907E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 544
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !95250, !nonnull !44, !noundef !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 544 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95235

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea897cafcd0b2907E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 544
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 544
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 544
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 544
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 544
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 544
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !95250, !nonnull !44, !noundef !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 544
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !95250, !nonnull !44, !noundef !44 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 544
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea897cafcd0b2907E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 536
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !95249 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #66, !noalias !95251
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 538
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !95248, !noundef !44
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 544, i64 640
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #66, !noalias !95251
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476) #75
          to label %.noexc.i.i unwind label %bb.k, !noalias !95252

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1478) #75, !noalias !95253
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea897cafcd0b2907E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !95245
  store i64 0, ptr %i.al, align 8, !alias.scope !95245
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !95245
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17hea897cafcd0b2907E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17hd65137446b2d4613E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hd1e51336ee278bc7E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95290)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !95291
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !95291 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95291 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95291 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !95291
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h566be115b43477b8E.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 1072
  %i.g = load ptr, ptr %i.f, align 8, !noalias !95292, !nonnull !44, !noundef !44 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !95261

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 1072
  %i.k = load ptr, ptr %i.j, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1072
  %i.m = load ptr, ptr %i.l, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 1072
  %i.o = load ptr, ptr %i.n, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 1072
  %i.q = load ptr, ptr %i.p, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 1072
  %i.s = load ptr, ptr %i.r, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 1072
  %i.u = load ptr, ptr %i.t, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 1072
  %i.w = load ptr, ptr %i.v, align 8, !noalias !95292, !nonnull !44, !noundef !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 1072
  %i.y = load ptr, ptr %i.x, align 8, !noalias !95292, !nonnull !44, !noundef !44 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = load ptr, ptr %.sroa.0.0.ph.i, align 8, !noalias !95293, !noundef !44 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ac, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hbfd3fefbaac2b991E.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ad = phi ptr [ %i.af, %.lr.ph.i3.i ], [ %i.ac, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ad, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.ae, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.ae = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #66, !noalias !95294
  %i.af = load ptr, ptr %i.ad, align 8, !noalias !95293, !noundef !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.af, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hbfd3fefbaac2b991E.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hbfd3fefbaac2b991E.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ad, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #66, !noalias !95294
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h566be115b43477b8E.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h566be115b43477b8E.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hbfd3fefbaac2b991E.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ag = add i64 %i.b, -1
  store i64 %i.ag, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95295)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95296)
  %i.ah = load i64, ptr %1, align 8, !range !60, !alias.scope !95297, !noundef !44
  %i.ai = trunc nuw i64 %i.ah to i1
  br i1 %i.ai, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !alias.scope !95297, !noundef !44 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.ak, null
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.al, align 8, !alias.scope !95298
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !95298
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !95297, !noundef !44 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.al, align 8, !alias.scope !95297, !nonnull !44, !noundef !44 ; 3 uses
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.an, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.aq, %.lr.ph.i.i2.prol ], [ %i.an, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 1072
  %i.aq = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ap, align 8, !noalias !95299, !nonnull !44, !noundef !44 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !95273

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.an, %.lr.ph.i.i2.preheader ], [ %i.aq, %.lr.ph.i.i2.prol ]
  %i.ar = icmp ult i64 %i.an, 8
  br i1 %i.ar, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.ba, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 1072
  %.sroa.012.0.i.i = load ptr, ptr %i.as, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 1072
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.at, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 1072
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.au, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 1072
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.av, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 1072
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.aw, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 1072
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.ax, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 1072
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ay, align 8, !noalias !95299, !nonnull !44, !noundef !44
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 1072
  %i.ba = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.az, align 8, !noalias !95299, !nonnull !44, !noundef !44 ; 2 uses
  %i.bb = icmp eq i64 %i.ba, 0
  br i1 %i.bb, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.ak, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95300)
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 1066
  %i.bd = load i16, ptr %i.bc, align 2, !noalias !95301, !noundef !44
  %i.be = zext i16 %i.bd to i64
  %i.bf = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.be
  br i1 %i.bf, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bg, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.by, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i" ] ; 3 uses
  %i.bg = load ptr, ptr %.sroa.0.060.i.i.i.i, align 8, !noalias !95302, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bg, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bh = zext i16 %i.ca to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i" ], [ %i.bh, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i" ], [ %i.by, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h6b498a6e79634d5cE.exit.i" ], [ %i.bg, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bi = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bj = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bi, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17ha89b89218301a132E.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 1072
  %i.bl = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bj ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bn, %.prol.preheader ], [ %i.bm, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !95303, !nonnull !44, !noundef !44 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 1072 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95288

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bm, %bb.h ], [ %i.bn, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.bo = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.bo, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17ha89b89218301a132E.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.bx, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bp = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 1072
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bp, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 1072
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bq, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.br = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 1072
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.br, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 1072
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bs, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 1072
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bt, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 1072
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bu, align 8, !noalias !95303, !nonnull !44, !noundef !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 1072
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.bv, align 8, !noalias !95303, !nonnull !44, !noundef !44 ; 2 uses
  %i.bw = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 1072
  br i1 %i.bw, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17ha89b89218301a132E.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.by = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 1064
  %i.ca = load i16, ptr %i.bz, align 8, !noalias !95302 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #66, !noalias !95304
  %i.cb = getelementptr inbounds nuw i8, ptr %i.bg, i64 1066
  %i.cc = load i16, ptr %i.cb, align 2, !noalias !95301, !noundef !44
  %i.cd = icmp ult i16 %i.ca, %i.cc
  br i1 %i.cd, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 1072, i64 1168
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #66, !noalias !95304
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476) #75
          to label %.noexc.i.i unwind label %bb.k, !noalias !95305

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1478) #75, !noalias !95306
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17ha89b89218301a132E.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bj, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.aj, align 8, !alias.scope !95298
  store i64 0, ptr %i.al, align 8, !alias.scope !95298
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !95298
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17ha89b89218301a132E.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h566be115b43477b8E.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree3map25IntoIter$LT$K$C$V$C$A$GT$10dying_next17hd9c09c197e687bc4E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !44 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95342)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95343)
  %.sroa.01.0.copyload.i.i = load i64, ptr %1, align 8, !alias.scope !95344
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.sroa.0.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !95344 ; 2 uses
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95344 ; 5 uses
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.5.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !95344 ; 5 uses
  store i64 0, ptr %1, align 8, !alias.scope !95344
  %i.d = trunc nuw i64 %.sroa.01.0.copyload.i.i to i1
  br i1 %i.d, label %bb.c, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4eeed8b99f69cd2cE.exit"

bb.c:                                             ; preds = %bb.b
  %.not.i.i = icmp eq ptr %.sroa.5.sroa.0.0.copyload.i.i, null
  br i1 %.not.i.i, label %bb.d, label %.loopexit.i

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.5.0.copyload.i.i) ]
  %i.e = icmp eq i64 %.sroa.5.sroa.6.0.copyload.i.i, 0
  br i1 %i.e, label %.loopexit.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.d
  %xtraiter51 = and i64 %.sroa.5.sroa.6.0.copyload.i.i, 7 ; 2 uses
  %lcmp.mod52.not = icmp eq i64 %xtraiter51, 0
  br i1 %lcmp.mod52.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader, %.lr.ph.i.i.prol
  %.sroa.019.021.i.i.prol = phi ptr [ %i.g, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %.sroa.018.020.i.i.prol = phi i64 [ %i.h, %.lr.ph.i.i.prol ], [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ]
  %prol.iter53 = phi i64 [ %prol.iter53.next, %.lr.ph.i.i.prol ], [ 0, %.lr.ph.i.i.preheader ]
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i.prol, i64 632
  %i.g = load ptr, ptr %i.f, align 8, !noalias !95345, !nonnull !44, !noundef !44 ; 3 uses
  %i.h = add i64 %.sroa.018.020.i.i.prol, -1      ; 2 uses
  %prol.iter53.next = add i64 %prol.iter53, 1     ; 2 uses
  %prol.iter53.cmp.not = icmp eq i64 %prol.iter53.next, %xtraiter51
  br i1 %prol.iter53.cmp.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !llvm.loop !95314

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader
  %.lcssa41.unr = phi ptr [ poison, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.019.021.i.i.unr = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.g, %.lr.ph.i.i.prol ]
  %.sroa.018.020.i.i.unr = phi i64 [ %.sroa.5.sroa.6.0.copyload.i.i, %.lr.ph.i.i.preheader ], [ %i.h, %.lr.ph.i.i.prol ]
  %i.i = icmp ult i64 %.sroa.5.sroa.6.0.copyload.i.i, 8
  br i1 %i.i, label %.loopexit.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %.sroa.019.021.i.i = phi ptr [ %i.y, %.lr.ph.i.i ], [ %.sroa.019.021.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.018.020.i.i = phi i64 [ %i.z, %.lr.ph.i.i ], [ %.sroa.018.020.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.019.021.i.i, i64 632
  %i.k = load ptr, ptr %i.j, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 632
  %i.m = load ptr, ptr %i.l, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 632
  %i.o = load ptr, ptr %i.n, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 632
  %i.q = load ptr, ptr %i.p, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 632
  %i.s = load ptr, ptr %i.r, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 632
  %i.u = load ptr, ptr %i.t, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 632
  %i.w = load ptr, ptr %i.v, align 8, !noalias !95345, !nonnull !44, !noundef !44
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 632
  %i.y = load ptr, ptr %i.x, align 8, !noalias !95345, !nonnull !44, !noundef !44 ; 2 uses
  %i.z = add i64 %.sroa.018.020.i.i, -8           ; 2 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %.loopexit.i, label %.lr.ph.i.i

.loopexit.i:                                      ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %bb.d, %bb.c
  %.sroa.8.0.ph.i = phi ptr [ null, %bb.d ], [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.c ], [ null, %.lr.ph.i.i ], [ null, %.lr.ph.i.i.prol.loopexit ]
  %.sroa.0.0.ph.i = phi ptr [ %.sroa.5.sroa.5.0.copyload.i.i, %bb.d ], [ %.sroa.5.sroa.0.0.copyload.i.i, %bb.c ], [ %.lcssa41.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.y, %.lr.ph.i.i ] ; 3 uses
  %i.ab = ptrtoint ptr %.sroa.8.0.ph.i to i64     ; 2 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.0.0.ph.i, i64 352
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !95346, !noundef !44 ; 2 uses
  %.not.i.i4.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hd49925c42b9f23ccE.exit.i", label %.lr.ph.i3.i

.lr.ph.i3.i:                                      ; preds = %.loopexit.i, %.lr.ph.i3.i
  %i.ae = phi ptr [ %i.ah, %.lr.ph.i3.i ], [ %i.ad, %.loopexit.i ] ; 3 uses
  %.sroa.0.06.i.i = phi ptr [ %i.ae, %.lr.ph.i3.i ], [ %.sroa.0.0.ph.i, %.loopexit.i ]
  %.sroa.5.05.i.i = phi i64 [ %i.af, %.lr.ph.i3.i ], [ %i.ab, %.loopexit.i ] ; 2 uses
  %i.af = add i64 %.sroa.5.05.i.i, 1              ; 2 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.05.i.i, 0
  %..i.i.i = select i1 %.not.i.i.i, i64 632, i64 728
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.06.i.i, i64 noundef %..i.i.i, i64 noundef 8) #66, !noalias !95347
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ae, i64 352
  %i.ah = load ptr, ptr %i.ag, align 8, !noalias !95346, !noundef !44 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.ah, null
  br i1 %.not.i.i.i.i, label %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hd49925c42b9f23ccE.exit.i", label %.lr.ph.i3.i

"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hd49925c42b9f23ccE.exit.i": ; preds = %.lr.ph.i3.i, %.loopexit.i
  %.sroa.5.0.lcssa.i.i = phi i64 [ %i.ab, %.loopexit.i ], [ %i.af, %.lr.ph.i3.i ]
  %.sroa.0.0.lcssa.i.i = phi ptr [ %.sroa.0.0.ph.i, %.loopexit.i ], [ %i.ae, %.lr.ph.i3.i ]
  %.not.i2.i.i = icmp eq i64 %.sroa.5.0.lcssa.i.i, 0
  %..i3.i.i = select i1 %.not.i2.i.i, i64 632, i64 728
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.0.lcssa.i.i, i64 noundef %..i3.i.i, i64 noundef 8) #66, !noalias !95347
  br label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4eeed8b99f69cd2cE.exit"

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4eeed8b99f69cd2cE.exit": ; preds = %bb.b, %"_ZN5alloc11collections5btree8navigate263_$LT$impl$u20$alloc..collections..btree..node..Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..Edge$GT$$GT$16deallocating_end17hd49925c42b9f23ccE.exit.i"
  store ptr null, ptr %0, align 8
  br label %bb.l

bb.e:                                             ; preds = %bb.a
  %i.ai = add i64 %i.b, -1
  store i64 %i.ai, ptr %i.a, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95348)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95349)
  %i.aj = load i64, ptr %1, align 8, !range !60, !alias.scope !95350, !noundef !44
  %i.ak = trunc nuw i64 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %.critedge.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !95350, !noundef !44 ; 2 uses
  %.not.i.i1 = icmp eq ptr %i.am, null
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  br i1 %.not.i.i1, label %bb.g, label %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i"

"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i": ; preds = %bb.f
  %.sroa.26.0.copyload.i.pre.i = load i64, ptr %i.an, align 8, !alias.scope !95351
  %.sroa.37.0..sroa_idx.i.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.37.0.copyload.i.pre.i = load i64, ptr %.sroa.37.0..sroa_idx.i.phi.trans.insert.i, align 8, !alias.scope !95351
  br label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i"

bb.g:                                             ; preds = %bb.f
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ap = load i64, ptr %i.ao, align 8, !alias.scope !95350, !noundef !44 ; 5 uses
  %.sroa.012.013.i.i = load ptr, ptr %i.an, align 8, !alias.scope !95350, !nonnull !44, !noundef !44 ; 3 uses
  %i.aq = icmp eq i64 %i.ap, 0
  br i1 %i.aq, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i", label %.lr.ph.i.i2.preheader

.lr.ph.i.i2.preheader:                            ; preds = %bb.g
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol

.lr.ph.i.i2.prol:                                 ; preds = %.lr.ph.i.i2.preheader, %.lr.ph.i.i2.prol
  %.sroa.012.015.i.i.prol = phi ptr [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ], [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ]
  %.sroa.011.014.i.i.prol = phi i64 [ %i.as, %.lr.ph.i.i2.prol ], [ %i.ap, %.lr.ph.i.i2.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i2.prol ], [ 0, %.lr.ph.i.i2.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i.prol, i64 632
  %i.as = add i64 %.sroa.011.014.i.i.prol, -1     ; 2 uses
  %.sroa.012.0.i.i.prol = load ptr, ptr %i.ar, align 8, !noalias !95352, !nonnull !44, !noundef !44 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i2.prol.loopexit, label %.lr.ph.i.i2.prol, !llvm.loop !95326

.lr.ph.i.i2.prol.loopexit:                        ; preds = %.lr.ph.i.i2.prol, %.lr.ph.i.i2.preheader
  %.sroa.012.0.i.i.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.012.015.i.i.unr = phi ptr [ %.sroa.012.013.i.i, %.lr.ph.i.i2.preheader ], [ %.sroa.012.0.i.i.prol, %.lr.ph.i.i2.prol ]
  %.sroa.011.014.i.i.unr = phi i64 [ %i.ap, %.lr.ph.i.i2.preheader ], [ %i.as, %.lr.ph.i.i2.prol ]
  %i.at = icmp ult i64 %i.ap, 8
  br i1 %i.at, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i", label %.lr.ph.i.i2

.lr.ph.i.i2:                                      ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2
  %.sroa.012.015.i.i = phi ptr [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ], [ %.sroa.012.015.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %.sroa.011.014.i.i = phi i64 [ %i.bc, %.lr.ph.i.i2 ], [ %.sroa.011.014.i.i.unr, %.lr.ph.i.i2.prol.loopexit ]
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.012.015.i.i, i64 632
  %.sroa.012.0.i.i = load ptr, ptr %i.au, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.av = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i, i64 632
  %.sroa.012.0.i.i.1 = load ptr, ptr %i.av, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.1, i64 632
  %.sroa.012.0.i.i.2 = load ptr, ptr %i.aw, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.ax = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.2, i64 632
  %.sroa.012.0.i.i.3 = load ptr, ptr %i.ax, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.3, i64 632
  %.sroa.012.0.i.i.4 = load ptr, ptr %i.ay, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.az = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.4, i64 632
  %.sroa.012.0.i.i.5 = load ptr, ptr %i.az, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.5, i64 632
  %.sroa.012.0.i.i.6 = load ptr, ptr %i.ba, align 8, !noalias !95352, !nonnull !44, !noundef !44
  %i.bb = getelementptr inbounds nuw i8, ptr %.sroa.012.0.i.i.6, i64 632
  %i.bc = add i64 %.sroa.011.014.i.i, -8          ; 2 uses
  %.sroa.012.0.i.i.7 = load ptr, ptr %i.bb, align 8, !noalias !95352, !nonnull !44, !noundef !44 ; 2 uses
  %i.bd = icmp eq i64 %i.bc, 0
  br i1 %i.bd, label %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i", label %.lr.ph.i.i2

"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i": ; preds = %.lr.ph.i.i2.prol.loopexit, %.lr.ph.i.i2, %bb.g, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i"
  %.sroa.37.0.copyload.i.i = phi i64 [ %.sroa.37.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.26.0.copyload.i.i = phi i64 [ %.sroa.26.0.copyload.i.pre.i, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i" ], [ 0, %bb.g ], [ 0, %.lr.ph.i.i2 ], [ 0, %.lr.ph.i.i2.prol.loopexit ] ; 2 uses
  %.sroa.05.0.copyload.i.i = phi ptr [ %i.am, %"._ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit_crit_edge.i" ], [ %.sroa.012.013.i.i, %bb.g ], [ %.sroa.012.0.i.i.lcssa.unr, %.lr.ph.i.i2.prol.loopexit ], [ %.sroa.012.0.i.i.7, %.lr.ph.i.i2 ] ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95353)
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.05.0.copyload.i.i, i64 626
  %i.bf = load i16, ptr %i.be, align 2, !noalias !95354, !noundef !44
  %i.bg = zext i16 %i.bf to i64
  %i.bh = icmp ult i64 %.sroa.37.0.copyload.i.i, %i.bg
  br i1 %i.bh, label %._crit_edge.i.i.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i", %bb.i
  %.sroa.0.060.i.i.i.i = phi ptr [ %i.bj, %bb.i ], [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i" ] ; 4 uses
  %.sroa.5.059.i.i.i.i = phi i64 [ %i.cb, %bb.i ], [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i" ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 352
  %i.bj = load ptr, ptr %i.bi, align 8, !noalias !95355, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.bj, null
  br i1 %.not.i.i.i.i.i.i, label %bb.j, label %bb.i

._crit_edge.loopexit.i.i.i.i:                     ; preds = %bb.i
  %i.bk = zext i16 %i.cd to i64
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %._crit_edge.loopexit.i.i.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i"
  %.sroa.6.0.lcssa.i.i.i.i = phi i64 [ %.sroa.37.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i" ], [ %i.bk, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %.sroa.5.0.lcssa.i.i.i.i = phi i64 [ %.sroa.26.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i" ], [ %i.cb, %._crit_edge.loopexit.i.i.i.i ] ; 6 uses
  %.sroa.0.0.lcssa.i.i.i.i = phi ptr [ %.sroa.05.0.copyload.i.i, %"_ZN5alloc11collections5btree8navigate39LazyLeafRange$LT$BorrowType$C$K$C$V$GT$10init_front17h66a939f38511a1f4E.exit.i" ], [ %i.bj, %._crit_edge.loopexit.i.i.i.i ] ; 3 uses
  %i.bl = icmp eq i64 %.sroa.5.0.lcssa.i.i.i.i, 0
  %i.bm = add nuw nsw i64 %.sroa.6.0.lcssa.i.i.i.i, 1 ; 2 uses
  br i1 %i.bl, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h539349ba2d3edd8cE.exit", label %bb.h

bb.h:                                             ; preds = %._crit_edge.i.i.i.i
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa.i.i.i.i, i64 632
  %i.bo = icmp samesign ult i64 %.sroa.6.0.lcssa.i.i.i.i, 11
  tail call void @llvm.assume(i1 %i.bo)
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.bn, i64 %i.bm ; 2 uses
  %xtraiter48 = and i64 %.sroa.5.0.lcssa.i.i.i.i, 7 ; 2 uses
  %lcmp.mod49.not = icmp eq i64 %xtraiter48, 0
  br i1 %lcmp.mod49.not, label %.prol.loopexit, label %.prol.preheader

.prol.preheader:                                  ; preds = %bb.h, %.prol.preheader
  %.pn30.in.i.i.i.i.i.prol = phi ptr [ %i.bq, %.prol.preheader ], [ %i.bp, %bb.h ]
  %.pn28.in.i.i.i.i.i.prol = phi i64 [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ], [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ]
  %prol.iter50 = phi i64 [ %prol.iter50.next, %.prol.preheader ], [ 0, %bb.h ]
  %.pn28.i.i.i.i.i.prol = add i64 %.pn28.in.i.i.i.i.i.prol, -1 ; 2 uses
  %.pn30.i.i.i.i.i.prol = load ptr, ptr %.pn30.in.i.i.i.i.i.prol, align 8, !noalias !95356, !nonnull !44, !noundef !44 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.prol, i64 632 ; 2 uses
  %prol.iter50.next = add i64 %prol.iter50, 1     ; 2 uses
  %prol.iter50.cmp.not = icmp eq i64 %prol.iter50.next, %xtraiter48
  br i1 %prol.iter50.cmp.not, label %.prol.loopexit, label %.prol.preheader, !llvm.loop !95341

.prol.loopexit:                                   ; preds = %.prol.preheader, %bb.h
  %.pn30.i.i.i.i.i.lcssa.unr = phi ptr [ poison, %bb.h ], [ %.pn30.i.i.i.i.i.prol, %.prol.preheader ]
  %.pn30.in.i.i.i.i.i.unr = phi ptr [ %i.bp, %bb.h ], [ %i.bq, %.prol.preheader ]
  %.pn28.in.i.i.i.i.i.unr = phi i64 [ %.sroa.5.0.lcssa.i.i.i.i, %bb.h ], [ %.pn28.i.i.i.i.i.prol, %.prol.preheader ]
  %i.br = icmp ult i64 %.sroa.5.0.lcssa.i.i.i.i, 8
  br i1 %i.br, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h539349ba2d3edd8cE.exit", label %.new

.new:                                             ; preds = %.prol.loopexit, %.new
  %.pn30.in.i.i.i.i.i = phi ptr [ %i.ca, %.new ], [ %.pn30.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn28.in.i.i.i.i.i = phi i64 [ %.pn28.i.i.i.i.i.7, %.new ], [ %.pn28.in.i.i.i.i.i.unr, %.prol.loopexit ]
  %.pn30.i.i.i.i.i = load ptr, ptr %.pn30.in.i.i.i.i.i, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bs = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i, i64 632
  %.pn30.i.i.i.i.i.1 = load ptr, ptr %i.bs, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bt = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.1, i64 632
  %.pn30.i.i.i.i.i.2 = load ptr, ptr %i.bt, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bu = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.2, i64 632
  %.pn30.i.i.i.i.i.3 = load ptr, ptr %i.bu, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bv = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.3, i64 632
  %.pn30.i.i.i.i.i.4 = load ptr, ptr %i.bv, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bw = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.4, i64 632
  %.pn30.i.i.i.i.i.5 = load ptr, ptr %i.bw, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.bx = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.5, i64 632
  %.pn30.i.i.i.i.i.6 = load ptr, ptr %i.bx, align 8, !noalias !95356, !nonnull !44, !noundef !44
  %i.by = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.6, i64 632
  %.pn28.i.i.i.i.i.7 = add i64 %.pn28.in.i.i.i.i.i, -8 ; 2 uses
  %.pn30.i.i.i.i.i.7 = load ptr, ptr %i.by, align 8, !noalias !95356, !nonnull !44, !noundef !44 ; 2 uses
  %i.bz = icmp eq i64 %.pn28.i.i.i.i.i.7, 0
  %i.ca = getelementptr inbounds nuw i8, ptr %.pn30.i.i.i.i.i.7, i64 632
  br i1 %i.bz, label %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h539349ba2d3edd8cE.exit", label %.new

bb.i:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cb = add i64 %.sroa.5.059.i.i.i.i, 1         ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %.sroa.0.060.i.i.i.i, i64 624
  %i.cd = load i16, ptr %i.cc, align 8, !noalias !95355 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i.i.i.i.i = select i1 %.not.i.i.i.i.i, i64 632, i64 728
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i.i.i.i.i, i64 noundef 8) #66, !noalias !95357
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bj, i64 626
  %i.cf = load i16, ptr %i.ce, align 2, !noalias !95354, !noundef !44
  %i.cg = icmp ult i16 %i.cd, %i.cf
  br i1 %i.cg, label %._crit_edge.loopexit.i.i.i.i, label %.lr.ph.i.i.i.i

bb.j:                                             ; preds = %.lr.ph.i.i.i.i
  %.not.i54.i.i.i.i = icmp eq i64 %.sroa.5.059.i.i.i.i, 0
  %..i55.i.i.i.i = select i1 %.not.i54.i.i.i.i, i64 632, i64 728
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.060.i.i.i.i, i64 noundef %..i55.i.i.i.i, i64 noundef 8) #66, !noalias !95357
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1476) #75
          to label %.noexc.i.i unwind label %bb.k, !noalias !95358

.noexc.i.i:                                       ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.ch = landingpad { ptr, i32 }
          cleanup                                 ; 0 uses
  tail call void @llvm.trap()
  unreachable

.critedge.i:                                      ; preds = %bb.e
  tail call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1478) #75, !noalias !95359
  unreachable

"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h539349ba2d3edd8cE.exit": ; preds = %.prol.loopexit, %.new, %._crit_edge.i.i.i.i
  %.sroa.7.0.ph.i.i.i = phi i64 [ %i.bm, %._crit_edge.i.i.i.i ], [ 0, %.new ], [ 0, %.prol.loopexit ]
  %.sroa.0.0.ph.i.i.i = phi ptr [ %.sroa.0.0.lcssa.i.i.i.i, %._crit_edge.i.i.i.i ], [ %.pn30.i.i.i.i.i.lcssa.unr, %.prol.loopexit ], [ %.pn30.i.i.i.i.i.7, %.new ]
  %.sroa.37.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %.sroa.0.0.ph.i.i.i, ptr %i.al, align 8, !alias.scope !95351
  store i64 0, ptr %i.an, align 8, !alias.scope !95351
  store i64 %.sroa.7.0.ph.i.i.i, ptr %.sroa.37.0..sroa_idx.i.i, align 8, !alias.scope !95351
  store ptr %.sroa.0.0.lcssa.i.i.i.i, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0.lcssa.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.6.0.lcssa.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.l

bb.l:                                             ; preds = %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$27deallocating_next_unchecked17h539349ba2d3edd8cE.exit", %"_ZN5alloc11collections5btree8navigate75LazyLeafRange$LT$alloc..collections..btree..node..marker..Dying$C$K$C$V$GT$16deallocating_end17h4eeed8b99f69cd2cE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc11collections5btree4node208Handle$LT$alloc..collections..btree..node..NodeRef$LT$alloc..collections..btree..node..marker..Mut$C$K$C$V$C$alloc..collections..btree..node..marker..Leaf$GT$$C$alloc..collections..btree..node..marker..KV$GT$5split17hd3798597c55e10f5E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66
  %i.b = tail call noalias noundef align 8 dereferenceable_or_null(632) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 632, i64 noundef range(i64 1, -9223372036854775807) 8) #66 ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.b, label %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hb00c925e5e02168fE.exit", !prof !49

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 632) #75
  unreachable

"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hb00c925e5e02168fE.exit": ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 352
  store ptr null, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 626
  %.val = load ptr, ptr %1, align 8, !nonnull !44, !noundef !44 ; 5 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val1 = load i64, ptr %i.f, align 8, !noundef !44 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !95373)
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 626 ; 2 uses
  %i.h = load i16, ptr %i.g, align 2, !noalias !95374, !noundef !44
  %i.i = zext i16 %i.h to i64
  %i.j = xor i64 %.val1, -1
  %i.k = add i64 %i.i, %i.j                       ; 5 uses
  %i.l = trunc i64 %i.k to i16
  store i16 %i.l, ptr %i.e, align 2, !alias.scope !95373
  %i.m = getelementptr inbounds nuw i8, ptr %.val, i64 360 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %.val1 ; 3 uses
  %.sroa.0.0.copyload.i = load i64, ptr %i.n, align 8, !noalias !95374 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %.sroa.5.0.copyload.i = load ptr, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !95374 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %.sroa.6.0.copyload.i = load i64, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !95374
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !95374
  %i.o = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %.val1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.o, i64 32, i1 false), !noalias !95374
  %i.p = icmp ult i64 %i.k, 12
  br i1 %i.p, label %bb.i, label %bb.c, !prof !46

bb.c:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hb00c925e5e02168fE.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.k, i64 noundef 11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1472) #75
          to label %bb.e unwind label %bb.d, !noalias !95374

bb.d:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h021f64043e1f1e62E"(ptr noalias noundef align 8 dereferenceable(32) %i.a) #77
          to label %bb.g unwind label %bb.f, !noalias !95374

bb.e:                                             ; preds = %bb.c
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76, !noalias !95374
  unreachable

bb.g:                                             ; preds = %bb.d
  %i.s = icmp eq i64 %.sroa.0.0.copyload.i, 0
  br i1 %i.s, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.0.copyload.i, i64 noundef %.sroa.0.0.copyload.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !95375
  br label %bb.j

bb.i:                                             ; preds = %"_ZN5alloc11collections5btree4node21LeafNode$LT$K$C$V$GT$3new17hb00c925e5e02168fE.exit"
  %i.t = add i64 %.val1, 1                        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  %i.v = getelementptr inbounds nuw [24 x i8], ptr %i.m, i64 %i.t
end_hunk_1
