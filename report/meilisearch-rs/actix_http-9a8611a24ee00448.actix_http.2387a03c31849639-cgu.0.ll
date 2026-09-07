Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_http-9a8611a24ee00448.actix_http.2387a03c31849639-cgu.0?download=true
inline.NumInlined: 6414
inline.NumDeleted: 2069
loop-unroll.NumCompletelyUnrolled: 166
loop-unroll.NumRuntimeUnrolled: 66
loop-unroll.NumUnrolled: 295
begin_hunk_0_@"_ZN196_$LT$actix_http..responses..response..Response$LT$actix_http..body..either..EitherBody$LT$$LP$$RP$$GT$$GT$$u20$as$u20$core..convert..From$LT$actix_http..responses..builder..ResponseBuilder$GT$$GT$4from17h9b2c29bc65e6646bE":bb.a
.noexc1:                                          ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  store ptr null, ptr %i.g, align 8, !noalias !4247
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i8 0, ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !4247
  %i.m = invoke fastcc noundef nonnull align 8 ptr @_ZN10actix_http5error5Error10with_cause17h41a028a4438e494cE(ptr noalias noundef nonnull align 8 %i.g, i8 noundef %i.d, i8 %i.f)
          to label %.noexc2 unwind label %bb.p    ; 0 uses

.noexc2:                                          ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4248
  invoke void @"_ZN10actix_http5error163_$LT$impl$u20$core..convert..From$LT$actix_http..error..Error$GT$$u20$for$u20$actix_http..responses..response..Response$LT$actix_http..body..boxed..BoxBody$GT$$GT$4from17hca9f20f904e05140E"(ptr noalias noundef nonnull sret([88 x i8]) align 8 captures(address) dereferenceable(88) %i.a, ptr noalias noundef nonnull align 8 %i.g)
          to label %.noexc3 unwind label %bb.p

.noexc3:                                          ; preds = %.noexc2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4249)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4250)
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !4251, !noalias !4252, !align !32, !noundef !21 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i, label %bb.f, label %bb.q, !prof !30

bb.f:                                             ; preds = %.noexc3
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1498) #46
          to label %.noexc.i.i unwind label %bb.g, !noalias !4253

.noexc.i.i:                                       ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hbad719e6f1d488f5E"(ptr noalias noundef align 8 dereferenceable(8) %i.n) #47
          to label %bb.j unwind label %bb.h, !noalias !4252

bb.h:                                             ; preds = %bb.j, %bb.i, %bb.g
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !4252
  unreachable

bb.i:                                             ; preds = %bb.j
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h44e6afe324e39064E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.r)
          to label %.body unwind label %bb.h, !noalias !4252

bb.j:                                             ; preds = %bb.g
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h3b2d87d1b70a043cE"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.a) #47
          to label %bb.i unwind label %bb.h, !noalias !4252

bb.k:                                             ; preds = %bb.c
  store ptr %i.k, ptr %i.b, align 8, !noalias !4248
  %.sroa.8.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 0, ptr %.sroa.8.8..sroa_idx.i, align 8, !noalias !4248
  %.sroa.9.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.9.8..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @163, i64 32, i1 false), !noalias !4248
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4254)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4255)
  %.not.i.i1.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i1.i, label %bb.l, label %.thread, !prof !30

bb.l:                                             ; preds = %bb.k
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1498) #46
          to label %.noexc.i3.i unwind label %bb.m, !noalias !4256

.noexc.i3.i:                                      ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr67drop_in_place$LT$actix_http..responses..head..BoxedResponseHead$GT$17hbad719e6f1d488f5E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b) #47
          to label %bb.o unwind label %bb.n, !noalias !4257

bb.n:                                             ; preds = %bb.o, %bb.m
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !4256
  unreachable

bb.o:                                             ; preds = %bb.m
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h44e6afe324e39064E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %.sroa.9.8..sroa_idx.i)
          to label %.body unwind label %bb.n, !noalias !4257

.thread:                                          ; preds = %bb.k
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.8.8..sroa_idx.i, i64 40, i1 false), !alias.scope !4258, !noalias !4242
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.k, ptr %i.v, align 8, !alias.scope !4259, !noalias !4260
  store i64 3, ptr %0, align 8, !alias.scope !4259, !noalias !4260
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E.exit"

bb.p:                                             ; preds = %.noexc2, %bb.e, %bb.d, %.noexc.i.i.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.i, %bb.o, %bb.p
  %eh.lpad-body = phi { ptr, i32 } [ %i.w, %bb.p ], [ %i.p, %bb.i ], [ %i.s, %bb.o ]
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E"(ptr noalias noundef align 8 dereferenceable(24) %1) #47
          to label %common.resume unwind label %bb.x

bb.q:                                             ; preds = %.noexc3
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.a, i64 40, i1 false), !alias.scope !4261, !noalias !4242
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.y, ptr noundef nonnull align 8 dereferenceable(40) %i.x, i64 40, i1 false), !alias.scope !4261, !noalias !4242
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.o, ptr %i.z, align 8, !alias.scope !4262, !noalias !4263
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4248
  %.pre = load i64, ptr %1, align 8, !range !52, !alias.scope !4264
  %i.aa = icmp eq i64 %.pre, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4266)
  br i1 %i.aa, label %"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E.exit", label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4267)
  invoke void @"_ZN88_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492f1b14454eebceE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ab)
          to label %bb.t unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ac = landingpad { ptr, i32 }
          cleanup
  %.val1.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !4268, !align !32, !noundef !21
  invoke fastcc void @"_ZN4core3ptr115drop_in_place$LT$core..option..Option$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$$GT$17h4443d3e22d9fcd08E"(ptr %.val1.i.i.i) #47
          to label %common.resume unwind label %bb.w, !noalias !4268

bb.t:                                             ; preds = %bb.r
  %.val.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !4268, !align !32, !noundef !21 ; 4 uses
  %i.ad = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ad, label %"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E.exit", label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ae = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 16
  invoke fastcc void @"_ZN4core3ptr124drop_in_place$LT$hashbrown..raw..RawTable$LT$$LP$http..header..name..HeaderName$C$actix_http..header..map..Value$RP$$GT$$GT$17hcb08d1ad5ecab8bfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.ae)
          to label %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17h4fde85f0ec63409eE.exit.i.i.i.i" unwind label %bb.v, !noalias !4268

common.resume:                                    ; preds = %.body, %bb.s, %bb.v
  %common.resume.op = phi { ptr, i32 } [ %i.ac, %bb.s ], [ %i.af, %bb.v ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.v:                                             ; preds = %bb.u
  %i.af = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #45, !noalias !4268
  br label %common.resume

"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17h4fde85f0ec63409eE.exit.i.i.i.i": ; preds = %bb.u
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i, i64 noundef 64, i64 noundef 8) #45, !noalias !4268
  br label %"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E.exit"

bb.w:                                             ; preds = %bb.s
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !4268
  unreachable

"_ZN4core3ptr68drop_in_place$LT$actix_http..responses..builder..ResponseBuilder$GT$17hb4d20b8df0b0aa84E.exit": ; preds = %.thread, %bb.q, %bb.t, %"_ZN4core3ptr87drop_in_place$LT$alloc..boxed..Box$LT$actix_http..responses..head..ResponseHead$GT$$GT$17h4fde85f0ec63409eE.exit.i.i.i.i"
  ret void

bb.x:                                             ; preds = %.body
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc noundef range(i32 -7, 3) i32 @_ZN19brotli_decompressor6decode15ReadHuffmanCode17h2548961c9831ea9eE(i32 noundef %0, i32 noundef %1, ptr noalias noundef nonnull align 2 %2, i64 noundef %3, i64 noundef range(i64 -2147483648, 4294967296) %4, ptr noalias nofree noundef writeonly align 4 captures(address_is_null) dereferenceable_or_null(4) %5, ptr noalias noundef nonnull align 8 dereferenceable(2600) %6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 1, 0) %8) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 7 uses
  %i.b = alloca [4 x i8], align 4                 ; 8 uses
  %i.c = alloca [4 x i8], align 4                 ; 8 uses
  %i.d = alloca [4 x i8], align 4                 ; 8 uses
  %i.e = alloca [4 x i8], align 4                 ; 8 uses
  %i.f = alloca [4 x i8], align 4                 ; 7 uses
  %i.g = alloca [4 x i8], align 4                 ; 6 uses
  %i.h = alloca [4 x i8], align 4                 ; 6 uses
  %i.i = and i32 %0, 2047
  %i.j = getelementptr inbounds nuw i8, ptr %6, i64 2328 ; 12 uses
  %i.k = getelementptr inbounds nuw i8, ptr %6, i64 2256 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %6, i64 2260 ; 11 uses
  %i.m = getelementptr inbounds nuw i8, ptr %6, i64 2204 ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %6, i64 1872 ; 12 uses
  %i.o = getelementptr inbounds nuw i8, ptr %6, i64 1880 ; 9 uses
  %i.p = getelementptr inbounds nuw i8, ptr %6, i64 2302 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %6, i64 1696 ; 9 uses
  %i.r = getelementptr inbounds nuw i8, ptr %6, i64 1936 ; 21 uses
  %i.s = getelementptr inbounds nuw i8, ptr %6, i64 256 ; 27 uses
  %i.t = getelementptr inbounds nuw i8, ptr %6, i64 2252 ; 12 uses
  %i.u = getelementptr inbounds nuw i8, ptr %6, i64 2240 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %6, i64 2236 ; 4 uses
  %i.w = add nsw i32 %i.i, -1
  %i.x = tail call range(i32 0, 33) i32 @llvm.ctlz.i32(i32 %i.w, i1 false)
  %i.y = sub nuw nsw i32 32, %i.x
  %.sroa.016.144.i = getelementptr inbounds nuw i8, ptr %6, i64 258 ; 2 uses
  %.pre = load i8, ptr %i.j, align 8, !range !23
  switch i8 %.pre, label %default.unreachable245 [
    i8 0, label %bb.f
    i8 1, label %bb.g
    i8 2, label %bb.h
    i8 3, label %bb.s
    i8 4, label %bb.t
    i8 5, label %bb.af
  ]

bb.b:                                             ; preds = %.preheader64.15
  %i.z = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.id
  store i16 -1, ptr %i.z, align 2
  store i32 0, ptr %i.t, align 4
  store i32 8, ptr %i.u, align 8
  store i32 0, ptr %i.k, align 8
  store i32 0, ptr %i.v, align 4
  store i32 32768, ptr %i.l, align 4
  store i8 5, ptr %i.j, align 8
  br label %bb.af

.loopexit63.loopexit:                             ; preds = %._crit_edge, %._crit_edge42.i
  store i8 3, ptr %i.j, align 8
  br label %bb.s

bb.c:                                             ; preds = %bb.g
  store i32 0, ptr %i.m, align 4
  store i8 2, ptr %i.j, align 8
  br label %bb.h

bb.d:                                             ; preds = %bb.ak
  store i32 32, ptr %i.l, align 4
  store i32 0, ptr %i.k, align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.q, i8 0, i64 12, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 2 dereferenceable(18) %i.p, i8 0, i64 18, i1 false)
  store i8 4, ptr %i.j, align 8
  br label %bb.t

bb.e:                                             ; preds = %bb.ak
  store i8 1, ptr %i.j, align 8
  br label %bb.g

default.unreachable245:                           ; preds = %bb.a
  unreachable

bb.f:                                             ; preds = %bb.a
  %i.aa = tail call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef %8)
  br i1 %i.aa, label %bb.ak, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

bb.g:                                             ; preds = %bb.e, %bb.a
  %i.ab = tail call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 2, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.t, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef %8)
  br i1 %i.ab, label %bb.c, label %bb.al

bb.h:                                             ; preds = %bb.c, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4281)
  %i.ac = load i32, ptr %i.m, align 4, !alias.scope !4281, !noalias !4282, !noundef !21 ; 2 uses
  %i.ad = load i32, ptr %i.t, align 4, !alias.scope !4281, !noalias !4282, !noundef !21 ; 3 uses
  %i.ae = zext i32 %i.ac to i64                   ; 4 uses
  %i.af = zext i32 %i.ad to i64                   ; 3 uses
  %i.ag = add nuw nsw i64 %i.af, 1                ; 6 uses
  %i.ah = icmp samesign uge i64 %i.ag, %i.ae
  %i.ai = icmp ult i32 %i.ad, 720
  %or.cond.i = and i1 %i.ai, %i.ah
  br i1 %or.cond.i, label %bb.j, label %bb.i, !prof !65

bb.i:                                             ; preds = %bb.h
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.ae, i64 noundef %i.ag, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @462) #46, !noalias !4283
  unreachable

bb.j:                                             ; preds = %bb.h
  %i.aj = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ag
  %i.ak = icmp samesign eq i64 %i.ag, %i.ae
  br i1 %i.ak, label %._crit_edge42.i, label %.lr.ph41.i

.lr.ph41.i:                                       ; preds = %bb.j
  %i.al = getelementptr inbounds nuw [2 x i8], ptr %i.s, i64 %i.ae ; 2 uses
  %.sroa.015.136.i = getelementptr inbounds nuw i8, ptr %i.al, i64 2
  br label %bb.k

bb.k:                                             ; preds = %bb.r, %.lr.ph41.i
  %.sroa.015.139.i = phi ptr [ %.sroa.015.136.i, %.lr.ph41.i ], [ %.sroa.015.1.i, %bb.r ] ; 3 uses
  %.sroa.03.038.i = phi i32 [ %i.ac, %.lr.ph41.i ], [ %i.bd, %bb.r ] ; 2 uses
  %.sroa.015.037.i = phi ptr [ %i.al, %.lr.ph41.i ], [ %.sroa.015.139.i, %bb.r ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !4283
  store i32 0, ptr %i.g, align 4, !noalias !4283
  %i.am = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader18BrotliSafeReadBits17h7a2d02b9c7a27b35E(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef %i.y, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 1, 0) %8)
  br i1 %i.am, label %bb.q, label %bb.p, !prof !31

._crit_edge42.i:                                  ; preds = %bb.r, %bb.j
  %.idx.i = shl nuw nsw i64 %i.af, 1              ; 4 uses
  %i.an = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx.i
  %i.ao = icmp eq i32 %i.ad, 0
  br i1 %i.ao, label %.loopexit63.loopexit, label %.lr.ph49.i.preheader

.lr.ph49.i.preheader:                             ; preds = %._crit_edge42.i
  %scevgep178 = getelementptr i8, ptr %.sroa.016.144.i, i64 %.idx.i
  %i.ap = add nsw i64 %.idx.i, -2
  %i.aq = lshr exact i64 %i.ap, 1
  %i.ar = add nuw nsw i64 %.idx.i, 2
  br label %.lr.ph49.i

.lr.ph49.i:                                       ; preds = %.lr.ph49.i.preheader, %._crit_edge
  %indvars.iv = phi i64 [ 0, %.lr.ph49.i.preheader ], [ %i.as, %._crit_edge ] ; 3 uses
  %.sroa.016.147.i = phi ptr [ %.sroa.016.144.i, %.lr.ph49.i.preheader ], [ %.sroa.016.1.i, %._crit_edge ] ; 3 uses
  %.sroa.016.045.i = phi ptr [ %i.s, %.lr.ph49.i.preheader ], [ %.sroa.016.147.i, %._crit_edge ]
  %i.as = add nuw nsw i64 %indvars.iv, 1          ; 2 uses
  %exitcond = icmp eq i64 %indvars.iv, %i.ag
  br i1 %exitcond, label %bb.l, label %bb.m, !prof !30

bb.l:                                             ; preds = %.lr.ph49.i
  %i.at = add nuw nsw i64 %i.af, 2
  call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.at, i64 noundef %i.ag, i64 noundef 720, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @461) #46
  unreachable

bb.m:                                             ; preds = %.lr.ph49.i
  %.idx = shl nuw nsw i64 %i.as, 1                ; 2 uses
  %i.au = icmp eq i64 %.idx, %i.ar
  br i1 %i.au, label %._crit_edge, label %.lr.ph285

.lr.ph285:                                        ; preds = %bb.m
  %i.av = getelementptr inbounds nuw i8, ptr %i.s, i64 %.idx
  %i.aw = load i16, ptr %.sroa.016.045.i, align 2, !alias.scope !4281, !noalias !4282, !noundef !21
  br label %bb.o

bb.n:                                             ; preds = %bb.o
  %.sroa.017.1.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i284, i64 2 ; 2 uses
  %i.ax = icmp eq ptr %.sroa.017.1.i, %scevgep178
  br i1 %i.ax, label %._crit_edge, label %bb.o

bb.o:                                             ; preds = %.lr.ph285, %bb.n
  %.sroa.017.0.i284 = phi ptr [ %i.av, %.lr.ph285 ], [ %.sroa.017.1.i, %bb.n ] ; 2 uses
  %i.ay = load i16, ptr %.sroa.017.0.i284, align 2, !alias.scope !4281, !noalias !4282, !noundef !21
  %i.az = icmp eq i16 %i.aw, %i.ay
  br i1 %i.az, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit, label %bb.n

._crit_edge:                                      ; preds = %bb.n, %bb.m
  %i.ba = icmp eq ptr %.sroa.016.147.i, %i.an
  %.sroa.016.1.idx.i = select i1 %i.ba, i64 0, i64 2
  %.sroa.016.1.i = getelementptr inbounds nuw i8, ptr %.sroa.016.147.i, i64 %.sroa.016.1.idx.i
  %exitcond180 = icmp eq i64 %indvars.iv, %i.aq
  br i1 %exitcond180, label %.loopexit63.loopexit, label %.lr.ph49.i

bb.p:                                             ; preds = %bb.k
  store i32 %.sroa.03.038.i, ptr %i.m, align 4, !alias.scope !4281, !noalias !4282
  store i8 2, ptr %i.j, align 8, !alias.scope !4281, !noalias !4282
  br label %.loopexit29.i

bb.q:                                             ; preds = %bb.k
  %i.bb = load i32, ptr %i.g, align 4, !noalias !4283, !noundef !21 ; 2 uses
  %.not24.i = icmp ult i32 %i.bb, %1
  br i1 %.not24.i, label %bb.r, label %.loopexit29.i

.loopexit29.i:                                    ; preds = %bb.q, %bb.p
  %.sroa.0.2.i = phi i32 [ 2, %bb.p ], [ -4, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4283
  br label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

bb.r:                                             ; preds = %bb.q
  %i.bc = trunc i32 %i.bb to i16
  store i16 %i.bc, ptr %.sroa.015.037.i, align 2, !alias.scope !4281, !noalias !4282
  %i.bd = add i32 %.sroa.03.038.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !4283
  %i.be = icmp eq ptr %.sroa.015.139.i, %i.aj     ; 2 uses
  %.sroa.015.1.idx.i = select i1 %i.be, i64 0, i64 2
  %.sroa.015.1.i = getelementptr inbounds nuw i8, ptr %.sroa.015.139.i, i64 %.sroa.015.1.idx.i
  br i1 %i.be, label %._crit_edge42.i, label %bb.k

bb.s:                                             ; preds = %.loopexit63.loopexit, %bb.a
  %i.bf = load i32, ptr %i.t, align 4, !noundef !21 ; 2 uses
  %i.bg = icmp eq i32 %i.bf, 3
  br i1 %i.bg, label %bb.am, label %bb.ap

bb.t:                                             ; preds = %bb.d, %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4284)
  %i.bh = load i32, ptr %i.m, align 4, !alias.scope !4284, !noalias !4285, !noundef !21 ; 3 uses
  %i.bi = zext i32 %i.bh to i64                   ; 2 uses
  %i.bj = icmp ugt i32 %i.bh, 18
  br i1 %i.bj, label %bb.v, label %bb.u, !prof !30

bb.u:                                             ; preds = %bb.t
  %i.bk = load i32, ptr %i.l, align 4, !alias.scope !4284, !noalias !4285, !noundef !21 ; 2 uses
  %i.bl = load i32, ptr %i.k, align 8, !alias.scope !4284, !noalias !4285, !noundef !21 ; 2 uses
  %i.bm = icmp eq i32 %i.bh, 18
  br i1 %i.bm, label %.loopexit.i, label %.lr.ph.i

bb.v:                                             ; preds = %bb.t
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.bi, i64 noundef 18, i64 noundef 18, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @467) #46, !noalias !4286
  unreachable

.lr.ph.i:                                         ; preds = %bb.u, %bb.ac
  %.sroa.02.040.i = phi i32 [ %.sroa.02.1.i, %bb.ac ], [ %i.bl, %bb.u ] ; 3 uses
  %.sroa.05.039.i = phi i32 [ %.sroa.05.1.i, %bb.ac ], [ %i.bk, %bb.u ] ; 3 uses
  %.sroa.012.0.idx37.i = phi i64 [ %.sroa.012.0.add.i, %bb.ac ], [ %i.bi, %bb.u ] ; 3 uses
  %.sroa.012.0.ptr.i = getelementptr inbounds nuw i8, ptr @463, i64 %.sroa.012.0.idx37.i
  %.sroa.012.0.add.i = add nuw nsw i64 %.sroa.012.0.idx37.i, 1 ; 2 uses
  %i.bn = load i8, ptr %.sroa.012.0.ptr.i, align 1, !noalias !4286, !noundef !21
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !4286
  store i32 0, ptr %i.f, align 4, !noalias !4286
  %i.bo = call noundef zeroext i1 @_ZN19brotli_decompressor10bit_reader17BrotliSafeGetBits17hf10373635963314dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n, i32 noundef 4, ptr noalias noundef nonnull align 4 dereferenceable(4) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %7, i64 noundef range(i64 1, 0) %8)
  br i1 %i.bo, label %bb.x, label %bb.w, !prof !31

bb.w:                                             ; preds = %.lr.ph.i
  %i.bp = load i32, ptr %i.o, align 8, !alias.scope !4284, !noalias !4285, !noundef !21 ; 4 uses
  %i.bq = sub i32 64, %i.bp
  %i.br = icmp eq i32 %i.bp, 64
  br i1 %i.br, label %bb.z, label %bb.y

bb.x:                                             ; preds = %.lr.ph.i
  %.pre.i = load i32, ptr %i.f, align 4, !noalias !4286 ; 2 uses
  %.pre56.i = zext i32 %.pre.i to i64             ; 3 uses
  %i.bs = icmp ult i32 %.pre.i, 16
  br i1 %i.bs, label %..thread.i_crit_edge, label %bb.ab

..thread.i_crit_edge:                             ; preds = %bb.x
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr @464, i64 %.pre56.i
  %.pre183 = load i8, ptr %.phi.trans.insert, align 1, !noalias !4286
  %.pre184 = load i32, ptr %i.o, align 8, !alias.scope !4284, !noalias !4285
  %.pre185 = zext i8 %.pre183 to i32
  br label %.thread.i

bb.y:                                             ; preds = %bb.w
  %i.bt = load i64, ptr %i.n, align 8, !alias.scope !4284, !noalias !4285, !noundef !21
  %i.bu = and i32 %i.bp, 63
  %i.bv = zext nneg i32 %i.bu to i64
  %i.bw = lshr i64 %i.bt, %i.bv
  %i.bx = and i64 %i.bw, 15
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  %storemerge.i = phi i64 [ %i.bx, %bb.y ], [ 0, %bb.w ] ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr @464, i64 %storemerge.i
  %i.bz = load i8, ptr %i.by, align 1, !noalias !4286, !noundef !21
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = icmp ult i32 %i.bq, %i.ca
  br i1 %i.cb, label %bb.aa, label %.thread.i

bb.aa:                                            ; preds = %bb.z
  %indvars55.le.i = trunc i64 %.sroa.012.0.idx37.i to i32
  store i32 %indvars55.le.i, ptr %i.m, align 4, !alias.scope !4284, !noalias !4285
  store i32 %.sroa.02.040.i, ptr %i.k, align 8, !alias.scope !4284, !noalias !4285
  store i32 %.sroa.05.039.i, ptr %i.l, align 4, !alias.scope !4284, !noalias !4285
  store i8 4, ptr %i.j, align 8, !alias.scope !4284, !noalias !4285
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4286
  br label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

bb.ab:                                            ; preds = %bb.x
  call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.pre56.i, i64 noundef 16, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @466) #46
  unreachable

.thread.i:                                        ; preds = %..thread.i_crit_edge, %bb.z
  %.pre-phi = phi i32 [ %.pre185, %..thread.i_crit_edge ], [ %i.ca, %bb.z ]
  %i.cc = phi i32 [ %.pre184, %..thread.i_crit_edge ], [ %i.bp, %bb.z ]
  %.pre-phi59.i = phi i64 [ %.pre56.i, %..thread.i_crit_edge ], [ %storemerge.i, %bb.z ] ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr @465, i64 %.pre-phi59.i
  %i.ce = load i8, ptr %i.cd, align 1, !noalias !4286, !noundef !21 ; 3 uses
  %i.cf = add i32 %i.cc, %.pre-phi
  store i32 %i.cf, ptr %i.o, align 8, !alias.scope !4284, !noalias !4285
  %i.cg = zext i8 %i.bn to i64
  %i.ch = getelementptr inbounds nuw i8, ptr %i.p, i64 %i.cg
  store i8 %i.ce, ptr %i.ch, align 1, !alias.scope !4284, !noalias !4285
  %i.ci = shl nuw nsw i64 1, %.pre-phi59.i
  %i.cj = and i64 %i.ci, 4369
  %.not.i = icmp eq i64 %i.cj, 0
  br i1 %.not.i, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ad, %.thread.i
  %.sroa.05.1.i = phi i32 [ %.sroa.05.039.i, %.thread.i ], [ %i.co, %bb.ad ] ; 2 uses
  %.sroa.02.1.i = phi i32 [ %.sroa.02.040.i, %.thread.i ], [ %i.cp, %bb.ad ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4286
  %i.ck = icmp eq i64 %.sroa.012.0.add.i, 18
  br i1 %i.ck, label %.loopexit.i, label %.lr.ph.i

bb.ad:                                            ; preds = %.thread.i
  %i.cl = and i8 %i.ce, 31
  %i.cm = zext nneg i8 %i.cl to i32
  %i.cn = lshr i32 32, %i.cm
  %i.co = sub i32 %.sroa.05.039.i, %i.cn          ; 3 uses
  %i.cp = add i32 %.sroa.02.040.i, 1              ; 2 uses
  %i.cq = zext i8 %i.ce to i64
  %i.cr = getelementptr inbounds nuw [2 x i8], ptr %i.q, i64 %i.cq ; 2 uses
  %i.cs = load i16, ptr %i.cr, align 2, !alias.scope !4284, !noalias !4285, !noundef !21
  %i.ct = add i16 %i.cs, 1
  store i16 %i.ct, ptr %i.cr, align 2, !alias.scope !4284, !noalias !4285
  %i.cu = add i32 %i.co, -33
  %i.cv = icmp ult i32 %i.cu, -32
  br i1 %i.cv, label %bb.ae, label %bb.ac

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !4286
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %bb.ac, %bb.ae, %bb.u
  %.sroa.05.2.i = phi i32 [ %i.co, %bb.ae ], [ %i.bk, %bb.u ], [ %.sroa.05.1.i, %bb.ac ]
  %.sroa.02.2.i = phi i32 [ %i.cp, %bb.ae ], [ %i.bl, %bb.u ], [ %.sroa.02.1.i, %bb.ac ]
  %i.cw = icmp eq i32 %.sroa.02.2.i, 1
  %i.cx = icmp eq i32 %.sroa.05.2.i, 0
  %or.cond.i39 = select i1 %i.cw, i1 true, i1 %i.cx
  br i1 %or.cond.i39, label %_ZN19brotli_decompressor6decode25ReadCodeLengthCodeLengths17h07bb97429f460dcbE.exit, label %_ZN19brotli_decompressor6decode24ReadSimpleHuffmanSymbols17hef5991b62d915a8bE.exit

bb.af:                                            ; preds = %bb.b, %bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !4287)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !4288
end_hunk_0
begin_hunk_1_@"_ZN4core3ptr100drop_in_place$LT$flate2..zio..Writer$LT$actix_http..encoding..Writer$C$flate2..mem..Compress$GT$$GT$17h6f99091b2b2b6a15E":bb.a
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %.val5, i64 noundef range(i64 1, -9223372036854775807) 1) #45
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit"

"_ZN74_$LT$flate2..zio..Writer$LT$W$C$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5d742d4ed6915bcE.exit.thread": ; preds = %bb.a, %bb.f, %"_ZN74_$LT$flate2..zio..Writer$LT$W$C$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5d742d4ed6915bcE.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val7 = load ptr, ptr %i.n, align 8, !nonnull !21, !noundef !21 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5790)
  %i.o = getelementptr inbounds nuw i8, ptr %.val7, i64 65656
  %.val.i.i.i.i = load ptr, ptr %i.o, align 8, !alias.scope !5790, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i, i64 noundef 85196, i64 noundef 1) #45, !noalias !5790
  %i.p = getelementptr inbounds nuw i8, ptr %.val7, i64 65632
  %.val2.i.i.i.i = load ptr, ptr %i.p, align 8, !alias.scope !5790, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i, i64 noundef 4320, i64 noundef 2) #45, !noalias !5790
  %i.q = getelementptr inbounds nuw i8, ptr %.val7, i64 65560
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5791)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5792)
  %.val.i.i.i.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !5793, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i, i64 noundef 33026, i64 noundef 1) #45, !noalias !5793
  %i.r = getelementptr inbounds nuw i8, ptr %.val7, i64 65568
  %.val4.i.i.i.i.i.i = load ptr, ptr %i.r, align 8, !alias.scope !5793, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i.i.i.i.i.i, i64 noundef 65536, i64 noundef 2) #45, !noalias !5793
  %i.s = getelementptr inbounds nuw i8, ptr %.val7, i64 65576
  %.val2.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !alias.scope !5793, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val2.i.i.i.i.i.i, i64 noundef 65536, i64 noundef 2) #45, !noalias !5793
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7, i64 noundef 65712, i64 noundef 8) #45
  %.val = load i64, ptr %0, align 8               ; 2 uses
  %i.t = icmp eq i64 %.val, 0
  br i1 %i.t, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit13", label %bb.i

bb.i:                                             ; preds = %"_ZN74_$LT$flate2..zio..Writer$LT$W$C$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5d742d4ed6915bcE.exit.thread"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val4 = load ptr, ptr %i.u, align 8, !nonnull !21, !noundef !21
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #45
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit13"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit13": ; preds = %"_ZN74_$LT$flate2..zio..Writer$LT$W$C$D$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf5d742d4ed6915bcE.exit.thread", %bb.i
  ret void

bb.j:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h815f16dd4b32f068E.exit": ; preds = %bb.h, %"_ZN4core3ptr77drop_in_place$LT$core..option..Option$LT$actix_http..encoding..Writer$GT$$GT$17hd17998513d010642E.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..IntoIter$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h492347d9c41c84ccE"(ptr noalias noundef nonnull align 8 dereferenceable(184) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5805)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5805, !noundef !21 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.promoted.i = load i64, ptr %i.b, align 8, !alias.scope !5805 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.g = load i64, ptr %i.f, align 8, !alias.scope !5805
  %.fr2.i = freeze i64 %i.g
  %i.h = icmp ugt i64 %.fr2.i, 4
  %i.i = load ptr, ptr %0, align 8, !alias.scope !5805, !nonnull !21
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5805
  %i.m = icmp eq i64 %.promoted.i, %i.d           ; 2 uses
  br i1 %i.h, label %.split.us.i.preheader, label %.split.i.preheader

.split.i.preheader:                               ; preds = %bb.a
  br i1 %i.m, label %.loopexit, label %.lr.ph

.split.us.i.preheader:                            ; preds = %bb.a
  br i1 %i.m, label %.loopexit, label %.lr.ph4

.lr.ph4:                                          ; preds = %.split.us.i.preheader, %.noexc
  %i.n = phi i64 [ %i.o, %.noexc ], [ %.promoted.i, %.split.us.i.preheader ] ; 2 uses
  %i.o = add i64 %i.n, 1                          ; 3 uses
  store i64 %i.o, ptr %i.b, align 8, !alias.scope !5805
  %i.p = getelementptr inbounds nuw [40 x i8], ptr %i.i, i64 %i.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !5805
  %.pre4.i = load i8, ptr %i.e, align 8, !range !22, !noalias !5805
  %i.q = icmp eq i8 %.pre4.i, 2
  br i1 %i.q, label %.loopexit, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.us.i"

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.us.i": ; preds = %.lr.ph4
  call void @llvm.experimental.noalias.scope.decl(metadata !5806)
  call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  call void @llvm.experimental.noalias.scope.decl(metadata !5808)
  call void @llvm.experimental.noalias.scope.decl(metadata !5809)
  %i.r = load ptr, ptr %i.a, align 8, !alias.scope !5810, !noalias !5805, !nonnull !21, !align !32, !noundef !21
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.t = load ptr, ptr %i.s, align 8, !noalias !5811, !nonnull !21, !noundef !21
  %i.u = load ptr, ptr %i.k, align 8, !alias.scope !5810, !noalias !5805, !noundef !21
  %i.v = load i64, ptr %i.l, align 8, !alias.scope !5810, !noalias !5805, !noundef !21
  invoke void %i.t(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.u, i64 noundef %i.v)
          to label %.noexc unwind label %.loopexit2, !inline_history !5804

.noexc:                                           ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.us.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5805
  %i.w = icmp eq i64 %i.o, %i.d
  br i1 %i.w, label %.loopexit, label %.lr.ph4

.lr.ph:                                           ; preds = %.split.i.preheader, %.noexc1
  %i.x = phi i64 [ %i.y, %.noexc1 ], [ %.promoted.i, %.split.i.preheader ] ; 2 uses
  %i.y = add i64 %i.x, 1                          ; 3 uses
  store i64 %i.y, ptr %i.b, align 8, !alias.scope !5805
  %i.z = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %i.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.z, i64 40, i1 false)
  %.pre.i = load i8, ptr %i.e, align 8, !range !22, !noalias !5805
  %i.aa = icmp eq i8 %.pre.i, 2
  br i1 %i.aa, label %.loopexit, label %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.i"

"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.i": ; preds = %.lr.ph
  call void @llvm.experimental.noalias.scope.decl(metadata !5806)
  call void @llvm.experimental.noalias.scope.decl(metadata !5807)
  call void @llvm.experimental.noalias.scope.decl(metadata !5808)
  call void @llvm.experimental.noalias.scope.decl(metadata !5809)
  %i.ab = load ptr, ptr %i.a, align 8, !alias.scope !5810, !noalias !5805, !nonnull !21, !align !32, !noundef !21
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 32
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !5811, !nonnull !21, !noundef !21
  %i.ae = load ptr, ptr %i.k, align 8, !alias.scope !5810, !noalias !5805, !noundef !21
  %i.af = load i64, ptr %i.l, align 8, !alias.scope !5810, !noalias !5805, !noundef !21
  invoke void %i.ad(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef %i.ae, i64 noundef %i.af)
          to label %.noexc1 unwind label %.loopexit.split-lp, !inline_history !5804

.noexc1:                                          ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5805
  %i.ag = icmp eq i64 %i.y, %i.d
  br i1 %i.ag, label %.loopexit, label %.lr.ph

.loopexit2:                                       ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.us.i"
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

.loopexit.split-lp:                               ; preds = %"_ZN4core3ptr81drop_in_place$LT$core..option..Option$LT$http..header..value..HeaderValue$GT$$GT$17h7de294d05dca59fdE.exit.i"
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.b:                                             ; preds = %.loopexit.split-lp, %.loopexit2
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit2 ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef align 8 dereferenceable(168) %0) #47
          to label %bb.d unwind label %bb.c

.loopexit:                                        ; preds = %.noexc1, %.lr.ph, %.noexc, %.lr.ph4, %.split.i.preheader, %.split.us.i.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5805
  call fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef align 8 dereferenceable(168) %0)
  ret void

bb.c:                                             ; preds = %bb.b
  %i.ah = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.d:                                             ; preds = %bb.b
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr100drop_in_place$LT$smallvec..SmallVec$LT$$u5b$http..header..value..HeaderValue$u3b$$u20$4$u5d$$GT$$GT$17h6ea4f9ddcde586a1E"(ptr noalias noundef nonnull align 8 dereferenceable(168) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5844)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !5844, !noundef !21 ; 7 uses
  %i.c = icmp ugt i64 %i.b, 4
  br i1 %i.c, label %bb.d, label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.preheader"

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.preheader": ; preds = %bb.a
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde3db9b99288838E.exit", label %.lr.ph

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i": ; preds = %.lr.ph
  %i.e = icmp eq i64 %i.g, %i.b
  br i1 %i.e, label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde3db9b99288838E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.preheader", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i"
  %.sroa.0.0.i.i6 = phi i64 [ %i.g, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i" ], [ 0, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.preheader" ] ; 2 uses
  %i.f = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.0.i.i6 ; 4 uses
  %i.g = add nuw nsw i64 %.sroa.0.0.i.i6, 1       ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5845)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5846)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5847)
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !5848, !nonnull !21, !align !32, !noundef !21
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !noalias !5849, !nonnull !21, !noundef !21
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5848, !noundef !21
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !5848, !noundef !21
  invoke void %i.j(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.k, ptr noundef %i.m, i64 noundef %i.o)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i" unwind label %bb.b, !inline_history !2

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i": ; preds = %.lr.ph8
  %i.p = add i64 %.sroa.0.1.i.i7, 1               ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.b
  br i1 %i.q, label %common.resume.i, label %.lr.ph8

bb.b:                                             ; preds = %.lr.ph
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.s = icmp eq i64 %i.g, %i.b
  br i1 %i.s, label %common.resume.i, label %.lr.ph8

.lr.ph8:                                          ; preds = %bb.b, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i"
  %.sroa.0.1.i.i7 = phi i64 [ %i.p, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i" ], [ %i.g, %bb.b ] ; 2 uses
  %i.t = getelementptr inbounds nuw [40 x i8], ptr %0, i64 %.sroa.0.1.i.i7 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5850)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5851)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5852)
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !5853, !nonnull !21, !align !32, !noundef !21
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.w = load ptr, ptr %i.v, align 8, !noalias !5854, !nonnull !21, !noundef !21
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !5853, !noundef !21
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !5853, !noundef !21
  invoke void %i.w(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.x, ptr noundef %i.z, i64 noundef %i.ab)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i" unwind label %bb.c, !inline_history !2

common.resume.i:                                  ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i", %bb.b, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h65f51483acbff0bdE.exit.i.i"
  %common.resume.op.i = phi { ptr, i32 } [ %i.au, %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h65f51483acbff0bdE.exit.i.i" ], [ %i.r, %bb.b ], [ %i.r, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i" ]
  resume { ptr, i32 } %common.resume.op.i

bb.c:                                             ; preds = %.lr.ph8
  %i.ac = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48
  unreachable

bb.d:                                             ; preds = %bb.a
  %i.ad = load ptr, ptr %0, align 8, !alias.scope !5844, !nonnull !21, !noundef !21 ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !5844, !noundef !21 ; 4 uses
  %i.ag = icmp eq i64 %i.af, 0
  br i1 %i.ag, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h13472ca4ef41192aE.exit.i", label %.lr.ph10

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i.i": ; preds = %.lr.ph10
  %i.ah = icmp eq i64 %i.aj, %i.af
  br i1 %i.ah, label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h13472ca4ef41192aE.exit.i", label %.lr.ph10

.lr.ph10:                                         ; preds = %bb.d, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i.i"
  %.sroa.0.0.i.i.i.i9 = phi i64 [ %i.aj, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i.i" ], [ 0, %bb.d ] ; 2 uses
  %i.ai = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.0.i.i.i.i9 ; 4 uses
  %i.aj = add i64 %.sroa.0.0.i.i.i.i9, 1          ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5855)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5856)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5857)
  %i.ak = load ptr, ptr %i.ai, align 8, !alias.scope !5858, !noalias !5859, !nonnull !21, !align !32, !noundef !21
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !noalias !5860, !nonnull !21, !noundef !21
  %i.an = getelementptr inbounds nuw i8, ptr %i.ai, i64 24
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !5858, !noalias !5859, !noundef !21
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ar = load i64, ptr %i.aq, align 8, !alias.scope !5858, !noalias !5859, !noundef !21
  invoke void %i.am(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.an, ptr noundef %i.ap, i64 noundef %i.ar)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i.i" unwind label %bb.e, !noalias !5859, !inline_history !2

"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i.i.i": ; preds = %.lr.ph12
  %i.as = add i64 %.sroa.0.1.i.i.i.i11, 1         ; 2 uses
  %i.at = icmp eq i64 %i.as, %i.af
  br i1 %i.at, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h65f51483acbff0bdE.exit.i.i", label %.lr.ph12

bb.e:                                             ; preds = %.lr.ph10
  %i.au = landingpad { ptr, i32 }
          cleanup
  %i.av = icmp eq i64 %i.aj, %i.af
  br i1 %i.av, label %"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h65f51483acbff0bdE.exit.i.i", label %.lr.ph12

.lr.ph12:                                         ; preds = %bb.e, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i.i.i"
  %.sroa.0.1.i.i.i.i11 = phi i64 [ %i.as, %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i.i.i" ], [ %i.aj, %bb.e ] ; 2 uses
  %i.aw = getelementptr inbounds nuw [40 x i8], ptr %i.ad, i64 %.sroa.0.1.i.i.i.i11 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5861)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5862)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5863)
  %i.ax = load ptr, ptr %i.aw, align 8, !alias.scope !5864, !noalias !5859, !nonnull !21, !align !32, !noundef !21
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !5865, !nonnull !21, !noundef !21
  %i.ba = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  %i.bb = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %i.bc = load ptr, ptr %i.bb, align 8, !alias.scope !5864, !noalias !5859, !noundef !21
  %i.bd = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !5864, !noalias !5859, !noundef !21
  invoke void %i.az(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ba, ptr noundef %i.bc, i64 noundef %i.be)
          to label %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i.i.i" unwind label %bb.f, !noalias !5859, !inline_history !2

bb.f:                                             ; preds = %.lr.ph12
  %i.bf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #48, !noalias !5859
  unreachable

"_ZN4core3ptr83drop_in_place$LT$alloc..raw_vec..RawVec$LT$http..header..value..HeaderValue$GT$$GT$17h65f51483acbff0bdE.exit.i.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit7.i.i.i.i", %bb.e
  %i.bg = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bg, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !5859
  br label %common.resume.i

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h13472ca4ef41192aE.exit.i": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.i.i", %bb.d
  %i.bh = mul nuw i64 %i.b, 40
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.bh, i64 noundef range(i64 1, -9223372036854775807) 8) #45, !noalias !5859
  br label %"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde3db9b99288838E.exit"

"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbde3db9b99288838E.exit": ; preds = %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i", %"_ZN4core3ptr53drop_in_place$LT$http..header..value..HeaderValue$GT$17h08c1d0c356663b0dE.exit.i.i.preheader", %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17h13472ca4ef41192aE.exit.i"
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define internal fastcc void @"_ZN4core3ptr101drop_in_place$LT$brotli..enc..prior_eval..PriorEval$LT$alloc_stdlib..std_alloc..StandardAlloc$GT$$GT$17h77fda434bea71e51E"(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(296) %0) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  %.val10 = load i64, ptr %i.a, align 8, !noundef !21 ; 2 uses
  %i.b = icmp eq i64 %.val10, 0
  br i1 %i.b, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val = load ptr, ptr %i.c, align 8, !nonnull !21, !noundef !21
  %i.d = shl nuw nsw i64 %.val10, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.d, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i", %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 120
  %.val24 = load i64, ptr %i.e, align 8, !noundef !21 ; 2 uses
  %i.f = icmp eq i64 %.val24, 0
  br i1 %i.f, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit33", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.val23 = load ptr, ptr %i.g, align 8, !nonnull !21, !noundef !21
  %i.h = shl nuw nsw i64 %.val24, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23, i64 noundef %i.h, i64 noundef 2) #45
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit33"

"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit33": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i32", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit"
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.val20 = load i64, ptr %i.i, align 8, !noundef !21 ; 2 uses
  %i.j = icmp eq i64 %.val20, 0
  br i1 %i.j, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit37", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i36"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i36": ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit33"
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 128
  %.val19 = load ptr, ptr %i.k, align 8, !nonnull !21, !noundef !21
  %i.l = shl nuw nsw i64 %.val20, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val19, i64 noundef %i.l, i64 noundef 2) #45
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit37"

"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit37": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i36", %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit33"
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val16 = load i64, ptr %i.m, align 8, !noundef !21 ; 2 uses
  %i.n = icmp eq i64 %.val16, 0
  br i1 %i.n, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit41", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i40"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i40": ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit37"
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.val15 = load ptr, ptr %i.o, align 8, !nonnull !21, !noundef !21
  %i.p = shl nuw nsw i64 %.val16, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val15, i64 noundef %i.p, i64 noundef 2) #45
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit41"

"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit41": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i40", %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit37"
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5868)
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 168
  %.val9.i = load i64, ptr %i.q, align 8, !alias.scope !5868, !noundef !21 ; 2 uses
  %i.r = icmp eq i64 %.val9.i, 0
  br i1 %i.r, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit41"
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val8.i = load ptr, ptr %i.s, align 8, !alias.scope !5868, !nonnull !21, !noundef !21
  %i.t = shl nuw nsw i64 %.val9.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.i, i64 noundef %i.t, i64 noundef 2) #45, !noalias !5868
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.i"

"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit41"
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.val9.1.i = load i64, ptr %i.u, align 8, !alias.scope !5868, !noundef !21 ; 2 uses
  %i.v = icmp eq i64 %.val9.1.i, 0
  br i1 %i.v, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.1.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.1.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.1.i": ; preds = %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.i"
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.val8.1.i = load ptr, ptr %i.w, align 8, !alias.scope !5868, !nonnull !21, !noundef !21
  %i.x = shl nuw nsw i64 %.val9.1.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val8.1.i, i64 noundef %i.x, i64 noundef 2) #45, !noalias !5868
  br label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.1.i"

"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.1.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.1.i", %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.i"
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 200
  %.val9.2.i = load i64, ptr %i.y, align 8, !alias.scope !5868, !noundef !21 ; 2 uses
  %i.z = icmp eq i64 %.val9.2.i, 0
  br i1 %i.z, label %"_ZN4core3ptr94drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..Compat16x16$GT$$GT$17h970f02b97e180219E.exit.2.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.2.i"

end_hunk_1
begin_hunk_2_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i": ; preds = %.thread93.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i"
  %.pre-phi843.i.i = phi i64 [ %.pre842.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %i.hs, %.thread93.i.i ]
  %.pn230.pn.pn.pn.pn101.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %i.iq, %.thread93.i.i ]
  %.sroa.016.0100.i.i = phi ptr [ %.sroa.016.1.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i" ], [ %.sroa.10.0.i.i.i.i.i, %.thread93.i.i ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i, i64 noundef %.pre-phi843.i.i, i64 noundef 8) #45, !noalias !9212
  br label %bb.do

.thread93.i.i:                                    ; preds = %bb.ae
  %i.iq = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i165.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i": ; preds = %bb.bn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i", %bb.ag
  %.sroa.12.0.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.12.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.12.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.12.3152.i.i, %bb.bn ] ; 2 uses
  %.sroa.026.0.i.i = phi ptr [ %i.iu, %bb.ag ], [ %.sroa.026.1.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.026.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.026.3153.i.i, %bb.bn ] ; 2 uses
  %.sroa.14.1.i.i = phi i64 [ %i.hr, %bb.ag ], [ %.sroa.14.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.14.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.14.4154.i.i, %bb.bn ] ; 2 uses
  %.sroa.016.1.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ag ], [ %.sroa.016.2.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.sroa.016.2.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.sroa.016.4155.i.i, %bb.bn ]
  %.pn230.pn.pn.pn.i.i = phi { ptr, i32 } [ %i.it, %bb.ag ], [ %.pn230.pn.pn.i.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i" ], [ %.pn230.pn.pn.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i" ], [ %.pn230156.i.i, %bb.bn ] ; 2 uses
  %i.ir = icmp eq i64 %.sroa.12.0.i.i, 0
  br i1 %i.ir, label %bb.af, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"
  %i.is = shl nuw nsw i64 %.sroa.12.0.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i, i64 noundef %i.is, i64 noundef 4) #45, !noalias !9212
  br label %bb.af

bb.ag:                                            ; preds = %bb.ai
  %i.it = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i: ; preds = %bb.ad, %._crit_edge.i.i.i.i.i
  %.sroa.10.0.i.i418.i.i = phi i64 [ %i.io, %bb.ad ], [ 4, %._crit_edge.i.i.i.i.i ]
  %i.iu = inttoptr i64 %.sroa.10.0.i.i418.i.i to ptr ; 4 uses
  %.sroa.0.0.i422.i.i = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i, i64 64) ; 17 uses
  %i.iv = mul nuw nsw i64 %.sroa.0.0.i422.i.i, 1040 ; 3 uses
  %i.iw = icmp eq i64 %.sroa.0.0.i.i, 0
  br i1 %i.iw, label %._crit_edge.i.i.i429.thread.i.i, label %bb.ah

bb.ah:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9216
  %i.ix = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.iv, i64 noundef range(i64 1, 9) 8) #45, !noalias !9216 ; 5 uses
  %i.iy = icmp eq ptr %i.ix, null
  br i1 %i.iy, label %bb.ai, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"

bb.ai:                                            ; preds = %bb.ah
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.iv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i unwind label %bb.ag, !noalias !9212

.noexc440.i.i:                                    ; preds = %bb.ai
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i": ; preds = %bb.ah
  %.not1115.i.i = icmp eq i64 %.sroa.0.0.i.i, 1
  br i1 %.not1115.i.i, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.preheader

.lr.ph.i.i.i434.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"
  %i.iz = add nsw i64 %.sroa.0.0.i422.i.i, -1     ; 2 uses
  %i.ja = add nsw i64 %.sroa.0.0.i422.i.i, -2
  %xtraiter4541 = and i64 %i.iz, 7                ; 3 uses
  %i.jb = icmp ult i64 %i.ja, 7
  br i1 %i.jb, label %.lr.ph.i.i.i434.i.i.epil.preheader, label %.lr.ph.i.i.i434.i.i.preheader.new

.lr.ph.i.i.i434.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i434.i.i.preheader
  %unroll_iter4546 = and i64 %i.iz, -8
  br label %.lr.ph.i.i.i434.i.i

._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i
  %lcmp.mod4543.not = icmp eq i64 %xtraiter4541, 0
  br i1 %lcmp.mod4543.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil.preheader

.lr.ph.i.i.i434.i.i.epil.preheader:               ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.preheader
  %.sroa.0.08.i.i.i435.i.i.epil.init = phi ptr [ %i.ix, %.lr.ph.i.i.i434.i.i.preheader ], [ %i.jk, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4545 = icmp ne i64 %xtraiter4541, 0
  tail call void @llvm.assume(i1 %lcmp.mod4545)
  br label %.lr.ph.i.i.i434.i.i.epil

.lr.ph.i.i.i434.i.i.epil:                         ; preds = %.lr.ph.i.i.i434.i.i.epil, %.lr.ph.i.i.i434.i.i.epil.preheader
  %.sroa.0.08.i.i.i435.i.i.epil = phi ptr [ %i.jc, %.lr.ph.i.i.i434.i.i.epil ], [ %.sroa.0.08.i.i.i435.i.i.epil.init, %.lr.ph.i.i.i434.i.i.epil.preheader ] ; 3 uses
  %epil.iter4542 = phi i64 [ %epil.iter4542.next, %.lr.ph.i.i.i434.i.i.epil ], [ 0, %.lr.ph.i.i.i434.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i.epil, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !9217
  %i.jc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4542.next = add i64 %epil.iter4542, 1 ; 2 uses
  %epil.iter4542.cmp.not = icmp eq i64 %epil.iter4542.next, %xtraiter4541
  br i1 %epil.iter4542.cmp.not, label %._crit_edge.thread.i.i.i431.i.i, label %.lr.ph.i.i.i434.i.i.epil, !llvm.loop !8372

._crit_edge.thread.i.i.i431.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i = phi ptr [ %i.ix, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i426.i.i" ], [ %i.jk, %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa ], [ %i.jc, %.lr.ph.i.i.i434.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i432.i.i, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !9217
  br label %._crit_edge.i.i.i429.thread.i.i

.lr.ph.i.i.i434.i.i:                              ; preds = %.lr.ph.i.i.i434.i.i, %.lr.ph.i.i.i434.i.i.preheader.new
  %.sroa.0.08.i.i.i435.i.i = phi ptr [ %i.ix, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %i.jk, %.lr.ph.i.i.i434.i.i ] ; 17 uses
  %niter4547 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i.preheader.new ], [ %niter4547.next.7, %.lr.ph.i.i.i434.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i435.i.i, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !9217
  %i.jd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jd, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !9217
  %i.je = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.je, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !9217
  %i.jf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jf, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !9217
  %i.jg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jg, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !9217
  %i.jh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jh, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !9217
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ji, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !9217
  %i.jj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.jj, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !9217
  %i.jk = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i, i64 8320 ; 3 uses
  %niter4547.next.7 = add i64 %niter4547, 8       ; 2 uses
  %niter4547.ncmp.7 = icmp eq i64 %niter4547.next.7, %unroll_iter4546
  br i1 %niter4547.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i

._crit_edge.i.i.i429.thread.i.i:                  ; preds = %._crit_edge.thread.i.i.i431.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i
  %.sroa.10.0.i.i.i427905.i.i = phi ptr [ %i.ix, %._crit_edge.thread.i.i.i431.i.i ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9218
  %i.jl = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !9218 ; 16 uses
  %i.jm = icmp eq ptr %i.jl, null
  br i1 %i.jm, label %bb.aj, label %bb.al

bb.aj:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i unwind label %bb.ak, !noalias !9212

.noexc444.i.i:                                    ; preds = %bb.aj
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i", %bb.ak
  %.sroa.1335.0.i.i = phi i64 [ %.sroa.0.0.i422.i.i, %bb.ak ], [ %.sroa.1335.1124200.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.034.0.i.i = phi ptr [ %.sroa.10.0.i.i.i427905.i.i, %bb.ak ], [ %.sroa.034.1125198.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.12.1.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.12.3126196.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.026.1.i.i = phi ptr [ %i.iu, %bb.ak ], [ %.sroa.026.3127194.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.14.2.i.i = phi i64 [ %i.hr, %bb.ak ], [ %.sroa.14.4128192.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.sroa.016.2.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i, %bb.ak ], [ %.sroa.016.4129190.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %.pn230.pn.pn.i.i = phi { ptr, i32 } [ %i.jp, %bb.ak ], [ %.pn230.pn204.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i" ] ; 2 uses
  %i.jn = icmp eq i64 %.sroa.1335.0.i.i, 0
  br i1 %i.jn, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i"
  %i.jo = mul nuw nsw i64 %.sroa.1335.0.i.i, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i, i64 noundef %i.jo, i64 noundef 8) #45, !noalias !9212
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit446.i.i"

bb.ak:                                            ; preds = %bb.aj
  %i.jp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i"

bb.al:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.jl, i8 0, i64 32784, i1 false), !noalias !9212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !9212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.ao, i8 0, i64 256, i1 false), !noalias !9212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !9212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.an, i8 0, i64 256, i1 false), !noalias !9212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !9212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.am, i8 0, i64 256, i1 false), !noalias !9212
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al), !noalias !9212
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.al, i8 0, i64 256, i1 false), !noalias !9212
  br label %bb.dj

.split.i.i:                                       ; preds = %bb.dm, %._crit_edge571.i.loopexit.i
  %indvars.iv.i.i = phi i64 [ %indvars.iv.next.i.i, %._crit_edge571.i.loopexit.i ], [ %.sroa.0.0.i.i, %bb.dm ] ; 2 uses
  %.sroa.0.0582.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i, %._crit_edge571.i.loopexit.i ], [ 0, %bb.dm ] ; 4 uses
  %.sroa.012.0581.i.i = phi i64 [ %.sroa.012.1.i.i, %._crit_edge571.i.loopexit.i ], [ %i.hr, %bb.dm ] ; 7 uses
  %.sroa.018.0580.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i, %._crit_edge571.i.loopexit.i ], [ 0, %bb.dm ] ; 4 uses
  %.sroa.023.0579.i.i = phi i64 [ %.sroa.023.1.i.i, %._crit_edge571.i.loopexit.i ], [ %i.hr, %bb.dm ] ; 7 uses
  %.sroa.029.0578.i.i = phi i64 [ %i.ux, %._crit_edge571.i.loopexit.i ], [ 0, %bb.dm ] ; 2 uses
  %.sroa.043.0577.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %._crit_edge571.i.loopexit.i ], [ 0, %bb.dm ]
  %.sroa.047.1576.i.i = phi i64 [ %i.uy, %._crit_edge571.i.loopexit.i ], [ 0, %bb.dm ] ; 4 uses
  %.sroa.016.3575.i.i = phi ptr [ %.sroa.016.7.i.i, %._crit_edge571.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i, %bb.dm ] ; 9 uses
  %.sroa.14.3574.i.i = phi i64 [ %.sroa.14.7.i.i, %._crit_edge571.i.loopexit.i ], [ %i.hr, %bb.dm ] ; 10 uses
  %.sroa.026.2573.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge571.i.loopexit.i ], [ %i.iu, %bb.dm ] ; 11 uses
  %.sroa.12.2572.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge571.i.loopexit.i ], [ %i.hr, %bb.dm ] ; 12 uses
  %i.jq = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i, i64 1)
  %umax826.i.i = tail call i64 @llvm.umin.i64(i64 %i.jq, i64 64)
  %i.jr = sub nuw i64 %.sroa.0.0.i.i, %.sroa.047.1576.i.i
  %.sroa.0.0.i447.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.jr, i64 64) ; 3 uses
  br label %.lr.ph560.i.i

.thread164.loopexit.i.i:                          ; preds = %._crit_edge.i.i
  %lpad.loopexit258.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread164.loopexit.split-lp.loopexit.i.i:        ; preds = %._crit_edge561.i.loopexit.i
  %lpad.loopexit261.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i: ; preds = %.invoke3848, %.invoke3846, %.invoke.i.i, %bb.ct, %bb.cl, %bb.at, %bb.ap
  %.sroa.11.1.ph.ph.ph.i.i = phi i64 [ 2049, %bb.ap ], [ %.sroa.11.2.i.i, %bb.at ], [ 2049, %.invoke.i.i ], [ 2049, %.invoke3846 ], [ 2049, %bb.cl ], [ 2049, %bb.ct ], [ 2049, %.invoke3848 ]
  %.sroa.044.1.ph.ph.ph.i.i = phi ptr [ %i.jl, %bb.ap ], [ %.sroa.044.2.i.i, %bb.at ], [ %i.jl, %.invoke.i.i ], [ %i.jl, %.invoke3846 ], [ %i.jl, %bb.cl ], [ %i.jl, %bb.ct ], [ %i.jl, %.invoke3848 ]
  %.sroa.1335.2.ph.ph.ph.i.i = phi i64 [ 0, %bb.ap ], [ 0, %bb.at ], [ %.sroa.0.0.i422.i.i, %.invoke.i.i ], [ %.sroa.0.0.i422.i.i, %.invoke3846 ], [ %.sroa.0.0.i422.i.i, %bb.cl ], [ %.sroa.0.0.i422.i.i, %bb.ct ], [ %.sroa.0.0.i422.i.i, %.invoke3848 ]
  %.sroa.034.2.ph.ph.ph.i.i = phi ptr [ inttoptr (i64 8 to ptr), %bb.ap ], [ inttoptr (i64 8 to ptr), %bb.at ], [ %.sroa.10.0.i.i.i427905.i.i, %.invoke.i.i ], [ %.sroa.10.0.i.i.i427905.i.i, %.invoke3846 ], [ %.sroa.10.0.i.i.i427905.i.i, %bb.cl ], [ %.sroa.10.0.i.i.i427905.i.i, %bb.ct ], [ %.sroa.10.0.i.i.i427905.i.i, %.invoke3848 ]
  %.sroa.12.4.ph.ph.ph.i.i = phi i64 [ %.sroa.12.5.i.i, %bb.ap ], [ %.sroa.12.5.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.12.2572.i.i, %.invoke3846 ], [ %.sroa.12.2572.i.i, %bb.cl ], [ %.sroa.12.2572.i.i, %bb.ct ], [ %.sroa.12.5.i.i, %.invoke3848 ]
  %.sroa.026.4.ph.ph.ph.i.i = phi ptr [ %.sroa.026.5.i.i, %bb.ap ], [ %.sroa.026.5.i.i, %bb.at ], [ %i.iu, %.invoke.i.i ], [ %.sroa.026.2573.i.i, %.invoke3846 ], [ %.sroa.026.2573.i.i, %bb.cl ], [ %.sroa.026.2573.i.i, %bb.ct ], [ %.sroa.026.5.i.i, %.invoke3848 ]
  %.sroa.14.5.ph.ph.ph.i.i = phi i64 [ %.sroa.14.7.i.i, %bb.ap ], [ %.sroa.14.7.i.i, %bb.at ], [ %i.hr, %.invoke.i.i ], [ %.sroa.14.3574.i.i, %.invoke3846 ], [ %.sroa.14.3574.i.i, %bb.cl ], [ %.sroa.14.7.i.i, %bb.ct ], [ %.sroa.14.7.i.i, %.invoke3848 ]
  %.sroa.016.5.ph.ph.ph.i.i = phi ptr [ %.sroa.016.7.i.i, %bb.ap ], [ %.sroa.016.7.i.i, %bb.at ], [ %.sroa.10.0.i.i.i.i.i, %.invoke.i.i ], [ %.sroa.016.3575.i.i, %.invoke3846 ], [ %.sroa.016.3575.i.i, %bb.cl ], [ %.sroa.016.7.i.i, %bb.ct ], [ %.sroa.016.7.i.i, %.invoke3848 ]
  %lpad.loopexit.split-lp262.i.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.am:                                            ; preds = %bb.ay, %._crit_edge587.i.i
  %.sroa.11.1.ph160.i.i = phi i64 [ %.sroa.11.2.i.i, %._crit_edge587.i.i ], [ 0, %bb.ay ]
  %.sroa.044.1.ph161.i.i = phi ptr [ %.sroa.044.2.i.i, %._crit_edge587.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %.sroa.12.4.ph162.i.i = phi i64 [ %.sroa.12.5.i.i, %._crit_edge587.i.i ], [ 0, %bb.ay ]
  %.sroa.026.4.ph163.i.i = phi ptr [ %.sroa.026.5.i.i, %._crit_edge587.i.i ], [ inttoptr (i64 4 to ptr), %bb.ay ]
  %lpad.thr_comm.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i

bb.an:                                            ; preds = %._crit_edge571.i.loopexit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427905.i.i, i64 noundef %i.iv, i64 noundef 8) #45, !noalias !9212
  %i.js = shl i64 %i.ux, 6
  %i.jt = lshr i64 %i.ux, 1
  %i.ju = mul i64 %i.jt, %i.ux
  %.sroa.0.0.i448.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ju, i64 %i.js) ; 5 uses
  %i.jv = add nuw i64 %.sroa.0.0.i448.i.i, 1      ; 2 uses
  %i.jw = icmp ugt i64 %.sroa.0.0.i448.i.i, 2048
  br i1 %i.jw, label %bb.ao, label %bb.aq

bb.ao:                                            ; preds = %bb.an
  %i.jx = shl i64 %i.jv, 4                        ; 5 uses
  %i.jy = icmp ugt i64 %.sroa.0.0.i448.i.i, 1152921504606846974
  %i.jz = icmp ugt i64 %i.jx, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i = or i1 %i.jy, %i.jz
  br i1 %or.cond.i.i.i.i.i449.i.i, label %bb.ap, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i: ; preds = %bb.ao
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9219
  %i.ka = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.jx, i64 noundef range(i64 1, 9) 4) #45, !noalias !9219 ; 5 uses
  %i.kb = icmp eq ptr %i.ka, null
  br i1 %i.kb, label %bb.ap, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i"

bb.ap:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i, %bb.ao
  %.sroa.4.0.ph.i.i.i455.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i ], [ 0, %bb.ao ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i, i64 %i.jx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.noexc456.i.i:                                    ; preds = %bb.ap
  unreachable

bb.aq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i", %bb.an
  %.sroa.11.2.i.i = phi i64 [ %i.jv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ 2049, %bb.an ] ; 4 uses
  %.sroa.044.2.i.i = phi ptr [ %i.ka, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i" ], [ %i.jl, %bb.an ] ; 4 uses
  %i.kc = shl i64 %i.ux, 2                        ; 12 uses
  %i.kd = icmp ugt i64 %i.ux, 4611686018427387903
  %i.ke = icmp ugt i64 %i.kc, 9223372036854775804
  %or.cond.i.i.i.i458.i.i = or i1 %i.kd, %i.ke
  br i1 %or.cond.i.i.i.i458.i.i, label %bb.at, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i: ; preds = %bb.aq
  %i.kf = icmp eq i64 %i.kc, 0                    ; 2 uses
  br i1 %i.kf, label %bb.au, label %bb.ar

bb.ar:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9220
  %i.kg = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9220 ; 2 uses
  %i.kh = icmp eq ptr %i.kg, null
  br i1 %i.kh, label %bb.at, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.ki = ptrtoint ptr %i.kg to i64
  br label %bb.au

bb.at:                                            ; preds = %bb.ar, %bb.aq
  %.sroa.4.0.ph.i.i461.i.i = phi i64 [ 4, %bb.ar ], [ 0, %bb.aq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.noexc462.i.i:                                    ; preds = %bb.at
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i
  %i.kj = add nsw i64 %i.jx, -16                  ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ka, i8 0, i64 %i.kj, i1 false), !noalias !9221
  %i.kk = getelementptr i8, ptr %i.ka, i64 %i.jx  ; 2 uses
  %scevgep11.i451.i.i = getelementptr i8, ptr %i.ka, i64 %i.kj
  store i32 0, ptr %scevgep11.i451.i.i, align 4, !noalias !9221
  %.sroa.55.0..sroa_idx.i452.i.i = getelementptr i8, ptr %i.kk, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i, align 4, !noalias !9221
  %.sroa.67.0..sroa_idx.i453.i.i = getelementptr i8, ptr %i.kk, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i, align 4, !noalias !9221
  %i.kl = icmp samesign ult i64 %.sroa.0.0.i448.i.i, 576460752303423487
  tail call void @llvm.assume(i1 %i.kl)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.jl, i64 noundef 32784, i64 noundef 4) #45, !noalias !9212
  br label %bb.aq

bb.au:                                            ; preds = %bb.as, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i
  %.sroa.10.0.i.i460.i.i = phi i64 [ %i.ki, %bb.as ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i ]
  %i.km = inttoptr i64 %.sroa.10.0.i.i460.i.i to ptr ; 13 uses
  %i.kn = icmp samesign ult i64 %i.ux, 2305843009213693952
  tail call void @llvm.assume(i1 %i.kn)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.km) ]
  %i.ko = getelementptr inbounds nuw i8, ptr %i.km, i64 %i.kc
  %i.kp = icmp eq i64 %i.ux, 0                    ; 3 uses
  br i1 %i.kp, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader

.lr.ph586.i.i.preheader:                          ; preds = %bb.au
  %i.kq = add nsw i64 %i.kc, -4                   ; 2 uses
  %i.kr = lshr exact i64 %i.kq, 2
  %i.ks = add nuw nsw i64 %i.kr, 1                ; 2 uses
  %min.iters.check3631 = icmp ult i64 %i.kq, 28
  br i1 %min.iters.check3631, label %.lr.ph586.i.i.preheader4336, label %vector.ph3632

vector.ph3632:                                    ; preds = %.lr.ph586.i.i.preheader
  %n.vec3633 = and i64 %i.ks, 9223372036854775800 ; 4 uses
  %i.kt = trunc i64 %n.vec3633 to i32
  %i.ku = shl i64 %n.vec3633, 2
  %i.kv = getelementptr i8, ptr %i.km, i64 %i.ku
  br label %vector.body3634

vector.body3634:                                  ; preds = %vector.body3634, %vector.ph3632
  %index3635 = phi i64 [ 0, %vector.ph3632 ], [ %index.next3637, %vector.body3634 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3632 ], [ %vec.ind.next, %vector.body3634 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.kw = shl i64 %index3635, 2
  %next.gep3636 = getelementptr i8, ptr %i.km, i64 %i.kw ; 2 uses
  %i.kx = getelementptr i8, ptr %next.gep3636, i64 16
  store <4 x i32> %vec.ind, ptr %next.gep3636, align 4, !noalias !9212
  store <4 x i32> %step.add, ptr %i.kx, align 4, !noalias !9212
  %index.next3637 = add nuw i64 %index3635, 8     ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ky = icmp eq i64 %index.next3637, %n.vec3633
  br i1 %i.ky, label %middle.block3638, label %vector.body3634, !llvm.loop !8393

middle.block3638:                                 ; preds = %vector.body3634
  %cmp.n = icmp eq i64 %i.ks, %n.vec3633
  br i1 %cmp.n, label %._crit_edge587.i.i, label %.lr.ph586.i.i.preheader4336

.lr.ph586.i.i.preheader4336:                      ; preds = %.lr.ph586.i.i.preheader, %middle.block3638
  %.sroa.047.2584.i.i.ph = phi i32 [ 0, %.lr.ph586.i.i.preheader ], [ %i.kt, %middle.block3638 ]
  %.sroa.0135.0583.i.i.ph = phi ptr [ %i.km, %.lr.ph586.i.i.preheader ], [ %i.kv, %middle.block3638 ]
  br label %.lr.ph586.i.i

.lr.ph586.i.i:                                    ; preds = %.lr.ph586.i.i.preheader4336, %.lr.ph586.i.i
  %.sroa.047.2584.i.i = phi i32 [ %i.kz, %.lr.ph586.i.i ], [ %.sroa.047.2584.i.i.ph, %.lr.ph586.i.i.preheader4336 ] ; 2 uses
  %.sroa.0135.0583.i.i = phi ptr [ %.sroa.0135.1.i.i, %.lr.ph586.i.i ], [ %.sroa.0135.0583.i.i.ph, %.lr.ph586.i.i.preheader4336 ] ; 2 uses
  %.sroa.0135.1.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0135.0583.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2584.i.i, ptr %.sroa.0135.0583.i.i, align 4, !noalias !9212
  %i.kz = add i32 %.sroa.047.2584.i.i, 1
  %i.la = icmp eq ptr %.sroa.0135.1.i.i, %i.ko
  br i1 %i.la, label %._crit_edge587.i.i, label %.lr.ph586.i.i, !llvm.loop !8394

._crit_edge587.i.i:                               ; preds = %.lr.ph586.i.i, %middle.block3638, %bb.au
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %i.lb = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %.sroa.12.5.i.i, ptr noalias noundef nonnull align 4 %i.ho, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull align 4 %i.km, i64 noundef %i.ux, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %.sroa.11.2.i.i, i64 noundef %i.ux, i64 noundef %.sroa.0.0.i.i, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i)
          to label %bb.av unwind label %bb.am, !noalias !9212 ; 3 uses

bb.av:                                            ; preds = %._crit_edge587.i.i
  %i.lc = shl nuw nsw i64 %.sroa.11.2.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i, i64 noundef %i.lc, i64 noundef 4) #45, !noalias !9212
  %i.ld = icmp eq i64 %.sroa.12.5.i.i, 0
  br i1 %i.ld, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i": ; preds = %bb.av
  %i.le = shl nuw nsw i64 %.sroa.12.5.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i, i64 noundef %i.le, i64 noundef 4) #45, !noalias !9212
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i", %bb.av
  br i1 %i.kf, label %bb.ba, label %bb.aw

bb.aw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9222
  %i.lf = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.kc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9222 ; 2 uses
  %i.lg = icmp eq ptr %i.lf, null
  br i1 %i.lg, label %bb.ay, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.lh = ptrtoint ptr %i.lf to i64
  br label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.kc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
end_hunk_2
begin_hunk_3_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
bb.cl:                                            ; preds = %bb.ck, %bb.cj
  %.sroa.4.0.ph.i.i.i532.i.i = phi i64 [ 8, %bb.ck ], [ 0, %bb.cj ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i532.i.i, i64 %i.tk, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc533.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.noexc533.i.i:                                    ; preds = %bb.cl
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i": ; preds = %bb.ck, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i
  %.sroa.10.0.i.i.i520.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %i.tm, %bb.ck ] ; 7 uses
  %.sroa.4.0.i.i.i521.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i518.i.i ], [ %.sroa.066.1.i.i, %bb.ck ]
  %i.to = icmp samesign ule i64 %.sroa.066.1.i.i, %.sroa.4.0.i.i.i521.i.i
  tail call void @llvm.assume(i1 %i.to)
  %i.tp = icmp samesign ugt i64 %.sroa.066.1.i.i, 1
  br i1 %i.tp, label %.lr.ph.i.i.i527.i.i.preheader, label %.loopexit257.i.i

.lr.ph.i.i.i527.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i"
  %i.tq = add nsw i64 %.sroa.066.1.i.i, -1        ; 2 uses
  %i.tr = add nsw i64 %.sroa.066.1.i.i, -2
  %xtraiter4549 = and i64 %i.tq, 7                ; 3 uses
  %i.ts = icmp ult i64 %i.tr, 7
  br i1 %i.ts, label %.lr.ph.i.i.i527.i.i.epil.preheader, label %.lr.ph.i.i.i527.i.i.preheader.new

.lr.ph.i.i.i527.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i527.i.i.preheader
  %unroll_iter4554 = and i64 %i.tq, -8
  br label %.lr.ph.i.i.i527.i.i

.lr.ph.i.i.i527.i.i:                              ; preds = %.lr.ph.i.i.i527.i.i, %.lr.ph.i.i.i527.i.i.preheader.new
  %.sroa.0.08.i.i.i528.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %i.ua, %.lr.ph.i.i.i527.i.i ] ; 17 uses
  %niter4555 = phi i64 [ 0, %.lr.ph.i.i.i527.i.i.preheader.new ], [ %niter4555.next.7, %.lr.ph.i.i.i527.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i, align 8, !noalias !9254
  %i.tt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2072
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tt, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.1, align 8, !noalias !9254
  %i.tu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3112
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tu, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.2, align 8, !noalias !9254
  %i.tv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tv, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.3, align 8, !noalias !9254
  %i.tw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tw, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.4, align 8, !noalias !9254
  %i.tx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6232
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tx, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.5, align 8, !noalias !9254
  %i.ty = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7272
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ty, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.6, align 8, !noalias !9254
  %i.tz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8312
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.tz, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.7, align 8, !noalias !9254
  %i.ua = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i, i64 8320 ; 3 uses
  %niter4555.next.7 = add i64 %niter4555, 8       ; 2 uses
  %niter4555.ncmp.7 = icmp eq i64 %niter4555.next.7, %unroll_iter4554
  br i1 %niter4555.ncmp.7, label %.loopexit257.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i527.i.i

.loopexit257.i.i.loopexit.unr-lcssa:              ; preds = %.lr.ph.i.i.i527.i.i
  %lcmp.mod4551.not = icmp eq i64 %xtraiter4549, 0
  br i1 %lcmp.mod4551.not, label %.loopexit257.i.i, label %.lr.ph.i.i.i527.i.i.epil.preheader

.lr.ph.i.i.i527.i.i.epil.preheader:               ; preds = %.loopexit257.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.preheader
  %.sroa.0.08.i.i.i528.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %.lr.ph.i.i.i527.i.i.preheader ], [ %i.ua, %.loopexit257.i.i.loopexit.unr-lcssa ]
  %lcmp.mod4553 = icmp ne i64 %xtraiter4549, 0
  tail call void @llvm.assume(i1 %lcmp.mod4553)
  br label %.lr.ph.i.i.i527.i.i.epil

.lr.ph.i.i.i527.i.i.epil:                         ; preds = %.lr.ph.i.i.i527.i.i.epil, %.lr.ph.i.i.i527.i.i.epil.preheader
  %.sroa.0.08.i.i.i528.i.i.epil = phi ptr [ %i.ub, %.lr.ph.i.i.i527.i.i.epil ], [ %.sroa.0.08.i.i.i528.i.i.epil.init, %.lr.ph.i.i.i527.i.i.epil.preheader ] ; 3 uses
  %epil.iter4550 = phi i64 [ %epil.iter4550.next, %.lr.ph.i.i.i527.i.i.epil ], [ 0, %.lr.ph.i.i.i527.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i528.i.i.epil, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i530.i.i.epil, align 8, !noalias !9254
  %i.ub = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i528.i.i.epil, i64 1040 ; 2 uses
  %epil.iter4550.next = add i64 %epil.iter4550, 1 ; 2 uses
  %epil.iter4550.cmp.not = icmp eq i64 %epil.iter4550.next, %xtraiter4549
  br i1 %epil.iter4550.cmp.not, label %.loopexit257.i.i, label %.lr.ph.i.i.i527.i.i.epil, !llvm.loop !8471

.loopexit257.i.i:                                 ; preds = %.loopexit257.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i527.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i"
  %.sroa.0.0.lcssa15.i.i.i525.i.i = phi ptr [ %.sroa.10.0.i.i.i520.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i519.i.i" ], [ %i.ua, %.loopexit257.i.i.loopexit.unr-lcssa ], [ %i.ub, %.lr.ph.i.i.i527.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i525.i.i, i64 1032
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i525.i.i, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i526.i.i, align 8, !noalias !9254
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3575.i.i) ]
  %.not227.i.i = icmp ugt i64 %.sroa.012.0581.i.i, %.sroa.14.3574.i.i
  br i1 %.not227.i.i, label %bb.cn, label %bb.cm, !prof !64

bb.cm:                                            ; preds = %.loopexit257.i.i
  br i1 %i.tf, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i", label %.lr.ph.preheader.i.i.i

.lr.ph.preheader.i.i.i:                           ; preds = %bb.cm
  %i.uc = mul nuw nsw i64 %.sroa.012.0581.i.i, 1040
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i520.i.i, ptr nonnull readonly align 8 %.sroa.016.3575.i.i, i64 %i.uc, i1 false), !alias.scope !9255, !noalias !9212
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i"

bb.cn:                                            ; preds = %.loopexit257.i.i
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0581.i.i, i64 noundef %.sroa.14.3574.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.bp unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i", !noalias !9212

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i, %bb.cm
  %i.ud = icmp eq i64 %.sroa.14.3574.i.i, 0
  br i1 %i.ud, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i536.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hced9e89e9287b940E.exit.i.i"
  %i.ue = mul nuw nsw i64 %.sroa.14.3574.i.i, 1040
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3575.i.i, i64 noundef %i.ue, i64 noundef 8) #45, !noalias !9212
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"

bb.co:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"
  %i.uf = icmp eq i64 %.sroa.023.0579.i.i, 0
  %..sroa.023.0.i.i = select i1 %i.uf, i64 %i.tg, i64 %.sroa.023.0579.i.i
  br label %bb.cp

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i", %bb.cw, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i"
  %.sroa.12.5.i.i = phi i64 [ %.sroa.12.2572.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ] ; 11 uses
  %.sroa.026.5.i.i = phi ptr [ %.sroa.026.2573.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %i.ur, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %i.ur, %bb.cw ] ; 11 uses
  %.sroa.023.1.i.i = phi i64 [ %.sroa.023.0579.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit537.i.i" ], [ %.sroa.070.1.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i" ], [ %.sroa.070.1.i.i, %bb.cw ]
  %.not618.i.i = icmp eq i64 %i.tc, 0
  br i1 %.not618.i.i, label %.preheader256.i.i, label %.lr.ph566.preheader.i.i

.lr.ph566.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"
  %reass.sub415.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i, i64 %.sroa.0.0582.i.i)
  %i.ug = add nuw nsw i64 %reass.sub415.i, 1
  %reass.sub416.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i, i64 %.sroa.018.0580.i.i)
  %i.uh = add nuw nsw i64 %reass.sub416.i, 1
  br label %.lr.ph566.i.i

bb.cp:                                            ; preds = %bb.cp, %bb.co
  %.sroa.070.1.i.i = phi i64 [ %..sroa.023.0.i.i, %bb.co ], [ %i.uj, %bb.cp ] ; 9 uses
  %i.ui = icmp ult i64 %.sroa.070.1.i.i, %i.tg
  %i.uj = shl i64 %.sroa.070.1.i.i, 1
  br i1 %i.ui, label %bb.cp, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  %i.uk = shl i64 %.sroa.070.1.i.i, 2             ; 5 uses
  %i.ul = icmp ugt i64 %.sroa.070.1.i.i, 4611686018427387903
  %i.um = icmp ugt i64 %i.uk, 9223372036854775804
  %or.cond.i.i.i.i538.i.i = or i1 %i.ul, %i.um
  br i1 %or.cond.i.i.i.i538.i.i, label %bb.ct, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i: ; preds = %bb.cq
  %i.un = icmp eq i64 %i.uk, 0
  br i1 %i.un, label %bb.cu, label %bb.cr

bb.cr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9256
  %i.uo = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.uk, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9256 ; 2 uses
  %i.up = icmp eq ptr %i.uo, null
  br i1 %i.up, label %bb.ct, label %bb.cs

bb.cs:                                            ; preds = %bb.cr
  %i.uq = ptrtoint ptr %i.uo to i64
  br label %bb.cu

bb.ct:                                            ; preds = %bb.cr, %bb.cq
  %.sroa.4.0.ph.i.i541.i.i = phi i64 [ 4, %bb.cr ], [ 0, %bb.cq ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i541.i.i, i64 %i.uk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc542.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.noexc542.i.i:                                    ; preds = %bb.ct
  unreachable

bb.cu:                                            ; preds = %bb.cs, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i
  %.sroa.10.0.i.i540.i.i = phi i64 [ %i.uq, %bb.cs ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i539.i.i ]
  %i.ur = inttoptr i64 %.sroa.10.0.i.i540.i.i to ptr ; 5 uses
  %i.us = icmp samesign ult i64 %.sroa.070.1.i.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.us)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ur) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2573.i.i) ]
  %.not229.i.i = icmp ugt i64 %.sroa.023.0579.i.i, %.sroa.12.2572.i.i
  br i1 %.not229.i.i, label %bb.cv, label %bb.cw, !prof !64

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0579.i.i, i64 noundef %.sroa.12.2572.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @910) #46
          to label %bb.bp unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i", !noalias !9212

bb.cw:                                            ; preds = %bb.cu
  %i.ut = shl nuw nsw i64 %.sroa.023.0579.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.ur, ptr nonnull readonly align 4 %.sroa.026.2573.i.i, i64 %i.ut, i1 false), !alias.scope !9257, !noalias !9258
  %i.uu = icmp eq i64 %.sroa.12.2572.i.i, 0
  br i1 %i.uu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i545.i.i": ; preds = %bb.cw
  %i.uv = shl nuw nsw i64 %.sroa.12.2572.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2573.i.i, i64 noundef %i.uv, i64 noundef 4) #45, !noalias !9212
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"

.preheader256.i.i:                                ; preds = %bb.df, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i"
  %.sroa.018.1.lcssa.i.i = phi i64 [ %.sroa.018.0580.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i" ], [ %i.vy, %bb.df ]
  %.sroa.0.1.lcssa.i.i = phi i64 [ %.sroa.0.0582.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit546.i.i" ], [ %i.vr, %bb.df ]
  %i.uw = trunc i64 %.sroa.029.0578.i.i to i32
  %invariant.gep.i.i = getelementptr [4 x i8], ptr %i.ho, i64 %.sroa.047.1576.i.i
  br label %bb.cx

._crit_edge571.i.loopexit.i:                      ; preds = %bb.cy
  %i.ux = add i64 %i.tc, %.sroa.029.0578.i.i      ; 23 uses
  %i.uy = add i64 %.sroa.047.1576.i.i, 64         ; 2 uses
  %i.uz = icmp ult i64 %i.uy, %.sroa.0.0.i.i
  %indvars.iv.next.i.i = add i64 %indvars.iv.i.i, -64
  br i1 %i.uz, label %.split.i.i, label %bb.an

bb.cx:                                            ; preds = %bb.cy, %.preheader256.i.i
  %i.va = phi i64 [ 1, %.preheader256.i.i ], [ %i.vi, %bb.cy ] ; 3 uses
  %.sroa.0133.0569.i.i = phi i64 [ 0, %.preheader256.i.i ], [ %i.va, %bb.cy ] ; 2 uses
  %i.vb = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0133.0569.i.i
  %i.vc = load i32, ptr %i.vb, align 4, !noalias !9212, !noundef !21 ; 2 uses
  %i.vd = zext i32 %i.vc to i64                   ; 2 uses
  %i.ve = icmp ult i32 %i.vc, 64
  br i1 %i.ve, label %bb.cy, label %.invoke3848

bb.cy:                                            ; preds = %bb.cx
  %i.vf = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vd
  %i.vg = load i32, ptr %i.vf, align 4, !noalias !9212, !noundef !21
  %i.vh = add i32 %i.vg, %i.uw
  %gep.i.i = getelementptr [4 x i8], ptr %invariant.gep.i.i, i64 %.sroa.0133.0569.i.i
  store i32 %i.vh, ptr %gep.i.i, align 4, !noalias !9212
  %i.vi = add nuw nsw i64 %i.va, 1
  %exitcond827.not.i.i = icmp eq i64 %i.va, %umax826.i.i
  br i1 %exitcond827.not.i.i, label %._crit_edge571.i.loopexit.i, label %bb.cx

.lr.ph566.i.i:                                    ; preds = %bb.df, %.lr.ph566.preheader.i.i
  %i.vj = phi i64 [ %i.wb, %bb.df ], [ 1, %.lr.ph566.preheader.i.i ] ; 6 uses
  %.sroa.0.1565.i.i = phi i64 [ %i.vr, %bb.df ], [ %.sroa.0.0582.i.i, %.lr.ph566.preheader.i.i ] ; 3 uses
  %.sroa.018.1564.i.i = phi i64 [ %i.vy, %bb.df ], [ %.sroa.018.0580.i.i, %.lr.ph566.preheader.i.i ] ; 3 uses
  %.sroa.0131.0563.i.i = phi i64 [ %i.vj, %bb.df ], [ 0, %.lr.ph566.preheader.i.i ] ; 2 uses
  %exitcond820.not.i.i = icmp eq i64 %i.vj, 65
  br i1 %exitcond820.not.i.i, label %.invoke3848, label %bb.cz

bb.cz:                                            ; preds = %.lr.ph566.i.i
  %i.vk = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0131.0563.i.i ; 2 uses
  %i.vl = load i32, ptr %i.vk, align 4, !noalias !9212, !noundef !21
  %i.vm = zext i32 %i.vl to i64                   ; 4 uses
  %i.vn = icmp samesign ugt i64 %.sroa.0.0.i422.i.i, %i.vm
  br i1 %i.vn, label %bb.db, label %.invoke3848

bb.da:                                            ; preds = %bb.dc
  %i.vo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

bb.db:                                            ; preds = %bb.cz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i) ]
  %exitcond822.not.i.i = icmp eq i64 %i.vj, %i.ug
  br i1 %exitcond822.not.i.i, label %bb.dc, label %bb.dd

bb.dc:                                            ; preds = %bb.db
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1565.i.i, i64 noundef %.sroa.14.7.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @907) #46
          to label %bb.bp unwind label %bb.da, !noalias !9212

bb.dd:                                            ; preds = %bb.db
  %i.vp = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427905.i.i, i64 %i.vm
  %i.vq = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.016.7.i.i, i64 %.sroa.0.1565.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vq, ptr noundef nonnull align 8 dereferenceable(1040) %i.vp, i64 1040, i1 false), !noalias !9212
  %i.vr = add nuw i64 %.sroa.0.1565.i.i, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i) ]
  %exitcond824.not.i.i = icmp eq i64 %i.vj, %i.uh
  br i1 %exitcond824.not.i.i, label %.invoke3848, label %bb.de

bb.de:                                            ; preds = %bb.dd
  %i.vs = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %i.vm
  %i.vt = load i32, ptr %i.vs, align 4, !noalias !9212, !noundef !21
  %i.vu = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i, i64 %.sroa.018.1564.i.i
  store i32 %i.vt, ptr %i.vu, align 4, !noalias !9212
  %i.vv = load i32, ptr %i.vk, align 4, !noalias !9212, !noundef !21 ; 2 uses
  %i.vw = zext i32 %i.vv to i64                   ; 2 uses
  %i.vx = icmp ult i32 %i.vv, 64
  br i1 %i.vx, label %bb.df, label %.invoke3848

bb.df:                                            ; preds = %bb.de
  %i.vy = add nuw i64 %.sroa.018.1564.i.i, 1      ; 2 uses
  %i.vz = getelementptr inbounds nuw [4 x i8], ptr %i.al, i64 %i.vw
  %i.wa = trunc nuw nsw i64 %.sroa.0131.0563.i.i to i32
  store i32 %i.wa, ptr %i.vz, align 4, !noalias !9212
  %i.wb = add nuw nsw i64 %i.vj, 1
  %exitcond825.not.i.i = icmp eq i64 %i.vj, %i.tc
  br i1 %exitcond825.not.i.i, label %.preheader256.i.i, label %.lr.ph566.i.i

.invoke3848:                                      ; preds = %bb.de, %bb.dd, %bb.cz, %.lr.ph566.i.i, %bb.cx
  %i.wc = phi i64 [ %i.vd, %bb.cx ], [ %i.vw, %bb.de ], [ 64, %.lr.ph566.i.i ], [ %i.vm, %bb.cz ], [ %.sroa.018.1564.i.i, %bb.dd ]
  %i.wd = phi i64 [ 64, %bb.cx ], [ 64, %bb.de ], [ 64, %.lr.ph566.i.i ], [ %.sroa.0.0.i422.i.i, %bb.cz ], [ %.sroa.12.5.i.i, %bb.dd ]
  %i.we = phi ptr [ @904, %bb.cx ], [ @909, %bb.de ], [ @905, %.lr.ph566.i.i ], [ @906, %bb.cz ], [ @908, %bb.dd ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wc, i64 noundef %i.wd, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.we) #46
          to label %.cont3849 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.cont3849:                                        ; preds = %.invoke3848
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit548.i.i": ; preds = %bb.cv
  %i.wf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ur, i64 noundef %i.uk, i64 noundef 4) #45, !noalias !9212
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit550.i.i": ; preds = %bb.cn
  %i.wg = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i520.i.i, i64 noundef %i.tk, i64 noundef 8) #45, !noalias !9212
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i"

.lr.ph560.i.i:                                    ; preds = %bb.dh, %.split.i.i
  %.sroa.0127.1559.i.i = phi i64 [ %.sroa.0127.1.i.i, %bb.dh ], [ 1, %.split.i.i ] ; 3 uses
  %.sroa.043.3558.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i, %bb.dh ], [ %.sroa.043.0577.i.i, %.split.i.i ] ; 3 uses
  %.sroa.0127.0557.i.i = phi i64 [ %.sroa.0127.1559.i.i, %bb.dh ], [ 0, %.split.i.i ] ; 6 uses
  %i.wh = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i427905.i.i, i64 %.sroa.0127.0557.i.i ; 5 uses
  %i.wi = getelementptr inbounds nuw i8, ptr %i.wh, i64 1024
  %i.wj = getelementptr inbounds nuw i8, ptr %i.wh, i64 1032 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.wh, i8 0, i64 1032, i1 false), !noalias !9212
  store float 3.402000e+38, ptr %i.wj, align 8, !alias.scope !9259, !noalias !9212
  %i.wk = add nuw nsw i64 %.sroa.0127.0557.i.i, %.sroa.047.1576.i.i ; 3 uses
  %i.wl = icmp ult i64 %i.wk, %.sroa.0.0.i.i
  br i1 %i.wl, label %bb.dg, label %.invoke3846

bb.dg:                                            ; preds = %.lr.ph560.i.i
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %i.wk
  %i.wn = load i32, ptr %i.wm, align 4, !noalias !9212, !noundef !21 ; 2 uses
  %.not.i167.i = icmp eq i32 %i.wn, 0
  br i1 %.not.i167.i, label %._crit_edge.i.i, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %bb.dg
  %i.wo = zext i32 %i.wn to i64
  %reass.sub.i = tail call i64 @llvm.usub.sat.i64(i64 %i.aq, i64 %.sroa.043.3558.i.i)
  %i.wp = add nuw i64 %reass.sub.i, 1
  br label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %bb.di, %bb.dg
  %.sroa.043.4.lcssa.i.i = phi i64 [ %.sroa.043.3558.i.i, %bb.dg ], [ %i.xj, %bb.di ] ; 2 uses
  %i.wq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.wh)
          to label %bb.dh unwind label %.thread164.loopexit.i.i, !noalias !9212

bb.dh:                                            ; preds = %._crit_edge.i.i
  store float %i.wq, ptr %i.wj, align 8, !alias.scope !9260, !noalias !9212
  %i.wr = getelementptr inbounds nuw [4 x i8], ptr %i.an, i64 %.sroa.0127.0557.i.i
  %i.ws = trunc nuw nsw i64 %.sroa.0127.0557.i.i to i32 ; 2 uses
  store i32 %i.ws, ptr %i.wr, align 4, !noalias !9212
  %i.wt = getelementptr inbounds nuw [4 x i8], ptr %i.am, i64 %.sroa.0127.0557.i.i
  store i32 %i.ws, ptr %i.wt, align 4, !noalias !9212
  %i.wu = getelementptr inbounds nuw [4 x i8], ptr %i.ao, i64 %.sroa.0127.0557.i.i
  store i32 1, ptr %i.wu, align 4, !noalias !9212
  %i.wv = icmp samesign ult i64 %.sroa.0127.1559.i.i, %.sroa.0.0.i447.i.i ; 2 uses
  %i.ww = zext i1 %i.wv to i64
  %.sroa.0127.1.i.i = add nuw i64 %.sroa.0127.1559.i.i, %i.ww
  br i1 %i.wv, label %.lr.ph560.i.i, label %._crit_edge561.i.loopexit.i

.lr.ph.i.i:                                       ; preds = %bb.di, %.lr.ph.preheader.i.i
  %i.wx = phi i64 [ %i.xi, %bb.di ], [ 0, %.lr.ph.preheader.i.i ]
  %i.wy = phi i64 [ %i.xk, %bb.di ], [ 1, %.lr.ph.preheader.i.i ] ; 3 uses
  %.sroa.043.4556.i.i = phi i64 [ %i.xj, %bb.di ], [ %.sroa.043.3558.i.i, %.lr.ph.preheader.i.i ] ; 3 uses
  %exitcond818.not.i.i = icmp eq i64 %i.wy, %i.wp
  br i1 %exitcond818.not.i.i, label %.invoke3846, label %bb.di

.invoke3846:                                      ; preds = %.lr.ph560.i.i, %.lr.ph.i.i
  %i.wz = phi i64 [ %.sroa.043.4556.i.i, %.lr.ph.i.i ], [ %i.wk, %.lr.ph560.i.i ]
  %i.xa = phi i64 [ %i.aq, %.lr.ph.i.i ], [ %.sroa.0.0.i.i, %.lr.ph560.i.i ]
  %i.xb = phi ptr [ @913, %.lr.ph.i.i ], [ @912, %.lr.ph560.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.wz, i64 noundef %i.xa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xb) #46
          to label %.cont3847 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.cont3847:                                        ; preds = %.invoke3846
  unreachable

bb.di:                                            ; preds = %.lr.ph.i.i
  %i.xc = getelementptr inbounds nuw i8, ptr %i.ax, i64 %.sroa.043.4556.i.i
  %i.xd = load i8, ptr %i.xc, align 1, !alias.scope !9261, !noalias !9251, !noundef !21
  %i.xe = zext i8 %i.xd to i64
  %i.xf = getelementptr inbounds nuw [4 x i8], ptr %i.wh, i64 %i.xe ; 2 uses
  %i.xg = load i32, ptr %i.xf, align 4, !alias.scope !9262, !noalias !9212, !noundef !21
  %i.xh = add i32 %i.xg, 1
  store i32 %i.xh, ptr %i.xf, align 4, !alias.scope !9262, !noalias !9212
  %i.xi = add nuw nsw i64 %i.wx, 1                ; 2 uses
  store i64 %i.xi, ptr %i.wi, align 8, !alias.scope !9263, !noalias !9212
  %i.xj = add nuw i64 %.sroa.043.4556.i.i, 1      ; 2 uses
  %i.xk = add nuw nsw i64 %i.wy, 1
  %exitcond819.not.i.i = icmp eq i64 %i.wy, %i.wo
  br i1 %exitcond819.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.dj:                                            ; preds = %bb.dm, %bb.al
  %.sroa.047.0554.i.i = phi i64 [ 0, %bb.al ], [ %i.xp, %bb.dm ] ; 2 uses
  %.sroa.059.0553.i.i = phi i64 [ 0, %bb.al ], [ %.sroa.059.1.i.i, %bb.dm ] ; 5 uses
  %i.xl = icmp ult i64 %.sroa.059.0553.i.i, %.sroa.0.0.i.i
  br i1 %i.xl, label %bb.dk, label %.invoke.i.i

bb.dk:                                            ; preds = %bb.dj
  %i.xm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i, i64 %.sroa.059.0553.i.i ; 2 uses
  %i.xn = load i32, ptr %i.xm, align 4, !noalias !9212, !noundef !21
  %i.xo = add i32 %i.xn, 1
  store i32 %i.xo, ptr %i.xm, align 4, !noalias !9212
  %i.xp = add nuw i64 %.sroa.047.0554.i.i, 1      ; 3 uses
  %i.xq = icmp eq i64 %i.xp, %i.aq                ; 2 uses
  br i1 %i.xq, label %bb.dn, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.xr = getelementptr inbounds nuw i8, ptr %i.fp, i64 %.sroa.047.0554.i.i
  %i.xs = load i8, ptr %i.xr, align 1, !alias.scope !9208, !noalias !9264, !noundef !21
  %i.xt = getelementptr inbounds nuw i8, ptr %i.fp, i64 %i.xp
  %i.xu = load i8, ptr %i.xt, align 1, !alias.scope !9208, !noalias !9264, !noundef !21
  %.not238.i.i = icmp eq i8 %i.xs, %i.xu
  br i1 %.not238.i.i, label %bb.dm, label %bb.dn

.invoke.i.i:                                      ; preds = %bb.dj
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0553.i.i, i64 noundef %.sroa.0.0.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @914) #46
          to label %.cont.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i, !noalias !9212

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dm:                                            ; preds = %bb.dn, %bb.dl
  %.sroa.059.1.i.i = phi i64 [ %i.xv, %bb.dn ], [ %.sroa.059.0553.i.i, %bb.dl ]
  br i1 %i.xq, label %.split.i.i, label %bb.dj

bb.dn:                                            ; preds = %bb.dl, %bb.dk
  %i.xv = add nuw nsw i64 %.sroa.059.0553.i.i, 1
  br label %bb.dm

.thread131.i.i:                                   ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i", %.loopexit.split-lp.i.i, %bb.am
  %.pn230156.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.am ], [ %.pn.i.i, %.loopexit.split-lp.i.i ], [ %.pn916.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i515.i.i" ] ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

bb.gg:                                            ; preds = %bb.i
  %i.apr = icmp eq i64 %.val107.i, 0              ; 2 uses
  %spec.select.i = select i1 %i.apr, i64 %i.bs, i64 %.val107.i
  br label %bb.gh

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i", %bb.gj, %bb.i
  %.val.i = phi ptr [ %i.apy, %bb.gj ], [ %i.apy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val106.i, %bb.i ]
  %.val63.i = phi i64 [ %.sroa.014.1.i, %bb.gj ], [ %.sroa.014.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i" ], [ %.val107.i, %bb.i ] ; 2 uses
  %i.aps = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 2 uses
  %.val92.i = load ptr, ptr %i.aps, align 8, !alias.scope !9168, !noalias !9167, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %i.apt = getelementptr inbounds nuw i8, ptr %7, i64 24 ; 2 uses
  %.val93.i = load i64, ptr %i.apt, align 8, !alias.scope !9168, !noalias !9167, !noundef !21 ; 5 uses
  %i.apu = icmp ult i64 %.val93.i, %i.bs
  br i1 %i.apu, label %bb.gk, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

bb.gh:                                            ; preds = %bb.gh, %bb.gg
  %.sroa.014.1.i = phi i64 [ %spec.select.i, %bb.gg ], [ %i.apw, %bb.gh ] ; 9 uses
  %i.apv = icmp ult i64 %.sroa.014.1.i, %i.bs
  %i.apw = shl i64 %.sroa.014.1.i, 1
  br i1 %i.apv, label %bb.gh, label %bb.gi

bb.gi:                                            ; preds = %bb.gh
  %i.apx = icmp slt i64 %.sroa.014.1.i, 0
  br i1 %i.apx, label %.invoke2842, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i: ; preds = %bb.gi
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9297
  %i.apy = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9297 ; 5 uses
  %i.apz = icmp eq ptr %i.apy, null
  br i1 %i.apz, label %.invoke2842, label %bb.gj

bb.gj:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.apy, ptr nonnull readonly align 1 %.val106.i, i64 %.val107.i, i1 false), !alias.scope !9298, !noalias !9299
  store ptr %i.apy, ptr %7, align 8, !alias.scope !9168, !noalias !9167
  store i64 %.sroa.014.1.i, ptr %i.bp, align 8, !alias.scope !9168, !noalias !9167
  br i1 %i.apr, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i225.i": ; preds = %bb.gj
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i, i64 noundef %.val107.i, i64 noundef 1) #45, !noalias !9170
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"

bb.gk:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"
  %i.aqa = icmp eq i64 %.val93.i, 0               ; 2 uses
  %spec.select100.i = select i1 %i.aqa, i64 %i.bs, i64 %.val93.i
  br label %bb.gl

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i", %bb.gp, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i"
  %.val108.i = phi ptr [ %i.aqo, %bb.gp ], [ %i.aqo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val92.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i" ]
  %.val109.i = phi i64 [ %.sroa.017.1.i, %bb.gp ], [ %.sroa.017.1.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i" ], [ %.val93.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit226.i" ] ; 2 uses
  %i.aqb = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 1, ptr %i.aqb, align 8, !alias.scope !9168, !noalias !9167
  %i.aqc = icmp ult i64 %i.br, %.val63.i
  br i1 %i.aqc, label %bb.gq, label %.invoke

bb.gl:                                            ; preds = %bb.gl, %bb.gk
  %.sroa.017.1.i = phi i64 [ %spec.select100.i, %bb.gk ], [ %i.aqe, %bb.gl ] ; 8 uses
  %i.aqd = icmp ult i64 %.sroa.017.1.i, %i.bs
  %i.aqe = shl i64 %.sroa.017.1.i, 1
  br i1 %i.aqd, label %bb.gl, label %bb.gm

bb.gm:                                            ; preds = %bb.gl
  %i.aqf = shl i64 %.sroa.017.1.i, 2              ; 5 uses
  %i.aqg = icmp ugt i64 %.sroa.017.1.i, 4611686018427387903
  %i.aqh = icmp ugt i64 %i.aqf, 9223372036854775804
  %or.cond.i.i.i.i227.i = or i1 %i.aqg, %i.aqh
  br i1 %or.cond.i.i.i.i227.i, label %.invoke2842, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i: ; preds = %bb.gm
  %i.aqi = icmp eq i64 %i.aqf, 0
  br i1 %i.aqi, label %bb.gp, label %bb.gn

bb.gn:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9300
  %i.aqj = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.aqf, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9300 ; 2 uses
  %i.aqk = icmp eq ptr %i.aqj, null
  br i1 %i.aqk, label %.invoke2842, label %bb.go

bb.go:                                            ; preds = %bb.gn
  %i.aql = ptrtoint ptr %i.aqj to i64
  br label %bb.gp

.invoke2842:                                      ; preds = %bb.gm, %bb.gn, %bb.gi, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %i.aqm = phi i64 [ 0, %bb.gi ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ 4, %bb.gn ], [ 0, %bb.gm ]
  %i.aqn = phi i64 [ %.sroa.014.1.i, %bb.gi ], [ %i.bc, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.sroa.014.1.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i219.i ], [ %i.aqf, %bb.gn ], [ %i.aqf, %bb.gm ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.aqm, i64 %i.aqn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2843 unwind label %bb.e

.cont2843:                                        ; preds = %.invoke2842
  unreachable

bb.gp:                                            ; preds = %bb.go, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i
  %.sroa.10.0.i.i229.i = phi i64 [ %i.aql, %bb.go ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i228.i ]
  %i.aqo = inttoptr i64 %.sroa.10.0.i.i229.i to ptr ; 5 uses
  %i.aqp = icmp samesign ult i64 %.sroa.017.1.i, 2305843009213693952
  tail call void @llvm.assume(i1 %i.aqp)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aqo) ]
  %i.aqq = shl nuw nsw i64 %.val93.i, 2           ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.aqo, ptr nonnull readonly align 4 %.val92.i, i64 %i.aqq, i1 false), !alias.scope !9301, !noalias !9302
  store ptr %i.aqo, ptr %i.aps, align 8, !alias.scope !9168, !noalias !9167
  store i64 %.sroa.017.1.i, ptr %i.apt, align 8, !alias.scope !9168, !noalias !9167
  br i1 %i.aqa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i233.i": ; preds = %bb.gp
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val92.i, i64 noundef %i.aqq, i64 noundef 4) #45, !noalias !9170
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"

bb.gq:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"
  %i.aqr = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.br
  store i8 0, ptr %i.aqr, align 1, !noalias !9170
  %i.aqs = icmp ult i64 %i.br, %.val109.i
  br i1 %i.aqs, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread92, label %.invoke

_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread92: ; preds = %bb.gq
  %i.aqt = getelementptr inbounds nuw [4 x i8], ptr %.val108.i, i64 %i.br
  %i.aqu = trunc nuw nsw i64 %i.aq to i32
  store i32 %i.aqu, ptr %i.aqt, align 4, !noalias !9170
  store i64 %i.bs, ptr %i.bq, align 8, !alias.scope !9168, !noalias !9167
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

.invoke:                                          ; preds = %bb.gq, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i"
  %i.aqv = phi i64 [ %.val63.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i" ], [ %.val109.i, %bb.gq ]
  %i.aqw = phi ptr [ @915, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i" ], [ @916, %bb.gq ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.br, i64 noundef %i.aqv, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aqw) #46
          to label %.cont unwind label %bb.e

.cont:                                            ; preds = %.invoke
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit: ; preds = %bb.bs
  %i.aqx = getelementptr inbounds nuw i8, ptr %7, i64 40
  store i64 %.sroa.0109.1.i.i, ptr %i.aqx, align 8, !alias.scope !9223, !noalias !9224
  %i.aqy = zext i8 %.sroa.0113.1.i.i to i64
  %i.aqz = add nuw nsw i64 %i.aqy, 1
  %i.ara = getelementptr inbounds nuw i8, ptr %7, i64 32
  store i64 %i.aqz, ptr %i.ara, align 8, !alias.scope !9223, !noalias !9224
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.lj, i64 noundef %i.kc, i64 noundef 4) #45, !noalias !9212
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.10.0.i.i411.i.i, i64 noundef %i.he, i64 noundef 4) #45, !noalias !9212
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ho, i64 noundef %i.he, i64 noundef 4) #45, !noalias !9212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.al), !noalias !9212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.am), !noalias !9212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !9212
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !9212
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.fp, i64 noundef %i.aq, i64 noundef 1) #45, !noalias !9170
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i": ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit, %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread92
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %i.ax, i64 noundef %i.aq, i64 noundef 1) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i", %_ZN6brotli3enc14block_splitter15SplitByteVector17hac378eb7d3d5ee71E.exit.thread
  %i.arb = shl i64 %2, 1                          ; 12 uses
  %i.arc = icmp slt i64 %2, 0
  %i.ard = icmp ugt i64 %i.arb, 9223372036854775806
  %or.cond.i.i.i.i = or i1 %i.arc, %i.ard
  br i1 %or.cond.i.i.i.i, label %bb.gt, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"
  %i.are = icmp eq i64 %i.arb, 0                  ; 2 uses
  br i1 %i.are, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit", label %bb.gr

bb.gr:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9303
  %i.arf = tail call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.arb, i64 noundef range(i64 1, -9223372036854775807) 2) #45, !noalias !9303 ; 2 uses
  %i.arg = icmp eq ptr %i.arf, null
  br i1 %i.arg, label %bb.gt, label %bb.gs

bb.gs:                                            ; preds = %bb.gr
  %i.arh = ptrtoint ptr %i.arf to i64
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit"

bb.gt:                                            ; preds = %bb.gr, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit"
  %.sroa.4.0.ph.i.i43 = phi i64 [ 2, %bb.gr ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit" ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i43, i64 %i.arb, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46, !noalias !9304
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41, %bb.gs
  %.sroa.10.0.i.i42 = phi i64 [ %i.arh, %bb.gs ], [ 2, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i41 ]
  %i.ari = inttoptr i64 %.sroa.10.0.i.i42 to ptr  ; 20 uses
  %i.arj = icmp samesign ult i64 %2, 4611686018427387904
  tail call void @llvm.assume(i1 %i.arj)
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %1, i64 %2) ; 9 uses
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ari) ]
  %min.iters.check3672 = icmp samesign ult i64 %.sroa.0.0.i, 17
  br i1 %min.iters.check3672, label %scalar.ph3671.preheader, label %vector.memcheck3665

scalar.ph3671.preheader:                          ; preds = %vector.body3675, %vector.memcheck3665, %.lr.ph
  %.sroa.09.0912.ph = phi i64 [ 0, %vector.memcheck3665 ], [ 0, %.lr.ph ], [ %n.vec3674, %vector.body3675 ] ; 4 uses
  %i.ark = sub i64 %.sroa.0.0.i, %.sroa.09.0912.ph
  %xtraiter4556 = and i64 %i.ark, 3               ; 2 uses
  %lcmp.mod4557.not = icmp eq i64 %xtraiter4556, 0
  br i1 %lcmp.mod4557.not, label %scalar.ph3671.prol.loopexit, label %scalar.ph3671.prol

scalar.ph3671.prol:                               ; preds = %scalar.ph3671.preheader, %scalar.ph3671.prol
  %.sroa.09.0912.prol = phi i64 [ %i.arl, %scalar.ph3671.prol ], [ %.sroa.09.0912.ph, %scalar.ph3671.preheader ] ; 3 uses
  %prol.iter4558 = phi i64 [ %prol.iter4558.next, %scalar.ph3671.prol ], [ 0, %scalar.ph3671.preheader ]
  %i.arl = add nuw i64 %.sroa.09.0912.prol, 1     ; 2 uses
  %i.arm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0912.prol
  %i.arn = getelementptr inbounds nuw i8, ptr %i.arm, i64 12
  %i.aro = load i16, ptr %i.arn, align 4, !noundef !21
  %i.arp = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %.sroa.09.0912.prol
  store i16 %i.aro, ptr %i.arp, align 2
  %prol.iter4558.next = add i64 %prol.iter4558, 1 ; 2 uses
  %prol.iter4558.cmp.not = icmp eq i64 %prol.iter4558.next, %xtraiter4556
  br i1 %prol.iter4558.cmp.not, label %scalar.ph3671.prol.loopexit, label %scalar.ph3671.prol, !llvm.loop !8555

scalar.ph3671.prol.loopexit:                      ; preds = %scalar.ph3671.prol, %scalar.ph3671.preheader
  %.sroa.09.0912.unr = phi i64 [ %.sroa.09.0912.ph, %scalar.ph3671.preheader ], [ %i.arl, %scalar.ph3671.prol ]
  %i.arq = sub i64 %.sroa.09.0912.ph, %.sroa.0.0.i
  %i.arr = icmp ugt i64 %i.arq, -4
  br i1 %i.arr, label %._crit_edge, label %scalar.ph3671

vector.memcheck3665:                              ; preds = %.lr.ph
  %i.ars = shl nuw nsw i64 %.sroa.0.0.i, 1
  %scevgep = getelementptr i8, ptr %i.ari, i64 %i.ars
  %scevgep3666 = getelementptr i8, ptr %0, i64 12
  %i.art = shl i64 %.sroa.0.0.i, 4
  %i.aru = getelementptr i8, ptr %0, i64 %i.art
  %scevgep3667 = getelementptr i8, ptr %i.aru, i64 -2
  %bound03668 = icmp ugt ptr %scevgep3667, %i.ari
  %bound13669 = icmp ult ptr %scevgep3666, %scevgep
  %found.conflict3670 = and i1 %bound03668, %bound13669
  br i1 %found.conflict3670, label %scalar.ph3671.preheader, label %vector.ph3673

vector.ph3673:                                    ; preds = %vector.memcheck3665
  %i.arv = and i64 %.sroa.0.0.i, 7                ; 2 uses
  %i.arw = icmp eq i64 %i.arv, 0
  %i.arx = select i1 %i.arw, i64 8, i64 %i.arv
  %n.vec3674 = sub nsw i64 %.sroa.0.0.i, %i.arx   ; 2 uses
  br label %vector.body3675

vector.body3675:                                  ; preds = %vector.body3675, %vector.ph3673
  %index3676 = phi i64 [ 0, %vector.ph3673 ], [ %index.next3677, %vector.body3675 ] ; 10 uses
  %i.ary = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.arz = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asa = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asc = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asd = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.ase = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asf = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %index3676
  %i.asg = getelementptr inbounds nuw i8, ptr %i.ary, i64 12
  %i.ash = getelementptr inbounds nuw i8, ptr %i.arz, i64 28
  %i.asi = getelementptr inbounds nuw i8, ptr %i.asa, i64 44
  %i.asj = getelementptr inbounds nuw i8, ptr %i.asb, i64 60
  %i.ask = getelementptr inbounds nuw i8, ptr %i.asc, i64 76
  %i.asl = getelementptr inbounds nuw i8, ptr %i.asd, i64 92
  %i.asm = getelementptr inbounds nuw i8, ptr %i.ase, i64 108
  %i.asn = getelementptr inbounds nuw i8, ptr %i.asf, i64 124
  %i.aso = load i16, ptr %i.asg, align 4, !alias.scope !9305, !noundef !21
  %i.asp = load i16, ptr %i.ash, align 4, !alias.scope !9305, !noundef !21
  %i.asq = load i16, ptr %i.asi, align 4, !alias.scope !9305, !noundef !21
  %i.asr = load i16, ptr %i.asj, align 4, !alias.scope !9305, !noundef !21
  %i.ass = load i16, ptr %i.ask, align 4, !alias.scope !9305, !noundef !21
  %i.ast = load i16, ptr %i.asl, align 4, !alias.scope !9305, !noundef !21
  %i.asu = load i16, ptr %i.asm, align 4, !alias.scope !9305, !noundef !21
  %i.asv = load i16, ptr %i.asn, align 4, !alias.scope !9305, !noundef !21
  %i.asw = insertelement <8 x i16> poison, i16 %i.aso, i64 0
  %i.asx = insertelement <8 x i16> %i.asw, i16 %i.asp, i64 1
  %i.asy = insertelement <8 x i16> %i.asx, i16 %i.asq, i64 2
  %i.asz = insertelement <8 x i16> %i.asy, i16 %i.asr, i64 3
  %i.ata = insertelement <8 x i16> %i.asz, i16 %i.ass, i64 4
  %i.atb = insertelement <8 x i16> %i.ata, i16 %i.ast, i64 5
  %i.atc = insertelement <8 x i16> %i.atb, i16 %i.asu, i64 6
  %i.atd = insertelement <8 x i16> %i.atc, i16 %i.asv, i64 7
  %i.ate = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %index3676
  store <8 x i16> %i.atd, ptr %i.ate, align 2, !alias.scope !9306, !noalias !9305
  %index.next3677 = add nuw i64 %index3676, 8     ; 2 uses
  %i.atf = icmp eq i64 %index.next3677, %n.vec3674
  br i1 %i.atf, label %scalar.ph3671.preheader, label %vector.body3675, !llvm.loop !8559

.body436.thread:                                  ; preds = %.invoke2846, %.invoke2844
  %i.atg = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040"

._crit_edge:                                      ; preds = %scalar.ph3671.prol.loopexit, %scalar.ph3671, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ari) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9308)
  %i.ath = udiv i64 %2, 530
  %i.ati = tail call i64 @llvm.umin.i64(i64 %i.ath, i64 49) ; 8 uses
  %spec.store.select.i44 = add nuw nsw i64 %i.ati, 1 ; 18 uses
  %i.atj = icmp eq i64 %2, 0                      ; 2 uses
  br i1 %i.atj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit448.thread", label %bb.gu

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17he7cef1c3669f3b1aE.exit448.thread": ; preds = %._crit_edge
  %i.atk = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.atk, align 8, !alias.scope !9308, !noalias !9307
  br label %bb.on

bb.gu:                                            ; preds = %._crit_edge
  %i.atl = icmp samesign ult i64 %2, 128
  br i1 %i.atl, label %bb.gv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45: ; preds = %bb.gu
  %i.atm = mul nuw nsw i64 %spec.store.select.i44, 2832 ; 5 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9309
  %i.atn = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.atm, i64 noundef range(i64 1, 9) 8) #45, !noalias !9309 ; 17 uses
  %i.ato = icmp eq ptr %i.atn, null
  br i1 %i.ato, label %.invoke2844, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"

.invoke2844:                                      ; preds = %bb.oe, %bb.of, %bb.oa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %i.atp = phi i64 [ 0, %bb.oa ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ 4, %bb.of ], [ 0, %bb.oe ]
  %i.atq = phi i64 [ %.sroa.014.1.i434, %bb.oa ], [ %i.atm, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45 ], [ %.sroa.014.1.i434, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i ], [ %i.cjg, %bb.of ], [ %i.cjg, %bb.oe ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.atp, i64 %i.atq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2845 unwind label %.body436.thread

.cont2845:                                        ; preds = %.invoke2844
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i45
  %.not92.i = icmp samesign ult i64 %2, 530
  br i1 %.not92.i, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.preheader

.lr.ph.i.i.i.i46.preheader:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i.i"
  %i.atr = add nsw i64 %i.ati, -1
  %xtraiter4559 = and i64 %i.ati, 7               ; 3 uses
  %i.ats = icmp ult i64 %i.atr, 7
  br i1 %i.ats, label %.lr.ph.i.i.i.i46.epil.preheader, label %.lr.ph.i.i.i.i46.preheader.new

.lr.ph.i.i.i.i46.preheader.new:                   ; preds = %.lr.ph.i.i.i.i46.preheader
  %unroll_iter4564 = and i64 %i.ati, 56
  br label %.lr.ph.i.i.i.i46

.lr.ph.i.i.i.i46:                                 ; preds = %.lr.ph.i.i.i.i46, %.lr.ph.i.i.i.i46.preheader.new
  %.sroa.0.08.i.i.i.i47 = phi ptr [ %i.atn, %.lr.ph.i.i.i.i46.preheader.new ], [ %i.aua, %.lr.ph.i.i.i.i46 ] ; 17 uses
  %niter4565 = phi i64 [ 0, %.lr.ph.i.i.i.i46.preheader.new ], [ %niter4565.next.7, %.lr.ph.i.i.i.i46 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49, align 8, !noalias !9311
  %i.att = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.att, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.1, align 8, !noalias !9311
  %i.atu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atu, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.2, align 8, !noalias !9311
  %i.atv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atv, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.3, align 8, !noalias !9311
  %i.atw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atw, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.4, align 8, !noalias !9311
  %i.atx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atx, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.5, align 8, !noalias !9311
  %i.aty = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.aty, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.6, align 8, !noalias !9311
  %i.atz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.atz, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.7, align 8, !noalias !9311
  %i.aua = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47, i64 22656 ; 3 uses
  %niter4565.next.7 = add i64 %niter4565, 8       ; 2 uses
  %niter4565.ncmp.7 = icmp eq i64 %niter4565.next.7, %unroll_iter4564
  br i1 %niter4565.ncmp.7, label %.loopexit109.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i46

bb.gv:                                            ; preds = %bb.gu
  %.val106.i423 = load ptr, ptr %8, align 8, !alias.scope !9308, !noalias !9307, !nonnull !21, !align !29, !noundef !21 ; 3 uses
  %i.aub = getelementptr inbounds nuw i8, ptr %8, i64 8 ; 2 uses
  %.val107.i424 = load i64, ptr %i.aub, align 8, !alias.scope !9308, !noalias !9307, !noundef !21 ; 6 uses
  %i.auc = getelementptr inbounds nuw i8, ptr %8, i64 40 ; 2 uses
  %i.aud = load i64, ptr %i.auc, align 8, !alias.scope !9308, !noalias !9307, !noundef !21 ; 6 uses
  %i.aue = add i64 %i.aud, 1                      ; 7 uses
  %i.auf = icmp ult i64 %.val107.i424, %i.aue
  br i1 %i.auf, label %bb.ny, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"

.thread.i60:                                      ; preds = %bb.hb, %.split32.us.i.invoke.i, %.split29.us.i.invoke.i
  %i.aug = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i"

.loopexit109.i.loopexit.unr-lcssa:                ; preds = %.lr.ph.i.i.i.i46
  %lcmp.mod4561.not = icmp eq i64 %xtraiter4559, 0
  br i1 %lcmp.mod4561.not, label %.loopexit109.i, label %.lr.ph.i.i.i.i46.epil.preheader

.lr.ph.i.i.i.i46.epil.preheader:                  ; preds = %.loopexit109.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i46.preheader
  %.sroa.0.08.i.i.i.i47.epil.init = phi ptr [ %i.atn, %.lr.ph.i.i.i.i46.preheader ], [ %i.aua, %.loopexit109.i.loopexit.unr-lcssa ]
  %lcmp.mod4563 = icmp ne i64 %xtraiter4559, 0
  call void @llvm.assume(i1 %lcmp.mod4563)
  br label %.lr.ph.i.i.i.i46.epil

.lr.ph.i.i.i.i46.epil:                            ; preds = %.lr.ph.i.i.i.i46.epil, %.lr.ph.i.i.i.i46.epil.preheader
  %.sroa.0.08.i.i.i.i47.epil = phi ptr [ %i.auh, %.lr.ph.i.i.i.i46.epil ], [ %.sroa.0.08.i.i.i.i47.epil.init, %.lr.ph.i.i.i.i46.epil.preheader ] ; 3 uses
  %epil.iter4560 = phi i64 [ %epil.iter4560.next, %.lr.ph.i.i.i.i46.epil ], [ 0, %.lr.ph.i.i.i.i46.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i.i47.epil, i8 0, i64 2824, i1 false), !noalias !9310
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i49.epil, align 8, !noalias !9311
  %i.auh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i47.epil, i64 2832 ; 2 uses
  %epil.iter4560.next = add i64 %epil.iter4560, 1 ; 2 uses
end_hunk_4
begin_hunk_5_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i": ; preds = %.thread93.i.i397, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i263"
  %.pre-phi863.i.i = phi i64 [ %.pre862.i.i, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i263" ], [ %i.bak, %.thread93.i.i397 ]
  %.pn230.pn.pn.pn.pn101.i.i264 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i261, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i263" ], [ %i.bbi, %.thread93.i.i397 ]
  %.sroa.016.0100.i.i265 = phi ptr [ %.sroa.016.1.i.i260, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i263" ], [ %.sroa.10.0.i.i.i.i.i208, %.thread93.i.i397 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i265) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i265, i64 noundef %.pre-phi863.i.i, i64 noundef 8) #45, !noalias !9353
  br label %bb.lf

.thread93.i.i397:                                 ; preds = %bb.ht
  %i.bbi = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i": ; preds = %bb.jc, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248", %bb.hv
  %.sroa.12.0.i.i257 = phi i64 [ %i.baj, %bb.hv ], [ %.sroa.12.1.i.i251, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248" ], [ %.sroa.12.1.i.i251, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.12.3152.i.i313, %bb.jc ] ; 2 uses
  %.sroa.026.0.i.i258 = phi ptr [ %i.bbm, %bb.hv ], [ %.sroa.026.1.i.i252, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248" ], [ %.sroa.026.1.i.i252, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.026.3153.i.i312, %bb.jc ] ; 2 uses
  %.sroa.14.1.i.i259 = phi i64 [ %i.baj, %bb.hv ], [ %.sroa.14.2.i.i253, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248" ], [ %.sroa.14.2.i.i253, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.14.4154.i.i311, %bb.jc ] ; 2 uses
  %.sroa.016.1.i.i260 = phi ptr [ %.sroa.10.0.i.i.i.i.i208, %bb.hv ], [ %.sroa.016.2.i.i254, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248" ], [ %.sroa.016.2.i.i254, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.sroa.016.4155.i.i310, %bb.jc ]
  %.pn230.pn.pn.pn.i.i261 = phi { ptr, i32 } [ %i.bbl, %bb.hv ], [ %.pn230.pn.pn.i.i255, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248" ], [ %.pn230.pn.pn.i.i255, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256" ], [ %.pn230156.i.i309, %bb.jc ] ; 2 uses
  %i.bbj = icmp eq i64 %.sroa.12.0.i.i257, 0
  br i1 %i.bbj, label %bb.hu, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i262"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i262": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"
  %i.bbk = shl nuw nsw i64 %.sroa.12.0.i.i257, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i258) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i258, i64 noundef %i.bbk, i64 noundef 4) #45, !noalias !9353
  br label %bb.hu

bb.hv:                                            ; preds = %bb.hx
  %i.bbl = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215: ; preds = %bb.hs, %._crit_edge.i.i.i.i.i210
  %.sroa.10.0.i.i418.i.i216 = phi i64 [ %i.bbg, %bb.hs ], [ 4, %._crit_edge.i.i.i.i.i210 ]
  %i.bbm = inttoptr i64 %.sroa.10.0.i.i418.i.i216 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i217 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i202, i64 64) ; 17 uses
  %i.bbn = mul nuw nsw i64 %.sroa.0.0.i422.i.i217, 2832 ; 3 uses
  %i.bbo = icmp eq i64 %.sroa.0.0.i.i202, 0
  br i1 %i.bbo, label %._crit_edge.i.i.i429.thread.i.i226, label %bb.hw

bb.hw:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9357
  %i.bbp = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bbn, i64 noundef range(i64 1, 9) 8) #45, !noalias !9357 ; 5 uses
  %i.bbq = icmp eq ptr %i.bbp, null
  br i1 %i.bbq, label %bb.hx, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"

bb.hx:                                            ; preds = %bb.hw
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.bbn, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i396 unwind label %bb.hv, !noalias !9353

.noexc440.i.i396:                                 ; preds = %bb.hx
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i": ; preds = %bb.hw
  %.not1151.i.i = icmp eq i64 %.sroa.0.0.i.i202, 1
  br i1 %.not1151.i.i, label %._crit_edge.thread.i.i.i431.i.i223, label %.lr.ph.i.i.i434.i.i218.preheader

.lr.ph.i.i.i434.i.i218.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"
  %i.bbr = add nsw i64 %.sroa.0.0.i422.i.i217, -1 ; 2 uses
  %i.bbs = add nsw i64 %.sroa.0.0.i422.i.i217, -2
  %xtraiter4579 = and i64 %i.bbr, 7               ; 3 uses
  %i.bbt = icmp ult i64 %i.bbs, 7
  br i1 %i.bbt, label %.lr.ph.i.i.i434.i.i218.epil.preheader, label %.lr.ph.i.i.i434.i.i218.preheader.new

.lr.ph.i.i.i434.i.i218.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i218.preheader
  %unroll_iter4584 = and i64 %i.bbr, -8
  br label %.lr.ph.i.i.i434.i.i218

._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i218
  %lcmp.mod4581.not = icmp eq i64 %xtraiter4579, 0
  br i1 %lcmp.mod4581.not, label %._crit_edge.thread.i.i.i431.i.i223, label %.lr.ph.i.i.i434.i.i218.epil.preheader

.lr.ph.i.i.i434.i.i218.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i218.preheader
  %.sroa.0.08.i.i.i435.i.i219.epil.init = phi ptr [ %i.bbp, %.lr.ph.i.i.i434.i.i218.preheader ], [ %i.bcc, %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa ]
  %lcmp.mod4583 = icmp ne i64 %xtraiter4579, 0
  call void @llvm.assume(i1 %lcmp.mod4583)
  br label %.lr.ph.i.i.i434.i.i218.epil

.lr.ph.i.i.i434.i.i218.epil:                      ; preds = %.lr.ph.i.i.i434.i.i218.epil, %.lr.ph.i.i.i434.i.i218.epil.preheader
  %.sroa.0.08.i.i.i435.i.i219.epil = phi ptr [ %i.bbu, %.lr.ph.i.i.i434.i.i218.epil ], [ %.sroa.0.08.i.i.i435.i.i219.epil.init, %.lr.ph.i.i.i434.i.i218.epil.preheader ] ; 3 uses
  %epil.iter4580 = phi i64 [ %epil.iter4580.next, %.lr.ph.i.i.i434.i.i218.epil ], [ 0, %.lr.ph.i.i.i434.i.i218.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i219.epil, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.epil, align 8, !noalias !9358
  %i.bbu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219.epil, i64 2832 ; 2 uses
  %epil.iter4580.next = add i64 %epil.iter4580, 1 ; 2 uses
  %epil.iter4580.cmp.not = icmp eq i64 %epil.iter4580.next, %xtraiter4579
  br i1 %epil.iter4580.cmp.not, label %._crit_edge.thread.i.i.i431.i.i223, label %.lr.ph.i.i.i434.i.i218.epil, !llvm.loop !8675

._crit_edge.thread.i.i.i431.i.i223:               ; preds = %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i218.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i224 = phi ptr [ %i.bbp, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i426.i.i" ], [ %i.bcc, %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa ], [ %i.bbu, %.lr.ph.i.i.i434.i.i218.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i225 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i224, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i432.i.i224, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i225, align 8, !noalias !9358
  br label %._crit_edge.i.i.i429.thread.i.i226

.lr.ph.i.i.i434.i.i218:                           ; preds = %.lr.ph.i.i.i434.i.i218, %.lr.ph.i.i.i434.i.i218.preheader.new
  %.sroa.0.08.i.i.i435.i.i219 = phi ptr [ %i.bbp, %.lr.ph.i.i.i434.i.i218.preheader.new ], [ %i.bcc, %.lr.ph.i.i.i434.i.i218 ] ; 17 uses
  %niter4585 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i218.preheader.new ], [ %niter4585.next.7, %.lr.ph.i.i.i434.i.i218 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i435.i.i219, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221, align 8, !noalias !9358
  %i.bbv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbv, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.1, align 8, !noalias !9358
  %i.bbw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbw, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.2, align 8, !noalias !9358
  %i.bbx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbx, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.3, align 8, !noalias !9358
  %i.bby = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bby, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.4, align 8, !noalias !9358
  %i.bbz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bbz, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.5, align 8, !noalias !9358
  %i.bca = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bca, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.6, align 8, !noalias !9358
  %i.bcb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bcb, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i437.i.i221.7, align 8, !noalias !9358
  %i.bcc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i219, i64 22656 ; 3 uses
  %niter4585.next.7 = add i64 %niter4585, 8       ; 2 uses
  %niter4585.ncmp.7 = icmp eq i64 %niter4585.next.7, %unroll_iter4584
  br i1 %niter4585.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i223.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i218

._crit_edge.i.i.i429.thread.i.i226:               ; preds = %._crit_edge.thread.i.i.i431.i.i223, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215
  %.sroa.10.0.i.i.i427923.i.i = phi ptr [ %i.bbp, %._crit_edge.thread.i.i.i431.i.i223 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i215 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9359
  %i.bcd = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !9359 ; 16 uses
  %i.bce = icmp eq ptr %i.bcd, null
  br i1 %i.bce, label %bb.hy, label %bb.ia

bb.hy:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i226
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i395 unwind label %bb.hz, !noalias !9353

.noexc444.i.i395:                                 ; preds = %bb.hy
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238", %bb.hz
  %.sroa.1335.0.i.i249 = phi i64 [ %.sroa.0.0.i422.i.i217, %bb.hz ], [ %.sroa.1335.1124200.i.i242, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.sroa.034.0.i.i250 = phi ptr [ %.sroa.10.0.i.i.i427923.i.i, %bb.hz ], [ %.sroa.034.1125198.i.i243, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.sroa.12.1.i.i251 = phi i64 [ %i.baj, %bb.hz ], [ %.sroa.12.3126196.i.i244, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.sroa.026.1.i.i252 = phi ptr [ %i.bbm, %bb.hz ], [ %.sroa.026.3127194.i.i245, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.sroa.14.2.i.i253 = phi i64 [ %i.baj, %bb.hz ], [ %.sroa.14.4128192.i.i246, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.sroa.016.2.i.i254 = phi ptr [ %.sroa.10.0.i.i.i.i.i208, %bb.hz ], [ %.sroa.016.4129190.i.i247, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %.pn230.pn.pn.i.i255 = phi { ptr, i32 } [ %i.bch, %bb.hz ], [ %.pn230.pn204.i.i239, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238" ] ; 2 uses
  %i.bcf = icmp eq i64 %.sroa.1335.0.i.i249, 0
  br i1 %i.bcf, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i256": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248"
  %i.bcg = mul nuw nsw i64 %.sroa.1335.0.i.i249, 2832
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i250) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i250, i64 noundef %i.bcg, i64 noundef 8) #45, !noalias !9353
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit446.i.i"

bb.hz:                                            ; preds = %bb.hy
  %i.bch = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i248"

bb.ia:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i226
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.bcd, i8 0, i64 32784, i1 false), !noalias !9353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !9353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.aa, i8 0, i64 256, i1 false), !noalias !9353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !9353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.z, i8 0, i64 256, i1 false), !noalias !9353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !9353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.y, i8 0, i64 256, i1 false), !noalias !9353
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !9353
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.x, i8 0, i64 256, i1 false), !noalias !9353
  br label %bb.la

.split.i.i271:                                    ; preds = %bb.ld, %._crit_edge585.i.loopexit.i
  %indvars.iv.i.i272 = phi i64 [ %indvars.iv.next.i.i295, %._crit_edge585.i.loopexit.i ], [ %.sroa.0.0.i.i202, %bb.ld ] ; 2 uses
  %.sroa.0.0596.i.i = phi i64 [ %.sroa.0.1.lcssa.i.i292, %._crit_edge585.i.loopexit.i ], [ 0, %bb.ld ] ; 4 uses
  %.sroa.012.0595.i.i = phi i64 [ %.sroa.012.1.i.i286, %._crit_edge585.i.loopexit.i ], [ %i.baj, %bb.ld ] ; 7 uses
  %.sroa.018.0594.i.i = phi i64 [ %.sroa.018.1.lcssa.i.i291, %._crit_edge585.i.loopexit.i ], [ 0, %bb.ld ] ; 4 uses
  %.sroa.023.0593.i.i = phi i64 [ %.sroa.023.1.i.i289, %._crit_edge585.i.loopexit.i ], [ %i.baj, %bb.ld ] ; 7 uses
  %.sroa.029.0592.i.i = phi i64 [ %i.bnw, %._crit_edge585.i.loopexit.i ], [ 0, %bb.ld ] ; 2 uses
  %.sroa.043.0591.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i278, %._crit_edge585.i.loopexit.i ], [ 0, %bb.ld ]
  %.sroa.047.1590.i.i = phi i64 [ %i.bnx, %._crit_edge585.i.loopexit.i ], [ 0, %bb.ld ] ; 4 uses
  %.sroa.016.3589.i.i = phi ptr [ %.sroa.016.7.i.i285, %._crit_edge585.i.loopexit.i ], [ %.sroa.10.0.i.i.i.i.i208, %bb.ld ] ; 9 uses
  %.sroa.14.3588.i.i = phi i64 [ %.sroa.14.7.i.i284, %._crit_edge585.i.loopexit.i ], [ %i.baj, %bb.ld ] ; 10 uses
  %.sroa.026.2587.i.i = phi ptr [ %.sroa.026.5.i.i288, %._crit_edge585.i.loopexit.i ], [ %i.bbm, %bb.ld ] ; 11 uses
  %.sroa.12.2586.i.i = phi i64 [ %.sroa.12.5.i.i287, %._crit_edge585.i.loopexit.i ], [ %i.baj, %bb.ld ] ; 12 uses
  %i.bci = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i272, i64 1)
  %umax846.i.i = tail call i64 @llvm.umin.i64(i64 %i.bci, i64 64)
  %i.bcj = sub nuw i64 %.sroa.0.0.i.i202, %.sroa.047.1590.i.i
  %.sroa.0.0.i447.i.i273 = tail call noundef i64 @llvm.umin.i64(i64 %i.bcj, i64 64) ; 3 uses
  br label %.lr.ph574.i.i

.thread164.loopexit.i.i279:                       ; preds = %._crit_edge.i.i277
  %lpad.loopexit258.i.i280 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

.thread164.loopexit.split-lp.loopexit.i.i282:     ; preds = %._crit_edge575.i.loopexit.i
  %lpad.loopexit261.i.i283 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i228: ; preds = %.invoke3852, %.invoke3850, %.invoke.i.i227, %bb.kj, %bb.kb, %bb.ii, %bb.ie
  %.sroa.11.1.ph.ph.ph.i.i229 = phi i64 [ 2049, %bb.ie ], [ %.sroa.11.2.i.i297, %bb.ii ], [ 2049, %.invoke.i.i227 ], [ 2049, %bb.kb ], [ 2049, %.invoke3850 ], [ 2049, %bb.kj ], [ 2049, %.invoke3852 ]
  %.sroa.044.1.ph.ph.ph.i.i230 = phi ptr [ %i.bcd, %bb.ie ], [ %.sroa.044.2.i.i298, %bb.ii ], [ %i.bcd, %.invoke.i.i227 ], [ %i.bcd, %bb.kb ], [ %i.bcd, %.invoke3850 ], [ %i.bcd, %bb.kj ], [ %i.bcd, %.invoke3852 ]
  %.sroa.1335.2.ph.ph.ph.i.i231 = phi i64 [ 0, %bb.ie ], [ 0, %bb.ii ], [ %.sroa.0.0.i422.i.i217, %.invoke.i.i227 ], [ %.sroa.0.0.i422.i.i217, %bb.kb ], [ %.sroa.0.0.i422.i.i217, %.invoke3850 ], [ %.sroa.0.0.i422.i.i217, %bb.kj ], [ %.sroa.0.0.i422.i.i217, %.invoke3852 ]
  %.sroa.034.2.ph.ph.ph.i.i232 = phi ptr [ inttoptr (i64 8 to ptr), %bb.ie ], [ inttoptr (i64 8 to ptr), %bb.ii ], [ %.sroa.10.0.i.i.i427923.i.i, %.invoke.i.i227 ], [ %.sroa.10.0.i.i.i427923.i.i, %bb.kb ], [ %.sroa.10.0.i.i.i427923.i.i, %.invoke3850 ], [ %.sroa.10.0.i.i.i427923.i.i, %bb.kj ], [ %.sroa.10.0.i.i.i427923.i.i, %.invoke3852 ]
  %.sroa.12.4.ph.ph.ph.i.i233 = phi i64 [ %.sroa.12.5.i.i287, %bb.ie ], [ %.sroa.12.5.i.i287, %bb.ii ], [ %i.baj, %.invoke.i.i227 ], [ %.sroa.12.2586.i.i, %bb.kb ], [ %.sroa.12.2586.i.i, %.invoke3850 ], [ %.sroa.12.2586.i.i, %bb.kj ], [ %.sroa.12.5.i.i287, %.invoke3852 ]
  %.sroa.026.4.ph.ph.ph.i.i234 = phi ptr [ %.sroa.026.5.i.i288, %bb.ie ], [ %.sroa.026.5.i.i288, %bb.ii ], [ %i.bbm, %.invoke.i.i227 ], [ %.sroa.026.2587.i.i, %bb.kb ], [ %.sroa.026.2587.i.i, %.invoke3850 ], [ %.sroa.026.2587.i.i, %bb.kj ], [ %.sroa.026.5.i.i288, %.invoke3852 ]
  %.sroa.14.5.ph.ph.ph.i.i235 = phi i64 [ %.sroa.14.7.i.i284, %bb.ie ], [ %.sroa.14.7.i.i284, %bb.ii ], [ %i.baj, %.invoke.i.i227 ], [ %.sroa.14.3588.i.i, %bb.kb ], [ %.sroa.14.3588.i.i, %.invoke3850 ], [ %.sroa.14.7.i.i284, %bb.kj ], [ %.sroa.14.7.i.i284, %.invoke3852 ]
  %.sroa.016.5.ph.ph.ph.i.i236 = phi ptr [ %.sroa.016.7.i.i285, %bb.ie ], [ %.sroa.016.7.i.i285, %bb.ii ], [ %.sroa.10.0.i.i.i.i.i208, %.invoke.i.i227 ], [ %.sroa.016.3589.i.i, %bb.kb ], [ %.sroa.016.3589.i.i, %.invoke3850 ], [ %.sroa.016.7.i.i285, %bb.kj ], [ %.sroa.016.7.i.i285, %.invoke3852 ]
  %lpad.loopexit.split-lp262.i.i237 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

bb.ib:                                            ; preds = %bb.in, %._crit_edge601.i.i
  %.sroa.11.1.ph160.i.i303 = phi i64 [ 0, %bb.in ], [ %.sroa.11.2.i.i297, %._crit_edge601.i.i ]
  %.sroa.044.1.ph161.i.i304 = phi ptr [ inttoptr (i64 4 to ptr), %bb.in ], [ %.sroa.044.2.i.i298, %._crit_edge601.i.i ]
  %.sroa.12.4.ph162.i.i305 = phi i64 [ 0, %bb.in ], [ %.sroa.12.5.i.i287, %._crit_edge601.i.i ]
  %.sroa.026.4.ph163.i.i306 = phi ptr [ inttoptr (i64 4 to ptr), %bb.in ], [ %.sroa.026.5.i.i288, %._crit_edge601.i.i ]
  %lpad.thr_comm.split-lp.i.i307 = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i308

bb.ic:                                            ; preds = %._crit_edge585.i.loopexit.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427923.i.i, i64 noundef %i.bbn, i64 noundef 8) #45, !noalias !9353
  %i.bck = shl i64 %i.bnw, 6
  %i.bcl = lshr i64 %i.bnw, 1
  %i.bcm = mul i64 %i.bcl, %i.bnw
  %.sroa.0.0.i448.i.i296 = tail call noundef i64 @llvm.umin.i64(i64 %i.bcm, i64 %i.bck) ; 5 uses
  %i.bcn = add nuw i64 %.sroa.0.0.i448.i.i296, 1  ; 2 uses
  %i.bco = icmp ugt i64 %.sroa.0.0.i448.i.i296, 2048
  br i1 %i.bco, label %bb.id, label %bb.if

bb.id:                                            ; preds = %bb.ic
  %i.bcp = shl i64 %i.bcn, 4                      ; 5 uses
  %i.bcq = icmp ugt i64 %.sroa.0.0.i448.i.i296, 1152921504606846974
  %i.bcr = icmp ugt i64 %i.bcp, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i378 = or i1 %i.bcq, %i.bcr
  br i1 %or.cond.i.i.i.i.i449.i.i378, label %bb.ie, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i379, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i379: ; preds = %bb.id
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9360
  %i.bcs = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bcp, i64 noundef range(i64 1, 9) 4) #45, !noalias !9360 ; 5 uses
  %i.bct = icmp eq ptr %i.bcs, null
  br i1 %i.bct, label %bb.ie, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i380"

bb.ie:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i379, %bb.id
  %.sroa.4.0.ph.i.i.i455.i.i385 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i379 ], [ 0, %bb.id ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i385, i64 %i.bcp, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i386 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.noexc456.i.i386:                                 ; preds = %bb.ie
  unreachable

bb.if:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i380", %bb.ic
  %.sroa.11.2.i.i297 = phi i64 [ %i.bcn, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i380" ], [ 2049, %bb.ic ] ; 4 uses
  %.sroa.044.2.i.i298 = phi ptr [ %i.bcs, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i380" ], [ %i.bcd, %bb.ic ] ; 4 uses
  %i.bcu = shl i64 %i.bnw, 2                      ; 12 uses
  %i.bcv = icmp ugt i64 %i.bnw, 4611686018427387903
  %i.bcw = icmp ugt i64 %i.bcu, 9223372036854775804
  %or.cond.i.i.i.i458.i.i299 = or i1 %i.bcv, %i.bcw
  br i1 %or.cond.i.i.i.i458.i.i299, label %bb.ii, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i300, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i300: ; preds = %bb.if
  %i.bcx = icmp eq i64 %i.bcu, 0                  ; 2 uses
  br i1 %i.bcx, label %bb.ij, label %bb.ig

bb.ig:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i300
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9361
  %i.bcy = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcu, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9361 ; 2 uses
  %i.bcz = icmp eq ptr %i.bcy, null
  br i1 %i.bcz, label %bb.ii, label %bb.ih

bb.ih:                                            ; preds = %bb.ig
  %i.bda = ptrtoint ptr %i.bcy to i64
  br label %bb.ij

bb.ii:                                            ; preds = %bb.ig, %bb.if
  %.sroa.4.0.ph.i.i461.i.i376 = phi i64 [ 4, %bb.ig ], [ 0, %bb.if ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i376, i64 %i.bcu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i377 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.noexc462.i.i377:                                 ; preds = %bb.ii
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i380": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i379
  %i.bdb = add nsw i64 %i.bcp, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.bcs, i8 0, i64 %i.bdb, i1 false), !noalias !9362
  %i.bdc = getelementptr i8, ptr %i.bcs, i64 %i.bcp ; 2 uses
  %scevgep11.i451.i.i381 = getelementptr i8, ptr %i.bcs, i64 %i.bdb
  store i32 0, ptr %scevgep11.i451.i.i381, align 4, !noalias !9362
  %.sroa.55.0..sroa_idx.i452.i.i382 = getelementptr i8, ptr %i.bdc, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i382, align 4, !noalias !9362
  %.sroa.67.0..sroa_idx.i453.i.i383 = getelementptr i8, ptr %i.bdc, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i383, align 4, !noalias !9362
  %i.bdd = icmp samesign ult i64 %.sroa.0.0.i448.i.i296, 576460752303423487
  tail call void @llvm.assume(i1 %i.bdd)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.bcd, i64 noundef 32784, i64 noundef 4) #45, !noalias !9353
  br label %bb.if

bb.ij:                                            ; preds = %bb.ih, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i300
  %.sroa.10.0.i.i460.i.i301 = phi i64 [ %i.bda, %bb.ih ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i300 ]
  %i.bde = inttoptr i64 %.sroa.10.0.i.i460.i.i301 to ptr ; 13 uses
  %i.bdf = icmp samesign ult i64 %i.bnw, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bdf)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bde) ]
  %i.bdg = getelementptr inbounds nuw i8, ptr %i.bde, i64 %i.bcu
  %i.bdh = icmp eq i64 %i.bnw, 0                  ; 3 uses
  br i1 %i.bdh, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader

.lr.ph600.i.i.preheader:                          ; preds = %bb.ij
  %i.bdi = add nsw i64 %i.bcu, -4                 ; 2 uses
  %i.bdj = lshr exact i64 %i.bdi, 2
  %i.bdk = add nuw nsw i64 %i.bdj, 1              ; 2 uses
  %min.iters.check3721 = icmp ult i64 %i.bdi, 28
  br i1 %min.iters.check3721, label %.lr.ph600.i.i.preheader4118, label %vector.ph3722

vector.ph3722:                                    ; preds = %.lr.ph600.i.i.preheader
  %n.vec3723 = and i64 %i.bdk, 9223372036854775800 ; 4 uses
  %i.bdl = trunc i64 %n.vec3723 to i32
  %i.bdm = shl i64 %n.vec3723, 2
  %i.bdn = getelementptr i8, ptr %i.bde, i64 %i.bdm
  br label %vector.body3724

vector.body3724:                                  ; preds = %vector.body3724, %vector.ph3722
  %index3725 = phi i64 [ 0, %vector.ph3722 ], [ %index.next3729, %vector.body3724 ] ; 2 uses
  %vec.ind3726 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3722 ], [ %vec.ind.next3730, %vector.body3724 ] ; 3 uses
  %step.add3727 = add <4 x i32> %vec.ind3726, splat (i32 4)
  %i.bdo = shl i64 %index3725, 2
  %next.gep3728 = getelementptr i8, ptr %i.bde, i64 %i.bdo ; 2 uses
  %i.bdp = getelementptr i8, ptr %next.gep3728, i64 16
  store <4 x i32> %vec.ind3726, ptr %next.gep3728, align 4, !noalias !9353
  store <4 x i32> %step.add3727, ptr %i.bdp, align 4, !noalias !9353
  %index.next3729 = add nuw i64 %index3725, 8     ; 2 uses
  %vec.ind.next3730 = add <4 x i32> %vec.ind3726, splat (i32 8)
  %i.bdq = icmp eq i64 %index.next3729, %n.vec3723
  br i1 %i.bdq, label %middle.block3731, label %vector.body3724, !llvm.loop !8696

middle.block3731:                                 ; preds = %vector.body3724
  %cmp.n3732 = icmp eq i64 %i.bdk, %n.vec3723
  br i1 %cmp.n3732, label %._crit_edge601.i.i, label %.lr.ph600.i.i.preheader4118

.lr.ph600.i.i.preheader4118:                      ; preds = %.lr.ph600.i.i.preheader, %middle.block3731
  %.sroa.047.2598.i.i.ph = phi i32 [ 0, %.lr.ph600.i.i.preheader ], [ %i.bdl, %middle.block3731 ]
  %.sroa.0135.0597.i.i.ph = phi ptr [ %i.bde, %.lr.ph600.i.i.preheader ], [ %i.bdn, %middle.block3731 ]
  br label %.lr.ph600.i.i

.lr.ph600.i.i:                                    ; preds = %.lr.ph600.i.i.preheader4118, %.lr.ph600.i.i
  %.sroa.047.2598.i.i = phi i32 [ %i.bdr, %.lr.ph600.i.i ], [ %.sroa.047.2598.i.i.ph, %.lr.ph600.i.i.preheader4118 ] ; 2 uses
  %.sroa.0135.0597.i.i = phi ptr [ %.sroa.0135.1.i.i302, %.lr.ph600.i.i ], [ %.sroa.0135.0597.i.i.ph, %.lr.ph600.i.i.preheader4118 ] ; 2 uses
  %.sroa.0135.1.i.i302 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i, ptr %.sroa.0135.0597.i.i, align 4, !noalias !9353
  %i.bdr = add i32 %.sroa.047.2598.i.i, 1
  %i.bds = icmp eq ptr %.sroa.0135.1.i.i302, %i.bdg
  br i1 %i.bds, label %._crit_edge601.i.i, label %.lr.ph600.i.i, !llvm.loop !8697

._crit_edge601.i.i:                               ; preds = %.lr.ph600.i.i, %middle.block3731, %bb.ij
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %i.bdt = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17he38f0c1a5f667e92E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i285, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i288, i64 noundef %.sroa.12.5.i.i287, ptr noalias noundef nonnull align 4 %i.bag, i64 noundef %.sroa.0.0.i.i202, ptr noalias noundef nonnull align 4 %i.bde, i64 noundef %i.bnw, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i298, i64 noundef %.sroa.11.2.i.i297, i64 noundef %i.bnw, i64 noundef %.sroa.0.0.i.i202, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i296)
          to label %bb.ik unwind label %bb.ib, !noalias !9353 ; 3 uses

bb.ik:                                            ; preds = %._crit_edge601.i.i
  %i.bdu = shl nuw nsw i64 %.sroa.11.2.i.i297, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i298, i64 noundef %i.bdu, i64 noundef 4) #45, !noalias !9353
  %i.bdv = icmp eq i64 %.sroa.12.5.i.i287, 0
  br i1 %i.bdv, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i319, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i318"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i318": ; preds = %bb.ik
  %i.bdw = shl nuw nsw i64 %.sroa.12.5.i.i287, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i288, i64 noundef %i.bdw, i64 noundef 4) #45, !noalias !9353
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i319

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i319: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i318", %bb.ik
  br i1 %i.bcx, label %bb.ip, label %bb.il

bb.il:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i319
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9363
  %i.bdx = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bcu, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9363 ; 2 uses
  %i.bdy = icmp eq ptr %i.bdx, null
  br i1 %i.bdy, label %bb.in, label %bb.im

bb.im:                                            ; preds = %bb.il
  %i.bdz = ptrtoint ptr %i.bdx to i64
  br label %bb.ip

bb.in:                                            ; preds = %bb.il
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.bcu, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
end_hunk_5
begin_hunk_6_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
bb.kb:                                            ; preds = %bb.ka, %bb.jz
  %.sroa.4.0.ph.i.i.i533.i.i = phi i64 [ 8, %bb.ka ], [ 0, %bb.jz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i, i64 %i.bmj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc534.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.noexc534.i.i:                                    ; preds = %bb.kb
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i": ; preds = %bb.ka, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i
  %.sroa.10.0.i.i.i521.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %i.bml, %bb.ka ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i ], [ %.sroa.066.1.i.i391, %bb.ka ]
  %i.bmn = icmp samesign ule i64 %.sroa.066.1.i.i391, %.sroa.4.0.i.i.i522.i.i
  tail call void @llvm.assume(i1 %i.bmn)
  %i.bmo = icmp samesign ugt i64 %.sroa.066.1.i.i391, 1
  br i1 %i.bmo, label %.lr.ph.i.i.i528.i.i.preheader, label %.loopexit257.i.i392

.lr.ph.i.i.i528.i.i.preheader:                    ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i"
  %i.bmp = add nsw i64 %.sroa.066.1.i.i391, -1    ; 2 uses
  %i.bmq = add nsw i64 %.sroa.066.1.i.i391, -2
  %xtraiter4587 = and i64 %i.bmp, 7               ; 3 uses
  %i.bmr = icmp ult i64 %i.bmq, 7
  br i1 %i.bmr, label %.lr.ph.i.i.i528.i.i.epil.preheader, label %.lr.ph.i.i.i528.i.i.preheader.new

.lr.ph.i.i.i528.i.i.preheader.new:                ; preds = %.lr.ph.i.i.i528.i.i.preheader
  %unroll_iter4592 = and i64 %i.bmp, -8
  br label %.lr.ph.i.i.i528.i.i

.lr.ph.i.i.i528.i.i:                              ; preds = %.lr.ph.i.i.i528.i.i, %.lr.ph.i.i.i528.i.i.preheader.new
  %.sroa.0.08.i.i.i529.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %i.bmz, %.lr.ph.i.i.i528.i.i ] ; 17 uses
  %niter4593 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i.preheader.new ], [ %niter4593.next.7, %.lr.ph.i.i.i528.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !9397
  %i.bms = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 2832
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bms, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !9397
  %i.bmt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 5664
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmt, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !9397
  %i.bmu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 8496
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmu, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !9397
  %i.bmv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 11328
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmv, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !9397
  %i.bmw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 14160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmw, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !9397
  %i.bmx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 16992
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmx, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !9397
  %i.bmy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 19824
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bmy, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !9397
  %i.bmz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i, i64 22656 ; 3 uses
  %niter4593.next.7 = add i64 %niter4593, 8       ; 2 uses
  %niter4593.ncmp.7 = icmp eq i64 %niter4593.next.7, %unroll_iter4592
  br i1 %niter4593.ncmp.7, label %.loopexit257.i.i392.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i

.loopexit257.i.i392.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i
  %lcmp.mod4589.not = icmp eq i64 %xtraiter4587, 0
  br i1 %lcmp.mod4589.not, label %.loopexit257.i.i392, label %.lr.ph.i.i.i528.i.i.epil.preheader

.lr.ph.i.i.i528.i.i.epil.preheader:               ; preds = %.loopexit257.i.i392.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.preheader
  %.sroa.0.08.i.i.i529.i.i.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %.lr.ph.i.i.i528.i.i.preheader ], [ %i.bmz, %.loopexit257.i.i392.loopexit.unr-lcssa ]
  %lcmp.mod4591 = icmp ne i64 %xtraiter4587, 0
  call void @llvm.assume(i1 %lcmp.mod4591)
  br label %.lr.ph.i.i.i528.i.i.epil

.lr.ph.i.i.i528.i.i.epil:                         ; preds = %.lr.ph.i.i.i528.i.i.epil, %.lr.ph.i.i.i528.i.i.epil.preheader
  %.sroa.0.08.i.i.i529.i.i.epil = phi ptr [ %i.bna, %.lr.ph.i.i.i528.i.i.epil ], [ %.sroa.0.08.i.i.i529.i.i.epil.init, %.lr.ph.i.i.i528.i.i.epil.preheader ] ; 3 uses
  %epil.iter4588 = phi i64 [ %epil.iter4588.next, %.lr.ph.i.i.i528.i.i.epil ], [ 0, %.lr.ph.i.i.i528.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.08.i.i.i529.i.i.epil, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !9397
  %i.bna = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i.epil, i64 2832 ; 2 uses
  %epil.iter4588.next = add i64 %epil.iter4588, 1 ; 2 uses
  %epil.iter4588.cmp.not = icmp eq i64 %epil.iter4588.next, %xtraiter4587
  br i1 %epil.iter4588.cmp.not, label %.loopexit257.i.i392, label %.lr.ph.i.i.i528.i.i.epil, !llvm.loop !8778

.loopexit257.i.i392:                              ; preds = %.loopexit257.i.i392.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i = phi ptr [ %.sroa.10.0.i.i.i521.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7e917dbc908e48c5E.exit.i.i.i520.i.i" ], [ %i.bmz, %.loopexit257.i.i392.loopexit.unr-lcssa ], [ %i.bna, %.lr.ph.i.i.i528.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %.sroa.0.0.lcssa15.i.i.i526.i.i, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !9397
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3589.i.i) ]
  %.not227.i.i393 = icmp ugt i64 %.sroa.012.0595.i.i, %.sroa.14.3588.i.i
  br i1 %.not227.i.i393, label %bb.kd, label %bb.kc, !prof !64

bb.kc:                                            ; preds = %.loopexit257.i.i392
  br i1 %i.bme, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i", label %.lr.ph.preheader.i.i.i394

.lr.ph.preheader.i.i.i394:                        ; preds = %bb.kc
  %i.bnb = mul nuw nsw i64 %.sroa.012.0595.i.i, 2832
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i, ptr nonnull readonly align 8 %.sroa.016.3589.i.i, i64 %i.bnb, i1 false), !alias.scope !9398, !noalias !9353
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i"

bb.kd:                                            ; preds = %.loopexit257.i.i392
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0595.i.i, i64 noundef %.sroa.14.3588.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.je unwind label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i", !noalias !9353

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i394, %bb.kc
  %i.bnc = icmp eq i64 %.sroa.14.3588.i.i, 0
  br i1 %i.bnc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17hbe5d4d76ca3bcd7cE.exit.i.i"
  %i.bnd = mul nuw nsw i64 %.sroa.14.3588.i.i, 2832
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3589.i.i, i64 noundef %i.bnd, i64 noundef 8) #45, !noalias !9353
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"

bb.ke:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"
  %i.bne = icmp eq i64 %.sroa.023.0593.i.i, 0
  %..sroa.023.0.i.i387 = select i1 %i.bne, i64 %i.bmf, i64 %.sroa.023.0593.i.i
  br label %bb.kf

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i", %bb.km, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i"
  %.sroa.12.5.i.i287 = phi i64 [ %.sroa.12.2586.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %.sroa.070.1.i.i388, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i388, %bb.km ] ; 11 uses
  %.sroa.026.5.i.i288 = phi ptr [ %.sroa.026.2587.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %i.bnq, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %i.bnq, %bb.km ] ; 11 uses
  %.sroa.023.1.i.i289 = phi i64 [ %.sroa.023.0593.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h0f87f5d4a7409352E.exit538.i.i" ], [ %.sroa.070.1.i.i388, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i" ], [ %.sroa.070.1.i.i388, %bb.km ]
  %.not628.i.i = icmp eq i64 %i.bmb, 0
  br i1 %.not628.i.i, label %.preheader256.i.i290, label %.lr.ph580.preheader.i.i

.lr.ph580.preheader.i.i:                          ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"
  %reass.sub433.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i284, i64 %.sroa.0.0596.i.i)
  %i.bnf = add nuw nsw i64 %reass.sub433.i, 1
  %reass.sub434.i = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i287, i64 %.sroa.018.0594.i.i)
  %i.bng = add nuw nsw i64 %reass.sub434.i, 1
  br label %.lr.ph580.i.i

bb.kf:                                            ; preds = %bb.kf, %bb.ke
  %.sroa.070.1.i.i388 = phi i64 [ %..sroa.023.0.i.i387, %bb.ke ], [ %i.bni, %bb.kf ] ; 9 uses
  %i.bnh = icmp ult i64 %.sroa.070.1.i.i388, %i.bmf
  %i.bni = shl i64 %.sroa.070.1.i.i388, 1
  br i1 %i.bnh, label %bb.kf, label %bb.kg

bb.kg:                                            ; preds = %bb.kf
  %i.bnj = shl i64 %.sroa.070.1.i.i388, 2         ; 5 uses
  %i.bnk = icmp ugt i64 %.sroa.070.1.i.i388, 4611686018427387903
  %i.bnl = icmp ugt i64 %i.bnj, 9223372036854775804
  %or.cond.i.i.i.i539.i.i = or i1 %i.bnk, %i.bnl
  br i1 %or.cond.i.i.i.i539.i.i, label %bb.kj, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i: ; preds = %bb.kg
  %i.bnm = icmp eq i64 %i.bnj, 0
  br i1 %i.bnm, label %bb.kk, label %bb.kh

bb.kh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9399
  %i.bnn = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.bnj, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9399 ; 2 uses
  %i.bno = icmp eq ptr %i.bnn, null
  br i1 %i.bno, label %bb.kj, label %bb.ki

bb.ki:                                            ; preds = %bb.kh
  %i.bnp = ptrtoint ptr %i.bnn to i64
  br label %bb.kk

bb.kj:                                            ; preds = %bb.kh, %bb.kg
  %.sroa.4.0.ph.i.i542.i.i = phi i64 [ 4, %bb.kh ], [ 0, %bb.kg ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i, i64 %i.bnj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc543.i.i unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.noexc543.i.i:                                    ; preds = %bb.kj
  unreachable

bb.kk:                                            ; preds = %bb.ki, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i
  %.sroa.10.0.i.i541.i.i = phi i64 [ %i.bnp, %bb.ki ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i ]
  %i.bnq = inttoptr i64 %.sroa.10.0.i.i541.i.i to ptr ; 5 uses
  %i.bnr = icmp samesign ult i64 %.sroa.070.1.i.i388, 2305843009213693952
  tail call void @llvm.assume(i1 %i.bnr)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.bnq) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2587.i.i) ]
  %.not229.i.i389 = icmp ugt i64 %.sroa.023.0593.i.i, %.sroa.12.2586.i.i
  br i1 %.not229.i.i389, label %bb.kl, label %bb.km, !prof !64

bb.kl:                                            ; preds = %bb.kk
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0593.i.i, i64 noundef %.sroa.12.2586.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @910) #46
          to label %bb.je unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i", !noalias !9353

bb.km:                                            ; preds = %bb.kk
  %i.bns = shl nuw nsw i64 %.sroa.023.0593.i.i, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.bnq, ptr nonnull readonly align 4 %.sroa.026.2587.i.i, i64 %i.bns, i1 false), !alias.scope !9400, !noalias !9401
  %i.bnt = icmp eq i64 %.sroa.12.2586.i.i, 0
  br i1 %i.bnt, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i": ; preds = %bb.km
  %i.bnu = shl nuw nsw i64 %.sroa.12.2586.i.i, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2587.i.i, i64 noundef %i.bnu, i64 noundef 4) #45, !noalias !9353
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"

.preheader256.i.i290:                             ; preds = %bb.kv, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i"
  %.sroa.018.1.lcssa.i.i291 = phi i64 [ %.sroa.018.0594.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i" ], [ %i.box, %bb.kv ]
  %.sroa.0.1.lcssa.i.i292 = phi i64 [ %.sroa.0.0596.i.i, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i" ], [ %i.boq, %bb.kv ]
  %i.bnv = trunc i64 %.sroa.029.0592.i.i to i32
  %invariant.gep.i.i293 = getelementptr [4 x i8], ptr %i.bag, i64 %.sroa.047.1590.i.i
  br label %bb.kn

._crit_edge585.i.loopexit.i:                      ; preds = %bb.ko
  %i.bnw = add i64 %i.bmb, %.sroa.029.0592.i.i    ; 23 uses
  %i.bnx = add i64 %.sroa.047.1590.i.i, 64        ; 2 uses
  %i.bny = icmp ult i64 %i.bnx, %.sroa.0.0.i.i202
  %indvars.iv.next.i.i295 = add i64 %indvars.iv.i.i272, -64
  br i1 %i.bny, label %.split.i.i271, label %bb.ic

bb.kn:                                            ; preds = %bb.ko, %.preheader256.i.i290
  %i.bnz = phi i64 [ 1, %.preheader256.i.i290 ], [ %i.boh, %bb.ko ] ; 3 uses
  %.sroa.0133.0583.i.i = phi i64 [ 0, %.preheader256.i.i290 ], [ %i.bnz, %bb.ko ] ; 2 uses
  %i.boa = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0133.0583.i.i
  %i.bob = load i32, ptr %i.boa, align 4, !noalias !9353, !noundef !21 ; 2 uses
  %i.boc = zext i32 %i.bob to i64                 ; 2 uses
  %i.bod = icmp ult i32 %i.bob, 64
  br i1 %i.bod, label %bb.ko, label %.invoke3852

bb.ko:                                            ; preds = %bb.kn
  %i.boe = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.boc
  %i.bof = load i32, ptr %i.boe, align 4, !noalias !9353, !noundef !21
  %i.bog = add i32 %i.bof, %i.bnv
  %gep.i.i294 = getelementptr [4 x i8], ptr %invariant.gep.i.i293, i64 %.sroa.0133.0583.i.i
  store i32 %i.bog, ptr %gep.i.i294, align 4, !noalias !9353
  %i.boh = add nuw nsw i64 %i.bnz, 1
  %exitcond847.not.i.i = icmp eq i64 %i.bnz, %umax846.i.i
  br i1 %exitcond847.not.i.i, label %._crit_edge585.i.loopexit.i, label %bb.kn

.lr.ph580.i.i:                                    ; preds = %bb.kv, %.lr.ph580.preheader.i.i
  %i.boi = phi i64 [ %i.bpa, %bb.kv ], [ 1, %.lr.ph580.preheader.i.i ] ; 6 uses
  %.sroa.0.1579.i.i = phi i64 [ %i.boq, %bb.kv ], [ %.sroa.0.0596.i.i, %.lr.ph580.preheader.i.i ] ; 3 uses
  %.sroa.018.1578.i.i = phi i64 [ %i.box, %bb.kv ], [ %.sroa.018.0594.i.i, %.lr.ph580.preheader.i.i ] ; 3 uses
  %.sroa.0131.0577.i.i = phi i64 [ %i.boi, %bb.kv ], [ 0, %.lr.ph580.preheader.i.i ] ; 2 uses
  %exitcond840.not.i.i = icmp eq i64 %i.boi, 65
  br i1 %exitcond840.not.i.i, label %.invoke3852, label %bb.kp

bb.kp:                                            ; preds = %.lr.ph580.i.i
  %i.boj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0131.0577.i.i ; 2 uses
  %i.bok = load i32, ptr %i.boj, align 4, !noalias !9353, !noundef !21
  %i.bol = zext i32 %i.bok to i64                 ; 4 uses
  %i.bom = icmp samesign ugt i64 %.sroa.0.0.i422.i.i217, %i.bol
  br i1 %i.bom, label %bb.kr, label %.invoke3852

bb.kq:                                            ; preds = %bb.ks
  %i.bon = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

bb.kr:                                            ; preds = %bb.kp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i285) ]
  %exitcond842.not.i.i = icmp eq i64 %i.boi, %i.bnf
  br i1 %exitcond842.not.i.i, label %bb.ks, label %bb.kt

bb.ks:                                            ; preds = %bb.kr
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1579.i.i, i64 noundef %.sroa.14.7.i.i284, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @907) #46
          to label %bb.je unwind label %bb.kq, !noalias !9353

bb.kt:                                            ; preds = %bb.kr
  %i.boo = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427923.i.i, i64 %i.bol
  %i.bop = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.016.7.i.i285, i64 %.sroa.0.1579.i.i
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2832) %i.bop, ptr noundef nonnull align 8 dereferenceable(2832) %i.boo, i64 2832, i1 false), !noalias !9353
  %i.boq = add nuw i64 %.sroa.0.1579.i.i, 1       ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i288) ]
  %exitcond844.not.i.i = icmp eq i64 %i.boi, %i.bng
  br i1 %exitcond844.not.i.i, label %.invoke3852, label %bb.ku

bb.ku:                                            ; preds = %bb.kt
  %i.bor = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %i.bol
  %i.bos = load i32, ptr %i.bor, align 4, !noalias !9353, !noundef !21
  %i.bot = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i288, i64 %.sroa.018.1578.i.i
  store i32 %i.bos, ptr %i.bot, align 4, !noalias !9353
  %i.bou = load i32, ptr %i.boj, align 4, !noalias !9353, !noundef !21 ; 2 uses
  %i.bov = zext i32 %i.bou to i64                 ; 2 uses
  %i.bow = icmp ult i32 %i.bou, 64
  br i1 %i.bow, label %bb.kv, label %.invoke3852

bb.kv:                                            ; preds = %bb.ku
  %i.box = add nuw i64 %.sroa.018.1578.i.i, 1     ; 2 uses
  %i.boy = getelementptr inbounds nuw [4 x i8], ptr %i.x, i64 %i.bov
  %i.boz = trunc nuw nsw i64 %.sroa.0131.0577.i.i to i32
  store i32 %i.boz, ptr %i.boy, align 4, !noalias !9353
  %i.bpa = add nuw nsw i64 %i.boi, 1
  %exitcond845.not.i.i = icmp eq i64 %i.boi, %i.bmb
  br i1 %exitcond845.not.i.i, label %.preheader256.i.i290, label %.lr.ph580.i.i

.invoke3852:                                      ; preds = %bb.ku, %bb.kt, %bb.kp, %.lr.ph580.i.i, %bb.kn
  %i.bpb = phi i64 [ %i.boc, %bb.kn ], [ %i.bov, %bb.ku ], [ 64, %.lr.ph580.i.i ], [ %i.bol, %bb.kp ], [ %.sroa.018.1578.i.i, %bb.kt ]
  %i.bpc = phi i64 [ 64, %bb.kn ], [ 64, %bb.ku ], [ 64, %.lr.ph580.i.i ], [ %.sroa.0.0.i422.i.i217, %bb.kp ], [ %.sroa.12.5.i.i287, %bb.kt ]
  %i.bpd = phi ptr [ @904, %bb.kn ], [ @909, %bb.ku ], [ @905, %.lr.ph580.i.i ], [ @906, %bb.kp ], [ @908, %bb.kt ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bpb, i64 noundef %i.bpc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bpd) #46
          to label %.cont3853 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.cont3853:                                        ; preds = %.invoke3852
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i": ; preds = %bb.kl
  %i.bpe = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.bnq, i64 noundef %i.bnj, i64 noundef 4) #45, !noalias !9353
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit551.i.i": ; preds = %bb.kd
  %i.bpf = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i, i64 noundef %i.bmj, i64 noundef 8) #45, !noalias !9353
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i238"

.lr.ph574.i.i:                                    ; preds = %bb.kx, %.split.i.i271
  %.sroa.0127.1573.i.i = phi i64 [ %.sroa.0127.1.i.i281, %bb.kx ], [ 1, %.split.i.i271 ] ; 3 uses
  %.sroa.043.3572.i.i = phi i64 [ %.sroa.043.4.lcssa.i.i278, %bb.kx ], [ %.sroa.043.0591.i.i, %.split.i.i271 ] ; 3 uses
  %.sroa.0127.0571.i.i = phi i64 [ %.sroa.0127.1573.i.i, %bb.kx ], [ 0, %.split.i.i271 ] ; 6 uses
  %i.bpg = getelementptr inbounds nuw [2832 x i8], ptr %.sroa.10.0.i.i.i427923.i.i, i64 %.sroa.0127.0571.i.i ; 5 uses
  %i.bph = getelementptr inbounds nuw i8, ptr %i.bpg, i64 2816 ; 2 uses
  %i.bpi = getelementptr inbounds nuw i8, ptr %i.bpg, i64 2824 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.bpg, i8 0, i64 2824, i1 false), !noalias !9353
  store float 3.402000e+38, ptr %i.bpi, align 8, !alias.scope !9402, !noalias !9353
  %i.bpj = add nuw nsw i64 %.sroa.0127.0571.i.i, %.sroa.047.1590.i.i ; 3 uses
  %i.bpk = icmp ult i64 %i.bpj, %.sroa.0.0.i.i202
  br i1 %i.bpk, label %bb.kw, label %.invoke3850

bb.kw:                                            ; preds = %.lr.ph574.i.i
  %i.bpl = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i205, i64 %i.bpj
  %i.bpm = load i32, ptr %i.bpl, align 4, !noalias !9353, !noundef !21 ; 2 uses
  %.not.i169.i = icmp eq i32 %i.bpm, 0
  br i1 %.not.i169.i, label %._crit_edge.i.i277, label %.lr.ph.preheader.i.i274

.lr.ph.preheader.i.i274:                          ; preds = %bb.kw
  %i.bpn = zext i32 %i.bpm to i64
  %reass.sub.i275 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3572.i.i)
  %i.bpo = add nuw nsw i64 %reass.sub.i275, 1
  br label %.lr.ph.i.i276

._crit_edge.i.i277:                               ; preds = %bb.kz, %bb.kw
  %.sroa.043.4.lcssa.i.i278 = phi i64 [ %.sroa.043.3572.i.i, %bb.kw ], [ %i.bqj, %bb.kz ] ; 2 uses
  %i.bpp = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17h3fde20e01ca068a5E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2832) %i.bpg)
          to label %bb.kx unwind label %.thread164.loopexit.i.i279, !noalias !9353

bb.kx:                                            ; preds = %._crit_edge.i.i277
  store float %i.bpp, ptr %i.bpi, align 8, !alias.scope !9403, !noalias !9353
  %i.bpq = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %.sroa.0127.0571.i.i
  %i.bpr = trunc nuw nsw i64 %.sroa.0127.0571.i.i to i32 ; 2 uses
  store i32 %i.bpr, ptr %i.bpq, align 4, !noalias !9353
  %i.bps = getelementptr inbounds nuw [4 x i8], ptr %i.y, i64 %.sroa.0127.0571.i.i
  store i32 %i.bpr, ptr %i.bps, align 4, !noalias !9353
  %i.bpt = getelementptr inbounds nuw [4 x i8], ptr %i.aa, i64 %.sroa.0127.0571.i.i
  store i32 1, ptr %i.bpt, align 4, !noalias !9353
  %i.bpu = icmp samesign ult i64 %.sroa.0127.1573.i.i, %.sroa.0.0.i447.i.i273 ; 2 uses
  %i.bpv = zext i1 %i.bpu to i64
  %.sroa.0127.1.i.i281 = add nuw i64 %.sroa.0127.1573.i.i, %i.bpv
  br i1 %i.bpu, label %.lr.ph574.i.i, label %._crit_edge575.i.loopexit.i

.lr.ph.i.i276:                                    ; preds = %bb.kz, %.lr.ph.preheader.i.i274
  %i.bpw = phi i64 [ %i.bqk, %bb.kz ], [ 1, %.lr.ph.preheader.i.i274 ] ; 3 uses
  %.sroa.043.4570.i.i = phi i64 [ %i.bqj, %bb.kz ], [ %.sroa.043.3572.i.i, %.lr.ph.preheader.i.i274 ] ; 3 uses
  %exitcond838.not.i.i = icmp eq i64 %i.bpw, %i.bpo
  br i1 %exitcond838.not.i.i, label %.invoke3850, label %bb.ky

bb.ky:                                            ; preds = %.lr.ph.i.i276
  %i.bpx = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %.sroa.043.4570.i.i
  %i.bpy = load i16, ptr %i.bpx, align 2, !alias.scope !9404, !noalias !9392, !noundef !21 ; 2 uses
  %i.bpz = zext i16 %i.bpy to i64                 ; 2 uses
  %i.bqa = icmp ult i16 %i.bpy, 704
  br i1 %i.bqa, label %bb.kz, label %.invoke3850

.invoke3850:                                      ; preds = %.lr.ph574.i.i, %bb.ky, %.lr.ph.i.i276
  %i.bqb = phi i64 [ %.sroa.043.4570.i.i, %.lr.ph.i.i276 ], [ %i.bpz, %bb.ky ], [ %i.bpj, %.lr.ph574.i.i ]
  %i.bqc = phi i64 [ %2, %.lr.ph.i.i276 ], [ 704, %bb.ky ], [ %.sroa.0.0.i.i202, %.lr.ph574.i.i ]
  %i.bqd = phi ptr [ @913, %.lr.ph.i.i276 ], [ @1286, %bb.ky ], [ @912, %.lr.ph574.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.bqb, i64 noundef %i.bqc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bqd) #46
          to label %.cont3851 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.cont3851:                                        ; preds = %.invoke3850
  unreachable

bb.kz:                                            ; preds = %bb.ky
  %i.bqe = getelementptr inbounds nuw [4 x i8], ptr %i.bpg, i64 %i.bpz ; 2 uses
  %i.bqf = load i32, ptr %i.bqe, align 4, !alias.scope !9405, !noalias !9353, !noundef !21
  %i.bqg = add i32 %i.bqf, 1
  store i32 %i.bqg, ptr %i.bqe, align 4, !alias.scope !9405, !noalias !9353
  %i.bqh = load i64, ptr %i.bph, align 8, !alias.scope !9406, !noalias !9353, !noundef !21
  %i.bqi = add i64 %i.bqh, 1
  store i64 %i.bqi, ptr %i.bph, align 8, !alias.scope !9407, !noalias !9353
  %i.bqj = add nuw i64 %.sroa.043.4570.i.i, 1     ; 2 uses
  %i.bqk = add nuw nsw i64 %i.bpw, 1
  %exitcond839.not.i.i = icmp eq i64 %i.bpw, %i.bpn
  br i1 %exitcond839.not.i.i, label %._crit_edge.i.i277, label %.lr.ph.i.i276

bb.la:                                            ; preds = %bb.ld, %bb.ia
  %.sroa.047.0568.i.i = phi i64 [ 0, %bb.ia ], [ %i.bqp, %bb.ld ] ; 2 uses
  %.sroa.059.0567.i.i = phi i64 [ 0, %bb.ia ], [ %.sroa.059.1.i.i270, %bb.ld ] ; 5 uses
  %i.bql = icmp ult i64 %.sroa.059.0567.i.i, %.sroa.0.0.i.i202
  br i1 %i.bql, label %bb.lb, label %.invoke.i.i227

bb.lb:                                            ; preds = %bb.la
  %i.bqm = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i205, i64 %.sroa.059.0567.i.i ; 2 uses
  %i.bqn = load i32, ptr %i.bqm, align 4, !noalias !9353, !noundef !21
  %i.bqo = add i32 %i.bqn, 1
  store i32 %i.bqo, ptr %i.bqm, align 4, !noalias !9353
  %i.bqp = add nuw i64 %.sroa.047.0568.i.i, 1     ; 3 uses
  %i.bqq = icmp eq i64 %i.bqp, %2                 ; 2 uses
  br i1 %i.bqq, label %bb.le, label %bb.lc

bb.lc:                                            ; preds = %bb.lb
  %i.bqr = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %.sroa.047.0568.i.i
  %i.bqs = load i8, ptr %i.bqr, align 1, !alias.scope !9349, !noalias !9408, !noundef !21
  %i.bqt = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %i.bqp
  %i.bqu = load i8, ptr %i.bqt, align 1, !alias.scope !9349, !noalias !9408, !noundef !21
  %.not238.i.i269 = icmp eq i8 %i.bqs, %i.bqu
  br i1 %.not238.i.i269, label %bb.ld, label %bb.le

.invoke.i.i227:                                   ; preds = %bb.la
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0567.i.i, i64 noundef %.sroa.0.0.i.i202, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @914) #46
          to label %.cont.i.i268 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i228, !noalias !9353

.cont.i.i268:                                     ; preds = %.invoke.i.i227
  unreachable

bb.ld:                                            ; preds = %bb.le, %bb.lc
  %.sroa.059.1.i.i270 = phi i64 [ %i.bqv, %bb.le ], [ %.sroa.059.0567.i.i, %bb.lc ]
  br i1 %i.bqq, label %.split.i.i271, label %bb.la

bb.le:                                            ; preds = %bb.lc, %bb.lb
  %i.bqv = add nuw nsw i64 %.sroa.059.0567.i.i, 1
  br label %bb.ld

.thread131.i.i308:                                ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i", %.loopexit.split-lp.i.i324, %bb.ib
  %.pn230156.i.i309 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i307, %bb.ib ], [ %.pn.i.i329, %.loopexit.split-lp.i.i324 ], [ %.pn943.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.016.4155.i.i310 = phi ptr [ %.sroa.016.7.i.i285, %bb.ib ], [ %.sroa.016.6.i.i328, %.loopexit.split-lp.i.i324 ], [ %.sroa.016.6942.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.14.4154.i.i311 = phi i64 [ %.sroa.14.7.i.i284, %bb.ib ], [ %.sroa.14.6.i.i327, %.loopexit.split-lp.i.i324 ], [ %.sroa.14.6941.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.026.3153.i.i312 = phi ptr [ %.sroa.026.4.ph163.i.i306, %bb.ib ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i324 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.12.3152.i.i313 = phi i64 [ %.sroa.12.4.ph162.i.i305, %bb.ib ], [ 0, %.loopexit.split-lp.i.i324 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.044.0149.i.i314 = phi ptr [ %.sroa.044.1.ph161.i.i304, %bb.ib ], [ inttoptr (i64 4 to ptr), %.loopexit.split-lp.i.i324 ], [ inttoptr (i64 4 to ptr), %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ]
  %.sroa.11.0148.i.i315 = phi i64 [ %.sroa.11.1.ph160.i.i303, %bb.ib ], [ 0, %.loopexit.split-lp.i.i324 ], [ 0, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.051.0147.i.i316 = phi ptr [ %i.bde, %bb.ib ], [ %.sroa.051.2.i.i326, %.loopexit.split-lp.i.i324 ], [ %.sroa.051.2940.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %.sroa.1152.0146.i.i317 = phi i64 [ %i.bnw, %bb.ib ], [ %.sroa.1152.2.i.i325, %.loopexit.split-lp.i.i324 ], [ %.sroa.1152.2939.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i516.i.i" ] ; 2 uses
  %i.bqw = icmp eq i64 %.sroa.1152.0146.i.i317, 0
  br i1 %i.bqw, label %bb.jc, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i554.i.i": ; preds = %.thread131.i.i308
  %i.bqx = shl nuw nsw i64 %.sroa.1152.0146.i.i317, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.051.0147.i.i316) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.051.0147.i.i316, i64 noundef %i.bqx, i64 noundef 4) #45, !noalias !9353
  br label %bb.jc

bb.lf:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i", %bb.hu, %.thread86.i.i405
  %.pn230.pn.pn.pn.pn.pn90.i.i266 = phi { ptr, i32 } [ %i.bbb, %.thread86.i.i405 ], [ %.pn230.pn.pn.pn.pn101.i.i264, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i" ], [ %.pn230.pn.pn.pn.i.i261, %bb.hu ] ; 2 uses
  %i.bqy = icmp eq i64 %.sroa.0.0.i.i202, 0
  br i1 %i.bqy, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i", label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread946.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread946.i.i": ; preds = %bb.lf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i411.i.i205, i64 noundef %i.azw, i64 noundef 4) #45, !noalias !9353
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i": ; preds = %bb.ho
  %i.bqz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.bra = icmp eq i64 %.sroa.0.0.i.i202, 0
  br i1 %i.bra, label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread946.i.i"
  %i.brb = phi ptr [ %i.bag, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread946.i.i" ], [ %i.bab, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ] ; 2 uses
  %.pn230.pn.pn.pn.pn.pn.pn85948.i.i = phi { ptr, i32 } [ %.pn230.pn.pn.pn.pn.pn90.i.i266, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.thread946.i.i" ], [ %i.bqz, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.brb) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.brb, i64 noundef %i.azw, i64 noundef 4) #45, !noalias !9353
  br label %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i"

bb.lg:                                            ; preds = %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i, %.split.i76
  %.sroa.032.1429.i = phi i64 [ 1, %.split.i76 ], [ %.sroa.032.1.i204, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i ] ; 2 uses
  %.sroa.0.0428.i = phi i64 [ %spec.store.select.i44, %.split.i76 ], [ %i.cha, %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i ] ; 22 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9409)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9410)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9411)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9412)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9413)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9414)
  %i.brc = icmp eq i64 %.sroa.0.0428.i, 0
  br i1 %i.brc, label %.loopexit.i201, label %bb.lh

bb.lh:                                            ; preds = %bb.lg
  %i.brd = add i64 %.sroa.0.0428.i, 7
  %i.bre = lshr i64 %i.brd, 3                     ; 8 uses
  %i.brf = icmp eq i64 %.sroa.0.0428.i, 1
  br i1 %i.brf, label %.preheader.i.i415.preheader, label %bb.li

.preheader.i.i415.preheader:                      ; preds = %bb.lh
  br i1 %min.iters.check3691, label %.preheader.i.i415.preheader4250, label %vector.body3694

.preheader.i.i415.preheader4250:                  ; preds = %vector.body3694, %.preheader.i.i415.preheader
  %.ph4251 = phi i64 [ 1, %.preheader.i.i415.preheader ], [ %i.azt, %vector.body3694 ]
  %.sroa.066.0449.i.i416.ph = phi i64 [ 0, %.preheader.i.i415.preheader ], [ %n.vec3693, %vector.body3694 ]
  br label %.preheader.i.i415

vector.body3694:                                  ; preds = %.preheader.i.i415.preheader, %vector.body3694
  %index3695 = phi i64 [ %index.next3696, %vector.body3694 ], [ 0, %.preheader.i.i415.preheader ] ; 2 uses
  %i.brg = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %index3695 ; 2 uses
  %i.brh = getelementptr inbounds nuw i8, ptr %i.brg, i64 16
  store <16 x i8> zeroinitializer, ptr %i.brg, align 1, !alias.scope !9414, !noalias !9415
  store <16 x i8> zeroinitializer, ptr %i.brh, align 1, !alias.scope !9414, !noalias !9415
  %index.next3696 = add nuw i64 %index3695, 32    ; 2 uses
  %i.bri = icmp eq i64 %index.next3696, %n.vec3693
  br i1 %i.bri, label %.preheader.i.i415.preheader4250, label %vector.body3694, !llvm.loop !8812

bb.li:                                            ; preds = %bb.lh
  %.not121.i.i79 = icmp ugt i64 %.sroa.0.0428.i, %spec.store.select.i44
  br i1 %.not121.i.i79, label %bb.lj, label %.preheader360.i.i80, !prof !64

bb.lj:                                            ; preds = %bb.li
  %i.brj = mul nuw nsw i64 %.sroa.0.0428.i, 704
  br label %.invoke1162.i

.invoke1162.i:                                    ; preds = %bb.nu, %.lr.ph403.i.preheader.i99, %bb.lv, %bb.lj
  %i.brk = phi i64 [ %i.brj, %bb.lj ], [ %i.bre, %bb.lv ], [ %i.brp, %.lr.ph403.i.preheader.i99 ], [ %i.cha, %bb.nu ]
  %i.brl = phi i64 [ %i.ayl, %bb.lj ], [ %i.ayk, %bb.lv ], [ %i.ayw, %.lr.ph403.i.preheader.i99 ], [ %spec.store.select.i44, %bb.nu ]
  %i.brm = phi ptr [ @892, %bb.lj ], [ @923, %bb.lv ], [ @888, %.lr.ph403.i.preheader.i99 ], [ @1285, %bb.nu ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %i.brk, i64 noundef %i.brl, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.brm) #46
          to label %.cont1163.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i96", !noalias !9310

.cont1163.i:                                      ; preds = %.invoke1162.i
  unreachable

.preheader360.i.i80:                              ; preds = %bb.li
  %.idx.i.i81 = mul nuw nsw i64 %.sroa.0.0428.i, 2816
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ayn, i8 0, i64 %.idx.i.i81, i1 false), !alias.scope !9411, !noalias !9416
  br label %bb.lk

bb.lk:                                            ; preds = %bb.nr, %.preheader360.i.i80
  %i.brn = phi i64 [ 1, %.preheader360.i.i80 ], [ %i.cgu, %bb.nr ] ; 4 uses
  %.sroa.069.0399.i.i82 = phi i64 [ 0, %.preheader360.i.i80 ], [ %i.brn, %bb.nr ] ; 3 uses
  %exitcond.not.i177.i = icmp eq i64 %i.brn, %i.azj
  br i1 %exitcond.not.i177.i, label %.invoke.i95, label %bb.np

.loopexit358.i.i98:                               ; preds = %bb.no
  %i.bro = icmp eq i64 %i.brq, 0
  br i1 %i.bro, label %.lr.ph403.i.preheader.i99, label %.split.i178.i

.lr.ph403.i.preheader.i99:                        ; preds = %.loopexit358.i.i98
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ayr, i8 0, i64 %i.ayq, i1 false), !alias.scope !9412, !noalias !9417
  %i.brp = mul i64 %i.bre, %2                     ; 4 uses
  %.not124.i.i100 = icmp ugt i64 %i.brp, %i.ayw
  br i1 %.not124.i.i100, label %.invoke1162.i, label %bb.ll, !prof !64

.split.i178.i:                                    ; preds = %bb.nr, %.loopexit358.i.i98
  %.sroa.05.0401.i.i84 = phi i64 [ %i.brq, %.loopexit358.i.i98 ], [ 704, %bb.nr ]
  %i.brq = add nsw i64 %.sroa.05.0401.i.i84, -1   ; 4 uses
  %invariant.gep.i179.i = getelementptr [4 x i8], ptr %i.atn, i64 %i.brq
  %i.brr = mul i64 %i.brq, %.sroa.0.0428.i
  br label %bb.nm

bb.ll:                                            ; preds = %.lr.ph403.i.preheader.i99
  %.not355404.i.i101 = icmp samesign eq i64 %i.brp, 0
  br i1 %.not355404.i.i101, label %.lr.ph434.i.i104, label %.lr.ph407.preheader.i.i102

.lr.ph407.preheader.i.i102:                       ; preds = %bb.ll
  tail call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.azd, i8 0, i64 %i.brp, i1 false), !alias.scope !9413, !noalias !9418
  br label %.lr.ph434.i.i104

.lr.ph434.i.i104:                                 ; preds = %bb.ll, %.lr.ph407.preheader.i.i102
  %i.brs = lshr i64 %.sroa.0.0428.i, 3            ; 3 uses
  %.not131.i.i105 = icmp samesign ugt i64 %i.brs, %i.ayk
  %.idx452.i.i106 = shl nuw nsw i64 %i.brs, 5
  %i.brt = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %.idx452.i.i106
  %i.bru = icmp eq i64 %i.brs, 0
  %i.brv = and i64 %.sroa.0.0428.i, -8            ; 8 uses
  %i.brw = and i64 %.sroa.0.0428.i, 7             ; 4 uses
  %.not.i.i182.i = icmp samesign ugt i64 %i.bre, %i.ayk
  %.idx453.i.i107 = shl i64 %i.bre, 5             ; 2 uses
  %i.brx = getelementptr inbounds nuw i8, ptr %i.ayr, i64 %.idx453.i.i107
  br i1 %.not131.i.i105, label %.lr.ph434.split.us.i.i412, label %.lr.ph434.split.preheader.i.i108, !prof !30

.lr.ph434.split.preheader.i.i108:                 ; preds = %.lr.ph434.i.i104
  %.idx454.i.i = shl nuw nsw i64 %i.brw, 2        ; 3 uses
  %i.bry = icmp eq i64 %i.brw, 0
  %i.brz = lshr i64 %.sroa.0.0428.i, 3            ; 3 uses
  %i.bsa = icmp samesign ult i64 %i.brz, %i.ayk
  %i.bsb = getelementptr inbounds nuw [32 x i8], ptr %i.ayr, i64 %i.brz ; 2 uses
  %i.bsc = trunc i64 %i.brv to i8
  %i.bsd = icmp eq i64 %i.brw, 1                  ; 2 uses
  %.sroa.077.1.idx.i.i157 = select i1 %i.bsd, i64 0, i64 4 ; 3 uses
  %i.bse = lshr i64 %.sroa.0.0428.i, 3            ; 3 uses
  %i.bsf = icmp samesign ult i64 %i.bse, %i.ayk
  %i.bsg = getelementptr inbounds nuw [32 x i8], ptr %i.ayr, i64 %i.bse
  %i.bsh = getelementptr inbounds nuw i8, ptr %i.bsg, i64 4 ; 2 uses
  %i.bsi = trunc i64 %i.brv to i8
  %i.bsj = or disjoint i8 %i.bsi, 1
  %i.bsk = add nuw nsw i64 %.sroa.077.1.idx.i.i157, 4
  %i.bsl = icmp samesign eq i64 %i.bsk, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i157.1 = select i1 %i.bsl, i64 0, i64 4 ; 2 uses
  %i.bsm = lshr i64 %.sroa.0.0428.i, 3            ; 3 uses
  %i.bsn = icmp samesign ult i64 %i.bsm, %i.ayk
  %i.bso = getelementptr inbounds nuw [32 x i8], ptr %i.ayr, i64 %i.bsm
  %i.bsp = getelementptr inbounds nuw i8, ptr %i.bso, i64 8 ; 2 uses
  %i.bsq = trunc i64 %i.brv to i8
  %i.bsr = or disjoint i8 %i.bsq, 2
  %i.bss = add nuw nsw i64 %.sroa.077.1.idx.i.i157, 4
  %i.bst = add nuw nsw i64 %i.bss, %.sroa.077.1.idx.i.i157.1
  %i.bsu = icmp samesign eq i64 %i.bst, %.idx454.i.i ; 2 uses
  %.sroa.077.1.idx.i.i157.2 = select i1 %i.bsu, i64 0, i64 4
  %i.bsv = lshr i64 %.sroa.0.0428.i, 3            ; 3 uses
  %i.bsw = icmp samesign ult i64 %i.bsv, %i.ayk
end_hunk_6
begin_hunk_7_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  %.sroa.029.4.4.i.i141 = phi float [ %i.cfe, %bb.ne ], [ %.sroa.029.4.3.i.i140, %bb.nd ] ; 2 uses
  %i.cfi = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i116, i64 20 ; 2 uses
  %i.cfj = load float, ptr %i.cfi, align 4, !alias.scope !9412, !noalias !9417, !noundef !21
  %i.cfk = fadd float %.sroa.9.0.copyload.i.i132, %i.cfj ; 3 uses
  store float %i.cfk, ptr %i.cfi, align 4, !alias.scope !9412, !noalias !9417
  %i.cfl = fcmp olt float %i.cfk, %.sroa.029.4.4.i.i141
  br i1 %i.cfl, label %bb.ng, label %bb.nh

bb.ng:                                            ; preds = %bb.nf
  %i.cfm = trunc i64 %i.bve to i8
  %i.cfn = or disjoint i8 %i.cfm, 5
  store i8 %i.cfn, ptr %i.buv, align 1, !alias.scope !9414, !noalias !9415
  br label %bb.nh

bb.nh:                                            ; preds = %bb.ng, %bb.nf
  %.sroa.029.4.5.i.i142 = phi float [ %i.cfk, %bb.ng ], [ %.sroa.029.4.4.i.i141, %bb.nf ] ; 2 uses
  %i.cfo = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i116, i64 24 ; 2 uses
  %i.cfp = load float, ptr %i.cfo, align 4, !alias.scope !9412, !noalias !9417, !noundef !21
  %i.cfq = fadd float %.sroa.10.0.copyload.i.i134, %i.cfp ; 3 uses
  store float %i.cfq, ptr %i.cfo, align 4, !alias.scope !9412, !noalias !9417
  %i.cfr = fcmp olt float %i.cfq, %.sroa.029.4.5.i.i142
  br i1 %i.cfr, label %bb.ni, label %bb.nj

bb.ni:                                            ; preds = %bb.nh
  %i.cfs = trunc i64 %i.bve to i8
  %i.cft = or disjoint i8 %i.cfs, 6
  store i8 %i.cft, ptr %i.buv, align 1, !alias.scope !9414, !noalias !9415
  br label %bb.nj

bb.nj:                                            ; preds = %bb.ni, %bb.nh
  %.sroa.029.4.6.i.i143 = phi float [ %i.cfq, %bb.ni ], [ %.sroa.029.4.5.i.i142, %bb.nh ] ; 2 uses
  %i.cfu = getelementptr inbounds nuw i8, ptr %.sroa.0164.0412.i.i116, i64 28 ; 2 uses
  %i.cfv = load float, ptr %i.cfu, align 4, !alias.scope !9412, !noalias !9417, !noundef !21
  %i.cfw = fadd float %.sroa.11.0.copyload.i.i136, %i.cfv ; 3 uses
  store float %i.cfw, ptr %i.cfu, align 4, !alias.scope !9412, !noalias !9417
  %i.cfx = fcmp olt float %i.cfw, %.sroa.029.4.6.i.i143
  br i1 %i.cfx, label %bb.nk, label %bb.nl

bb.nk:                                            ; preds = %bb.nj
  %i.cfy = trunc i64 %i.bve to i8
  %i.cfz = or disjoint i8 %i.cfy, 7
  store i8 %i.cfz, ptr %i.buv, align 1, !alias.scope !9414, !noalias !9415
  br label %bb.nl

bb.nl:                                            ; preds = %bb.nk, %bb.nj
  %.sroa.029.4.7.i.i144 = phi float [ %i.cfw, %bb.nk ], [ %.sroa.029.4.6.i.i143, %bb.nj ] ; 2 uses
  %i.cga = icmp eq ptr %i.bvc, %i.brt
  br i1 %i.cga, label %._crit_edge416.i.i145, label %.lr.ph415.i.i114

bb.nm:                                            ; preds = %bb.no, %.split.i178.i
  %i.cgb = phi i64 [ 1, %.split.i178.i ], [ %i.cgl, %bb.no ] ; 4 uses
  %.sroa.071.0400.i.i85 = phi i64 [ 0, %.split.i178.i ], [ %i.cgb, %bb.no ] ; 4 uses
  %i.cgc = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %.sroa.071.0400.i.i85
  %i.cgd = load float, ptr %i.cgc, align 4, !alias.scope !9411, !noalias !9416, !noundef !21
  %exitcond482.not.i.i86 = icmp eq i64 %i.cgb, %i.azj
  br i1 %exitcond482.not.i.i86, label %.invoke.i95, label %bb.nn

bb.nn:                                            ; preds = %bb.nm
  %gep.i180.i = getelementptr [2832 x i8], ptr %invariant.gep.i179.i, i64 %.sroa.071.0400.i.i85
  %i.cge = load i32, ptr %gep.i180.i, align 4, !alias.scope !9410, !noalias !9427, !noundef !21
  %i.cgf = zext i32 %i.cge to i64
  %i.cgg = invoke noundef float @_ZN6brotli3enc14block_splitter7BitCost17ha3cadffaa92c7bd7E(i64 noundef %i.cgf)
          to label %.noexc200.i unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i87", !noalias !9310

.noexc200.i:                                      ; preds = %bb.nn
  %i.cgh = add nuw nsw i64 %.sroa.071.0400.i.i85, %i.brr ; 3 uses
  %i.cgi = icmp ult i64 %i.cgh, %i.ayl
  br i1 %i.cgi, label %bb.no, label %.invoke.i95

bb.no:                                            ; preds = %.noexc200.i
  %i.cgj = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %i.cgh
  %i.cgk = fsub float %i.cgd, %i.cgg
  store float %i.cgk, ptr %i.cgj, align 4, !alias.scope !9411, !noalias !9416
  %i.cgl = add nuw nsw i64 %i.cgb, 1
  %exitcond483.not.i.i = icmp eq i64 %i.cgb, %.sroa.0.0428.i
  br i1 %exitcond483.not.i.i, label %.loopexit358.i.i98, label %bb.nm

bb.np:                                            ; preds = %bb.lk
  %i.cgm = getelementptr inbounds nuw [2832 x i8], ptr %i.atn, i64 %.sroa.069.0399.i.i82
  %i.cgn = getelementptr inbounds nuw i8, ptr %i.cgm, i64 2816
  %i.cgo = load i64, ptr %i.cgn, align 8, !alias.scope !9428, !noalias !9427, !noundef !21
  %i.cgp = and i64 %i.cgo, 4294967295             ; 3 uses
  %i.cgq = icmp samesign ult i64 %i.cgp, 256
  br i1 %i.cgq, label %bb.ns, label %bb.nq

bb.nq:                                            ; preds = %bb.np
  %i.cgr = uitofp nneg i64 %i.cgp to float
  %i.cgs = tail call float @llvm.log2.f32(float %i.cgr)
  br label %bb.nr

bb.nr:                                            ; preds = %bb.ns, %bb.nq
  %.sroa.016.0.i.i83 = phi float [ %i.cgw, %bb.ns ], [ %i.cgs, %bb.nq ]
  %i.cgt = getelementptr inbounds nuw [4 x i8], ptr %i.ayn, i64 %.sroa.069.0399.i.i82
  store float %.sroa.016.0.i.i83, ptr %i.cgt, align 4, !alias.scope !9411, !noalias !9416
  %i.cgu = add nuw nsw i64 %i.brn, 1
  %exitcond480.not.i.i = icmp eq i64 %i.brn, %.sroa.0.0428.i
  br i1 %exitcond480.not.i.i, label %.split.i178.i, label %bb.lk

bb.ns:                                            ; preds = %bb.np
  %i.cgv = getelementptr inbounds nuw [4 x i8], ptr @_ZN6brotli3enc11log_table_86logs_817hcdfb6f7171a9ff1cE, i64 %i.cgp
  %i.cgw = load float, ptr %i.cgv, align 4, !noalias !9421, !noundef !21
  br label %bb.nr

.preheader.i.i415:                                ; preds = %.preheader.i.i415.preheader4250, %bb.nt
  %i.cgx = phi i64 [ %i.cgz, %bb.nt ], [ %.ph4251, %.preheader.i.i415.preheader4250 ] ; 4 uses
  %.sroa.066.0449.i.i416 = phi i64 [ %i.cgx, %bb.nt ], [ %.sroa.066.0449.i.i416.ph, %.preheader.i.i415.preheader4250 ] ; 2 uses
  %exitcond488.not.i.i417 = icmp eq i64 %i.cgx, %i.azn
  br i1 %exitcond488.not.i.i417, label %.invoke.i95, label %bb.nt

bb.nt:                                            ; preds = %.preheader.i.i415
  %i.cgy = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %.sroa.066.0449.i.i416
  store i8 0, ptr %i.cgy, align 1, !alias.scope !9414, !noalias !9415
  %i.cgz = add nuw nsw i64 %i.cgx, 1
  %exitcond489.not.i.i = icmp eq i64 %i.cgx, %2
  br i1 %exitcond489.not.i.i, label %.loopexit.i201, label %.preheader.i.i415, !llvm.loop !8825

.loopexit.i201:                                   ; preds = %bb.lo, %bb.nt, %bb.lg
  %.sroa.0.0.i.i202 = phi i64 [ 0, %bb.lg ], [ 1, %bb.nt ], [ %.sroa.03.1.i.i199, %bb.lo ] ; 29 uses
  %i.cha = invoke noundef i64 @_ZN6brotli3enc14block_splitter13RemapBlockIds17h8fd1281eacf3913bE(ptr noalias noundef nonnull align 1 %i.ayh, i64 noundef %2, i64 noundef %2, ptr noalias noundef nonnull align 2 %i.azf, i64 noundef %spec.store.select.i44, i64 noundef %.sroa.0.0428.i)
          to label %bb.nu unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i203", !noalias !9310 ; 5 uses

bb.nu:                                            ; preds = %.loopexit.i201
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9429)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9430)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9431)
  %.not.i.i206.i = icmp ugt i64 %i.cha, %spec.store.select.i44
  br i1 %.not.i.i206.i, label %.invoke1162.i, label %bb.nv, !prof !64

bb.nv:                                            ; preds = %bb.nu
  %.idx.i.i207.i = mul i64 %i.cha, 2832           ; 2 uses
  %i.chb = getelementptr inbounds nuw i8, ptr %i.atn, i64 %.idx.i.i207.i
  %i.chc = icmp eq i64 %i.cha, 0
  br i1 %i.chc, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i.preheader

.lr.ph.i.i208.i.preheader:                        ; preds = %bb.nv
  %i.chd = add i64 %.idx.i.i207.i, -2832          ; 2 uses
  %i.che = udiv i64 %i.chd, 2832
  %i.chf = add nuw nsw i64 %i.che, 1
  %xtraiter4569 = and i64 %i.chf, 7               ; 2 uses
  %lcmp.mod4570.not = icmp eq i64 %xtraiter4569, 0
  br i1 %lcmp.mod4570.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol

.lr.ph.i.i208.i.prol:                             ; preds = %.lr.ph.i.i208.i.preheader, %.lr.ph.i.i208.i.prol
  %.sroa.02.05.i.i209.i.prol = phi ptr [ %i.chg, %.lr.ph.i.i208.i.prol ], [ %i.atn, %.lr.ph.i.i208.i.preheader ] ; 3 uses
  %prol.iter4571 = phi i64 [ %prol.iter4571.next, %.lr.ph.i.i208.i.prol ], [ 0, %.lr.ph.i.i208.i.preheader ]
  %i.chg = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2832 ; 2 uses
  %i.chh = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i.prol, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i.prol, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chh, align 8, !alias.scope !9434, !noalias !9433
  %prol.iter4571.next = add i64 %prol.iter4571, 1 ; 2 uses
  %prol.iter4571.cmp.not = icmp eq i64 %prol.iter4571.next, %xtraiter4569
  br i1 %prol.iter4571.cmp.not, label %.lr.ph.i.i208.i.prol.loopexit, label %.lr.ph.i.i208.i.prol, !llvm.loop !8834

.lr.ph.i.i208.i.prol.loopexit:                    ; preds = %.lr.ph.i.i208.i.prol, %.lr.ph.i.i208.i.preheader
  %.sroa.02.05.i.i209.i.unr = phi ptr [ %i.atn, %.lr.ph.i.i208.i.preheader ], [ %i.chg, %.lr.ph.i.i208.i.prol ]
  %i.chi = icmp ult i64 %i.chd, 19824
  br i1 %i.chi, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i

.lr.ph.i.i208.i:                                  ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i
  %.sroa.02.05.i.i209.i = phi ptr [ %i.chx, %.lr.ph.i.i208.i ], [ %.sroa.02.05.i.i209.i.unr, %.lr.ph.i.i208.i.prol.loopexit ] ; 17 uses
  %i.chj = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2832
  %i.chk = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 2824
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2824) %.sroa.02.05.i.i209.i, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chk, align 8, !alias.scope !9434, !noalias !9433
  %i.chl = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5664
  %i.chm = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 5656
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chj, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chm, align 8, !alias.scope !9434, !noalias !9433
  %i.chn = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8496
  %i.cho = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 8488
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chl, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.cho, align 8, !alias.scope !9434, !noalias !9433
  %i.chp = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11328
  %i.chq = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 11320
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chn, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chq, align 8, !alias.scope !9434, !noalias !9433
  %i.chr = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14160
  %i.chs = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 14152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chp, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chs, align 8, !alias.scope !9434, !noalias !9433
  %i.cht = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16992
  %i.chu = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 16984
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chr, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chu, align 8, !alias.scope !9434, !noalias !9433
  %i.chv = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19824
  %i.chw = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 19816
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.cht, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chw, align 8, !alias.scope !9434, !noalias !9433
  %i.chx = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22656 ; 2 uses
  %i.chy = getelementptr inbounds nuw i8, ptr %.sroa.02.05.i.i209.i, i64 22648
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2824) %i.chv, i8 0, i64 2824, i1 false), !alias.scope !9432, !noalias !9433
  store float 3.402000e+38, ptr %i.chy, align 8, !alias.scope !9434, !noalias !9433
  %i.chz = icmp eq ptr %i.chx, %i.chb
  br i1 %i.chz, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, label %.lr.ph.i.i208.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader: ; preds = %.lr.ph.i.i208.i.prol.loopexit, %.lr.ph.i.i208.i, %bb.nv
  br label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i: ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i
  %.sroa.01.013.i.i = phi i64 [ %i.cia, %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i ], [ 0, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i.preheader ] ; 3 uses
  %i.cia = add nuw i64 %.sroa.01.013.i.i, 1       ; 2 uses
  %i.cib = getelementptr inbounds nuw i8, ptr %i.ayh, i64 %.sroa.01.013.i.i
  %i.cic = load i8, ptr %i.cib, align 1, !alias.scope !9430, !noalias !9435, !noundef !21
  %i.cid = zext i8 %i.cic to i64                  ; 3 uses
  %.not93.i = icmp samesign ult i64 %i.ati, %i.cid
  br i1 %.not93.i, label %.invoke.i95, label %bb.nw

bb.nw:                                            ; preds = %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i
  %i.cie = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %.sroa.01.013.i.i
  %i.cif = load i16, ptr %i.cie, align 2, !alias.scope !9436, !noalias !9437, !noundef !21 ; 2 uses
  %i.cig = zext i16 %i.cif to i64                 ; 2 uses
  %i.cih = icmp ult i16 %i.cif, 704
  br i1 %i.cih, label %_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i, label %.invoke.i95

_ZN6brotli3enc9histogram16HistogramAddItem17hfc6fbf5ad428868aE.exit.i.i: ; preds = %bb.nw
  %i.cii = getelementptr inbounds nuw [2832 x i8], ptr %i.atn, i64 %i.cid ; 2 uses
  %i.cij = getelementptr inbounds nuw [4 x i8], ptr %i.cii, i64 %i.cig ; 2 uses
  %i.cik = load i32, ptr %i.cij, align 4, !alias.scope !9438, !noalias !9433, !noundef !21
  %i.cil = add i32 %i.cik, 1
  store i32 %i.cil, ptr %i.cij, align 4, !alias.scope !9438, !noalias !9433
  %i.cim = getelementptr inbounds nuw i8, ptr %i.cii, i64 2816 ; 2 uses
  %i.cin = load i64, ptr %i.cim, align 8, !alias.scope !9439, !noalias !9433, !noundef !21
  %i.cio = add i64 %i.cin, 1
  store i64 %i.cio, ptr %i.cim, align 8, !alias.scope !9440, !noalias !9433
  %exitcond24.not.i.i = icmp eq i64 %i.cia, %2
  br i1 %exitcond24.not.i.i, label %_ZN6brotli3enc14block_splitter20BuildBlockHistograms17h29ebbaa8acffa01fE.exit.loopexit.i, label %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i

.invoke.i95:                                      ; preds = %bb.lk, %.lr.ph434.split.i.i109, %.lr.ph447.i.i191, %.preheader.i.i415, %bb.nw, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i, %.noexc200.i, %bb.nm, %.lr.ph424.preheader.i.i149, %.lr.ph424.i.i151.1, %.lr.ph424.i.i151.2, %.lr.ph424.i.i151.3, %.lr.ph424.i.i151.4, %.lr.ph424.i.i151.5, %.lr.ph424.i.i151.6, %.lr.ph430.i.i162
  %i.cip = phi i64 [ %i.cig, %bb.nw ], [ %i.buj, %.lr.ph447.i.i191 ], [ %i.cbq, %.lr.ph430.i.i162 ], [ %2, %.lr.ph434.split.i.i109 ], [ %.sroa.066.0449.i.i416, %.preheader.i.i415 ], [ %i.btn, %.lr.ph424.i.i151.6 ], [ %.sroa.071.0400.i.i85, %bb.nm ], [ %i.brz, %.lr.ph424.preheader.i.i149 ], [ %i.bse, %.lr.ph424.i.i151.1 ], [ %i.bsm, %.lr.ph424.i.i151.2 ], [ %i.bsv, %.lr.ph424.i.i151.3 ], [ %i.btb, %.lr.ph424.i.i151.4 ], [ %i.bth, %.lr.ph424.i.i151.5 ], [ %i.cgh, %.noexc200.i ], [ %i.cid, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %.sroa.069.0399.i.i82, %bb.lk ]
  %i.ciq = phi i64 [ 704, %bb.nw ], [ %i.ayw, %.lr.ph447.i.i191 ], [ %i.ayw, %.lr.ph430.i.i162 ], [ %2, %.lr.ph434.split.i.i109 ], [ %2, %.preheader.i.i415 ], [ %i.ayk, %.lr.ph424.preheader.i.i149 ], [ %spec.store.select.i44, %bb.nm ], [ %i.ayk, %.lr.ph424.i.i151.6 ], [ %i.ayk, %.lr.ph424.i.i151.5 ], [ %i.ayk, %.lr.ph424.i.i151.4 ], [ %i.ayk, %.lr.ph424.i.i151.3 ], [ %i.ayk, %.lr.ph424.i.i151.2 ], [ %i.ayk, %.lr.ph424.i.i151.1 ], [ %i.ayl, %.noexc200.i ], [ %spec.store.select.i44, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ %spec.store.select.i44, %bb.lk ]
  %i.cir = phi ptr [ @1286, %bb.nw ], [ @878, %.lr.ph447.i.i191 ], [ @922, %.lr.ph430.i.i162 ], [ @879, %.lr.ph434.split.i.i109 ], [ @893, %.preheader.i.i415 ], [ @884, %.lr.ph424.preheader.i.i149 ], [ @889, %bb.nm ], [ @884, %.lr.ph424.i.i151.6 ], [ @884, %.lr.ph424.i.i151.5 ], [ @884, %.lr.ph424.i.i151.4 ], [ @884, %.lr.ph424.i.i151.3 ], [ @884, %.lr.ph424.i.i151.2 ], [ @884, %.lr.ph424.i.i151.1 ], [ @890, %.noexc200.i ], [ @920, %_ZN6brotli3enc9histogram15ClearHistograms17h29a33954c97a6384E.exit.i.i ], [ @891, %bb.lk ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.cip, i64 noundef %i.ciq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cir) #46
          to label %.cont.i97 unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i96", !noalias !9310

.cont.i97:                                        ; preds = %.invoke.i95
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i87": ; preds = %bb.nn
  %lpad.loopexit.i88 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i203": ; preds = %.loopexit.i201
  %lpad.loopexit105.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i96": ; preds = %.invoke.i95, %.split440.us.i.invoke.i119, %.invoke1162.i
  %lpad.loopexit.split-lp106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i96", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i203", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i87"
  %lpad.phi.i90 = phi { ptr, i32 } [ %lpad.loopexit.i88, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.i87" ], [ %lpad.loopexit105.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.i203" ], [ %lpad.loopexit.split-lp106.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.loopexit.split-lp.loopexit.split-lp.i96" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azf, i64 noundef %i.aze, i64 noundef 2) #45, !noalias !9310
  br label %bb.nx

bb.nx:                                            ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89", %.thread55.i418
  %.pn62.i91 = phi { ptr, i32 } [ %i.azh, %.thread55.i418 ], [ %lpad.phi.i90, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit.i89" ]
  br i1 %i.ayy, label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i92", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i": ; preds = %bb.nx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.azd) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.azd, i64 noundef %i.ayw, i64 noundef 1) #45, !noalias !9310
  br label %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i92"

"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i92": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i216.i", %bb.nx
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayr, i64 noundef %i.ayq, i64 noundef 4) #45, !noalias !9310
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i93"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i93": ; preds = %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i92", %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i419", %.thread39.i421
  %.pn.pn.pn44.i94 = phi { ptr, i32 } [ %i.ayv, %.thread39.i421 ], [ %i.azc, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.thread.i419" ], [ %.pn62.i91, %"_ZN4core3ptr91drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..compat..CompatF8$GT$$GT$17h724962ff0bb99d01E.exit.i92" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayn, i64 noundef %i.aym, i64 noundef 4) #45, !noalias !9310
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayh, i64 noundef %2, i64 noundef 1) #45, !noalias !9310
  br label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i", %bb.lf, %.body.i408
  %.pn.pn.pn.pn.i267 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i409, %.body.i408 ], [ %i.bqz, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i266, %bb.lf ], [ %.pn230.pn.pn.pn.pn.pn.pn85948.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ayh, i64 noundef %2, i64 noundef 1) #45, !noalias !9310
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i93", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i", %.thread.i60
  %.pn.pn.pn.pn.pn38.i61 = phi { ptr, i32 } [ %i.aug, %.thread.i60 ], [ %.pn.pn.pn44.i94, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i93" ], [ %i.ayp, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.atn, i64 noundef %i.atm, i64 noundef 8) #45, !noalias !9310
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040"

bb.ny:                                            ; preds = %bb.gv
  %i.cis = icmp eq i64 %.val107.i424, 0           ; 2 uses
  %spec.select.i433 = select i1 %i.cis, i64 %i.aue, i64 %.val107.i424
  br label %bb.nz

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i", %bb.ob, %bb.gv
  %.val.i425 = phi ptr [ %i.ciz, %bb.ob ], [ %i.ciz, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val106.i423, %bb.gv ]
  %.val63.i426 = phi i64 [ %.sroa.014.1.i434, %bb.ob ], [ %.sroa.014.1.i434, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i" ], [ %.val107.i424, %bb.gv ] ; 2 uses
  %i.cit = getelementptr inbounds nuw i8, ptr %8, i64 16 ; 2 uses
  %.val92.i427 = load ptr, ptr %i.cit, align 8, !alias.scope !9308, !noalias !9307, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %i.ciu = getelementptr inbounds nuw i8, ptr %8, i64 24 ; 2 uses
  %.val93.i428 = load i64, ptr %i.ciu, align 8, !alias.scope !9308, !noalias !9307, !noundef !21 ; 5 uses
  %i.civ = icmp ult i64 %.val93.i428, %i.aue
  br i1 %i.civ, label %bb.oc, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429"

bb.nz:                                            ; preds = %bb.nz, %bb.ny
  %.sroa.014.1.i434 = phi i64 [ %spec.select.i433, %bb.ny ], [ %i.cix, %bb.nz ] ; 9 uses
  %i.ciw = icmp ult i64 %.sroa.014.1.i434, %i.aue
  %i.cix = shl i64 %.sroa.014.1.i434, 1
  br i1 %i.ciw, label %bb.nz, label %bb.oa

bb.oa:                                            ; preds = %bb.nz
  %i.ciy = icmp slt i64 %.sroa.014.1.i434, 0
  br i1 %i.ciy, label %.invoke2844, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i: ; preds = %bb.oa
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9441
  %i.ciz = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i434, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9441 ; 5 uses
  %i.cja = icmp eq ptr %i.ciz, null
  br i1 %i.cja, label %.invoke2844, label %bb.ob

bb.ob:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ciz, ptr nonnull readonly align 1 %.val106.i423, i64 %.val107.i424, i1 false), !alias.scope !9442, !noalias !9443
  store ptr %i.ciz, ptr %8, align 8, !alias.scope !9308, !noalias !9307
  store i64 %.sroa.014.1.i434, ptr %i.aub, align 8, !alias.scope !9308, !noalias !9307
  br i1 %i.cis, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i": ; preds = %bb.ob
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i423, i64 noundef %.val107.i424, i64 noundef 1) #45, !noalias !9310
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"

bb.oc:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"
  %i.cjb = icmp eq i64 %.val93.i428, 0            ; 2 uses
  %spec.select91.i = select i1 %i.cjb, i64 %i.aue, i64 %.val93.i428
  br label %bb.od

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i", %bb.oh, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i"
  %.val108.i430 = phi ptr [ %i.cjn, %bb.oh ], [ %i.cjn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val92.i427, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i" ]
  %.val109.i431 = phi i64 [ %.sroa.017.1.i432, %bb.oh ], [ %.sroa.017.1.i432, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i" ], [ %.val93.i428, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i" ] ; 2 uses
  %i.cjc = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 1, ptr %i.cjc, align 8, !alias.scope !9308, !noalias !9307
  %i.cjd = icmp ult i64 %i.aud, %.val63.i426
  br i1 %i.cjd, label %bb.oi, label %.invoke2846

bb.od:                                            ; preds = %bb.od, %bb.oc
  %.sroa.017.1.i432 = phi i64 [ %spec.select91.i, %bb.oc ], [ %i.cjf, %bb.od ] ; 8 uses
  %i.cje = icmp ult i64 %.sroa.017.1.i432, %i.aue
  %i.cjf = shl i64 %.sroa.017.1.i432, 1
  br i1 %i.cje, label %bb.od, label %bb.oe

bb.oe:                                            ; preds = %bb.od
  %i.cjg = shl i64 %.sroa.017.1.i432, 2           ; 5 uses
  %i.cjh = icmp ugt i64 %.sroa.017.1.i432, 4611686018427387903
  %i.cji = icmp ugt i64 %i.cjg, 9223372036854775804
  %or.cond.i.i.i.i230.i = or i1 %i.cjh, %i.cji
  br i1 %or.cond.i.i.i.i230.i, label %.invoke2844, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i: ; preds = %bb.oe
  %i.cjj = icmp eq i64 %i.cjg, 0
  br i1 %i.cjj, label %bb.oh, label %bb.of

bb.of:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9444
  %i.cjk = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cjg, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9444 ; 2 uses
  %i.cjl = icmp eq ptr %i.cjk, null
  br i1 %i.cjl, label %.invoke2844, label %bb.og

bb.og:                                            ; preds = %bb.of
  %i.cjm = ptrtoint ptr %i.cjk to i64
  br label %bb.oh

bb.oh:                                            ; preds = %bb.og, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i
  %.sroa.10.0.i.i232.i = phi i64 [ %i.cjm, %bb.og ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i ]
  %i.cjn = inttoptr i64 %.sroa.10.0.i.i232.i to ptr ; 5 uses
  %i.cjo = icmp samesign ult i64 %.sroa.017.1.i432, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cjo)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cjn) ]
  %i.cjp = shl nuw nsw i64 %.val93.i428, 2        ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.cjn, ptr nonnull readonly align 4 %.val92.i427, i64 %i.cjp, i1 false), !alias.scope !9445, !noalias !9446
  store ptr %i.cjn, ptr %i.cit, align 8, !alias.scope !9308, !noalias !9307
  store i64 %.sroa.017.1.i432, ptr %i.ciu, align 8, !alias.scope !9308, !noalias !9307
  br i1 %i.cjb, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i": ; preds = %bb.oh
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val92.i427, i64 noundef %i.cjp, i64 noundef 4) #45, !noalias !9310
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429"

bb.oi:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429"
  %i.cjq = getelementptr inbounds nuw i8, ptr %.val.i425, i64 %i.aud
  store i8 0, ptr %i.cjq, align 1, !noalias !9310
  %i.cjr = icmp ult i64 %i.aud, %.val109.i431
  br i1 %i.cjr, label %_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit.thread93, label %.invoke2846

.invoke2846:                                      ; preds = %bb.oi, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429"
  %i.cjs = phi i64 [ %.val63.i426, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429" ], [ %.val109.i431, %bb.oi ]
  %i.cjt = phi ptr [ @915, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i429" ], [ @916, %bb.oi ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aud, i64 noundef %i.cjs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.cjt) #46
          to label %.cont2847 unwind label %.body436.thread

.cont2847:                                        ; preds = %.invoke2846
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17h36bb1564eee2b25dE.exit.thread93: ; preds = %bb.oi
  %i.cju = getelementptr inbounds nuw [4 x i8], ptr %.val108.i430, i64 %i.aud
  %i.cjv = trunc nuw nsw i64 %2 to i32
end_hunk_7
begin_hunk_8_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i712": ; preds = %.thread93.i.i969, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i710"
  %.pre-phi863.i.i713 = phi i64 [ %.pre862.i.i711, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i710" ], [ %i.crr, %.thread93.i.i969 ]
  %.pn230.pn.pn.pn.pn101.i.i714 = phi { ptr, i32 } [ %.pn230.pn.pn.pn.i.i708, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i710" ], [ %i.csp, %.thread93.i.i969 ]
  %.sroa.016.0100.i.i715 = phi ptr [ %.sroa.016.1.i.i707, %"._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i_crit_edge.i.i710" ], [ %.sroa.10.0.i.i.i.i.i654, %.thread93.i.i969 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.0100.i.i715) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.016.0100.i.i715, i64 noundef %.pre-phi863.i.i713, i64 noundef 8) #45, !noalias !9495
  br label %bb.tb

.thread93.i.i969:                                 ; preds = %bb.pp
  %i.csp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i167.i712"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i": ; preds = %bb.qy, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695", %bb.pr
  %.sroa.12.0.i.i704 = phi i64 [ %i.crq, %bb.pr ], [ %.sroa.12.1.i.i698, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695" ], [ %.sroa.12.1.i.i698, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703" ], [ %.sroa.12.3152.i.i809, %bb.qy ] ; 2 uses
  %.sroa.026.0.i.i705 = phi ptr [ %i.cst, %bb.pr ], [ %.sroa.026.1.i.i699, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695" ], [ %.sroa.026.1.i.i699, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703" ], [ %.sroa.026.3153.i.i808, %bb.qy ] ; 2 uses
  %.sroa.14.1.i.i706 = phi i64 [ %i.crq, %bb.pr ], [ %.sroa.14.2.i.i700, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695" ], [ %.sroa.14.2.i.i700, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703" ], [ %.sroa.14.4154.i.i807, %bb.qy ] ; 2 uses
  %.sroa.016.1.i.i707 = phi ptr [ %.sroa.10.0.i.i.i.i.i654, %bb.pr ], [ %.sroa.016.2.i.i701, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695" ], [ %.sroa.016.2.i.i701, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703" ], [ %.sroa.016.4155.i.i806, %bb.qy ]
  %.pn230.pn.pn.pn.i.i708 = phi { ptr, i32 } [ %i.css, %bb.pr ], [ %.pn230.pn.pn.i.i702, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695" ], [ %.pn230.pn.pn.i.i702, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703" ], [ %.pn230156.i.i805, %bb.qy ] ; 2 uses
  %i.csq = icmp eq i64 %.sroa.12.0.i.i704, 0
  br i1 %i.csq, label %bb.pq, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i709"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i423.i.i709": ; preds = %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"
  %i.csr = shl nuw nsw i64 %.sroa.12.0.i.i704, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.0.i.i705) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.026.0.i.i705, i64 noundef %i.csr, i64 noundef 4) #45, !noalias !9495
  br label %bb.pq

bb.pr:                                            ; preds = %bb.pt
  %i.css = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i660: ; preds = %bb.po, %._crit_edge.i.i.i.i.i656
  %.sroa.10.0.i.i418.i.i661 = phi i64 [ %i.csn, %bb.po ], [ 4, %._crit_edge.i.i.i.i.i656 ]
  %i.cst = inttoptr i64 %.sroa.10.0.i.i418.i.i661 to ptr ; 4 uses
  %.sroa.0.0.i422.i.i662 = tail call noundef i64 @llvm.umin.i64(i64 %.sroa.0.0.i.i636, i64 64) ; 17 uses
  %i.csu = mul nuw nsw i64 %.sroa.0.0.i422.i.i662, 2192 ; 3 uses
  %i.csv = icmp eq i64 %.sroa.0.0.i.i636, 0
  br i1 %i.csv, label %._crit_edge.i.i.i429.thread.i.i670, label %bb.ps

bb.ps:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i660
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9499
  %i.csw = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.csu, i64 noundef range(i64 1, 9) 8) #45, !noalias !9499 ; 5 uses
  %i.csx = icmp eq ptr %i.csw, null
  br i1 %i.csx, label %bb.pt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"

bb.pt:                                            ; preds = %bb.ps
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.csu, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc440.i.i968 unwind label %bb.pr, !noalias !9495

.noexc440.i.i968:                                 ; preds = %bb.pt
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i": ; preds = %bb.ps
  %.not1151.i.i663 = icmp eq i64 %.sroa.0.0.i.i636, 1
  br i1 %.not1151.i.i663, label %._crit_edge.thread.i.i.i431.i.i668, label %.lr.ph.i.i.i434.i.i664.preheader

.lr.ph.i.i.i434.i.i664.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"
  %i.csy = add nsw i64 %.sroa.0.0.i422.i.i662, -1 ; 2 uses
  %i.csz = add nsw i64 %.sroa.0.0.i422.i.i662, -2
  %xtraiter4614 = and i64 %i.csy, 7               ; 3 uses
  %i.cta = icmp ult i64 %i.csz, 7
  br i1 %i.cta, label %.lr.ph.i.i.i434.i.i664.epil.preheader, label %.lr.ph.i.i.i434.i.i664.preheader.new

.lr.ph.i.i.i434.i.i664.preheader.new:             ; preds = %.lr.ph.i.i.i434.i.i664.preheader
  %unroll_iter4619 = and i64 %i.csy, -8
  br label %.lr.ph.i.i.i434.i.i664

._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i434.i.i664
  %lcmp.mod4616.not = icmp eq i64 %xtraiter4614, 0
  br i1 %lcmp.mod4616.not, label %._crit_edge.thread.i.i.i431.i.i668, label %.lr.ph.i.i.i434.i.i664.epil.preheader

.lr.ph.i.i.i434.i.i664.epil.preheader:            ; preds = %._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i664.preheader
  %.sroa.0.08.i.i.i435.i.i665.epil.init = phi ptr [ %i.csw, %.lr.ph.i.i.i434.i.i664.preheader ], [ %i.ctj, %._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa ]
  %lcmp.mod4618 = icmp ne i64 %xtraiter4614, 0
  call void @llvm.assume(i1 %lcmp.mod4618)
  br label %.lr.ph.i.i.i434.i.i664.epil

.lr.ph.i.i.i434.i.i664.epil:                      ; preds = %.lr.ph.i.i.i434.i.i664.epil, %.lr.ph.i.i.i434.i.i664.epil.preheader
  %.sroa.0.08.i.i.i435.i.i665.epil = phi ptr [ %i.ctb, %.lr.ph.i.i.i434.i.i664.epil ], [ %.sroa.0.08.i.i.i435.i.i665.epil.init, %.lr.ph.i.i.i434.i.i664.epil.preheader ] ; 3 uses
  %epil.iter4615 = phi i64 [ %epil.iter4615.next, %.lr.ph.i.i.i434.i.i664.epil ], [ 0, %.lr.ph.i.i.i434.i.i664.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i665.epil, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.epil, align 8, !noalias !9500
  %i.ctb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665.epil, i64 2192 ; 2 uses
  %epil.iter4615.next = add i64 %epil.iter4615, 1 ; 2 uses
  %epil.iter4615.cmp.not = icmp eq i64 %epil.iter4615.next, %xtraiter4614
  br i1 %epil.iter4615.cmp.not, label %._crit_edge.thread.i.i.i431.i.i668, label %.lr.ph.i.i.i434.i.i664.epil, !llvm.loop !8979

._crit_edge.thread.i.i.i431.i.i668:               ; preds = %._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa, %.lr.ph.i.i.i434.i.i664.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i"
  %.sroa.0.0.lcssa15.i.i.i432.i.i669 = phi ptr [ %i.csw, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i426.i.i" ], [ %i.ctj, %._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa ], [ %i.ctb, %.lr.ph.i.i.i434.i.i664.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i432.i.i669, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i432.i.i669, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i433.i.i, align 8, !noalias !9500
  br label %._crit_edge.i.i.i429.thread.i.i670

.lr.ph.i.i.i434.i.i664:                           ; preds = %.lr.ph.i.i.i434.i.i664, %.lr.ph.i.i.i434.i.i664.preheader.new
  %.sroa.0.08.i.i.i435.i.i665 = phi ptr [ %i.csw, %.lr.ph.i.i.i434.i.i664.preheader.new ], [ %i.ctj, %.lr.ph.i.i.i434.i.i664 ] ; 17 uses
  %niter4620 = phi i64 [ 0, %.lr.ph.i.i.i434.i.i664.preheader.new ], [ %niter4620.next.7, %.lr.ph.i.i.i434.i.i664 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i435.i.i665, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i, align 8, !noalias !9500
  %i.ctc = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctc, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.1, align 8, !noalias !9500
  %i.ctd = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctd, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.2, align 8, !noalias !9500
  %i.cte = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cte, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.3, align 8, !noalias !9500
  %i.ctf = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctf, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.4, align 8, !noalias !9500
  %i.ctg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ctg, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.5, align 8, !noalias !9500
  %i.cth = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cth, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.6, align 8, !noalias !9500
  %i.cti = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.cti, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i437.i.i.7, align 8, !noalias !9500
  %i.ctj = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i435.i.i665, i64 17536 ; 3 uses
  %niter4620.next.7 = add i64 %niter4620, 8       ; 2 uses
  %niter4620.ncmp.7 = icmp eq i64 %niter4620.next.7, %unroll_iter4619
  br i1 %niter4620.ncmp.7, label %._crit_edge.thread.i.i.i431.i.i668.loopexit.unr-lcssa, label %.lr.ph.i.i.i434.i.i664

._crit_edge.i.i.i429.thread.i.i670:               ; preds = %._crit_edge.thread.i.i.i431.i.i668, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i660
  %.sroa.10.0.i.i.i427923.i.i671 = phi ptr [ %i.csw, %._crit_edge.thread.i.i.i431.i.i668 ], [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i417.thread.i.i660 ] ; 15 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9501
  %i.ctk = tail call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !9501 ; 16 uses
  %i.ctl = icmp eq ptr %i.ctk, null
  br i1 %i.ctl, label %bb.pu, label %bb.pw

bb.pu:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i670
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc444.i.i967 unwind label %bb.pv, !noalias !9495

.noexc444.i.i967:                                 ; preds = %bb.pu
  unreachable

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685", %bb.pv
  %.sroa.1335.0.i.i696 = phi i64 [ %.sroa.0.0.i422.i.i662, %bb.pv ], [ %.sroa.1335.1124200.i.i689, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.sroa.034.0.i.i697 = phi ptr [ %.sroa.10.0.i.i.i427923.i.i671, %bb.pv ], [ %.sroa.034.1125198.i.i690, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.sroa.12.1.i.i698 = phi i64 [ %i.crq, %bb.pv ], [ %.sroa.12.3126196.i.i691, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.sroa.026.1.i.i699 = phi ptr [ %i.cst, %bb.pv ], [ %.sroa.026.3127194.i.i692, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.sroa.14.2.i.i700 = phi i64 [ %i.crq, %bb.pv ], [ %.sroa.14.4128192.i.i693, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.sroa.016.2.i.i701 = phi ptr [ %.sroa.10.0.i.i.i.i.i654, %bb.pv ], [ %.sroa.016.4129190.i.i694, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %.pn230.pn.pn.i.i702 = phi { ptr, i32 } [ %i.cto, %bb.pv ], [ %.pn230.pn204.i.i686, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685" ] ; 2 uses
  %i.ctm = icmp eq i64 %.sroa.1335.0.i.i696, 0
  br i1 %i.ctm, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i445.i.i703": ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695"
  %i.ctn = mul nuw nsw i64 %.sroa.1335.0.i.i696, 2192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.034.0.i.i697) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.034.0.i.i697, i64 noundef %i.ctn, i64 noundef 8) #45, !noalias !9495
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit446.i.i"

bb.pv:                                            ; preds = %bb.pu
  %i.cto = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit.i.i695"

bb.pw:                                            ; preds = %._crit_edge.i.i.i429.thread.i.i670
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.ctk, i8 0, i64 32784, i1 false), !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !9495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.m, i8 0, i64 256, i1 false), !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !9495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.l, i8 0, i64 256, i1 false), !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !9495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.k, i8 0, i64 256, i1 false), !noalias !9495
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !9495
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %i.j, i8 0, i64 256, i1 false), !noalias !9495
  br label %bb.sw

.split.i.i725:                                    ; preds = %bb.sz, %._crit_edge585.i.loopexit.i786
  %indvars.iv.i.i726 = phi i64 [ %indvars.iv.next.i.i787, %._crit_edge585.i.loopexit.i786 ], [ %.sroa.0.0.i.i636, %bb.sz ] ; 2 uses
  %.sroa.0.0596.i.i727 = phi i64 [ %.sroa.0.1.lcssa.i.i781, %._crit_edge585.i.loopexit.i786 ], [ 0, %bb.sz ] ; 4 uses
  %.sroa.012.0595.i.i728 = phi i64 [ %.sroa.012.1.i.i762, %._crit_edge585.i.loopexit.i786 ], [ %i.crq, %bb.sz ] ; 7 uses
  %.sroa.018.0594.i.i729 = phi i64 [ %.sroa.018.1.lcssa.i.i780, %._crit_edge585.i.loopexit.i786 ], [ 0, %bb.sz ] ; 4 uses
  %.sroa.023.0593.i.i730 = phi i64 [ %.sroa.023.1.i.i766, %._crit_edge585.i.loopexit.i786 ], [ %i.crq, %bb.sz ] ; 7 uses
  %.sroa.029.0592.i.i731 = phi i64 [ %i.dfd, %._crit_edge585.i.loopexit.i786 ], [ 0, %bb.sz ] ; 2 uses
  %.sroa.043.0591.i.i732 = phi i64 [ %.sroa.043.4.lcssa.i.i753, %._crit_edge585.i.loopexit.i786 ], [ 0, %bb.sz ]
  %.sroa.047.1590.i.i733 = phi i64 [ %i.dfe, %._crit_edge585.i.loopexit.i786 ], [ 0, %bb.sz ] ; 4 uses
  %.sroa.016.3589.i.i734 = phi ptr [ %.sroa.016.7.i.i761, %._crit_edge585.i.loopexit.i786 ], [ %.sroa.10.0.i.i.i.i.i654, %bb.sz ] ; 9 uses
  %.sroa.14.3588.i.i735 = phi i64 [ %.sroa.14.7.i.i760, %._crit_edge585.i.loopexit.i786 ], [ %i.crq, %bb.sz ] ; 10 uses
  %.sroa.026.2587.i.i736 = phi ptr [ %.sroa.026.5.i.i765, %._crit_edge585.i.loopexit.i786 ], [ %i.cst, %bb.sz ] ; 11 uses
  %.sroa.12.2586.i.i737 = phi i64 [ %.sroa.12.5.i.i764, %._crit_edge585.i.loopexit.i786 ], [ %i.crq, %bb.sz ] ; 12 uses
  %i.ctp = tail call i64 @llvm.umax.i64(i64 %indvars.iv.i.i726, i64 1)
  %umax846.i.i738 = tail call i64 @llvm.umin.i64(i64 %i.ctp, i64 64)
  %i.ctq = sub nuw i64 %.sroa.0.0.i.i636, %.sroa.047.1590.i.i733
  %.sroa.0.0.i447.i.i739 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctq, i64 64) ; 3 uses
  br label %.lr.ph574.i.i740

.thread164.loopexit.i.i754:                       ; preds = %._crit_edge.i.i752
  %lpad.loopexit258.i.i755 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

.thread164.loopexit.split-lp.loopexit.i.i758:     ; preds = %._crit_edge575.i.loopexit.i757
  %lpad.loopexit261.i.i759 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

.thread164.loopexit.split-lp.loopexit.split-lp.i.i675: ; preds = %.invoke3856, %.invoke3854, %.invoke.i.i674, %bb.sf, %bb.rx, %bb.qe, %bb.qa
  %.sroa.11.1.ph.ph.ph.i.i676 = phi i64 [ 2049, %bb.qa ], [ %.sroa.11.2.i.i789, %bb.qe ], [ 2049, %.invoke.i.i674 ], [ 2049, %bb.rx ], [ 2049, %.invoke3854 ], [ 2049, %bb.sf ], [ 2049, %.invoke3856 ]
  %.sroa.044.1.ph.ph.ph.i.i677 = phi ptr [ %i.ctk, %bb.qa ], [ %.sroa.044.2.i.i790, %bb.qe ], [ %i.ctk, %.invoke.i.i674 ], [ %i.ctk, %bb.rx ], [ %i.ctk, %.invoke3854 ], [ %i.ctk, %bb.sf ], [ %i.ctk, %.invoke3856 ]
  %.sroa.1335.2.ph.ph.ph.i.i678 = phi i64 [ 0, %bb.qa ], [ 0, %bb.qe ], [ %.sroa.0.0.i422.i.i662, %.invoke.i.i674 ], [ %.sroa.0.0.i422.i.i662, %bb.rx ], [ %.sroa.0.0.i422.i.i662, %.invoke3854 ], [ %.sroa.0.0.i422.i.i662, %bb.sf ], [ %.sroa.0.0.i422.i.i662, %.invoke3856 ]
  %.sroa.034.2.ph.ph.ph.i.i679 = phi ptr [ inttoptr (i64 8 to ptr), %bb.qa ], [ inttoptr (i64 8 to ptr), %bb.qe ], [ %.sroa.10.0.i.i.i427923.i.i671, %.invoke.i.i674 ], [ %.sroa.10.0.i.i.i427923.i.i671, %bb.rx ], [ %.sroa.10.0.i.i.i427923.i.i671, %.invoke3854 ], [ %.sroa.10.0.i.i.i427923.i.i671, %bb.sf ], [ %.sroa.10.0.i.i.i427923.i.i671, %.invoke3856 ]
  %.sroa.12.4.ph.ph.ph.i.i680 = phi i64 [ %.sroa.12.5.i.i764, %bb.qa ], [ %.sroa.12.5.i.i764, %bb.qe ], [ %i.crq, %.invoke.i.i674 ], [ %.sroa.12.2586.i.i737, %bb.rx ], [ %.sroa.12.2586.i.i737, %.invoke3854 ], [ %.sroa.12.2586.i.i737, %bb.sf ], [ %.sroa.12.5.i.i764, %.invoke3856 ]
  %.sroa.026.4.ph.ph.ph.i.i681 = phi ptr [ %.sroa.026.5.i.i765, %bb.qa ], [ %.sroa.026.5.i.i765, %bb.qe ], [ %i.cst, %.invoke.i.i674 ], [ %.sroa.026.2587.i.i736, %bb.rx ], [ %.sroa.026.2587.i.i736, %.invoke3854 ], [ %.sroa.026.2587.i.i736, %bb.sf ], [ %.sroa.026.5.i.i765, %.invoke3856 ]
  %.sroa.14.5.ph.ph.ph.i.i682 = phi i64 [ %.sroa.14.7.i.i760, %bb.qa ], [ %.sroa.14.7.i.i760, %bb.qe ], [ %i.crq, %.invoke.i.i674 ], [ %.sroa.14.3588.i.i735, %bb.rx ], [ %.sroa.14.3588.i.i735, %.invoke3854 ], [ %.sroa.14.7.i.i760, %bb.sf ], [ %.sroa.14.7.i.i760, %.invoke3856 ]
  %.sroa.016.5.ph.ph.ph.i.i683 = phi ptr [ %.sroa.016.7.i.i761, %bb.qa ], [ %.sroa.016.7.i.i761, %bb.qe ], [ %.sroa.10.0.i.i.i.i.i654, %.invoke.i.i674 ], [ %.sroa.016.3589.i.i734, %bb.rx ], [ %.sroa.016.3589.i.i734, %.invoke3854 ], [ %.sroa.016.7.i.i761, %bb.sf ], [ %.sroa.016.7.i.i761, %.invoke3856 ]
  %lpad.loopexit.split-lp262.i.i684 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

bb.px:                                            ; preds = %bb.qj, %._crit_edge601.i.i798
  %.sroa.11.1.ph160.i.i799 = phi i64 [ 0, %bb.qj ], [ %.sroa.11.2.i.i789, %._crit_edge601.i.i798 ]
  %.sroa.044.1.ph161.i.i800 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qj ], [ %.sroa.044.2.i.i790, %._crit_edge601.i.i798 ]
  %.sroa.12.4.ph162.i.i801 = phi i64 [ 0, %bb.qj ], [ %.sroa.12.5.i.i764, %._crit_edge601.i.i798 ]
  %.sroa.026.4.ph163.i.i802 = phi ptr [ inttoptr (i64 4 to ptr), %bb.qj ], [ %.sroa.026.5.i.i765, %._crit_edge601.i.i798 ]
  %lpad.thr_comm.split-lp.i.i803 = landingpad { ptr, i32 }
          cleanup
  br label %.thread131.i.i804

bb.py:                                            ; preds = %._crit_edge585.i.loopexit.i786
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i427923.i.i671, i64 noundef %i.csu, i64 noundef 8) #45, !noalias !9495
  %i.ctr = shl i64 %i.dfd, 6
  %i.cts = lshr i64 %i.dfd, 1
  %i.ctt = mul i64 %i.cts, %i.dfd
  %.sroa.0.0.i448.i.i788 = tail call noundef i64 @llvm.umin.i64(i64 %i.ctt, i64 %i.ctr) ; 5 uses
  %i.ctu = add nuw i64 %.sroa.0.0.i448.i.i788, 1  ; 2 uses
  %i.ctv = icmp ugt i64 %.sroa.0.0.i448.i.i788, 2048
  br i1 %i.ctv, label %bb.pz, label %bb.qb

bb.pz:                                            ; preds = %bb.py
  %i.ctw = shl i64 %i.ctu, 4                      ; 5 uses
  %i.ctx = icmp ugt i64 %.sroa.0.0.i448.i.i788, 1152921504606846974
  %i.cty = icmp ugt i64 %i.ctw, 9223372036854775804
  %or.cond.i.i.i.i.i449.i.i931 = or i1 %i.ctx, %i.cty
  br i1 %or.cond.i.i.i.i.i449.i.i931, label %bb.qa, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i932, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i932: ; preds = %bb.pz
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9502
  %i.ctz = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ctw, i64 noundef range(i64 1, 9) 4) #45, !noalias !9502 ; 5 uses
  %i.cua = icmp eq ptr %i.ctz, null
  br i1 %i.cua, label %bb.qa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i933"

bb.qa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i932, %bb.pz
  %.sroa.4.0.ph.i.i.i455.i.i938 = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i932 ], [ 0, %bb.pz ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i455.i.i938, i64 %i.ctw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc456.i.i939 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.noexc456.i.i939:                                 ; preds = %bb.qa
  unreachable

bb.qb:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i933", %bb.py
  %.sroa.11.2.i.i789 = phi i64 [ %i.ctu, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i933" ], [ 2049, %bb.py ] ; 4 uses
  %.sroa.044.2.i.i790 = phi ptr [ %i.ctz, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i933" ], [ %i.ctk, %bb.py ] ; 4 uses
  %i.cub = shl i64 %i.dfd, 2                      ; 12 uses
  %i.cuc = icmp ugt i64 %i.dfd, 4611686018427387903
  %i.cud = icmp ugt i64 %i.cub, 9223372036854775804
  %or.cond.i.i.i.i458.i.i791 = or i1 %i.cuc, %i.cud
  br i1 %or.cond.i.i.i.i458.i.i791, label %bb.qe, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i792, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i792: ; preds = %bb.qb
  %i.cue = icmp eq i64 %i.cub, 0                  ; 2 uses
  br i1 %i.cue, label %bb.qf, label %bb.qc

bb.qc:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i792
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9503
  %i.cuf = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cub, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9503 ; 2 uses
  %i.cug = icmp eq ptr %i.cuf, null
  br i1 %i.cug, label %bb.qe, label %bb.qd

bb.qd:                                            ; preds = %bb.qc
  %i.cuh = ptrtoint ptr %i.cuf to i64
  br label %bb.qf

bb.qe:                                            ; preds = %bb.qc, %bb.qb
  %.sroa.4.0.ph.i.i461.i.i929 = phi i64 [ 4, %bb.qc ], [ 0, %bb.qb ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i461.i.i929, i64 %i.cub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc462.i.i930 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.noexc462.i.i930:                                 ; preds = %bb.qe
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hddb3f0f40187330dE.exit.i.i933": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i450.i.i932
  %i.cui = add nsw i64 %i.ctw, -16                ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ctz, i8 0, i64 %i.cui, i1 false), !noalias !9504
  %i.cuj = getelementptr i8, ptr %i.ctz, i64 %i.ctw ; 2 uses
  %scevgep11.i451.i.i934 = getelementptr i8, ptr %i.ctz, i64 %i.cui
  store i32 0, ptr %scevgep11.i451.i.i934, align 4, !noalias !9504
  %.sroa.55.0..sroa_idx.i452.i.i935 = getelementptr i8, ptr %i.cuj, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i452.i.i935, align 4, !noalias !9504
  %.sroa.67.0..sroa_idx.i453.i.i936 = getelementptr i8, ptr %i.cuj, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i453.i.i936, align 4, !noalias !9504
  %i.cuk = icmp samesign ult i64 %.sroa.0.0.i448.i.i788, 576460752303423487
  tail call void @llvm.assume(i1 %i.cuk)
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.ctk, i64 noundef 32784, i64 noundef 4) #45, !noalias !9495
  br label %bb.qb

bb.qf:                                            ; preds = %bb.qd, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i792
  %.sroa.10.0.i.i460.i.i793 = phi i64 [ %i.cuh, %bb.qd ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i459.i.i792 ]
  %i.cul = inttoptr i64 %.sroa.10.0.i.i460.i.i793 to ptr ; 13 uses
  %i.cum = icmp samesign ult i64 %i.dfd, 2305843009213693952
  tail call void @llvm.assume(i1 %i.cum)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cul) ]
  %i.cun = getelementptr inbounds nuw i8, ptr %i.cul, i64 %i.cub
  %i.cuo = icmp eq i64 %i.dfd, 0                  ; 3 uses
  br i1 %i.cuo, label %._crit_edge601.i.i798, label %.lr.ph600.i.i794.preheader

.lr.ph600.i.i794.preheader:                       ; preds = %bb.qf
  %i.cup = add nsw i64 %i.cub, -4                 ; 2 uses
  %i.cuq = lshr exact i64 %i.cup, 2
  %i.cur = add nuw nsw i64 %i.cuq, 1              ; 2 uses
  %min.iters.check3804 = icmp ult i64 %i.cup, 28
  br i1 %min.iters.check3804, label %.lr.ph600.i.i794.preheader3884, label %vector.ph3805

vector.ph3805:                                    ; preds = %.lr.ph600.i.i794.preheader
  %n.vec3806 = and i64 %i.cur, 9223372036854775800 ; 4 uses
  %i.cus = trunc i64 %n.vec3806 to i32
  %i.cut = shl i64 %n.vec3806, 2
  %i.cuu = getelementptr i8, ptr %i.cul, i64 %i.cut
  br label %vector.body3807

vector.body3807:                                  ; preds = %vector.body3807, %vector.ph3805
  %index3808 = phi i64 [ 0, %vector.ph3805 ], [ %index.next3812, %vector.body3807 ] ; 2 uses
  %vec.ind3809 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph3805 ], [ %vec.ind.next3813, %vector.body3807 ] ; 3 uses
  %step.add3810 = add <4 x i32> %vec.ind3809, splat (i32 4)
  %i.cuv = shl i64 %index3808, 2
  %next.gep3811 = getelementptr i8, ptr %i.cul, i64 %i.cuv ; 2 uses
  %i.cuw = getelementptr i8, ptr %next.gep3811, i64 16
  store <4 x i32> %vec.ind3809, ptr %next.gep3811, align 4, !noalias !9495
  store <4 x i32> %step.add3810, ptr %i.cuw, align 4, !noalias !9495
  %index.next3812 = add nuw i64 %index3808, 8     ; 2 uses
  %vec.ind.next3813 = add <4 x i32> %vec.ind3809, splat (i32 8)
  %i.cux = icmp eq i64 %index.next3812, %n.vec3806
  br i1 %i.cux, label %middle.block3814, label %vector.body3807, !llvm.loop !9000

middle.block3814:                                 ; preds = %vector.body3807
  %cmp.n3815 = icmp eq i64 %i.cur, %n.vec3806
  br i1 %cmp.n3815, label %._crit_edge601.i.i798, label %.lr.ph600.i.i794.preheader3884

.lr.ph600.i.i794.preheader3884:                   ; preds = %.lr.ph600.i.i794.preheader, %middle.block3814
  %.sroa.047.2598.i.i795.ph = phi i32 [ 0, %.lr.ph600.i.i794.preheader ], [ %i.cus, %middle.block3814 ]
  %.sroa.0135.0597.i.i796.ph = phi ptr [ %i.cul, %.lr.ph600.i.i794.preheader ], [ %i.cuu, %middle.block3814 ]
  br label %.lr.ph600.i.i794

.lr.ph600.i.i794:                                 ; preds = %.lr.ph600.i.i794.preheader3884, %.lr.ph600.i.i794
  %.sroa.047.2598.i.i795 = phi i32 [ %i.cuy, %.lr.ph600.i.i794 ], [ %.sroa.047.2598.i.i795.ph, %.lr.ph600.i.i794.preheader3884 ] ; 2 uses
  %.sroa.0135.0597.i.i796 = phi ptr [ %.sroa.0135.1.i.i797, %.lr.ph600.i.i794 ], [ %.sroa.0135.0597.i.i796.ph, %.lr.ph600.i.i794.preheader3884 ] ; 2 uses
  %.sroa.0135.1.i.i797 = getelementptr inbounds nuw i8, ptr %.sroa.0135.0597.i.i796, i64 4 ; 2 uses
  store i32 %.sroa.047.2598.i.i795, ptr %.sroa.0135.0597.i.i796, align 4, !noalias !9495
  %i.cuy = add i32 %.sroa.047.2598.i.i795, 1
  %i.cuz = icmp eq ptr %.sroa.0135.1.i.i797, %i.cun
  br i1 %i.cuz, label %._crit_edge601.i.i798, label %.lr.ph600.i.i794, !llvm.loop !9001

._crit_edge601.i.i798:                            ; preds = %.lr.ph600.i.i794, %middle.block3814, %bb.qf
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i761) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i765) ]
  %i.cva = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.016.7.i.i761, i64 noundef %.sroa.14.7.i.i760, ptr noalias noundef nonnull align 4 %.sroa.026.5.i.i765, i64 noundef %.sroa.12.5.i.i764, ptr noalias noundef nonnull align 4 %i.crn, i64 noundef %.sroa.0.0.i.i636, ptr noalias noundef nonnull align 4 %i.cul, i64 noundef %i.dfd, ptr noalias noundef nonnull align 4 %.sroa.044.2.i.i790, i64 noundef %.sroa.11.2.i.i789, i64 noundef %i.dfd, i64 noundef %.sroa.0.0.i.i636, i64 noundef 256, i64 noundef %.sroa.0.0.i448.i.i788)
          to label %bb.qg unwind label %bb.px, !noalias !9495 ; 3 uses

bb.qg:                                            ; preds = %._crit_edge601.i.i798
  %i.cvb = shl nuw nsw i64 %.sroa.11.2.i.i789, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.044.2.i.i790, i64 noundef %i.cvb, i64 noundef 4) #45, !noalias !9495
  %i.cvc = icmp eq i64 %.sroa.12.5.i.i764, 0
  br i1 %i.cvc, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i816, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i815"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i815": ; preds = %bb.qg
  %i.cvd = shl nuw nsw i64 %.sroa.12.5.i.i764, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.5.i.i765, i64 noundef %i.cvd, i64 noundef 4) #45, !noalias !9495
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i816

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i816: ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i467.i.i815", %bb.qg
  br i1 %i.cue, label %bb.ql, label %bb.qh

bb.qh:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i469.i.i816
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9505
  %i.cve = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.cub, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9505 ; 2 uses
  %i.cvf = icmp eq ptr %i.cve, null
  br i1 %i.cvf, label %bb.qj, label %bb.qi

bb.qi:                                            ; preds = %bb.qh
  %i.cvg = ptrtoint ptr %i.cve to i64
  br label %bb.ql

bb.qj:                                            ; preds = %bb.qh
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.cub, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
end_hunk_8
begin_hunk_9_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
bb.rx:                                            ; preds = %bb.rw, %bb.rv
  %.sroa.4.0.ph.i.i.i533.i.i965 = phi i64 [ 8, %bb.rw ], [ 0, %bb.rv ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i533.i.i965, i64 %i.ddq, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc534.i.i966 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.noexc534.i.i966:                                 ; preds = %bb.rx
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i": ; preds = %bb.rw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i953
  %.sroa.10.0.i.i.i521.i.i954 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i953 ], [ %i.dds, %bb.rw ] ; 7 uses
  %.sroa.4.0.i.i.i522.i.i955 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i519.i.i953 ], [ %.sroa.066.1.i.i951, %bb.rw ]
  %i.ddu = icmp samesign ule i64 %.sroa.066.1.i.i951, %.sroa.4.0.i.i.i522.i.i955
  tail call void @llvm.assume(i1 %i.ddu)
  %i.ddv = icmp samesign ugt i64 %.sroa.066.1.i.i951, 1
  br i1 %i.ddv, label %.lr.ph.i.i.i528.i.i961.preheader, label %.loopexit257.i.i956

.lr.ph.i.i.i528.i.i961.preheader:                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i"
  %i.ddw = add nsw i64 %.sroa.066.1.i.i951, -1    ; 2 uses
  %i.ddx = add nsw i64 %.sroa.066.1.i.i951, -2
  %xtraiter4622 = and i64 %i.ddw, 7               ; 3 uses
  %i.ddy = icmp ult i64 %i.ddx, 7
  br i1 %i.ddy, label %.lr.ph.i.i.i528.i.i961.epil.preheader, label %.lr.ph.i.i.i528.i.i961.preheader.new

.lr.ph.i.i.i528.i.i961.preheader.new:             ; preds = %.lr.ph.i.i.i528.i.i961.preheader
  %unroll_iter4627 = and i64 %i.ddw, -8
  br label %.lr.ph.i.i.i528.i.i961

.lr.ph.i.i.i528.i.i961:                           ; preds = %.lr.ph.i.i.i528.i.i961, %.lr.ph.i.i.i528.i.i961.preheader.new
  %.sroa.0.08.i.i.i529.i.i962 = phi ptr [ %.sroa.10.0.i.i.i521.i.i954, %.lr.ph.i.i.i528.i.i961.preheader.new ], [ %i.deg, %.lr.ph.i.i.i528.i.i961 ] ; 17 uses
  %niter4628 = phi i64 [ 0, %.lr.ph.i.i.i528.i.i961.preheader.new ], [ %niter4628.next.7, %.lr.ph.i.i.i528.i.i961 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i962, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i, align 8, !noalias !9539
  %i.ddz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 2192
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ddz, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.1, align 8, !noalias !9539
  %i.dea = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 4384
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dea, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 6568
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.2, align 8, !noalias !9539
  %i.deb = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 6576
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.deb, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 8760
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.3, align 8, !noalias !9539
  %i.dec = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 8768
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dec, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 10952
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.4, align 8, !noalias !9539
  %i.ded = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 10960
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.ded, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 13144
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.5, align 8, !noalias !9539
  %i.dee = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 13152
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dee, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 15336
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.6, align 8, !noalias !9539
  %i.def = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 15344
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.def, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 17528
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.7, align 8, !noalias !9539
  %i.deg = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962, i64 17536 ; 3 uses
  %niter4628.next.7 = add i64 %niter4628, 8       ; 2 uses
  %niter4628.ncmp.7 = icmp eq i64 %niter4628.next.7, %unroll_iter4627
  br i1 %niter4628.ncmp.7, label %.loopexit257.i.i956.loopexit.unr-lcssa, label %.lr.ph.i.i.i528.i.i961

.loopexit257.i.i956.loopexit.unr-lcssa:           ; preds = %.lr.ph.i.i.i528.i.i961
  %lcmp.mod4624.not = icmp eq i64 %xtraiter4622, 0
  br i1 %lcmp.mod4624.not, label %.loopexit257.i.i956, label %.lr.ph.i.i.i528.i.i961.epil.preheader

.lr.ph.i.i.i528.i.i961.epil.preheader:            ; preds = %.loopexit257.i.i956.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i961.preheader
  %.sroa.0.08.i.i.i529.i.i962.epil.init = phi ptr [ %.sroa.10.0.i.i.i521.i.i954, %.lr.ph.i.i.i528.i.i961.preheader ], [ %i.deg, %.loopexit257.i.i956.loopexit.unr-lcssa ]
  %lcmp.mod4626 = icmp ne i64 %xtraiter4622, 0
  call void @llvm.assume(i1 %lcmp.mod4626)
  br label %.lr.ph.i.i.i528.i.i961.epil

.lr.ph.i.i.i528.i.i961.epil:                      ; preds = %.lr.ph.i.i.i528.i.i961.epil, %.lr.ph.i.i.i528.i.i961.epil.preheader
  %.sroa.0.08.i.i.i529.i.i962.epil = phi ptr [ %i.deh, %.lr.ph.i.i.i528.i.i961.epil ], [ %.sroa.0.08.i.i.i529.i.i962.epil.init, %.lr.ph.i.i.i528.i.i961.epil.preheader ] ; 3 uses
  %epil.iter4623 = phi i64 [ %epil.iter4623.next, %.lr.ph.i.i.i528.i.i961.epil ], [ 0, %.lr.ph.i.i.i528.i.i961.epil.preheader ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i529.i.i962.epil, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i531.i.i.epil, align 8, !noalias !9539
  %i.deh = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i529.i.i962.epil, i64 2192 ; 2 uses
  %epil.iter4623.next = add i64 %epil.iter4623, 1 ; 2 uses
  %epil.iter4623.cmp.not = icmp eq i64 %epil.iter4623.next, %xtraiter4622
  br i1 %epil.iter4623.cmp.not, label %.loopexit257.i.i956, label %.lr.ph.i.i.i528.i.i961.epil, !llvm.loop !9082

.loopexit257.i.i956:                              ; preds = %.loopexit257.i.i956.loopexit.unr-lcssa, %.lr.ph.i.i.i528.i.i961.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i"
  %.sroa.0.0.lcssa15.i.i.i526.i.i957 = phi ptr [ %.sroa.10.0.i.i.i521.i.i954, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i520.i.i" ], [ %i.deg, %.loopexit257.i.i956.loopexit.unr-lcssa ], [ %i.deh, %.lr.ph.i.i.i528.i.i961.epil ] ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.0.lcssa15.i.i.i526.i.i957, i8 0, i64 2184, i1 false), !noalias !9495
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i526.i.i957, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i527.i.i, align 8, !noalias !9539
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.3589.i.i734) ]
  %.not227.i.i958 = icmp ugt i64 %.sroa.012.0595.i.i728, %.sroa.14.3588.i.i735
  br i1 %.not227.i.i958, label %bb.rz, label %bb.ry, !prof !64

bb.ry:                                            ; preds = %.loopexit257.i.i956
  br i1 %i.ddl, label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i", label %.lr.ph.preheader.i.i.i959

.lr.ph.preheader.i.i.i959:                        ; preds = %bb.ry
  %i.dei = mul nuw nsw i64 %.sroa.012.0595.i.i728, 2192
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i521.i.i954, ptr nonnull readonly align 8 %.sroa.016.3589.i.i734, i64 %i.dei, i1 false), !alias.scope !9540, !noalias !9495
  br label %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i"

bb.rz:                                            ; preds = %.loopexit257.i.i956
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.012.0595.i.i728, i64 noundef %.sroa.14.3588.i.i735, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @911) #46
          to label %bb.ra unwind label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i", !noalias !9495

"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i": ; preds = %.lr.ph.preheader.i.i.i959, %bb.ry
  %i.dej = icmp eq i64 %.sroa.14.3588.i.i735, 0
  br i1 %i.dej, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i960"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i537.i.i960": ; preds = %"_ZN67_$LT$$u5b$T$u5d$$u20$as$u20$core..slice..CloneFromSpec$LT$T$GT$$GT$15spec_clone_from17h55fb486c6ce94ef0E.exit.i.i"
  %i.dek = mul nuw nsw i64 %.sroa.14.3588.i.i735, 2192
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.016.3589.i.i734, i64 noundef %i.dek, i64 noundef 8) #45, !noalias !9495
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"

bb.sa:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"
  %i.del = icmp eq i64 %.sroa.023.0593.i.i730, 0
  %..sroa.023.0.i.i940 = select i1 %i.del, i64 %i.ddm, i64 %.sroa.023.0593.i.i730
  br label %bb.sb

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946", %bb.si, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i"
  %.sroa.12.5.i.i764 = phi i64 [ %.sroa.12.2586.i.i737, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %.sroa.070.1.i.i941, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946" ], [ %.sroa.070.1.i.i941, %bb.si ] ; 11 uses
  %.sroa.026.5.i.i765 = phi ptr [ %.sroa.026.2587.i.i736, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %i.dex, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946" ], [ %i.dex, %bb.si ] ; 11 uses
  %.sroa.023.1.i.i766 = phi i64 [ %.sroa.023.0593.i.i730, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit538.i.i" ], [ %.sroa.070.1.i.i941, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946" ], [ %.sroa.070.1.i.i941, %bb.si ]
  %.not628.i.i767 = icmp eq i64 %i.ddi, 0
  br i1 %.not628.i.i767, label %.preheader256.i.i779, label %.lr.ph580.preheader.i.i768

.lr.ph580.preheader.i.i768:                       ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763"
  %reass.sub433.i769 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.14.7.i.i760, i64 %.sroa.0.0596.i.i727)
  %i.dem = add nuw nsw i64 %reass.sub433.i769, 1
  %reass.sub434.i770 = tail call i64 @llvm.usub.sat.i64(i64 %.sroa.12.5.i.i764, i64 %.sroa.018.0594.i.i729)
  %i.den = add nuw nsw i64 %reass.sub434.i770, 1
  br label %.lr.ph580.i.i771

bb.sb:                                            ; preds = %bb.sb, %bb.sa
  %.sroa.070.1.i.i941 = phi i64 [ %..sroa.023.0.i.i940, %bb.sa ], [ %i.dep, %bb.sb ] ; 9 uses
  %i.deo = icmp ult i64 %.sroa.070.1.i.i941, %i.ddm
  %i.dep = shl i64 %.sroa.070.1.i.i941, 1
  br i1 %i.deo, label %bb.sb, label %bb.sc

bb.sc:                                            ; preds = %bb.sb
  %i.deq = shl i64 %.sroa.070.1.i.i941, 2         ; 5 uses
  %i.der = icmp ugt i64 %.sroa.070.1.i.i941, 4611686018427387903
  %i.des = icmp ugt i64 %i.deq, 9223372036854775804
  %or.cond.i.i.i.i539.i.i942 = or i1 %i.der, %i.des
  br i1 %or.cond.i.i.i.i539.i.i942, label %bb.sf, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i943, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i943: ; preds = %bb.sc
  %i.det = icmp eq i64 %i.deq, 0
  br i1 %i.det, label %bb.sg, label %bb.sd

bb.sd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i943
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9541
  %i.deu = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.deq, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9541 ; 2 uses
  %i.dev = icmp eq ptr %i.deu, null
  br i1 %i.dev, label %bb.sf, label %bb.se

bb.se:                                            ; preds = %bb.sd
  %i.dew = ptrtoint ptr %i.deu to i64
  br label %bb.sg

bb.sf:                                            ; preds = %bb.sd, %bb.sc
  %.sroa.4.0.ph.i.i542.i.i948 = phi i64 [ 4, %bb.sd ], [ 0, %bb.sc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i542.i.i948, i64 %i.deq, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc543.i.i949 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.noexc543.i.i949:                                 ; preds = %bb.sf
  unreachable

bb.sg:                                            ; preds = %bb.se, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i943
  %.sroa.10.0.i.i541.i.i944 = phi i64 [ %i.dew, %bb.se ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i540.i.i943 ]
  %i.dex = inttoptr i64 %.sroa.10.0.i.i541.i.i944 to ptr ; 5 uses
  %i.dey = icmp samesign ult i64 %.sroa.070.1.i.i941, 2305843009213693952
  tail call void @llvm.assume(i1 %i.dey)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.dex) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.2587.i.i736) ]
  %.not229.i.i945 = icmp ugt i64 %.sroa.023.0593.i.i730, %.sroa.12.2586.i.i737
  br i1 %.not229.i.i945, label %bb.sh, label %bb.si, !prof !64

bb.sh:                                            ; preds = %bb.sg
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.023.0593.i.i730, i64 noundef %.sroa.12.2586.i.i737, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @910) #46
          to label %bb.ra unwind label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i947", !noalias !9495

bb.si:                                            ; preds = %bb.sg
  %i.dez = shl nuw nsw i64 %.sroa.023.0593.i.i730, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.dex, ptr nonnull readonly align 4 %.sroa.026.2587.i.i736, i64 %i.dez, i1 false), !alias.scope !9542, !noalias !9543
  %i.dfa = icmp eq i64 %.sroa.12.2586.i.i737, 0
  br i1 %i.dfa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i546.i.i946": ; preds = %bb.si
  %i.dfb = shl nuw nsw i64 %.sroa.12.2586.i.i737, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.026.2587.i.i736, i64 noundef %i.dfb, i64 noundef 4) #45, !noalias !9495
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763"

.preheader256.i.i779:                             ; preds = %bb.sr, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763"
  %.sroa.018.1.lcssa.i.i780 = phi i64 [ %.sroa.018.0594.i.i729, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763" ], [ %i.dge, %bb.sr ]
  %.sroa.0.1.lcssa.i.i781 = phi i64 [ %.sroa.0.0596.i.i727, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit547.i.i763" ], [ %i.dfx, %bb.sr ]
  %i.dfc = trunc i64 %.sroa.029.0592.i.i731 to i32
  %invariant.gep.i.i782 = getelementptr [4 x i8], ptr %i.crn, i64 %.sroa.047.1590.i.i733
  br label %bb.sj

._crit_edge585.i.loopexit.i786:                   ; preds = %bb.sk
  %i.dfd = add i64 %i.ddi, %.sroa.029.0592.i.i731 ; 23 uses
  %i.dfe = add i64 %.sroa.047.1590.i.i733, 64     ; 2 uses
  %i.dff = icmp ult i64 %i.dfe, %.sroa.0.0.i.i636
  %indvars.iv.next.i.i787 = add i64 %indvars.iv.i.i726, -64
  br i1 %i.dff, label %.split.i.i725, label %bb.py

bb.sj:                                            ; preds = %bb.sk, %.preheader256.i.i779
  %i.dfg = phi i64 [ 1, %.preheader256.i.i779 ], [ %i.dfo, %bb.sk ] ; 3 uses
  %.sroa.0133.0583.i.i783 = phi i64 [ 0, %.preheader256.i.i779 ], [ %i.dfg, %bb.sk ] ; 2 uses
  %i.dfh = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0133.0583.i.i783
  %i.dfi = load i32, ptr %i.dfh, align 4, !noalias !9495, !noundef !21 ; 2 uses
  %i.dfj = zext i32 %i.dfi to i64                 ; 2 uses
  %i.dfk = icmp ult i32 %i.dfi, 64
  br i1 %i.dfk, label %bb.sk, label %.invoke3856

bb.sk:                                            ; preds = %bb.sj
  %i.dfl = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dfj
  %i.dfm = load i32, ptr %i.dfl, align 4, !noalias !9495, !noundef !21
  %i.dfn = add i32 %i.dfm, %i.dfc
  %gep.i.i784 = getelementptr [4 x i8], ptr %invariant.gep.i.i782, i64 %.sroa.0133.0583.i.i783
  store i32 %i.dfn, ptr %gep.i.i784, align 4, !noalias !9495
  %i.dfo = add nuw nsw i64 %i.dfg, 1
  %exitcond847.not.i.i785 = icmp eq i64 %i.dfg, %umax846.i.i738
  br i1 %exitcond847.not.i.i785, label %._crit_edge585.i.loopexit.i786, label %bb.sj

.lr.ph580.i.i771:                                 ; preds = %bb.sr, %.lr.ph580.preheader.i.i768
  %i.dfp = phi i64 [ %i.dgh, %bb.sr ], [ 1, %.lr.ph580.preheader.i.i768 ] ; 6 uses
  %.sroa.0.1579.i.i772 = phi i64 [ %i.dfx, %bb.sr ], [ %.sroa.0.0596.i.i727, %.lr.ph580.preheader.i.i768 ] ; 3 uses
  %.sroa.018.1578.i.i773 = phi i64 [ %i.dge, %bb.sr ], [ %.sroa.018.0594.i.i729, %.lr.ph580.preheader.i.i768 ] ; 3 uses
  %.sroa.0131.0577.i.i774 = phi i64 [ %i.dfp, %bb.sr ], [ 0, %.lr.ph580.preheader.i.i768 ] ; 2 uses
  %exitcond840.not.i.i775 = icmp eq i64 %i.dfp, 65
  br i1 %exitcond840.not.i.i775, label %.invoke3856, label %bb.sl

bb.sl:                                            ; preds = %.lr.ph580.i.i771
  %i.dfq = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0131.0577.i.i774 ; 2 uses
  %i.dfr = load i32, ptr %i.dfq, align 4, !noalias !9495, !noundef !21
  %i.dfs = zext i32 %i.dfr to i64                 ; 4 uses
  %i.dft = icmp samesign ugt i64 %.sroa.0.0.i422.i.i662, %i.dfs
  br i1 %i.dft, label %bb.sn, label %.invoke3856

bb.sm:                                            ; preds = %bb.so
  %i.dfu = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

bb.sn:                                            ; preds = %bb.sl
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.016.7.i.i761) ]
  %exitcond842.not.i.i776 = icmp eq i64 %i.dfp, %i.dem
  br i1 %exitcond842.not.i.i776, label %bb.so, label %bb.sp

bb.so:                                            ; preds = %bb.sn
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.0.1579.i.i772, i64 noundef %.sroa.14.7.i.i760, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @907) #46
          to label %bb.ra unwind label %bb.sm, !noalias !9495

bb.sp:                                            ; preds = %bb.sn
  %i.dfv = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427923.i.i671, i64 %i.dfs
  %i.dfw = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.016.7.i.i761, i64 %.sroa.0.1579.i.i772
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.dfw, ptr noundef nonnull align 8 dereferenceable(2192) %i.dfv, i64 2192, i1 false), !noalias !9495
  %i.dfx = add nuw i64 %.sroa.0.1579.i.i772, 1    ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.026.5.i.i765) ]
  %exitcond844.not.i.i777 = icmp eq i64 %i.dfp, %i.den
  br i1 %exitcond844.not.i.i777, label %.invoke3856, label %bb.sq

bb.sq:                                            ; preds = %bb.sp
  %i.dfy = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.dfs
  %i.dfz = load i32, ptr %i.dfy, align 4, !noalias !9495, !noundef !21
  %i.dga = getelementptr inbounds nuw [4 x i8], ptr %.sroa.026.5.i.i765, i64 %.sroa.018.1578.i.i773
  store i32 %i.dfz, ptr %i.dga, align 4, !noalias !9495
  %i.dgb = load i32, ptr %i.dfq, align 4, !noalias !9495, !noundef !21 ; 2 uses
  %i.dgc = zext i32 %i.dgb to i64                 ; 2 uses
  %i.dgd = icmp ult i32 %i.dgb, 64
  br i1 %i.dgd, label %bb.sr, label %.invoke3856

bb.sr:                                            ; preds = %bb.sq
  %i.dge = add nuw i64 %.sroa.018.1578.i.i773, 1  ; 2 uses
  %i.dgf = getelementptr inbounds nuw [4 x i8], ptr %i.j, i64 %i.dgc
  %i.dgg = trunc nuw nsw i64 %.sroa.0131.0577.i.i774 to i32
  store i32 %i.dgg, ptr %i.dgf, align 4, !noalias !9495
  %i.dgh = add nuw nsw i64 %i.dfp, 1
  %exitcond845.not.i.i778 = icmp eq i64 %i.dfp, %i.ddi
  br i1 %exitcond845.not.i.i778, label %.preheader256.i.i779, label %.lr.ph580.i.i771

.invoke3856:                                      ; preds = %bb.sq, %bb.sp, %bb.sl, %.lr.ph580.i.i771, %bb.sj
  %i.dgi = phi i64 [ %i.dfj, %bb.sj ], [ %i.dgc, %bb.sq ], [ 64, %.lr.ph580.i.i771 ], [ %i.dfs, %bb.sl ], [ %.sroa.018.1578.i.i773, %bb.sp ]
  %i.dgj = phi i64 [ 64, %bb.sj ], [ 64, %bb.sq ], [ 64, %.lr.ph580.i.i771 ], [ %.sroa.0.0.i422.i.i662, %bb.sl ], [ %.sroa.12.5.i.i764, %bb.sp ]
  %i.dgk = phi ptr [ @904, %bb.sj ], [ @909, %bb.sq ], [ @905, %.lr.ph580.i.i771 ], [ @906, %bb.sl ], [ @908, %bb.sp ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dgi, i64 noundef %i.dgj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dgk) #46
          to label %.cont3857 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.cont3857:                                        ; preds = %.invoke3856
  unreachable

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit549.i.i947": ; preds = %bb.sh
  %i.dgl = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dex, i64 noundef %i.deq, i64 noundef 4) #45, !noalias !9495
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit551.i.i": ; preds = %bb.rz
  %i.dgm = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i521.i.i954, i64 noundef %i.ddq, i64 noundef 8) #45, !noalias !9495
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i502.i.i685"

.lr.ph574.i.i740:                                 ; preds = %bb.st, %.split.i.i725
  %.sroa.0127.1573.i.i741 = phi i64 [ %.sroa.0127.1.i.i756, %bb.st ], [ 1, %.split.i.i725 ] ; 3 uses
  %.sroa.043.3572.i.i742 = phi i64 [ %.sroa.043.4.lcssa.i.i753, %bb.st ], [ %.sroa.043.0591.i.i732, %.split.i.i725 ] ; 3 uses
  %.sroa.0127.0571.i.i743 = phi i64 [ %.sroa.0127.1573.i.i741, %bb.st ], [ 0, %.split.i.i725 ] ; 6 uses
  %i.dgn = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i427923.i.i671, i64 %.sroa.0127.0571.i.i743 ; 5 uses
  %i.dgo = getelementptr inbounds nuw i8, ptr %i.dgn, i64 2176 ; 2 uses
  %i.dgp = getelementptr inbounds nuw i8, ptr %i.dgn, i64 2184 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.dgn, i8 0, i64 2184, i1 false), !noalias !9495
  store float 3.402000e+38, ptr %i.dgp, align 8, !alias.scope !9544, !noalias !9495
  %i.dgq = add nuw nsw i64 %.sroa.0127.0571.i.i743, %.sroa.047.1590.i.i733 ; 3 uses
  %i.dgr = icmp ult i64 %i.dgq, %.sroa.0.0.i.i636
  br i1 %i.dgr, label %bb.ss, label %.invoke3854

bb.ss:                                            ; preds = %.lr.ph574.i.i740
  %i.dgs = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i651, i64 %i.dgq
  %i.dgt = load i32, ptr %i.dgs, align 4, !noalias !9495, !noundef !21 ; 2 uses
  %.not.i169.i744 = icmp eq i32 %i.dgt, 0
  br i1 %.not.i169.i744, label %._crit_edge.i.i752, label %.lr.ph.preheader.i.i745

.lr.ph.preheader.i.i745:                          ; preds = %bb.ss
  %i.dgu = zext i32 %i.dgt to i64
  %reass.sub.i746 = tail call i64 @llvm.usub.sat.i64(i64 %2, i64 %.sroa.043.3572.i.i742)
  %i.dgv = add nuw nsw i64 %reass.sub.i746, 1
  br label %.lr.ph.i.i747

._crit_edge.i.i752:                               ; preds = %bb.sv, %bb.ss
  %.sroa.043.4.lcssa.i.i753 = phi i64 [ %.sroa.043.3572.i.i742, %bb.ss ], [ %i.dhq, %bb.sv ] ; 2 uses
  %i.dgw = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.dgn)
          to label %bb.st unwind label %.thread164.loopexit.i.i754, !noalias !9495

bb.st:                                            ; preds = %._crit_edge.i.i752
  store float %i.dgw, ptr %i.dgp, align 8, !alias.scope !9545, !noalias !9495
  %i.dgx = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %.sroa.0127.0571.i.i743
  %i.dgy = trunc nuw nsw i64 %.sroa.0127.0571.i.i743 to i32 ; 2 uses
  store i32 %i.dgy, ptr %i.dgx, align 4, !noalias !9495
  %i.dgz = getelementptr inbounds nuw [4 x i8], ptr %i.k, i64 %.sroa.0127.0571.i.i743
  store i32 %i.dgy, ptr %i.dgz, align 4, !noalias !9495
  %i.dha = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.sroa.0127.0571.i.i743
  store i32 1, ptr %i.dha, align 4, !noalias !9495
  %i.dhb = icmp samesign ult i64 %.sroa.0127.1573.i.i741, %.sroa.0.0.i447.i.i739 ; 2 uses
  %i.dhc = zext i1 %i.dhb to i64
  %.sroa.0127.1.i.i756 = add nuw i64 %.sroa.0127.1573.i.i741, %i.dhc
  br i1 %i.dhb, label %.lr.ph574.i.i740, label %._crit_edge575.i.loopexit.i757

.lr.ph.i.i747:                                    ; preds = %bb.sv, %.lr.ph.preheader.i.i745
  %i.dhd = phi i64 [ %i.dhr, %bb.sv ], [ 1, %.lr.ph.preheader.i.i745 ] ; 3 uses
  %.sroa.043.4570.i.i748 = phi i64 [ %i.dhq, %bb.sv ], [ %.sroa.043.3572.i.i742, %.lr.ph.preheader.i.i745 ] ; 3 uses
  %exitcond838.not.i.i749 = icmp eq i64 %i.dhd, %i.dgv
  br i1 %exitcond838.not.i.i749, label %.invoke3854, label %bb.su

bb.su:                                            ; preds = %.lr.ph.i.i747
  %i.dhe = getelementptr inbounds nuw [2 x i8], ptr %i.ckd, i64 %.sroa.043.4570.i.i748
  %i.dhf = load i16, ptr %i.dhe, align 2, !alias.scope !9546, !noalias !9534, !noundef !21 ; 2 uses
  %i.dhg = zext i16 %i.dhf to i64                 ; 2 uses
  %i.dhh = icmp ult i16 %i.dhf, 544
  br i1 %i.dhh, label %bb.sv, label %.invoke3854

.invoke3854:                                      ; preds = %.lr.ph574.i.i740, %bb.su, %.lr.ph.i.i747
  %i.dhi = phi i64 [ %.sroa.043.4570.i.i748, %.lr.ph.i.i747 ], [ %i.dhg, %bb.su ], [ %i.dgq, %.lr.ph574.i.i740 ]
  %i.dhj = phi i64 [ %2, %.lr.ph.i.i747 ], [ 544, %bb.su ], [ %.sroa.0.0.i.i636, %.lr.ph574.i.i740 ]
  %i.dhk = phi ptr [ @913, %.lr.ph.i.i747 ], [ @1286, %bb.su ], [ @912, %.lr.ph574.i.i740 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.dhi, i64 noundef %i.dhj, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dhk) #46
          to label %.cont3855 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.cont3855:                                        ; preds = %.invoke3854
  unreachable

bb.sv:                                            ; preds = %bb.su
  %i.dhl = getelementptr inbounds nuw [4 x i8], ptr %i.dgn, i64 %i.dhg ; 2 uses
  %i.dhm = load i32, ptr %i.dhl, align 4, !alias.scope !9547, !noalias !9495, !noundef !21
  %i.dhn = add i32 %i.dhm, 1
  store i32 %i.dhn, ptr %i.dhl, align 4, !alias.scope !9547, !noalias !9495
  %i.dho = load i64, ptr %i.dgo, align 8, !alias.scope !9548, !noalias !9495, !noundef !21
  %i.dhp = add i64 %i.dho, 1
  store i64 %i.dhp, ptr %i.dgo, align 8, !alias.scope !9549, !noalias !9495
  %i.dhq = add nuw i64 %.sroa.043.4570.i.i748, 1  ; 2 uses
  %i.dhr = add nuw nsw i64 %i.dhd, 1
  %exitcond839.not.i.i751 = icmp eq i64 %i.dhd, %i.dgu
  br i1 %exitcond839.not.i.i751, label %._crit_edge.i.i752, label %.lr.ph.i.i747

bb.sw:                                            ; preds = %bb.sz, %bb.pw
  %.sroa.047.0568.i.i672 = phi i64 [ 0, %bb.pw ], [ %i.dhw, %bb.sz ] ; 2 uses
  %.sroa.059.0567.i.i673 = phi i64 [ 0, %bb.pw ], [ %.sroa.059.1.i.i724, %bb.sz ] ; 5 uses
  %i.dhs = icmp ult i64 %.sroa.059.0567.i.i673, %.sroa.0.0.i.i636
  br i1 %i.dhs, label %bb.sx, label %.invoke.i.i674

bb.sx:                                            ; preds = %bb.sw
  %i.dht = getelementptr inbounds nuw [4 x i8], ptr %.sroa.10.0.i.i411.i.i651, i64 %.sroa.059.0567.i.i673 ; 2 uses
  %i.dhu = load i32, ptr %i.dht, align 4, !noalias !9495, !noundef !21
  %i.dhv = add i32 %i.dhu, 1
  store i32 %i.dhv, ptr %i.dht, align 4, !noalias !9495
  %i.dhw = add nuw i64 %.sroa.047.0568.i.i672, 1  ; 3 uses
  %i.dhx = icmp eq i64 %i.dhw, %.sroa.01.1        ; 2 uses
  br i1 %i.dhx, label %bb.ta, label %bb.sy

bb.sy:                                            ; preds = %bb.sx
  %i.dhy = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %.sroa.047.0568.i.i672
  %i.dhz = load i8, ptr %i.dhy, align 1, !alias.scope !9491, !noalias !9550, !noundef !21
  %i.dia = getelementptr inbounds nuw i8, ptr %i.cpo, i64 %i.dhw
  %i.dib = load i8, ptr %i.dia, align 1, !alias.scope !9491, !noalias !9550, !noundef !21
  %.not238.i.i723 = icmp eq i8 %i.dhz, %i.dib
  br i1 %.not238.i.i723, label %bb.sz, label %bb.ta

.invoke.i.i674:                                   ; preds = %bb.sw
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.059.0567.i.i673, i64 noundef %.sroa.0.0.i.i636, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @914) #46
          to label %.cont.i.i722 unwind label %.thread164.loopexit.split-lp.loopexit.split-lp.i.i675, !noalias !9495

.cont.i.i722:                                     ; preds = %.invoke.i.i674
  unreachable

bb.sz:                                            ; preds = %bb.ta, %bb.sy
  %.sroa.059.1.i.i724 = phi i64 [ %i.dic, %bb.ta ], [ %.sroa.059.0567.i.i673, %bb.sy ]
  br i1 %i.dhx, label %.split.i.i725, label %bb.sw

bb.ta:                                            ; preds = %bb.sy, %bb.sx
  %i.dic = add nuw nsw i64 %.sroa.059.0567.i.i673, 1
end_hunk_9
begin_hunk_10_@_ZN6brotli3enc14block_splitter16BrotliSplitBlock17he061b6f34e5c3b37E:bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cpu, i64 noundef %i.cpt, i64 noundef 4) #45, !noalias !9452
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cpo, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9452
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i"

"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i720": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i718", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i978", %bb.tb, %.body.i981
  %.pn.pn.pn.pn.i721 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i982, %.body.i981 ], [ %i.dig, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit557.i.i978" ], [ %.pn230.pn.pn.pn.pn.pn90.i.i716, %bb.tb ], [ %.pn230.pn.pn.pn.pn.pn.pn85948.i.i719, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i558.i.i718" ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cpo, i64 noundef %.sroa.01.1, i64 noundef 1) #45, !noalias !9452
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i522", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i1004", %.thread.i468
  %.pn.pn.pn.pn.pn38.i469 = phi { ptr, i32 } [ %i.cle, %.thread.i468 ], [ %.pn.pn.pn44.i523, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$f32$GT$$GT$17hd7cf5c42720ba08aE.exit.i522" ], [ %i.cpw, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.thread.i1004" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckn, i64 noundef %i.ckm, i64 noundef 8) #45, !noalias !9452
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"

bb.vw:                                            ; preds = %bb.op
  %i.ead = icmp eq i64 %.val107.i1009, 0          ; 2 uses
  %spec.select.i1025 = select i1 %i.ead, i64 %i.clc, i64 %.val107.i1009
  br label %bb.vx

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1028", %bb.vz, %bb.op
  %.val.i1011 = phi ptr [ %i.eak, %bb.vz ], [ %i.eak, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1028" ], [ %.val106.i1008, %bb.op ]
  %.val63.i1012 = phi i64 [ %.sroa.014.1.i1026, %bb.vz ], [ %.sroa.014.1.i1026, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1028" ], [ %.val107.i1009, %bb.op ] ; 2 uses
  %i.eae = getelementptr inbounds nuw i8, ptr %9, i64 16 ; 2 uses
  %.val92.i1013 = load ptr, ptr %i.eae, align 8, !alias.scope !9450, !noalias !9449, !nonnull !21, !align !28, !noundef !21 ; 3 uses
  %i.eaf = getelementptr inbounds nuw i8, ptr %9, i64 24 ; 2 uses
  %.val93.i1014 = load i64, ptr %i.eaf, align 8, !alias.scope !9450, !noalias !9449, !noundef !21 ; 5 uses
  %i.eag = icmp ult i64 %.val93.i1014, %i.clc
  br i1 %i.eag, label %bb.wa, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015"

bb.vx:                                            ; preds = %bb.vx, %bb.vw
  %.sroa.014.1.i1026 = phi i64 [ %spec.select.i1025, %bb.vw ], [ %i.eai, %bb.vx ] ; 9 uses
  %i.eah = icmp ult i64 %.sroa.014.1.i1026, %i.clc
  %i.eai = shl i64 %.sroa.014.1.i1026, 1
  br i1 %i.eah, label %bb.vx, label %bb.vy

bb.vy:                                            ; preds = %bb.vx
  %i.eaj = icmp slt i64 %.sroa.014.1.i1026, 0
  br i1 %i.eaj, label %.invoke2850, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027: ; preds = %bb.vy
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9583
  %i.eak = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %.sroa.014.1.i1026, i64 noundef range(i64 1, -9223372036854775807) 1) #45, !noalias !9583 ; 5 uses
  %i.eal = icmp eq ptr %i.eak, null
  br i1 %i.eal, label %.invoke2850, label %bb.vz

bb.vz:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.eak, ptr nonnull readonly align 1 %.val106.i1008, i64 %.val107.i1009, i1 false), !alias.scope !9584, !noalias !9585
  store ptr %i.eak, ptr %9, align 8, !alias.scope !9450, !noalias !9449
  store i64 %.sroa.014.1.i1026, ptr %i.ckz, align 8, !alias.scope !9450, !noalias !9449
  br i1 %i.ead, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1028"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i228.i1028": ; preds = %bb.vz
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %.val106.i1008, i64 noundef %.val107.i1009, i64 noundef 1) #45, !noalias !9452
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010"

bb.wa:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010"
  %i.eam = icmp eq i64 %.val93.i1014, 0           ; 2 uses
  %spec.select91.i1018 = select i1 %i.eam, i64 %i.clc, i64 %.val93.i1014
  br label %bb.wb

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1023", %bb.wf, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010"
  %.val108.i1016 = phi ptr [ %i.eba, %bb.wf ], [ %i.eba, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1023" ], [ %.val92.i1013, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010" ]
  %.val109.i1017 = phi i64 [ %.sroa.017.1.i1019, %bb.wf ], [ %.sroa.017.1.i1019, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1023" ], [ %.val93.i1014, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h092c98f721addd0bE.exit229.i1010" ] ; 2 uses
  %i.ean = getelementptr inbounds nuw i8, ptr %9, i64 32
  store i64 1, ptr %i.ean, align 8, !alias.scope !9450, !noalias !9449
  %i.eao = icmp ult i64 %i.clb, %.val63.i1012
  br i1 %i.eao, label %bb.wg, label %.invoke2848

bb.wb:                                            ; preds = %bb.wb, %bb.wa
  %.sroa.017.1.i1019 = phi i64 [ %spec.select91.i1018, %bb.wa ], [ %i.eaq, %bb.wb ] ; 8 uses
  %i.eap = icmp ult i64 %.sroa.017.1.i1019, %i.clc
  %i.eaq = shl i64 %.sroa.017.1.i1019, 1
  br i1 %i.eap, label %bb.wb, label %bb.wc

bb.wc:                                            ; preds = %bb.wb
  %i.ear = shl i64 %.sroa.017.1.i1019, 2          ; 5 uses
  %i.eas = icmp ugt i64 %.sroa.017.1.i1019, 4611686018427387903
  %i.eat = icmp ugt i64 %i.ear, 9223372036854775804
  %or.cond.i.i.i.i230.i1020 = or i1 %i.eas, %i.eat
  br i1 %or.cond.i.i.i.i230.i1020, label %.invoke2850, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1021, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1021: ; preds = %bb.wc
  %i.eau = icmp eq i64 %i.ear, 0
  br i1 %i.eau, label %bb.wf, label %bb.wd

bb.wd:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1021
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !9586
  %i.eav = tail call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.ear, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !9586 ; 2 uses
  %i.eaw = icmp eq ptr %i.eav, null
  br i1 %i.eaw, label %.invoke2850, label %bb.we

bb.we:                                            ; preds = %bb.wd
  %i.eax = ptrtoint ptr %i.eav to i64
  br label %bb.wf

.invoke2850:                                      ; preds = %bb.wc, %bb.wd, %bb.vy, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i450
  %i.eay = phi i64 [ 0, %bb.vy ], [ 8, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i450 ], [ 1, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027 ], [ 4, %bb.wd ], [ 0, %bb.wc ]
  %i.eaz = phi i64 [ %.sroa.014.1.i1026, %bb.vy ], [ %i.ckm, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i450 ], [ %.sroa.014.1.i1026, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i222.i1027 ], [ %i.ear, %bb.wd ], [ %i.ear, %bb.wc ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.eay, i64 %i.eaz, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont2851 unwind label %bb.om

.cont2851:                                        ; preds = %.invoke2850
  unreachable

bb.wf:                                            ; preds = %bb.we, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1021
  %.sroa.10.0.i.i232.i1022 = phi i64 [ %i.eax, %bb.we ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i231.i1021 ]
  %i.eba = inttoptr i64 %.sroa.10.0.i.i232.i1022 to ptr ; 5 uses
  %i.ebb = icmp samesign ult i64 %.sroa.017.1.i1019, 2305843009213693952
  tail call void @llvm.assume(i1 %i.ebb)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.eba) ]
  %i.ebc = shl nuw nsw i64 %.val93.i1014, 2       ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %i.eba, ptr nonnull readonly align 4 %.val92.i1013, i64 %i.ebc, i1 false), !alias.scope !9587, !noalias !9588
  store ptr %i.eba, ptr %i.eae, align 8, !alias.scope !9450, !noalias !9449
  store i64 %.sroa.017.1.i1019, ptr %i.eaf, align 8, !alias.scope !9450, !noalias !9449
  br i1 %i.eam, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1023"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i236.i1023": ; preds = %bb.wf
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.val92.i1013, i64 noundef %i.ebc, i64 noundef 4) #45, !noalias !9452
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015"

bb.wg:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015"
  %i.ebd = getelementptr inbounds nuw i8, ptr %.val.i1011, i64 %i.clb
  store i8 0, ptr %i.ebd, align 1, !noalias !9452
  %i.ebe = icmp ult i64 %i.clb, %.val109.i1017
  br i1 %i.ebe, label %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit.thread, label %.invoke2848

_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit.thread: ; preds = %bb.wg
  %i.ebf = getelementptr inbounds nuw [4 x i8], ptr %.val108.i1016, i64 %i.clb
  %i.ebg = trunc nuw nsw i64 %.sroa.01.1 to i32
  store i32 %i.ebg, ptr %i.ebf, align 4, !noalias !9452
  store i64 %i.clc, ptr %i.cla, align 8, !alias.scope !9450, !noalias !9449
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1037"

.invoke2848:                                      ; preds = %bb.wk, %.lr.ph916, %bb.wg, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015"
  %i.ebh = phi i64 [ %i.clb, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015" ], [ %i.clb, %bb.wg ], [ %1, %.lr.ph916 ], [ %.sroa.01.0915, %bb.wk ]
  %i.ebi = phi i64 [ %.val63.i1012, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015" ], [ %.val109.i1017, %bb.wg ], [ %1, %.lr.ph916 ], [ %2, %bb.wk ]
  %i.ebj = phi ptr [ @915, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i1015" ], [ @916, %bb.wg ], [ @917, %.lr.ph916 ], [ @918, %bb.wk ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ebh, i64 noundef %i.ebi, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ebj) #46
          to label %.cont2849 unwind label %bb.om

.cont2849:                                        ; preds = %.invoke2848
  unreachable

_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit: ; preds = %bb.tc, %bb.on
  %i.ebk = phi ptr [ %i.ckj, %bb.on ], [ %i.ckd, %bb.tc ]
  br i1 %i.atj, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17he72b1d6748ab4833E.exit1039", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1037"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1037": ; preds = %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit.thread, %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit
  %i.ebl = phi ptr [ %i.ckd, %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit.thread ], [ %i.ebk, %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 2 %i.ebl, i64 noundef %i.arb, i64 noundef 2) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17he72b1d6748ab4833E.exit1039"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17he72b1d6748ab4833E.exit1039": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i1037", %_ZN6brotli3enc14block_splitter15SplitByteVector17hcc188e07e47f5c98E.exit
  ret void

bb.wh:                                            ; preds = %.lr.ph916
  %i.ebm = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.011.0914 ; 3 uses
  %i.ebn = getelementptr inbounds nuw i8, ptr %i.ebm, i64 4
  %i.ebo = load i32, ptr %i.ebn, align 4, !noundef !21
  %i.ebp = and i32 %i.ebo, 33554431
  %i.ebq = icmp eq i32 %i.ebp, 0
  br i1 %i.ebq, label %bb.wj, label %bb.wi

bb.wi:                                            ; preds = %bb.wh
  %i.ebr = getelementptr inbounds nuw i8, ptr %i.ebm, i64 12
  %i.ebs = load i16, ptr %i.ebr, align 4, !noundef !21
  %i.ebt = icmp ugt i16 %i.ebs, 127
  br i1 %i.ebt, label %bb.wk, label %bb.wj

bb.wj:                                            ; preds = %bb.wi, %bb.wh, %bb.wl
  %.sroa.01.1 = phi i64 [ %.sroa.01.0915, %bb.wh ], [ %i.ebz, %bb.wl ], [ %.sroa.01.0915, %bb.wi ] ; 37 uses
  %exitcond1675.not = icmp eq i64 %i.cke, %2
  br i1 %exitcond1675.not, label %._crit_edge917, label %.lr.ph916

bb.wk:                                            ; preds = %bb.wi
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ckd) ]
  %i.ebu = icmp ult i64 %.sroa.01.0915, %2
  br i1 %i.ebu, label %bb.wl, label %.invoke2848

bb.wl:                                            ; preds = %bb.wk
  %i.ebv = getelementptr inbounds nuw i8, ptr %i.ebm, i64 14
  %i.ebw = load i16, ptr %i.ebv, align 2, !noundef !21
  %i.ebx = getelementptr inbounds nuw [2 x i8], ptr %i.ckd, i64 %.sroa.01.0915
  %i.eby = and i16 %i.ebw, 1023
  store i16 %i.eby, ptr %i.ebx, align 2
  %i.ebz = add nuw nsw i64 %.sroa.01.0915, 1
  br label %bb.wj

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042", %.body, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i"
  %.pn = phi { ptr, i32 } [ %eh.lpad-body1032, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i" ], [ %eh.lpad-body43795, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040" ], [ %eh.lpad-body, %.body ], [ %eh.lpad-body, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042" ]
  resume { ptr, i32 } %.pn

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i": ; preds = %bb.om, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i720"
  %eh.lpad-body1032 = phi { ptr, i32 } [ %i.ckf, %bb.om ], [ %.pn.pn.pn.pn.pn38.i469, %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit.i" ], [ %.pn.pn.pn.pn.i721, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i720" ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ckd) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ckd, i64 noundef %i.arb, i64 noundef 2) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit"

scalar.ph3671:                                    ; preds = %scalar.ph3671.prol.loopexit, %scalar.ph3671
  %.sroa.09.0912 = phi i64 [ %i.ecp, %scalar.ph3671 ], [ %.sroa.09.0912.unr, %scalar.ph3671.prol.loopexit ] ; 6 uses
  %i.eca = add nuw i64 %.sroa.09.0912, 1          ; 2 uses
  %i.ecb = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %.sroa.09.0912
  %i.ecc = getelementptr inbounds nuw i8, ptr %i.ecb, i64 12
  %i.ecd = load i16, ptr %i.ecc, align 4, !noundef !21
  %i.ece = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %.sroa.09.0912
  store i16 %i.ecd, ptr %i.ece, align 2
  %i.ecf = add nuw i64 %.sroa.09.0912, 2          ; 2 uses
  %i.ecg = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.eca
  %i.ech = getelementptr inbounds nuw i8, ptr %i.ecg, i64 12
  %i.eci = load i16, ptr %i.ech, align 4, !noundef !21
  %i.ecj = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %i.eca
  store i16 %i.eci, ptr %i.ecj, align 2
  %i.eck = add nuw i64 %.sroa.09.0912, 3          ; 2 uses
  %i.ecl = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.ecf
  %i.ecm = getelementptr inbounds nuw i8, ptr %i.ecl, i64 12
  %i.ecn = load i16, ptr %i.ecm, align 4, !noundef !21
  %i.eco = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %i.ecf
  store i16 %i.ecn, ptr %i.eco, align 2
  %i.ecp = add nuw i64 %.sroa.09.0912, 4          ; 2 uses
  %i.ecq = getelementptr inbounds nuw [16 x i8], ptr %0, i64 %i.eck
  %i.ecr = getelementptr inbounds nuw i8, ptr %i.ecq, i64 12
  %i.ecs = load i16, ptr %i.ecr, align 4, !noundef !21
  %i.ect = getelementptr inbounds nuw [2 x i8], ptr %i.ari, i64 %i.eck
  store i16 %i.ecs, ptr %i.ect, align 2
  %exitcond.not.3 = icmp eq i64 %i.ecp, %.sroa.0.0.i
  br i1 %exitcond.not.3, label %._crit_edge, label %scalar.ph3671, !llvm.loop !9164

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1040": ; preds = %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i", %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i", %.body436.thread
  %eh.lpad-body43795 = phi { ptr, i32 } [ %i.atg, %.body436.thread ], [ %.pn.pn.pn.pn.i267, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit220.i" ], [ %.pn.pn.pn.pn.pn38.i61, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramCommand$GT$$GT$17hb0902274592fa10bE.exit.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ari, i64 noundef %i.arb, i64 noundef 2) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit"

.body:                                            ; preds = %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit217.i", %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i", %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.aw, %bb.e ], [ %.pn.pn.pn.pn.pn38.i, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit.i" ], [ %.pn.pn.pn.pn.i, %"_ZN4core3ptr64drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u8$GT$$GT$17hfdc81e5eccc0fe96E.exit217.i" ] ; 2 uses
  br i1 %i.as, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i1042": ; preds = %.body
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ax, i64 noundef %i.aq, i64 noundef 1) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u16$GT$$GT$17hcf20d3dca7a65f0aE.exit"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc17brotli_bit_stream12LogMetaBlock17h4564c46130fee7a0E(ptr noalias noundef nonnull align 1 %0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %5, i64 noundef %6, ptr noalias noundef readonly align 4 captures(none) dereferenceable(16) %7, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %8, ptr noalias noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(152) %9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %10, i8 noundef range(i8 0, 5) %11) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [48 x i8], align 8                ; 14 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 7 uses
  %i.f = alloca [376 x i8], align 8               ; 35 uses
  %i.g = alloca [192 x i8], align 8               ; 20 uses
  %i.h = alloca [920 x i8], align 8               ; 4 uses
  %i.i = alloca [1656 x i8], align 8              ; 19 uses
  %i.j = alloca [48 x i8], align 8                ; 2 uses
  %i.k = alloca [48 x i8], align 8                ; 4 uses
  %i.l = alloca [296 x i8], align 8               ; 14 uses
  %i.m = alloca [920 x i8], align 8               ; 18 uses
  %i.n = alloca [240 x i8], align 8               ; 8 uses
  %i.o = alloca [376 x i8], align 8               ; 4 uses
  %i.p = alloca [48 x i8], align 8                ; 10 uses
  %i.q = alloca [48 x i8], align 8                ; 3 uses
  %i.r = alloca [4 x i8], align 4                 ; 2 uses
  %i.s = alloca [48 x i8], align 8                ; 3 uses
  %i.t = alloca [4 x i8], align 4                 ; 2 uses
  %i.u = alloca [48 x i8], align 8                ; 3 uses
  %i.v = alloca [4 x i8], align 4                 ; 2 uses
  %i.w = alloca [24592 x i8], align 1             ; 13 uses
  %i.x = alloca [16384 x i8], align 1             ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(16384) %i.x, i8 0, i64 16384, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(24592) %i.w, i8 0, i64 24592, i1 false)
  %i.y = load ptr, ptr %9, align 8, !nonnull !21, !align !29, !noundef !21 ; 5 uses
  %i.z = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !21 ; 4 uses
  %i.ab = icmp samesign eq i64 %i.aa, 0
  br i1 %i.ab, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9671)
  %i.ad = icmp samesign eq i64 %i.aa, 1
  br i1 %i.ad, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.val.i.i.i.i.i.pre.i.i = load i8, ptr %i.y, align 1, !alias.scope !9672, !noalias !9673 ; 2 uses
  %i.ae = add i64 %i.aa, -2
  %i.af = add i64 %i.aa, -1                       ; 2 uses
  %xtraiter = and i64 %i.af, 3                    ; 3 uses
  %i.ag = icmp ult i64 %i.ae, 3
  br i1 %i.ag, label %.epil.preheader, label %.new

.new:                                             ; preds = %bb.c
  %unroll_iter = and i64 %i.af, -4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.new
  %.val.i.i.i.i.i.i.i = phi i8 [ %.val.i.i.i.i.i.pre.i.i, %.new ], [ %i.aw, %bb.d ] ; 2 uses
  %.sroa.09.0.i.i = phi i64 [ 0, %.new ], [ %i.av, %bb.d ] ; 5 uses
  %.sroa.07.0.i.i = phi ptr [ %i.y, %.new ], [ %.sroa.0.0.i.i.i.i.3, %bb.d ]
  %niter = phi i64 [ 0, %.new ], [ %niter.next.3, %bb.d ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.09.0.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  %.val1.i.i.i.i.i.i.i = load i8, ptr %i.ah, align 1, !alias.scope !9673, !noalias !9672, !noundef !21 ; 2 uses
  %i.ai = icmp ugt i8 %.val.i.i.i.i.i.i.i, %.val1.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.i.i = select i1 %i.ai, ptr %.sroa.07.0.i.i, ptr %i.ah
  %i.aj = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i, i8 %.val1.i.i.i.i.i.i.i) ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.09.0.i.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 1 ; 2 uses
  %.val1.i.i.i.i.i.i.i.1 = load i8, ptr %i.al, align 1, !alias.scope !9678, !noalias !9679, !noundef !21 ; 2 uses
  %i.am = icmp ugt i8 %i.aj, %.val1.i.i.i.i.i.i.i.1
  %.sroa.0.0.i.i.i.i.1 = select i1 %i.am, ptr %.sroa.0.0.i.i.i.i, ptr %i.al
  %i.an = tail call i8 @llvm.umax.i8(i8 %i.aj, i8 %.val1.i.i.i.i.i.i.i.1) ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.09.0.i.i
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 2 ; 2 uses
  %.val1.i.i.i.i.i.i.i.2 = load i8, ptr %i.ap, align 1, !alias.scope !9680, !noalias !9681, !noundef !21 ; 2 uses
  %i.aq = icmp ugt i8 %i.an, %.val1.i.i.i.i.i.i.i.2
  %.sroa.0.0.i.i.i.i.2 = select i1 %i.aq, ptr %.sroa.0.0.i.i.i.i.1, ptr %i.ap
  %i.ar = tail call i8 @llvm.umax.i8(i8 %i.an, i8 %.val1.i.i.i.i.i.i.i.2) ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.09.0.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %i.as, i64 3 ; 2 uses
  %.val1.i.i.i.i.i.i.i.3 = load i8, ptr %i.at, align 1, !alias.scope !9682, !noalias !9683, !noundef !21 ; 2 uses
  %i.au = icmp ugt i8 %i.ar, %.val1.i.i.i.i.i.i.i.3
  %.sroa.0.0.i.i.i.i.3 = select i1 %i.au, ptr %.sroa.0.0.i.i.i.i.2, ptr %i.at ; 3 uses
  %i.av = add nuw i64 %.sroa.09.0.i.i, 4          ; 2 uses
  %i.aw = tail call i8 @llvm.umax.i8(i8 %i.ar, i8 %.val1.i.i.i.i.i.i.i.3) ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa, label %bb.d

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa, %bb.c
  %.val.i.i.i.i.i.i.i.epil.init = phi i8 [ %.val.i.i.i.i.i.pre.i.i, %bb.c ], [ %i.aw, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa ]
  %.sroa.09.0.i.i.epil.init = phi i64 [ 0, %bb.c ], [ %i.av, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa ]
  %.sroa.07.0.i.i.epil.init = phi ptr [ %i.y, %bb.c ], [ %.sroa.0.0.i.i.i.i.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa ]
  %lcmp.mod150 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod150)
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %.epil.preheader
  %.val.i.i.i.i.i.i.i.epil = phi i8 [ %.val.i.i.i.i.i.i.i.epil.init, %.epil.preheader ], [ %i.ba, %bb.e ] ; 2 uses
  %.sroa.09.0.i.i.epil = phi i64 [ %.sroa.09.0.i.i.epil.init, %.epil.preheader ], [ %i.az, %bb.e ] ; 2 uses
  %.sroa.07.0.i.i.epil = phi ptr [ %.sroa.07.0.i.i.epil.init, %.epil.preheader ], [ %.sroa.0.0.i.i.i.i.epil, %bb.e ]
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.e ]
  %i.ax = getelementptr inbounds nuw i8, ptr %i.ac, i64 %.sroa.09.0.i.i.epil ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9674)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9675)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9676)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9677)
  %.val1.i.i.i.i.i.i.i.epil = load i8, ptr %i.ax, align 1, !alias.scope !9673, !noalias !9672, !noundef !21 ; 2 uses
  %i.ay = icmp ugt i8 %.val.i.i.i.i.i.i.i.epil, %.val1.i.i.i.i.i.i.i.epil
  %.sroa.0.0.i.i.i.i.epil = select i1 %i.ay, ptr %.sroa.07.0.i.i.epil, ptr %i.ax ; 2 uses
  %i.az = add nuw i64 %.sroa.09.0.i.i.epil, 1
  %i.ba = tail call i8 @llvm.umax.i8(i8 %.val.i.i.i.i.i.i.i.epil, i8 %.val1.i.i.i.i.i.i.i.epil)
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit, label %bb.e, !llvm.loop !9609

_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit: ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa, %bb.e, %bb.a, %bb.b
  %.sroa.0.0.i = phi ptr [ null, %bb.a ], [ %i.y, %bb.b ], [ %.sroa.0.0.i.i.i.i.3, %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit.loopexit.unr-lcssa ], [ %.sroa.0.0.i.i.i.i.epil, %bb.e ] ; 2 uses
  %.not = icmp eq ptr %.sroa.0.0.i, null
  %. = select i1 %.not, ptr @405, ptr %.sroa.0.0.i
  %i.bb = load i8, ptr %., align 1, !noundef !21
  %i.bc = zext i8 %i.bb to i32
  %i.bd = add nuw nsw i32 %i.bc, 1                ; 2 uses
  store i32 %i.bd, ptr %i.v, align 4
  %i.be = getelementptr inbounds nuw i8, ptr %9, i64 32 ; 2 uses
  %i.bf = load i32, ptr %i.be, align 8, !noundef !21
  %i.bg = icmp eq i32 %i.bd, %i.bf
  br i1 %i.bg, label %bb.g, label %bb.f, !prof !31

bb.f:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  store ptr null, ptr %i.u, align 8
  call void @_ZN4core9panicking13assert_failed17h2174553b27a96270E(i8 noundef 0, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.v, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.be, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.u, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @929) #46
  unreachable

bb.g:                                             ; preds = %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit
  %i.bh = getelementptr inbounds nuw i8, ptr %9, i64 56
  %i.bi = load ptr, ptr %i.bh, align 8, !nonnull !21, !align !29, !noundef !21 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %9, i64 64
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !21 ; 4 uses
  %i.bl = icmp samesign eq i64 %i.bk, 0
  br i1 %i.bl, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 1 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9684)
  %i.bn = icmp samesign eq i64 %i.bk, 1
  br i1 %i.bn, label %_ZN4core4iter6traits8iterator8Iterator6reduce17hdf50a2a95c3c99a0E.exit207, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.val.i.i.i.i.i.pre.i.i200 = load i8, ptr %i.bi, align 1, !alias.scope !9685, !noalias !9686 ; 2 uses
  %i.bo = add i64 %i.bk, -2
  %i.bp = add i64 %i.bk, -1                       ; 2 uses
  %xtraiter153 = and i64 %i.bp, 3                 ; 3 uses
  %i.bq = icmp ult i64 %i.bo, 3
  br i1 %i.bq, label %.epil.preheader152, label %.new151

.new151:                                          ; preds = %bb.i
  %unroll_iter158 = and i64 %i.bp, -4
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %.new151
  %.val.i.i.i.i.i.i.i201 = phi i8 [ %.val.i.i.i.i.i.pre.i.i200, %.new151 ], [ %i.cg, %bb.j ] ; 2 uses
  %.sroa.09.0.i.i202 = phi i64 [ 0, %.new151 ], [ %i.cf, %bb.j ] ; 5 uses
  %.sroa.07.0.i.i203 = phi ptr [ %i.bi, %.new151 ], [ %.sroa.0.0.i.i.i.i205.3, %bb.j ]
  %niter159 = phi i64 [ 0, %.new151 ], [ %niter159.next.3, %bb.j ]
  %i.br = getelementptr inbounds nuw i8, ptr %i.bm, i64 %.sroa.09.0.i.i202 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9687)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9688)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9689)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !9690)
end_hunk_10
begin_hunk_11_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
.lr.ph.i.i.i146.epil:                             ; preds = %.lr.ph.i.i.i146, %.lr.ph.i.i.i146.epil
  %.sroa.0.08.i.i.i147.epil = phi ptr [ %i.mp, %.lr.ph.i.i.i146.epil ], [ %i.mx, %.lr.ph.i.i.i146 ] ; 4 uses
  %epil.iter1525 = phi i64 [ %epil.iter1525.next, %.lr.ph.i.i.i146.epil ], [ 0, %.lr.ph.i.i.i146 ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147.epil, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.epil, align 8, !noalias !12502
  %i.mp = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 1040 ; 2 uses
  %epil.iter1525.next = add i64 %epil.iter1525, 1 ; 2 uses
  %epil.iter1525.cmp.not = icmp eq i64 %epil.iter1525.next, 7
  br i1 %epil.iter1525.cmp.not, label %._crit_edge.thread.i.i.i143, label %.lr.ph.i.i.i146.epil, !llvm.loop !12213

._crit_edge.thread.i.i.i143:                      ; preds = %.lr.ph.i.i.i146.epil
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147.epil, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mp, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i145, align 8, !noalias !12502
  br label %._crit_edge.i.i.i141

.lr.ph.i.i.i146:                                  ; preds = %.lr.ph.i.i.i146, %.lr.ph.i.i.i146.preheader.new
  %.sroa.0.08.i.i.i147 = phi ptr [ %.sroa.10.0.i.i.i139, %.lr.ph.i.i.i146.preheader.new ], [ %i.mx, %.lr.ph.i.i.i146 ] ; 17 uses
  %niter1531 = phi i64 [ 0, %.lr.ph.i.i.i146.preheader.new ], [ %niter1531.next.7, %.lr.ph.i.i.i146 ] ; 2 uses
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i147, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149, align 8, !noalias !12502
  %i.mq = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mq, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.1, align 8, !noalias !12502
  %i.mr = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mr, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.2, align 8, !noalias !12502
  %i.ms = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 4152
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ms, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.3, align 8, !noalias !12502
  %i.mt = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 4160
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.4 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 5192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mt, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.4, align 8, !noalias !12502
  %i.mu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 5200
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.5 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 6232
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mu, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.5, align 8, !noalias !12502
  %i.mv = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 6240
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.6 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 7272
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mv, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.6, align 8, !noalias !12502
  %i.mw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 7280
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.7 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 8312
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.mw, i8 0, i64 1032, i1 false)
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i149.7, align 8, !noalias !12502
  %i.mx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i147, i64 8320 ; 2 uses
  %niter1531.next.7 = add nuw i64 %niter1531, 8
  %niter1531.ncmp.7 = icmp eq i64 %niter1531, %i.mo
  br i1 %niter1531.ncmp.7, label %.lr.ph.i.i.i146.epil, label %.lr.ph.i.i.i146

._crit_edge.i.i.i141:                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i138", %._crit_edge.thread.i.i.i143
  %i.my = getelementptr inbounds nuw i8, ptr %12, i64 176 ; 2 uses
  %i.mz = getelementptr inbounds nuw i8, ptr %12, i64 184 ; 2 uses
  %.val52 = load i64, ptr %i.mz, align 8, !noundef !21 ; 2 uses
  %i.na = icmp eq i64 %.val52, 0
  br i1 %i.na, label %bb.bt, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154": ; preds = %._crit_edge.i.i.i141
  %.val51 = load ptr, ptr %i.my, align 8, !nonnull !21, !noundef !21
  %i.nb = mul nuw nsw i64 %.val52, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val51, i64 noundef %i.nb, i64 noundef 8) #45
  br label %bb.bt

bb.bt:                                            ; preds = %._crit_edge.i.i.i141, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i154"
  store ptr %.sroa.10.0.i.i.i139, ptr %i.my, align 8
  store i64 %i.ls, ptr %i.mz, align 8
  %.val47 = load ptr, ptr %i.me, align 8, !nonnull !21, !align !28, !noundef !21 ; 15 uses
  %.val48 = load i64, ptr %i.mf, align 8, !noundef !21 ; 30 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !12503)
  call void @llvm.experimental.noalias.scope.decl(metadata !12504)
  call void @llvm.experimental.noalias.scope.decl(metadata !12505)
  call void @llvm.experimental.noalias.scope.decl(metadata !12506)
  %.not.i155 = icmp eq i64 %i.cq, 0               ; 7 uses
  br i1 %.not.i155, label %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.bt
  %i.nc = shl nuw nsw i64 %i.cq, 2                ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12507
  %i.nd = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.nc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12507 ; 3 uses
  %i.ne = icmp eq ptr %i.nd, null
  br i1 %i.ne, label %.invoke1149, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i: ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12508
  %i.nf = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.nc, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12508 ; 2 uses
  %i.ng = icmp eq ptr %i.nf, null
  br i1 %i.ng, label %bb.bu, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i"

bb.bu:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.nc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i unwind label %.thread72.i, !noalias !12509

.noexc.i:                                         ; preds = %bb.bu
  unreachable

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i84.i
  %i.nh = insertvalue { ptr, i64 } poison, ptr %i.nf, 0
  %i.ni = insertvalue { ptr, i64 } %i.nh, i64 %i.cq, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i

.thread72.i:                                      ; preds = %bb.bu
  %i.nj = landingpad { ptr, i32 }
          cleanup
  br label %.thread38.thread.thread

_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i", %bb.bt
  %i.nk = phi ptr [ %i.nd, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i" ], [ inttoptr (i64 4 to ptr), %bb.bt ] ; 6 uses
  %.pn.i82.i = phi { ptr, i64 } [ %i.ni, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$10alloc_cell17h843437c9a97a5c3aE.exit.i85.i" ], [ { ptr inttoptr (i64 4 to ptr), i64 0 }, %bb.bt ] ; 2 uses
  %i.nl = extractvalue { ptr, i64 } %.pn.i82.i, 0 ; 12 uses
  %i.nm = extractvalue { ptr, i64 } %.pn.i82.i, 1 ; 19 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12510
  %i.nn = call noundef align 4 dereferenceable_or_null(32784) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 32784, i64 noundef range(i64 1, 9) 4) #45, !noalias !12510 ; 12 uses
  %i.no = icmp eq ptr %i.nn, null
  br i1 %i.no, label %bb.bv, label %bb.bw

bb.bv:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 32784, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc91.i unwind label %.thread27.i, !noalias !12509

.noexc91.i:                                       ; preds = %bb.bv
  unreachable

.thread45.thread81.loopexit.i:                    ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i

.thread45.thread81.loopexit.split-lp.loopexit.i:  ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit42.us.i.i
  %lpad.loopexit90.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %.lr.ph.split.us37.preheader.i.i
  %lpad.loopexit98.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i

.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %.split31.us.i.invoke.i
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i

.thread27.i:                                      ; preds = %bb.bv
  %i.np = landingpad { ptr, i32 }
          cleanup
  br label %.thread45.thread81.i

bb.bw:                                            ; preds = %_ZN6brotli3enc14combined_alloc8alloc_if17h8249494fc4b35594E.exit88.i
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(32784) %i.nn, i8 0, i64 32784, i1 false), !noalias !12509
  br i1 %.not.i155, label %._crit_edge160.i, label %.lr.ph.i156.preheader

.lr.ph.i156.preheader:                            ; preds = %bb.bw
  %min.iters.check = icmp ult i64 %i.cq, 8
  br i1 %min.iters.check, label %.lr.ph.i156.preheader1461, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i156.preheader
  %n.vec = and i64 %i.cq, -8                      ; 4 uses
  %i.nq = or disjoint i64 %n.vec, 1
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nr = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %index ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  store <4 x i32> splat (i32 1), ptr %i.nr, align 4, !noalias !12509
  store <4 x i32> splat (i32 1), ptr %i.ns, align 4, !noalias !12509
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.nt = icmp eq i64 %index.next, %n.vec
  br i1 %i.nt, label %middle.block, label %vector.body, !llvm.loop !12234

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.cq, %n.vec
  br i1 %cmp.n, label %.preheader105.i, label %.lr.ph.i156.preheader1461

.lr.ph.i156.preheader1461:                        ; preds = %.lr.ph.i156.preheader, %middle.block
  %.ph1462 = phi i64 [ 1, %.lr.ph.i156.preheader ], [ %i.nq, %middle.block ]
  %.sroa.029.0152.i.ph = phi i64 [ 0, %.lr.ph.i156.preheader ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i156

.preheader105.i:                                  ; preds = %.lr.ph.i156, %middle.block
  %i.nu = or disjoint i64 %i.ls, 1
  %i.nv = add i64 %.val48, 1
  br label %bb.du

.preheader101.i:                                  ; preds = %bb.dz
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nl) ]
  br label %.lr.ph156.i

.lr.ph156.i:                                      ; preds = %bb.ds, %.preheader101.i
  %indvars.iv.i = phi i64 [ %i.cq, %.preheader101.i ], [ %indvars.iv.next.i, %bb.ds ] ; 2 uses
  %.sroa.0.0158.i = phi i64 [ 0, %.preheader101.i ], [ %i.xl, %bb.ds ] ; 8 uses
  %.sroa.08.0157.i = phi i64 [ 0, %.preheader101.i ], [ %i.xm, %bb.ds ] ; 8 uses
  %i.nw = call i64 @llvm.umax.i64(i64 %indvars.iv.i, i64 1)
  %umax226.i = call i64 @llvm.umin.i64(i64 %i.nw, i64 64) ; 2 uses
  %i.nx = sub nuw i64 %i.cq, %.sroa.08.0157.i
  %.sroa.0.0.i92.i = call noundef i64 @llvm.umin.i64(i64 %i.nx, i64 64) ; 2 uses
  %reass.sub = call i64 @llvm.usub.sat.i64(i64 %i.nm, i64 %.sroa.0.0158.i) ; 2 uses
  %i.ny = add nuw nsw i64 %reass.sub, 1
  %i.nz = add nsw i64 %umax226.i, -1
  %i.oa = call i64 @llvm.umin.i64(i64 %reass.sub, i64 %i.nz) ; 2 uses
  %min.iters.check1271 = icmp ult i64 %i.oa, 8
  br i1 %min.iters.check1271, label %scalar.ph1270.preheader, label %vector.ph1272

scalar.ph1270.preheader:                          ; preds = %vector.body1274, %.lr.ph156.i
  %.ph1456 = phi i64 [ 1, %.lr.ph156.i ], [ %i.of, %vector.body1274 ]
  %.sroa.033.0155.i.ph = phi i64 [ 0, %.lr.ph156.i ], [ %n.vec1273, %vector.body1274 ]
  br label %scalar.ph1270

vector.ph1272:                                    ; preds = %.lr.ph156.i
  %i.ob = add nuw nsw i64 %i.oa, 1                ; 2 uses
  %i.oc = and i64 %i.ob, 7                        ; 2 uses
  %i.od = icmp eq i64 %i.oc, 0
  %i.oe = select i1 %i.od, i64 8, i64 %i.oc
  %n.vec1273 = sub i64 %i.ob, %i.oe               ; 3 uses
  %i.of = add i64 %n.vec1273, 1
  %broadcast.splatinsert = insertelement <4 x i64> poison, i64 %.sroa.08.0157.i, i64 0
  %broadcast.splat = shufflevector <4 x i64> %broadcast.splatinsert, <4 x i64> poison, <4 x i32> zeroinitializer ; 2 uses
  %invariant.op = add nuw <4 x i64> splat (i64 4), %broadcast.splat
  %invariant.gep = getelementptr [4 x i8], ptr %i.nl, i64 %.sroa.0.0158.i
  br label %vector.body1274

vector.body1274:                                  ; preds = %vector.body1274, %vector.ph1272
  %index1275 = phi i64 [ 0, %vector.ph1272 ], [ %index.next1276, %vector.body1274 ] ; 2 uses
  %vec.ind = phi <4 x i64> [ <i64 0, i64 1, i64 2, i64 3>, %vector.ph1272 ], [ %vec.ind.next, %vector.body1274 ] ; 3 uses
  %i.og = add nuw nsw <4 x i64> %vec.ind, %broadcast.splat
  %.reass = add nuw <4 x i64> %vec.ind, %invariant.op
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %index1275 ; 2 uses
  %i.oh = trunc <4 x i64> %i.og to <4 x i32>
  %i.oi = trunc <4 x i64> %.reass to <4 x i32>
  %i.oj = getelementptr inbounds nuw i8, ptr %gep, i64 16
  store <4 x i32> %i.oh, ptr %gep, align 4, !noalias !12509
  store <4 x i32> %i.oi, ptr %i.oj, align 4, !noalias !12509
  %index.next1276 = add nuw i64 %index1275, 8     ; 2 uses
  %vec.ind.next = add <4 x i64> %vec.ind, splat (i64 8)
  %i.ok = icmp eq i64 %index.next1276, %n.vec1273
  br i1 %i.ok, label %scalar.ph1270.preheader, label %vector.body1274, !llvm.loop !12235

.loopexit.i:                                      ; preds = %bb.dr
  %lpad.loopexit102.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

.loopexit.split-lp.loopexit.i:                    ; preds = %bb.dx
  %lpad.loopexit106.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %.invoke340.i, %.invoke.i, %bb.cc
  %.sroa.10.1.ph.ph.ph.i = phi i64 [ 2049, %.invoke340.i ], [ %.sroa.10.3.i, %bb.cc ], [ 2049, %.invoke.i ]
  %.sroa.011.1.ph.ph.ph.i = phi ptr [ %i.nn, %.invoke340.i ], [ %.sroa.011.3.i, %bb.cc ], [ %i.nn, %.invoke.i ]
  %lpad.loopexit.split-lp107.i = landingpad { ptr, i32 }
          cleanup
  %i.ol = shl nuw nsw i64 %.sroa.10.1.ph.ph.ph.i, 4
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

._crit_edge160.i:                                 ; preds = %bb.ds, %bb.bw
  %.sroa.0.0.lcssa.i = phi i64 [ 0, %bb.bw ], [ %i.xl, %bb.ds ] ; 4 uses
  %i.om = shl nuw nsw i64 %.sroa.0.0.lcssa.i, 6
  %i.on = lshr i64 %.sroa.0.0.lcssa.i, 1
  %i.oo = mul i64 %i.on, %.sroa.0.0.lcssa.i
  %.sroa.0.0.i.i159 = call noundef i64 @llvm.umin.i64(i64 %i.oo, i64 %i.om) ; 3 uses
  %i.op = icmp samesign ugt i64 %.sroa.0.0.i.i159, 2047
  br i1 %i.op, label %.preheader.i, label %bb.cc

.preheader.i:                                     ; preds = %._crit_edge160.i, %.preheader.i
  %.sroa.021.0.i = phi i64 [ %i.oq, %.preheader.i ], [ 2048, %._crit_edge160.i ] ; 6 uses
  %.not84.i = icmp ugt i64 %.sroa.021.0.i, %.sroa.0.0.i.i159
  %i.oq = shl i64 %.sroa.021.0.i, 1
  br i1 %.not84.i, label %bb.bx, label %.preheader.i

bb.bx:                                            ; preds = %.preheader.i
  %i.or = shl i64 %.sroa.021.0.i, 4               ; 5 uses
  %i.os = icmp ugt i64 %.sroa.021.0.i, 1152921504606846975
  %i.ot = icmp ugt i64 %i.or, 9223372036854775804
  %or.cond.i.i.i.i.i.i.i = or i1 %i.os, %i.ot
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.by, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.bx
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12511
  %i.ou = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.or, i64 noundef range(i64 1, 9) 4) #45, !noalias !12511 ; 6 uses
  %i.ov = icmp eq ptr %i.ou, null
  br i1 %i.ov, label %bb.by, label %bb.ca

bb.by:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, %bb.bx
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i ], [ 0, %bb.bx ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.or, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc93.i unwind label %bb.bz, !noalias !12509

.noexc93.i:                                       ; preds = %bb.by
  unreachable

bb.bz:                                            ; preds = %bb.by
  %lpad.thr_comm.split-lp63.i = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

bb.ca:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.ow = add nsw i64 %i.or, -16                  ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.ou, i8 0, i64 %i.ow, i1 false), !noalias !12512
  %i.ox = getelementptr i8, ptr %i.ou, i64 %i.or  ; 2 uses
  %scevgep11.i.i.i = getelementptr i8, ptr %i.ou, i64 %i.ow
  store i32 0, ptr %scevgep11.i.i.i, align 4, !noalias !12512
  %.sroa.55.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ox, i64 -12
  store i32 0, ptr %.sroa.55.0..sroa_idx.i.i.i, align 4, !noalias !12512
  %.sroa.67.0..sroa_idx.i.i.i = getelementptr i8, ptr %i.ox, i64 -8
  store <2 x float> zeroinitializer, ptr %.sroa.67.0..sroa_idx.i.i.i, align 4, !noalias !12512
  %i.oy = icmp samesign ult i64 %.sroa.021.0.i, 576460752303423488
  call void @llvm.assume(i1 %i.oy)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32768) %i.ou, ptr noundef nonnull readonly align 4 dereferenceable(32768) %i.nn, i64 32768, i1 false), !alias.scope !12513, !noalias !12509
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.nn, i64 noundef 32784, i64 noundef 4) #45, !noalias !12509
  br label %bb.cc

bb.cb:                                            ; preds = %bb.dv
  unreachable

bb.cc:                                            ; preds = %bb.ca, %._crit_edge160.i
  %.sroa.10.3.i = phi i64 [ %.sroa.021.0.i, %bb.ca ], [ 2049, %._crit_edge160.i ] ; 3 uses
  %.sroa.011.3.i = phi ptr [ %i.ou, %bb.ca ], [ %i.nn, %._crit_edge160.i ] ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nl) ]
  %i.oz = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139, i64 noundef %i.ls, ptr noalias noundef nonnull align 4 %i.nk, i64 noundef %i.cq, ptr noalias noundef nonnull align 4 %.val47, i64 noundef %.val48, ptr noalias noundef nonnull align 4 %i.nl, i64 noundef %i.nm, ptr noalias noundef nonnull align 4 %.sroa.011.3.i, i64 noundef %.sroa.10.3.i, i64 noundef %.sroa.0.0.lcssa.i, i64 noundef %i.cq, i64 noundef 256, i64 noundef %.sroa.0.0.i.i159)
          to label %bb.cd unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12514 ; 5 uses

bb.cd:                                            ; preds = %bb.cc
  %i.pa = shl nuw nsw i64 %.sroa.10.3.i, 4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %.sroa.011.3.i, i64 noundef %i.pa, i64 noundef 4) #45, !noalias !12509
  br i1 %.not.i155, label %.preheader.i.i, label %.lr.ph36.i.i

.lr.ph36.i.i:                                     ; preds = %bb.cd
  %i.pb = shl nuw nsw i64 %i.cq, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.nk, i64 noundef %i.pb, i64 noundef 4) #45, !noalias !12509
  call void @llvm.experimental.noalias.scope.decl(metadata !12515)
  call void @llvm.experimental.noalias.scope.decl(metadata !12516)
  call void @llvm.experimental.noalias.scope.decl(metadata !12517)
  call void @llvm.experimental.noalias.scope.decl(metadata !12518)
  %.not.i.i160 = icmp eq i64 %.val48, 0           ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %i.c, i64 1024 ; 4 uses
  %.not71.i.i = icmp eq i64 %i.oz, 0
  %i.pd = getelementptr inbounds nuw i8, ptr %i.d, i64 1024 ; 2 uses
  br i1 %.not71.i.i, label %.lr.ph36.split.i.i, label %.lr.ph36.split.us.i.i

.lr.ph36.split.us.i.i:                            ; preds = %.lr.ph36.i.i, %bb.cl
  %.sroa.010.034.us.i.i = phi i64 [ %i.pe, %bb.cl ], [ 0, %.lr.ph36.i.i ] ; 6 uses
  %i.pe = add nuw i64 %.sroa.010.034.us.i.i, 1    ; 2 uses
  %i.pf = icmp eq i64 %.sroa.010.034.us.i.i, 0
  br i1 %i.pf, label %bb.cg, label %bb.ce

bb.ce:                                            ; preds = %.lr.ph36.split.us.i.i
  %i.pg = add i64 %.sroa.010.034.us.i.i, -1       ; 3 uses
  %i.ph = icmp ult i64 %i.pg, %.val48
  br i1 %i.ph, label %bb.cf, label %.split31.us.i.invoke.i

bb.cf:                                            ; preds = %bb.ce
  %i.pi = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.pg
  br label %bb.ch

bb.cg:                                            ; preds = %.lr.ph36.split.us.i.i
  br i1 %.not.i.i160, label %.split31.us.i.invoke.i, label %bb.ch

bb.ch:                                            ; preds = %bb.cg, %bb.cf
  %.sroa.01.0.in.us.i.i = phi ptr [ %i.pi, %bb.cf ], [ %.val47, %bb.cg ]
  %.sroa.01.0.us.i.i = load i32, ptr %.sroa.01.0.in.us.i.i, align 4, !alias.scope !12519, !noalias !12520, !noundef !21 ; 3 uses
  %i.pj = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i917, i64 %.sroa.010.034.us.i.i ; 3 uses
  %i.pk = zext i32 %.sroa.01.0.us.i.i to i64      ; 3 uses
  %i.pl = icmp samesign ugt i64 %i.ls, %i.pk
  br i1 %i.pl, label %bb.ci, label %.split31.us.i.invoke.i

bb.ci:                                            ; preds = %bb.ch
  %i.pm = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.pk ; 4 uses
  %i.pn = getelementptr inbounds nuw i8, ptr %i.pj, i64 1024
  %i.po = load i64, ptr %i.pn, align 8, !alias.scope !12521, !noalias !12522, !noundef !21
  %i.pp = icmp eq i64 %i.po, 0
  br i1 %i.pp, label %.lr.ph.split.us.us.i.i, label %vector.ph1290

vector.ph1290:                                    ; preds = %bb.ci
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.pj, i64 1040, i1 false), !alias.scope !12524, !noalias !12522
  %i.pq = load i64, ptr %i.pc, align 8, !alias.scope !12525, !noalias !12526, !noundef !21
  %i.pr = getelementptr inbounds nuw i8, ptr %i.pm, i64 1024
  %i.ps = load i64, ptr %i.pr, align 8, !alias.scope !12527, !noalias !12528, !noundef !21
  %i.pt = add i64 %i.ps, %i.pq
  store i64 %i.pt, ptr %i.pc, align 8, !alias.scope !12529, !noalias !12530
  br label %vector.body1291

vector.body1291:                                  ; preds = %vector.body1291, %vector.ph1290
  %index1292 = phi i64 [ 0, %vector.ph1290 ], [ %index.next1297.1, %vector.body1291 ] ; 4 uses
  %i.pu = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1292 ; 3 uses
  %i.pv = getelementptr inbounds nuw i8, ptr %i.pu, i64 16 ; 2 uses
  %wide.load1293 = load <4 x i32>, ptr %i.pu, align 8, !noalias !12530
  %wide.load1294 = load <4 x i32>, ptr %i.pv, align 8, !noalias !12530
  %i.pw = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %index1292 ; 2 uses
  %i.px = getelementptr inbounds nuw i8, ptr %i.pw, i64 16
  %wide.load1295 = load <4 x i32>, ptr %i.pw, align 8, !alias.scope !12531, !noalias !12528
  %wide.load1296 = load <4 x i32>, ptr %i.px, align 8, !alias.scope !12531, !noalias !12528
  %i.py = add <4 x i32> %wide.load1295, %wide.load1293
  %i.pz = add <4 x i32> %wide.load1296, %wide.load1294
  store <4 x i32> %i.py, ptr %i.pu, align 8, !noalias !12530
  store <4 x i32> %i.pz, ptr %i.pv, align 8, !noalias !12530
  %index.next1297 = or disjoint i64 %index1292, 8 ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index.next1297 ; 3 uses
  %i.qb = getelementptr inbounds nuw i8, ptr %i.qa, i64 16 ; 2 uses
  %wide.load1293.1 = load <4 x i32>, ptr %i.qa, align 8, !noalias !12530
  %wide.load1294.1 = load <4 x i32>, ptr %i.qb, align 8, !noalias !12530
  %i.qc = getelementptr inbounds nuw [4 x i8], ptr %i.pm, i64 %index.next1297 ; 2 uses
  %i.qd = getelementptr inbounds nuw i8, ptr %i.qc, i64 16
  %wide.load1295.1 = load <4 x i32>, ptr %i.qc, align 8, !alias.scope !12531, !noalias !12528
  %wide.load1296.1 = load <4 x i32>, ptr %i.qd, align 8, !alias.scope !12531, !noalias !12528
  %i.qe = add <4 x i32> %wide.load1295.1, %wide.load1293.1
  %i.qf = add <4 x i32> %wide.load1296.1, %wide.load1294.1
  store <4 x i32> %i.qe, ptr %i.qa, align 8, !noalias !12530
  store <4 x i32> %i.qf, ptr %i.qb, align 8, !noalias !12530
  %index.next1297.1 = add nuw nsw i64 %index1292, 16 ; 2 uses
  %i.qg = icmp eq i64 %index.next1297.1, 256
  br i1 %i.qg, label %.lr.ph.split.us37.preheader.i.i, label %vector.body1291, !llvm.loop !12270

.lr.ph.split.us37.preheader.i.i:                  ; preds = %vector.body1291
  %i.qh = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.c)
          to label %.noexc97.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !12509

.noexc97.i:                                       ; preds = %.lr.ph.split.us37.preheader.i.i
  %i.qi = getelementptr inbounds nuw i8, ptr %i.pm, i64 1032
  %i.qj = load float, ptr %i.qi, align 8, !alias.scope !12532, !noalias !12533, !noundef !21
  %i.qk = fsub float %i.qh, %i.qj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12523
  br label %.lr.ph.split.us37.i.i

.lr.ph.split.us37.i.i:                            ; preds = %.noexc98.i, %.noexc97.i
  %.sroa.01.129.us38.i.i = phi i32 [ %.sroa.01.2.us42.i.i, %.noexc98.i ], [ %.sroa.01.0.us.i.i, %.noexc97.i ]
  %.sroa.03.028.us39.i.i = phi float [ %.sroa.03.1.us41.i.i, %.noexc98.i ], [ %i.qk, %.noexc97.i ] ; 2 uses
  %.sroa.012.027.us40.i.i = phi i64 [ %i.ql, %.noexc98.i ], [ 0, %.noexc97.i ] ; 3 uses
  %i.ql = add nuw nsw i64 %.sroa.012.027.us40.i.i, 1 ; 2 uses
  %exitcond127.not.i.i = icmp eq i64 %.sroa.012.027.us40.i.i, %i.nm
  br i1 %exitcond127.not.i.i, label %.split31.us.i.invoke.i, label %bb.cj

bb.cj:                                            ; preds = %.lr.ph.split.us37.i.i
  %i.qm = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.012.027.us40.i.i
  %i.qn = load i32, ptr %i.qm, align 4, !alias.scope !12516, !noalias !12534, !noundef !21 ; 2 uses
  %i.qo = zext i32 %i.qn to i64                   ; 3 uses
  %i.qp = icmp samesign ugt i64 %i.ls, %i.qo
  br i1 %i.qp, label %vector.ph1281, label %.split31.us.i.invoke.i

vector.ph1281:                                    ; preds = %bb.cj
  %i.qq = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.qo ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12535
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.pj, i64 1040, i1 false), !alias.scope !12536, !noalias !12537
  %i.qr = load i64, ptr %i.pd, align 8, !alias.scope !12538, !noalias !12539, !noundef !21
  %i.qs = getelementptr inbounds nuw i8, ptr %i.qq, i64 1024
  %i.qt = load i64, ptr %i.qs, align 8, !alias.scope !12540, !noalias !12541, !noundef !21
  %i.qu = add i64 %i.qt, %i.qr
  store i64 %i.qu, ptr %i.pd, align 8, !alias.scope !12542, !noalias !12543
  br label %vector.body1282

vector.body1282:                                  ; preds = %vector.body1282, %vector.ph1281
  %index1283 = phi i64 [ 0, %vector.ph1281 ], [ %index.next1287.1, %vector.body1282 ] ; 4 uses
  %i.qv = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index1283 ; 3 uses
  %i.qw = getelementptr inbounds nuw i8, ptr %i.qv, i64 16 ; 2 uses
  %wide.load = load <4 x i32>, ptr %i.qv, align 8, !noalias !12543
  %wide.load1284 = load <4 x i32>, ptr %i.qw, align 8, !noalias !12543
  %i.qx = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %index1283 ; 2 uses
  %i.qy = getelementptr inbounds nuw i8, ptr %i.qx, i64 16
  %wide.load1285 = load <4 x i32>, ptr %i.qx, align 8, !alias.scope !12531, !noalias !12541
  %wide.load1286 = load <4 x i32>, ptr %i.qy, align 8, !alias.scope !12531, !noalias !12541
  %i.qz = add <4 x i32> %wide.load1285, %wide.load
  %i.ra = add <4 x i32> %wide.load1286, %wide.load1284
  store <4 x i32> %i.qz, ptr %i.qv, align 8, !noalias !12543
  store <4 x i32> %i.ra, ptr %i.qw, align 8, !noalias !12543
  %index.next1287 = or disjoint i64 %index1283, 8 ; 2 uses
  %i.rb = getelementptr inbounds nuw [4 x i8], ptr %i.d, i64 %index.next1287 ; 3 uses
  %i.rc = getelementptr inbounds nuw i8, ptr %i.rb, i64 16 ; 2 uses
  %wide.load.1 = load <4 x i32>, ptr %i.rb, align 8, !noalias !12543
  %wide.load1284.1 = load <4 x i32>, ptr %i.rc, align 8, !noalias !12543
  %i.rd = getelementptr inbounds nuw [4 x i8], ptr %i.qq, i64 %index.next1287 ; 2 uses
  %i.re = getelementptr inbounds nuw i8, ptr %i.rd, i64 16
  %wide.load1285.1 = load <4 x i32>, ptr %i.rd, align 8, !alias.scope !12531, !noalias !12541
  %wide.load1286.1 = load <4 x i32>, ptr %i.re, align 8, !alias.scope !12531, !noalias !12541
  %i.rf = add <4 x i32> %wide.load1285.1, %wide.load.1
  %i.rg = add <4 x i32> %wide.load1286.1, %wide.load1284.1
  store <4 x i32> %i.rf, ptr %i.rb, align 8, !noalias !12543
  store <4 x i32> %i.rg, ptr %i.rc, align 8, !noalias !12543
  %index.next1287.1 = add nuw nsw i64 %index1283, 16 ; 2 uses
  %i.rh = icmp eq i64 %index.next1287.1, 256
  br i1 %i.rh, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit42.us.i.i, label %vector.body1282, !llvm.loop !12288

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit42.us.i.i: ; preds = %vector.body1282
  %i.ri = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.d)
          to label %.noexc98.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.i, !noalias !12509

.noexc98.i:                                       ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit42.us.i.i
  %i.rj = getelementptr inbounds nuw i8, ptr %i.qq, i64 1032
  %i.rk = load float, ptr %i.rj, align 8, !alias.scope !12544, !noalias !12533, !noundef !21
  %i.rl = fsub float %i.ri, %i.rk                 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12535
  %i.rm = fcmp olt float %i.rl, %.sroa.03.028.us39.i.i ; 2 uses
  %.sroa.03.1.us41.i.i = select i1 %i.rm, float %i.rl, float %.sroa.03.028.us39.i.i
  %.sroa.01.2.us42.i.i = select i1 %i.rm, i32 %i.qn, i32 %.sroa.01.129.us38.i.i ; 2 uses
  %exitcond128.not.i.i = icmp eq i64 %i.ql, %i.oz
  br i1 %exitcond128.not.i.i, label %._crit_edge.us.i.i, label %.lr.ph.split.us37.i.i

.lr.ph.split.us.us.i.i:                           ; preds = %bb.ci, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i
  %.sroa.012.027.us.us.i.i = phi i64 [ %i.rn, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i ], [ 0, %bb.ci ] ; 3 uses
  %i.rn = add nuw nsw i64 %.sroa.012.027.us.us.i.i, 1 ; 2 uses
  %exitcond129.not.i.i = icmp eq i64 %.sroa.012.027.us.us.i.i, %i.nm
  br i1 %exitcond129.not.i.i, label %.split31.us.i.invoke.i, label %bb.ck

bb.ck:                                            ; preds = %.lr.ph.split.us.us.i.i
  %i.ro = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.012.027.us.us.i.i
  %i.rp = load i32, ptr %i.ro, align 4, !alias.scope !12516, !noalias !12534, !noundef !21
  %i.rq = zext i32 %i.rp to i64                   ; 2 uses
  %i.rr = icmp samesign ugt i64 %i.ls, %i.rq
  br i1 %i.rr, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i, label %.split31.us.i.invoke.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i: ; preds = %bb.ck
  %exitcond130.not.i.i = icmp eq i64 %i.rn, %i.oz
  br i1 %exitcond130.not.i.i, label %._crit_edge.us.i.i, label %.lr.ph.split.us.us.i.i

._crit_edge.us.i.i:                               ; preds = %.noexc98.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i
  %.us-phi33.us.i.i = phi i32 [ %.sroa.01.0.us.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit.us.us.i.i ], [ %.sroa.01.2.us42.i.i, %.noexc98.i ]
  %exitcond132.not.i.i = icmp eq i64 %.sroa.010.034.us.i.i, %.val48
  br i1 %exitcond132.not.i.i, label %.split31.us.i.invoke.i, label %bb.cl

bb.cl:                                            ; preds = %._crit_edge.us.i.i
  %i.rs = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.010.034.us.i.i
  store i32 %.us-phi33.us.i.i, ptr %i.rs, align 4, !alias.scope !12519, !noalias !12520
  %exitcond133.not.i.i = icmp eq i64 %i.pe, %i.cq
  br i1 %exitcond133.not.i.i, label %.lr.ph.i.i.preheader, label %.lr.ph36.split.us.i.i

.preheader.i.i:                                   ; preds = %bb.ct, %bb.cd
  %.not72.i.i = icmp eq i64 %i.oz, 0
  br i1 %.not72.i.i, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.cl, %.preheader.i.i
  br label %.lr.ph.i.i

.lr.ph36.split.i.i:                               ; preds = %.lr.ph36.i.i, %bb.ct
  %.sroa.010.034.i.i = phi i64 [ %i.rt, %bb.ct ], [ 0, %.lr.ph36.i.i ] ; 6 uses
  %i.rt = add nuw i64 %.sroa.010.034.i.i, 1       ; 2 uses
  %i.ru = icmp eq i64 %.sroa.010.034.i.i, 0
  br i1 %i.ru, label %bb.co, label %bb.cp

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i: ; preds = %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i, %.preheader.i.i
  br i1 %.not.i155, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i, label %.lr.ph69.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i
  %.sroa.014.066.i.i = phi i64 [ %i.rv, %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.rv = add nuw nsw i64 %.sroa.014.066.i.i, 1   ; 2 uses
  %exitcond138.not.i.i = icmp eq i64 %.sroa.014.066.i.i, %i.nm
  br i1 %exitcond138.not.i.i, label %.split31.us.i.invoke.i, label %bb.cn

.lr.ph69.i.i:                                     ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i, %middle.block1318
  %.sroa.016.068.i.i = phi i64 [ %i.rw, %middle.block1318 ], [ 0, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i ] ; 4 uses
  %i.rw = add nuw i64 %.sroa.016.068.i.i, 1       ; 2 uses
  %exitcond141.not.i.i = icmp eq i64 %.sroa.016.068.i.i, %.val48
  br i1 %exitcond141.not.i.i, label %.split31.us.i.invoke.i, label %bb.cm

bb.cm:                                            ; preds = %.lr.ph69.i.i
  %i.rx = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.016.068.i.i
  %i.ry = load i32, ptr %i.rx, align 4, !alias.scope !12519, !noalias !12520, !noundef !21
  %i.rz = zext i32 %i.ry to i64                   ; 3 uses
  %i.sa = icmp samesign ugt i64 %i.ls, %i.rz
  br i1 %i.sa, label %vector.ph1310, label %.split31.us.i.invoke.i

vector.ph1310:                                    ; preds = %bb.cm
  %i.sb = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.rz ; 3 uses
  %i.sc = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i917, i64 %.sroa.016.068.i.i ; 3 uses
  %i.sd = getelementptr inbounds nuw i8, ptr %i.sb, i64 1024 ; 2 uses
  %i.se = load i64, ptr %i.sd, align 8, !alias.scope !12545, !noalias !12546, !noundef !21
  %i.sf = getelementptr inbounds nuw i8, ptr %i.sc, i64 1024
  %i.sg = load i64, ptr %i.sf, align 8, !alias.scope !12547, !noalias !12548, !noundef !21
  %i.sh = add i64 %i.sg, %i.se
  store i64 %i.sh, ptr %i.sd, align 8, !alias.scope !12549, !noalias !12533
  br label %vector.body1311

vector.body1311:                                  ; preds = %vector.body1311, %vector.ph1310
  %index1312 = phi i64 [ 0, %vector.ph1310 ], [ %index.next1317.1, %vector.body1311 ] ; 4 uses
  %i.si = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index1312 ; 3 uses
  %i.sj = getelementptr inbounds nuw i8, ptr %i.si, i64 16 ; 2 uses
  %wide.load1313 = load <4 x i32>, ptr %i.si, align 8, !alias.scope !12531, !noalias !12533
  %wide.load1314 = load <4 x i32>, ptr %i.sj, align 8, !alias.scope !12531, !noalias !12533
  %i.sk = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index1312 ; 2 uses
  %i.sl = getelementptr inbounds nuw i8, ptr %i.sk, i64 16
  %wide.load1315 = load <4 x i32>, ptr %i.sk, align 4, !alias.scope !12550, !noalias !12548
  %wide.load1316 = load <4 x i32>, ptr %i.sl, align 4, !alias.scope !12550, !noalias !12548
  %i.sm = add <4 x i32> %wide.load1315, %wide.load1313
  %i.sn = add <4 x i32> %wide.load1316, %wide.load1314
  store <4 x i32> %i.sm, ptr %i.si, align 8, !alias.scope !12531, !noalias !12533
  store <4 x i32> %i.sn, ptr %i.sj, align 8, !alias.scope !12531, !noalias !12533
  %index.next1317 = or disjoint i64 %index1312, 8 ; 2 uses
  %i.so = getelementptr inbounds nuw [4 x i8], ptr %i.sb, i64 %index.next1317 ; 3 uses
  %i.sp = getelementptr inbounds nuw i8, ptr %i.so, i64 16 ; 2 uses
  %wide.load1313.1 = load <4 x i32>, ptr %i.so, align 8, !alias.scope !12531, !noalias !12533
  %wide.load1314.1 = load <4 x i32>, ptr %i.sp, align 8, !alias.scope !12531, !noalias !12533
  %i.sq = getelementptr inbounds nuw [4 x i8], ptr %i.sc, i64 %index.next1317 ; 2 uses
  %i.sr = getelementptr inbounds nuw i8, ptr %i.sq, i64 16
  %wide.load1315.1 = load <4 x i32>, ptr %i.sq, align 4, !alias.scope !12550, !noalias !12548
  %wide.load1316.1 = load <4 x i32>, ptr %i.sr, align 4, !alias.scope !12550, !noalias !12548
  %i.ss = add <4 x i32> %wide.load1315.1, %wide.load1313.1
  %i.st = add <4 x i32> %wide.load1316.1, %wide.load1314.1
  store <4 x i32> %i.ss, ptr %i.so, align 8, !alias.scope !12531, !noalias !12533
  store <4 x i32> %i.st, ptr %i.sp, align 8, !alias.scope !12531, !noalias !12533
  %index.next1317.1 = add nuw nsw i64 %index1312, 16 ; 2 uses
  %i.su = icmp eq i64 %index.next1317.1, 256
  br i1 %i.su, label %middle.block1318, label %vector.body1311, !llvm.loop !12299

middle.block1318:                                 ; preds = %vector.body1311
  %exitcond143.not.i.i = icmp eq i64 %i.rw, %i.cq
  br i1 %exitcond143.not.i.i, label %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i, label %.lr.ph69.i.i

bb.cn:                                            ; preds = %.lr.ph.i.i
  %i.sv = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.014.066.i.i
  %i.sw = load i32, ptr %i.sv, align 4, !alias.scope !12516, !noalias !12534, !noundef !21
  %i.sx = zext i32 %i.sw to i64                   ; 3 uses
  %i.sy = icmp samesign ugt i64 %i.ls, %i.sx
  br i1 %i.sy, label %_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i, label %.split31.us.i.invoke.i

_ZN6brotli3enc9histogram14HistogramClear17h1449973fe3a0b103E.exit.i.i: ; preds = %bb.cn
  %i.sz = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.sx ; 2 uses
  %i.ta = getelementptr inbounds nuw i8, ptr %i.sz, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.sz, i8 0, i64 1032, i1 false), !alias.scope !12531, !noalias !12533
  store float 3.402000e+38, ptr %i.ta, align 8, !alias.scope !12551, !noalias !12533
  %exitcond139.not.i.i = icmp eq i64 %i.rv, %i.oz
  br i1 %exitcond139.not.i.i, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i, label %.lr.ph.i.i

bb.co:                                            ; preds = %.lr.ph36.split.i.i
  br i1 %.not.i.i160, label %.split31.us.i.invoke.i, label %bb.cq

bb.cp:                                            ; preds = %.lr.ph36.split.i.i
  %i.tb = add i64 %.sroa.010.034.i.i, -1          ; 3 uses
  %i.tc = icmp ult i64 %i.tb, %.val48
  br i1 %i.tc, label %bb.cr, label %.split31.us.i.invoke.i

bb.cq:                                            ; preds = %bb.cr, %bb.co
  %.sroa.01.0.in.i.i = phi ptr [ %i.tg, %bb.cr ], [ %.val47, %bb.co ]
  %.sroa.01.0.i.i = load i32, ptr %.sroa.01.0.in.i.i, align 4, !alias.scope !12519, !noalias !12520, !noundef !21 ; 2 uses
  %i.td = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i917, i64 %.sroa.010.034.i.i ; 2 uses
  %i.te = zext i32 %.sroa.01.0.i.i to i64         ; 3 uses
  %i.tf = icmp samesign ugt i64 %i.ls, %i.te
  br i1 %i.tf, label %bb.cs, label %.split31.us.i.invoke.i

bb.cr:                                            ; preds = %bb.cp
  %i.tg = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.tb
  br label %bb.cq

bb.cs:                                            ; preds = %bb.cq
  %i.th = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.te ; 3 uses
  %i.ti = getelementptr inbounds nuw i8, ptr %i.td, i64 1024
  %i.tj = load i64, ptr %i.ti, align 8, !alias.scope !12521, !noalias !12522, !noundef !21
  %i.tk = icmp eq i64 %i.tj, 0
  br i1 %i.tk, label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i, label %vector.ph1300

vector.ph1300:                                    ; preds = %bb.cs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12523
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.td, i64 1040, i1 false), !alias.scope !12524, !noalias !12522
  %i.tl = load i64, ptr %i.pc, align 8, !alias.scope !12525, !noalias !12526, !noundef !21
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 1024
  %i.tn = load i64, ptr %i.tm, align 8, !alias.scope !12527, !noalias !12528, !noundef !21
  %i.to = add i64 %i.tn, %i.tl
  store i64 %i.to, ptr %i.pc, align 8, !alias.scope !12529, !noalias !12530
  br label %vector.body1301

vector.body1301:                                  ; preds = %vector.body1301, %vector.ph1300
  %index1302 = phi i64 [ 0, %vector.ph1300 ], [ %index.next1307.1, %vector.body1301 ] ; 4 uses
  %i.tp = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index1302 ; 3 uses
  %i.tq = getelementptr inbounds nuw i8, ptr %i.tp, i64 16 ; 2 uses
  %wide.load1303 = load <4 x i32>, ptr %i.tp, align 8, !noalias !12530
  %wide.load1304 = load <4 x i32>, ptr %i.tq, align 8, !noalias !12530
  %i.tr = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index1302 ; 2 uses
  %i.ts = getelementptr inbounds nuw i8, ptr %i.tr, i64 16
  %wide.load1305 = load <4 x i32>, ptr %i.tr, align 8, !alias.scope !12531, !noalias !12528
  %wide.load1306 = load <4 x i32>, ptr %i.ts, align 8, !alias.scope !12531, !noalias !12528
  %i.tt = add <4 x i32> %wide.load1305, %wide.load1303
  %i.tu = add <4 x i32> %wide.load1306, %wide.load1304
  store <4 x i32> %i.tt, ptr %i.tp, align 8, !noalias !12530
  store <4 x i32> %i.tu, ptr %i.tq, align 8, !noalias !12530
  %index.next1307 = or disjoint i64 %index1302, 8 ; 2 uses
  %i.tv = getelementptr inbounds nuw [4 x i8], ptr %i.c, i64 %index.next1307 ; 3 uses
  %i.tw = getelementptr inbounds nuw i8, ptr %i.tv, i64 16 ; 2 uses
  %wide.load1303.1 = load <4 x i32>, ptr %i.tv, align 8, !noalias !12530
  %wide.load1304.1 = load <4 x i32>, ptr %i.tw, align 8, !noalias !12530
  %i.tx = getelementptr inbounds nuw [4 x i8], ptr %i.th, i64 %index.next1307 ; 2 uses
  %i.ty = getelementptr inbounds nuw i8, ptr %i.tx, i64 16
  %wide.load1305.1 = load <4 x i32>, ptr %i.tx, align 8, !alias.scope !12531, !noalias !12528
  %wide.load1306.1 = load <4 x i32>, ptr %i.ty, align 8, !alias.scope !12531, !noalias !12528
  %i.tz = add <4 x i32> %wide.load1305.1, %wide.load1303.1
  %i.ua = add <4 x i32> %wide.load1306.1, %wide.load1304.1
  store <4 x i32> %i.tz, ptr %i.tv, align 8, !noalias !12530
  store <4 x i32> %i.ua, ptr %i.tw, align 8, !noalias !12530
  %index.next1307.1 = add nuw nsw i64 %index1302, 16 ; 2 uses
  %i.ub = icmp eq i64 %index.next1307.1, 256
  br i1 %i.ub, label %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i, label %vector.body1301, !llvm.loop !12302

_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i: ; preds = %vector.body1301
  %i.uc = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.c)
          to label %.noexc107.i unwind label %.thread45.thread81.loopexit.i, !noalias !12509 ; 0 uses

.noexc107.i:                                      ; preds = %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12523
  br label %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i

_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i: ; preds = %.noexc107.i, %bb.cs
  %exitcond136.not.i.i = icmp eq i64 %.sroa.010.034.i.i, %.val48
  br i1 %exitcond136.not.i.i, label %.split31.us.i.invoke.i, label %bb.ct

bb.ct:                                            ; preds = %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i
  %i.ud = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.010.034.i.i
  store i32 %.sroa.01.0.i.i, ptr %i.ud, align 4, !alias.scope !12519, !noalias !12520
  %exitcond137.not.i.i = icmp eq i64 %i.rt, %i.cq
  br i1 %exitcond137.not.i.i, label %.preheader.i.i, label %.lr.ph36.split.i.i

.split31.us.i.invoke.i:                           ; preds = %._crit_edge.us.i.i, %bb.ch, %bb.cg, %bb.ce, %bb.cj, %.lr.ph.split.us37.i.i, %bb.ck, %.lr.ph.split.us.us.i.i, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i, %bb.cq, %bb.cp, %bb.co, %bb.cn, %.lr.ph.i.i, %bb.cm, %.lr.ph69.i.i
  %i.ue = phi i64 [ %i.rz, %bb.cm ], [ %i.rq, %bb.ck ], [ %i.nm, %.lr.ph.split.us37.i.i ], [ %.val48, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ %i.nm, %.lr.ph.i.i ], [ %.val48, %.lr.ph69.i.i ], [ %i.sx, %bb.cn ], [ %i.te, %bb.cq ], [ %i.tb, %bb.cp ], [ 0, %bb.co ], [ %i.nm, %.lr.ph.split.us.us.i.i ], [ %i.qo, %bb.cj ], [ %i.pg, %bb.ce ], [ %i.pk, %bb.ch ], [ 0, %bb.cg ], [ %.val48, %._crit_edge.us.i.i ]
  %i.uf = phi i64 [ %i.ls, %bb.cm ], [ %i.ls, %bb.ck ], [ %i.nm, %.lr.ph.split.us37.i.i ], [ %.val48, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ %i.nm, %.lr.ph.i.i ], [ %.val48, %.lr.ph69.i.i ], [ %i.ls, %bb.cn ], [ %i.ls, %bb.cq ], [ %.val48, %bb.cp ], [ 0, %bb.co ], [ %i.nm, %.lr.ph.split.us.us.i.i ], [ %i.ls, %bb.cj ], [ %.val48, %bb.ce ], [ %i.ls, %bb.ch ], [ 0, %bb.cg ], [ %.val48, %._crit_edge.us.i.i ]
  %i.ug = phi ptr [ @1233, %bb.cm ], [ @1243, %bb.ck ], [ @1242, %.lr.ph.split.us37.i.i ], [ @1241, %_ZN6brotli3enc7cluster30BrotliHistogramBitCostDistance17hcb8243f997482b9bE.exit40.i.i ], [ @1235, %.lr.ph.i.i ], [ @1232, %.lr.ph69.i.i ], [ @1236, %bb.cn ], [ @1240, %bb.cq ], [ @1238, %bb.cp ], [ @1237, %bb.co ], [ @1242, %.lr.ph.split.us.us.i.i ], [ @1243, %bb.cj ], [ @1238, %bb.ce ], [ @1240, %bb.ch ], [ @1237, %bb.cg ], [ @1241, %._crit_edge.us.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ue, i64 noundef %i.uf, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ug) #46
          to label %.split31.us.i.cont.i unwind label %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !12509

.split31.us.i.cont.i:                             ; preds = %.split31.us.i.invoke.i
  unreachable

_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i: ; preds = %middle.block1318, %_ZN6brotli3enc9histogram21HistogramAddHistogram17ha2295f219225d0ddE.exit44.preheader.i.i
  %i.uh = icmp eq i64 %i.nm, 0
  br i1 %i.uh, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i": ; preds = %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i
  %i.ui = shl nuw nsw i64 %i.nm, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 4 %i.nl, i64 noundef %i.ui, i64 noundef 4) #45, !noalias !12509
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i112.i", %_ZN6brotli3enc7cluster20BrotliHistogramRemap17hdd40119992373a43E.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !12552)
  br i1 %.not.i155, label %.thread90, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i

.thread90:                                        ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"
  store i64 0, ptr %i.mi, align 8, !alias.scope !12505, !noalias !12553
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i: ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i"
  %i.uj = shl nuw nsw i64 %i.cq, 2                ; 5 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12554
  %i.uk = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.uj, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12554 ; 6 uses
  %i.ul = icmp eq ptr %i.uk, null
  br i1 %i.ul, label %.invoke1149, label %.lr.ph.i117.i.preheader

.lr.ph.i117.i.preheader:                          ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i
  call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.uk, i8 -1, i64 %i.uj, i1 false), !noalias !12555
  %i.um = add i64 %.val48, 1                      ; 2 uses
  br label %bb.dk

._crit_edge.i.i:                                  ; preds = %bb.do
  %i.un = zext i32 %.sroa.0.3.i.i to i64          ; 3 uses
  %.not42.i.i = icmp eq i32 %.sroa.0.3.i.i, 0
  br i1 %.not42.i.i, label %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i, label %bb.cu

bb.cu:                                            ; preds = %._crit_edge.i.i
  %i.uo = mul nuw nsw i64 %i.un, 1040             ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12556
  %i.up = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.uo, i64 noundef range(i64 1, 9) 8) #45, !noalias !12556 ; 5 uses
  %i.uq = icmp eq ptr %i.up, null
  br i1 %i.uq, label %bb.cv, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"

bb.cv:                                            ; preds = %bb.cu
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.uo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.noexc.i.i unwind label %.thread29.i.i, !noalias !12555

.noexc.i.i:                                       ; preds = %bb.cv
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i": ; preds = %bb.cu
  %.not.i.i.i161 = icmp eq i32 %.sroa.0.3.i.i, 1
  br i1 %.not.i.i.i161, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"
  %i.ur = add nsw i64 %i.un, -1                   ; 2 uses
  %xtraiter1532 = and i64 %i.ur, 7                ; 3 uses
  %i.us = add i32 %.sroa.0.3.i.i, -2
  %i.ut = icmp ult i32 %i.us, 7
  br i1 %i.ut, label %.lr.ph.i.i.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.i.i.preheader.new:                 ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %unroll_iter1537 = and i64 %i.ur, -8
  br label %.lr.ph.i.i.i.i.i.i

._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i
  %lcmp.mod1534.not = icmp eq i64 %xtraiter1532, 0
  br i1 %lcmp.mod1534.not, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.i.i.epil.preheader:                ; preds = %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.preheader
  %.sroa.0.08.i.i.i.i.i.i.epil.init = phi ptr [ %i.up, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.ve, %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa ]
  %lcmp.mod1536 = icmp ne i64 %xtraiter1532, 0
  call void @llvm.assume(i1 %lcmp.mod1536)
  br label %.lr.ph.i.i.i.i.i.i.epil

.lr.ph.i.i.i.i.i.i.epil:                          ; preds = %.lr.ph.i.i.i.i.i.i.epil, %.lr.ph.i.i.i.i.i.i.epil.preheader
  %.sroa.0.08.i.i.i.i.i.i.epil = phi ptr [ %i.uu, %.lr.ph.i.i.i.i.i.i.epil ], [ %.sroa.0.08.i.i.i.i.i.i.epil.init, %.lr.ph.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter1533 = phi i64 [ %epil.iter1533.next, %.lr.ph.i.i.i.i.i.i.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.epil.preheader ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.epil, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i.epil, i8 0, i64 1032, i1 false), !noalias !12555
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.epil, align 8, !noalias !12557
  %i.uu = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i.epil, i64 1040 ; 2 uses
  %epil.iter1533.next = add i64 %epil.iter1533, 1 ; 2 uses
  %epil.iter1533.cmp.not = icmp eq i64 %epil.iter1533.next, %xtraiter1532
  br i1 %epil.iter1533.cmp.not, label %._crit_edge.thread.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.epil, !llvm.loop !12319

._crit_edge.thread.i.i.i.i.i.i:                   ; preds = %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i"
  %.sroa.0.0.lcssa15.i.i.i.i.i.i = phi ptr [ %i.up, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h336fe3ae0397500cE.exit.i.i.i.i.i.i" ], [ %i.ve, %._crit_edge.thread.i.i.i.i.i.i.loopexit.unr-lcssa ], [ %i.uu, %.lr.ph.i.i.i.i.i.i.epil ] ; 2 uses
  %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.lcssa15.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.0.lcssa15.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !12555
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.0.lcssa15.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12557
  %i.uv = insertvalue { ptr, i64 } poison, ptr %i.up, 0
  %i.uw = insertvalue { ptr, i64 } %i.uv, i64 %i.un, 1
  br label %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.preheader.new
  %.sroa.0.08.i.i.i.i.i.i = phi ptr [ %i.up, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %i.ve, %.lr.ph.i.i.i.i.i.i ] ; 17 uses
  %niter1538 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.preheader.new ], [ %niter1538.next.7, %.lr.ph.i.i.i.i.i.i ]
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1032
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %.sroa.0.08.i.i.i.i.i.i, i8 0, i64 1032, i1 false), !noalias !12555
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i, align 8, !noalias !12557
  %i.ux = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 1040
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 2072
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.ux, i8 0, i64 1032, i1 false), !noalias !12555
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.1, align 8, !noalias !12557
  %i.uy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 2080
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 3112
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1032) %i.uy, i8 0, i64 1032, i1 false), !noalias !12555
  store float 3.402000e+38, ptr %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.2, align 8, !noalias !12557
  %i.uz = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 3120
  %.sroa.66.0..sroa.0.08.i.i.sroa_idx.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i.i.i.i, i64 4152
end_hunk_11
begin_hunk_12_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.vf, i64 noundef %i.vl, i64 noundef 8) #45, !noalias !12555
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164"

bb.cw:                                            ; preds = %bb.db, %.lr.ph79.i.i
  %i.vm = phi i64 [ 1, %.lr.ph79.i.i ], [ %i.vr, %bb.db ] ; 5 uses
  %.sroa.029.078.i.i = phi i64 [ 0, %.lr.ph79.i.i ], [ %i.vm, %bb.db ] ; 4 uses
  %exitcond106.not.i.i = icmp eq i64 %i.vm, %i.vi
  br i1 %exitcond106.not.i.i, label %bb.cx, label %bb.cz

bb.cx:                                            ; preds = %bb.cw
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i, i64 noundef %i.vg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #46
          to label %bb.cy unwind label %.thread.i.i, !noalias !12555

bb.cy:                                            ; preds = %bb.dh, %bb.da, %bb.cx
  unreachable

bb.cz:                                            ; preds = %bb.cw
  %exitcond107.not.i.i = icmp eq i64 %i.vm, %i.vj
  br i1 %exitcond107.not.i.i, label %bb.da, label %bb.db

bb.da:                                            ; preds = %bb.cz
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #46
          to label %bb.cy unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i", !noalias !12555

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i": ; preds = %bb.da
  %i.vn = landingpad { ptr, i32 }
          cleanup
  %i.vo = mul nuw nsw i64 %i.vg, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.vo, i64 noundef 8) #45, !noalias !12555
  br label %.thread38.thread

bb.db:                                            ; preds = %bb.cz
  %i.vp = getelementptr inbounds nuw [1040 x i8], ptr %i.vf, i64 %.sroa.029.078.i.i
  %i.vq = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %.sroa.029.078.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.vq, ptr noundef nonnull align 8 dereferenceable(1040) %i.vp, i64 1040, i1 false), !noalias !12558
  %i.vr = add nuw nsw i64 %i.vm, 1
  %exitcond108.not.i.i = icmp eq i64 %i.vm, %i.vh
  br i1 %exitcond108.not.i.i, label %._crit_edge80.i.i, label %bb.cw

bb.dc:                                            ; preds = %bb.dj, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i
  %i.vs = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %i.wk, %bb.dj ] ; 4 uses
  %.sroa.0.173.i.i = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %.sroa.0.2.i.i, %bb.dj ] ; 4 uses
  %.sroa.027.072.i.i = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17h264207b7abc9f7deE.exit.i.i ], [ %i.vs, %bb.dj ]
  %exitcond104.not.i.i = icmp eq i64 %i.vs, %i.um
  br i1 %exitcond104.not.i.i, label %.invoke180.i.i, label %bb.dd

bb.dd:                                            ; preds = %bb.dc
  %i.vt = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.027.072.i.i ; 2 uses
  %i.vu = load i32, ptr %i.vt, align 4, !alias.scope !12559, !noalias !12560, !noundef !21
  %i.vv = zext i32 %i.vu to i64                   ; 6 uses
  %i.vw = icmp samesign ugt i64 %i.cq, %i.vv
  br i1 %i.vw, label %bb.de, label %.invoke180.i.i

.invoke180.i.i:                                   ; preds = %bb.df, %bb.dd, %bb.dc
  %i.vx = phi i64 [ %.val48, %bb.dc ], [ %i.vv, %bb.dd ], [ %i.vv, %bb.df ]
  %i.vy = phi i64 [ %.val48, %bb.dc ], [ %i.cq, %bb.dd ], [ %i.ls, %bb.df ]
  %i.vz = phi ptr [ @1258, %bb.dc ], [ @1259, %bb.dd ], [ @1260, %bb.df ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.vx, i64 noundef %i.vy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.vz) #46
          to label %.cont181.i.i unwind label %.thread.i.i, !noalias !12555

.cont181.i.i:                                     ; preds = %.invoke180.i.i
  unreachable

bb.de:                                            ; preds = %bb.dd
  %i.wa = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.vv ; 2 uses
  %i.wb = load i32, ptr %i.wa, align 4, !noalias !12555, !noundef !21 ; 2 uses
  %i.wc = icmp eq i32 %i.wb, %.sroa.0.173.i.i
  br i1 %i.wc, label %bb.df, label %bb.dj

bb.df:                                            ; preds = %bb.de
  %i.wd = icmp samesign ugt i64 %i.ls, %i.vv
  br i1 %i.wd, label %bb.dg, label %.invoke180.i.i

bb.dg:                                            ; preds = %bb.df
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  %i.we = zext i32 %.sroa.0.173.i.i to i64        ; 3 uses
  %i.wf = icmp ugt i64 %i.vg, %i.we
  br i1 %i.wf, label %bb.di, label %bb.dh

bb.dh:                                            ; preds = %bb.dg
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.we, i64 noundef %i.vg, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1261) #46
          to label %bb.cy unwind label %.thread.thread.i.i, !noalias !12555

bb.di:                                            ; preds = %bb.dg
  %i.wg = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %i.vv
  %i.wh = getelementptr inbounds nuw [1040 x i8], ptr %i.vf, i64 %i.we
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.wh, ptr noundef nonnull align 8 dereferenceable(1040) %i.wg, i64 1040, i1 false), !noalias !12558
  %i.wi = add i32 %.sroa.0.173.i.i, 1
  %.pre.i.i = load i32, ptr %i.wa, align 4, !noalias !12555
  br label %bb.dj

bb.dj:                                            ; preds = %bb.di, %bb.de
  %i.wj = phi i32 [ %.pre.i.i, %bb.di ], [ %i.wb, %bb.de ]
  %.sroa.0.2.i.i = phi i32 [ %i.wi, %bb.di ], [ %.sroa.0.173.i.i, %bb.de ] ; 3 uses
  store i32 %i.wj, ptr %i.vt, align 4, !alias.scope !12559, !noalias !12560
  %i.wk = add i64 %i.vs, 1
  %exitcond105.not.i.i = icmp eq i64 %i.vs, %i.cq
  br i1 %exitcond105.not.i.i, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i", label %bb.dc

bb.dk:                                            ; preds = %bb.do, %.lr.ph.i117.i.preheader
  %i.wl = phi i64 [ 1, %.lr.ph.i117.i.preheader ], [ %i.wu, %bb.do ] ; 4 uses
  %.sroa.0.070.i.i = phi i32 [ 0, %.lr.ph.i117.i.preheader ], [ %.sroa.0.3.i.i, %bb.do ] ; 3 uses
  %.sroa.025.069.i.i = phi i64 [ 0, %.lr.ph.i117.i.preheader ], [ %i.wl, %bb.do ]
  %exitcond102.not.i.i = icmp eq i64 %i.wl, %i.um
  br i1 %exitcond102.not.i.i, label %.invoke.i.i, label %bb.dl

bb.dl:                                            ; preds = %bb.dk
  %i.wm = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.025.069.i.i
  %i.wn = load i32, ptr %i.wm, align 4, !alias.scope !12559, !noalias !12560, !noundef !21
  %i.wo = zext i32 %i.wn to i64                   ; 3 uses
  %i.wp = icmp samesign ugt i64 %i.cq, %i.wo
  br i1 %i.wp, label %bb.dm, label %.invoke.i.i

bb.dm:                                            ; preds = %bb.dl
  %i.wq = getelementptr inbounds nuw [4 x i8], ptr %i.uk, i64 %i.wo ; 2 uses
  %i.wr = load i32, ptr %i.wq, align 4, !noalias !12555, !noundef !21
  %i.ws = icmp eq i32 %i.wr, -1
  br i1 %i.ws, label %bb.dn, label %bb.do

bb.dn:                                            ; preds = %bb.dm
  store i32 %.sroa.0.070.i.i, ptr %i.wq, align 4, !noalias !12555
  %i.wt = add i32 %.sroa.0.070.i.i, 1
  br label %bb.do

bb.do:                                            ; preds = %bb.dn, %bb.dm
  %.sroa.0.3.i.i = phi i32 [ %i.wt, %bb.dn ], [ %.sroa.0.070.i.i, %bb.dm ] ; 5 uses
  %i.wu = add nuw nsw i64 %i.wl, 1
  %exitcond103.not.i.i = icmp eq i64 %i.wl, %i.cq
  br i1 %exitcond103.not.i.i, label %._crit_edge.i.i, label %bb.dk

.invoke.i.i:                                      ; preds = %bb.dl, %bb.dk
  %.ph.i = phi i64 [ %.val48, %bb.dk ], [ %i.wo, %bb.dl ]
  %.ph165.i = phi i64 [ %.val48, %bb.dk ], [ %i.cq, %bb.dl ]
  %.ph166.i = phi ptr [ @1262, %bb.dk ], [ @1263, %bb.dl ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i, i64 noundef %.ph165.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i) #46
          to label %.cont.i.i unwind label %.thread29.i.i, !noalias !12555

.cont.i.i:                                        ; preds = %.invoke.i.i
  unreachable

bb.dp:                                            ; preds = %.thread.i.i
  br i1 %i.wv, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %.thread38.thread

.thread.i.i:                                      ; preds = %.invoke180.i.i, %bb.cx
  %i.wv = phi i1 [ true, %.invoke180.i.i ], [ false, %bb.cx ] ; 2 uses
  %lpad.thr_comm.i.i = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.ww = icmp eq i64 %i.vg, 0
  br i1 %i.ww, label %bb.dp, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i"

.thread.thread.i.i:                               ; preds = %bb.dh
  %i.wx = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.wy = icmp eq i64 %i.vg, 0
  br i1 %i.wy, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i": ; preds = %.thread.thread.i.i
  %i.wz = mul nuw nsw i64 %i.vg, 1040
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.wz, i64 noundef 8) #45, !noalias !12555
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i": ; preds = %.thread.i.i
  %i.xa = mul nuw nsw i64 %i.vg, 1040
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.vf) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.vf, i64 noundef %i.xa, i64 noundef 8) #45, !noalias !12555
  br i1 %i.wv, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", label %.thread38.thread

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i", %.thread.thread.i.i, %bb.dp, %.thread29.i.i
  %.pn2033169.i.i = phi { ptr, i32 } [ %i.wx, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i" ], [ %i.wx, %.thread.thread.i.i ], [ %lpad.thr_comm.split-lp.i.i, %.thread29.i.i ], [ %lpad.thr_comm.i.i, %bb.dp ], [ %lpad.thr_comm.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.uk, i64 noundef %i.uj, i64 noundef 4) #45, !noalias !12555
  br label %.thread38.thread

._crit_edge.i158:                                 ; preds = %bb.dt
  %i.xb = icmp ugt i64 %.sroa.08.0157.i, %.val48
  br i1 %i.xb, label %.invoke.i, label %bb.dq, !prof !30

.invoke.i:                                        ; preds = %bb.dq, %._crit_edge.i158
  %i.xc = phi i64 [ %.sroa.08.0157.i, %._crit_edge.i158 ], [ %.sroa.0.0158.i, %bb.dq ]
  %i.xd = phi i64 [ %.val48, %._crit_edge.i158 ], [ %i.nm, %bb.dq ] ; 2 uses
  %i.xe = phi ptr [ @1265, %._crit_edge.i158 ], [ @1264, %bb.dq ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.xc, i64 noundef %i.xd, i64 noundef %i.xd, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xe) #46
          to label %.cont.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12509

.cont.i:                                          ; preds = %.invoke.i
  unreachable

bb.dq:                                            ; preds = %._crit_edge.i158
  %i.xf = icmp ugt i64 %.sroa.0.0158.i, %i.nm
  br i1 %i.xf, label %.invoke.i, label %bb.dr, !prof !30

bb.dr:                                            ; preds = %bb.dq
  %i.xg = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.08.0157.i
  %i.xh = sub nuw i64 %.val48, %.sroa.08.0157.i
  %i.xi = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %.sroa.0.0158.i
  %i.xj = sub nuw nsw i64 %i.nm, %.sroa.0.0158.i
  %i.xk = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17hcdc3ee27b6945a83E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i139, i64 noundef %i.ls, ptr noalias noundef nonnull align 4 %i.nk, i64 noundef %i.cq, ptr noalias noundef nonnull align 4 %i.xg, i64 noundef %i.xh, ptr noalias noundef nonnull align 4 %i.xi, i64 noundef %i.xj, ptr noalias noundef nonnull align 4 %i.nn, i64 noundef 2049, i64 noundef %.sroa.0.0.i92.i, i64 noundef %.sroa.0.0.i92.i, i64 noundef 256, i64 noundef 2048)
          to label %bb.ds unwind label %.loopexit.i, !noalias !12514

bb.ds:                                            ; preds = %bb.dr
  %i.xl = add nuw nsw i64 %i.xk, %.sroa.0.0158.i  ; 2 uses
  %i.xm = add i64 %.sroa.08.0157.i, 64            ; 2 uses
  %i.xn = icmp ult i64 %i.xm, %i.cq
  %indvars.iv.next.i = add i64 %indvars.iv.i, -64
  br i1 %i.xn, label %.lr.ph156.i, label %._crit_edge160.i

scalar.ph1270:                                    ; preds = %scalar.ph1270.preheader, %bb.dt
  %i.xo = phi i64 [ %i.xt, %bb.dt ], [ %.ph1456, %scalar.ph1270.preheader ] ; 4 uses
  %.sroa.033.0155.i = phi i64 [ %i.xo, %bb.dt ], [ %.sroa.033.0155.i.ph, %scalar.ph1270.preheader ] ; 2 uses
  %i.xp = add nuw i64 %.sroa.033.0155.i, %.sroa.0.0158.i ; 2 uses
  %exitcond225.not.i = icmp eq i64 %i.xo, %i.ny
  br i1 %exitcond225.not.i, label %.invoke340.i, label %bb.dt

bb.dt:                                            ; preds = %scalar.ph1270
  %i.xq = add nuw nsw i64 %.sroa.033.0155.i, %.sroa.08.0157.i
  %i.xr = getelementptr inbounds nuw [4 x i8], ptr %i.nl, i64 %i.xp
  %i.xs = trunc i64 %i.xq to i32
  store i32 %i.xs, ptr %i.xr, align 4, !noalias !12509
  %i.xt = add nuw nsw i64 %i.xo, 1
  %exitcond227.not.i = icmp eq i64 %i.xo, %umax226.i
  br i1 %exitcond227.not.i, label %._crit_edge.i158, label %scalar.ph1270, !llvm.loop !12320

.invoke340.i:                                     ; preds = %bb.dy, %scalar.ph1270
  %i.xu = phi i64 [ %i.xp, %scalar.ph1270 ], [ %.val48, %bb.dy ]
  %i.xv = phi i64 [ %i.nm, %scalar.ph1270 ], [ %.val48, %bb.dy ]
  %i.xw = phi ptr [ @1266, %scalar.ph1270 ], [ @1269, %bb.dy ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.xu, i64 noundef %i.xv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.xw) #46
          to label %.cont341.i unwind label %.loopexit.split-lp.loopexit.split-lp.i, !noalias !12509

.cont341.i:                                       ; preds = %.invoke340.i
  unreachable

bb.du:                                            ; preds = %.preheader105.i, %bb.dz
  %i.xx = phi i64 [ %i.yf, %bb.dz ], [ 1, %.preheader105.i ] ; 5 uses
  %.sroa.031.0153.i = phi i64 [ %i.xx, %bb.dz ], [ 0, %.preheader105.i ] ; 4 uses
  %exitcond222.not.i = icmp eq i64 %i.xx, %i.nu
  br i1 %exitcond222.not.i, label %bb.dv, label %bb.dx

bb.dv:                                            ; preds = %bb.du
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ls, i64 noundef %i.ls, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1268) #46
          to label %bb.cb unwind label %bb.dw, !noalias !12509

bb.dw:                                            ; preds = %bb.dv
  %i.xy = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i"

bb.dx:                                            ; preds = %bb.du
  %i.xz = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i917, i64 %.sroa.031.0153.i ; 2 uses
  %i.ya = getelementptr inbounds nuw [1040 x i8], ptr %.sroa.10.0.i.i.i139, i64 %.sroa.031.0153.i ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1040) %i.ya, ptr noundef nonnull readonly align 8 dereferenceable(1040) %i.xz, i64 1040, i1 false), !alias.scope !12561, !noalias !12562
  %i.yb = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hb5e57a0624b7a234E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(1040) %i.xz)
          to label %bb.dy unwind label %.loopexit.split-lp.loopexit.i, !noalias !12563

bb.dy:                                            ; preds = %bb.dx
  %i.yc = getelementptr inbounds nuw i8, ptr %i.ya, i64 1032
  store float %i.yb, ptr %i.yc, align 8, !alias.scope !12564, !noalias !12565
  %exitcond223.not.i = icmp eq i64 %i.xx, %i.nv
  br i1 %exitcond223.not.i, label %.invoke340.i, label %bb.dz

bb.dz:                                            ; preds = %bb.dy
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %.sroa.031.0153.i
  %i.ye = trunc i64 %.sroa.031.0153.i to i32
  store i32 %i.ye, ptr %i.yd, align 4, !alias.scope !12506, !noalias !12566
  %i.yf = add i64 %i.xx, 1
  %exitcond224.not.i = icmp eq i64 %i.xx, %i.cq
  br i1 %exitcond224.not.i, label %.preheader101.i, label %bb.du

.lr.ph.i156:                                      ; preds = %.lr.ph.i156.preheader1461, %.lr.ph.i156
  %i.yg = phi i64 [ %i.yi, %.lr.ph.i156 ], [ %.ph1462, %.lr.ph.i156.preheader1461 ] ; 3 uses
  %.sroa.029.0152.i = phi i64 [ %i.yg, %.lr.ph.i156 ], [ %.sroa.029.0152.i.ph, %.lr.ph.i156.preheader1461 ]
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.nk, i64 %.sroa.029.0152.i
  store i32 1, ptr %i.yh, align 4, !noalias !12509
  %i.yi = add i64 %i.yg, 1
  %exitcond.not.i = icmp eq i64 %i.yg, %i.cq
  br i1 %exitcond.not.i, label %.preheader105.i, label %.lr.ph.i156, !llvm.loop !12323

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i": ; preds = %bb.dw, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn42.i = phi { ptr, i32 } [ %i.xy, %bb.dw ], [ %lpad.thr_comm.split-lp63.i, %bb.bz ], [ %lpad.loopexit102.i, %.loopexit.i ], [ %lpad.loopexit106.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp107.i, %.loopexit.split-lp.loopexit.split-lp.i ]
  %.sroa.011.041.i = phi ptr [ %i.nn, %bb.dw ], [ %i.nn, %bb.bz ], [ %i.nn, %.loopexit.i ], [ %i.nn, %.loopexit.split-lp.loopexit.i ], [ %.sroa.011.1.ph.ph.ph.i, %.loopexit.split-lp.loopexit.split-lp.i ] ; 2 uses
  %.sroa.10.040.i = phi i64 [ 32784, %bb.dw ], [ 32784, %bb.bz ], [ 32784, %.loopexit.i ], [ 32784, %.loopexit.split-lp.loopexit.i ], [ %i.ol, %.loopexit.split-lp.loopexit.split-lp.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.041.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.041.i, i64 noundef %.sroa.10.040.i, i64 noundef 4) #45, !noalias !12509
  br label %.thread45.thread81.i

.thread45.thread81.i:                             ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i", %.thread27.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.thread45.thread81.loopexit.split-lp.loopexit.i, %.thread45.thread81.loopexit.i
  %.sroa.028.132.not.i = phi i1 [ %.not.i155, %.thread27.i ], [ %.not.i155, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i" ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ true, %.thread45.thread81.loopexit.i ]
  %.pn.pn31.i = phi { ptr, i32 } [ %i.np, %.thread27.i ], [ %.pn42.i, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i" ], [ %lpad.loopexit90.i, %.thread45.thread81.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ], [ %lpad.loopexit98.i, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.i, %.thread45.thread81.loopexit.i ] ; 2 uses
  %i.yj = icmp eq i64 %i.nm, 0
  br i1 %i.yj, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i": ; preds = %.thread45.thread81.i
  %i.yk = shl nuw nsw i64 %i.nm, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.nl) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.nl, i64 noundef %i.yk, i64 noundef 4) #45, !noalias !12509
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i", %.thread45.thread81.i
  br i1 %.sroa.028.132.not.i, label %.thread38.thread, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i"
  %.pre.i = shl nuw nsw i64 %i.cq, 2
  br label %.thread38.thread.thread

.thread38.thread.thread:                          ; preds = %.thread72.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i"
  %.pre-phi.i = phi i64 [ %.pre.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nc, %.thread72.i ]
  %i.yl = phi ptr [ %i.nk, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nd, %.thread72.i ] ; 2 uses
  %.pn.pn.pn2574.i = phi { ptr, i32 } [ %.pn.pn31.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i" ], [ %i.nj, %.thread72.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.yl) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.yl, i64 noundef %.pre-phi.i, i64 noundef 4) #45, !noalias !12509
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i.i917, i64 noundef %i.cp, i64 noundef 8) #45
  br label %.thread.thread144

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i", %._crit_edge80.i.i
  store i64 %i.vh, ptr %i.mi, align 8, !alias.scope !12505, !noalias !12553
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i917, i64 noundef %i.cp, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i164", %.thread90
  %i.ym = load i32, ptr %i.o, align 4, !noundef !21
  %i.yn = icmp eq i32 %i.ym, 0
  br i1 %i.yn, label %.loopexit268, label %bb.ea

bb.ea:                                            ; preds = %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"
  %i.yo = load i64, ptr %i.cr, align 8, !noundef !21 ; 3 uses
  %i.yp = icmp eq i64 %i.yo, 0
  br i1 %i.yp, label %.loopexit268, label %.lr.ph467

.lr.ph467:                                        ; preds = %bb.ea
  %i.yq = add i64 %i.yo, -1
  %.first_iter = icmp ult i64 %i.yq, %.val48
  br label %bb.ed

.loopexit268:                                     ; preds = %.loopexit, %bb.ea, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hc48b868ba43f28bfE.exit"
  %i.yr = load i64, ptr %i.cs, align 8, !noundef !21 ; 3 uses
  %i.ys = getelementptr inbounds nuw i8, ptr %12, i64 232 ; 2 uses
  %i.yt = shl i64 %i.yr, 2                        ; 33 uses
  store i64 %i.yt, ptr %i.ys, align 8
  %i.yu = shl i64 %i.yr, 4                        ; 5 uses
  %i.yv = icmp ugt i64 %i.yt, 4611686018427387903
  %i.yw = icmp ugt i64 %i.yu, 9223372036854775804
  %or.cond.i.i.i.i165 = or i1 %i.yv, %i.yw
  br i1 %or.cond.i.i.i.i165, label %.invoke1147, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166: ; preds = %.loopexit268
  %i.yx = icmp eq i64 %i.yu, 0
  br i1 %i.yx, label %bb.ee, label %bb.eb

bb.eb:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12567
  %i.yy = call noundef align 4 ptr @_RNvCskdKJRKLKjqM_7___rustc19___rust_alloc_zeroed(i64 noundef range(i64 1, 0) %i.yu, i64 noundef range(i64 1, -9223372036854775807) 4) #45, !noalias !12567 ; 2 uses
  %i.yz = icmp eq ptr %i.yy, null
  br i1 %i.yz, label %.invoke1147, label %bb.ec

bb.ec:                                            ; preds = %bb.eb
  %i.za = ptrtoint ptr %i.yy to i64
  br label %bb.ee

.invoke1147:                                      ; preds = %bb.fl, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301, %bb.eh, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172", %bb.ef, %.loopexit268, %bb.eb
  %i.zb = phi i64 [ 0, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172" ], [ 0, %.loopexit268 ], [ 0, %bb.eh ], [ 4, %bb.eb ], [ 8, %bb.ef ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194 ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301 ], [ 0, %bb.fl ]
  %i.zc = phi i64 [ %i.zo, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172" ], [ %i.yu, %.loopexit268 ], [ %i.aak, %bb.eh ], [ %i.yu, %bb.eb ], [ %i.zo, %bb.ef ], [ %i.aak, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i194 ], [ %i.ahw, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i116.i301 ], [ %i.ahw, %bb.fl ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %i.zb, i64 %i.zc, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @238) #46
          to label %.cont1148 unwind label %.split.thread

.cont1148:                                        ; preds = %.invoke1147
  unreachable

.loopexit:                                        ; preds = %bb.gt
  %i.zd = icmp eq i64 %i.ze, 0
  br i1 %i.zd, label %.loopexit268, label %bb.ed

bb.ed:                                            ; preds = %.lr.ph467, %.loopexit
  %.sroa.0.0466 = phi i64 [ %i.yo, %.lr.ph467 ], [ %i.ze, %.loopexit ]
  %i.ze = add i64 %.sroa.0.0466, -1               ; 5 uses
  %i.zf = shl i64 %i.ze, 6                        ; 2 uses
  %i.zg = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.ze ; 2 uses
  br i1 %.first_iter, label %.split465, label %.invoke

bb.ee:                                            ; preds = %bb.ec, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166
  %.sroa.10.0.i.i167 = phi i64 [ %i.za, %bb.ec ], [ 4, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i166 ]
  %i.zh = inttoptr i64 %.sroa.10.0.i.i167 to ptr
  %i.zi = icmp samesign ult i64 %i.yt, 2305843009213693952
  call void @llvm.assume(i1 %i.zi)
  %i.zj = getelementptr inbounds nuw i8, ptr %12, i64 160 ; 3 uses
  %i.zk = getelementptr inbounds nuw i8, ptr %12, i64 168 ; 3 uses
  %.val38 = load i64, ptr %i.zk, align 8, !noundef !21 ; 2 uses
  %i.zl = icmp eq i64 %.val38, 0
  br i1 %i.zl, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171": ; preds = %bb.ee
  %.val = load ptr, ptr %i.zj, align 8, !nonnull !21, !noundef !21
  %i.zm = shl nuw nsw i64 %.val38, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val, i64 noundef %i.zm, i64 noundef 4) #45
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i171", %bb.ee
  store ptr %i.zh, ptr %i.zj, align 8
  store i64 %i.yt, ptr %i.zk, align 8
  %i.zn = getelementptr inbounds nuw i8, ptr %12, i64 256 ; 2 uses
  store i64 %i.yt, ptr %i.zn, align 8
  %i.zo = mul i64 %i.yr, 8768                     ; 4 uses
  %or.cond.i.i.i.i.i173 = icmp samesign ugt i64 %i.yt, 4207742717543237
  br i1 %or.cond.i.i.i.i.i173, label %.invoke1147, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174, !prof !49

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174: ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit172"
  %i.zp = icmp eq i64 %i.zo, 0
  br i1 %i.zp, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175", label %bb.ef

bb.ef:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #45, !noalias !12568
  %i.zq = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.zo, i64 noundef range(i64 1, 9) 8) #45, !noalias !12568 ; 2 uses
  %i.zr = icmp eq ptr %i.zq, null
  br i1 %i.zr, label %.invoke1147, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175": ; preds = %bb.ef, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174
  %.sroa.10.0.i.i.i176 = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174 ], [ %i.zq, %bb.ef ] ; 13 uses
  %.sroa.4.0.i.i.i177 = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i174 ], [ %i.yt, %bb.ef ]
  %i.zs = icmp samesign ule i64 %i.yt, %.sroa.4.0.i.i.i177
  call void @llvm.assume(i1 %i.zs)
  %.not883 = icmp eq i64 %i.yt, 0
  br i1 %.not883, label %._crit_edge.i.i.i178, label %.lr.ph.i.i.i183.preheader

.lr.ph.i.i.i183.preheader:                        ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h0b31bb3fca25f4e0E.exit.i.i.i175"
  %i.zt = add nsw i64 %i.yt, -1                   ; 2 uses
  %i.zu = add nsw i64 %i.yt, -2
  %xtraiter1539 = and i64 %i.zt, 7
  %i.zv = icmp ult i64 %i.zu, 7
  br i1 %i.zv, label %.lr.ph.i.i.i183.epil.preheader, label %.lr.ph.i.i.i183.preheader.new

.lr.ph.i.i.i183.preheader.new:                    ; preds = %.lr.ph.i.i.i183.preheader
  %unroll_iter1545 = and i64 %i.zt, -8
  br label %.lr.ph.i.i.i183

.lr.ph.i.i.i183.epil.preheader:                   ; preds = %.lr.ph.i.i.i183, %.lr.ph.i.i.i183.preheader
  %.sroa.0.08.i.i.i184.epil.init = phi ptr [ %.sroa.10.0.i.i.i176, %.lr.ph.i.i.i183.preheader ], [ %i.aae, %.lr.ph.i.i.i183 ]
  br label %.lr.ph.i.i.i183.epil

.lr.ph.i.i.i183.epil:                             ; preds = %.lr.ph.i.i.i183.epil, %.lr.ph.i.i.i183.epil.preheader
  %.sroa.0.08.i.i.i184.epil = phi ptr [ %i.zw, %.lr.ph.i.i.i183.epil ], [ %.sroa.0.08.i.i.i184.epil.init, %.lr.ph.i.i.i183.epil.preheader ] ; 4 uses
  %epil.iter1540 = phi i64 [ %epil.iter1540.next, %.lr.ph.i.i.i183.epil ], [ 0, %.lr.ph.i.i.i183.epil.preheader ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184.epil, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.epil = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.epil, align 8, !noalias !12569
  %i.zw = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 2192 ; 2 uses
  %epil.iter1540.next = add i64 %epil.iter1540, 1 ; 2 uses
  %epil.iter1540.cmp.not = icmp eq i64 %epil.iter1540.next, %xtraiter1539
  br i1 %epil.iter1540.cmp.not, label %._crit_edge.thread.i.i.i180, label %.lr.ph.i.i.i183.epil, !llvm.loop !12337

._crit_edge.thread.i.i.i180:                      ; preds = %.lr.ph.i.i.i183.epil
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zw, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184.epil, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.0.lcssa15.i.i.sroa_idx.i182, align 8, !noalias !12569
  br label %._crit_edge.i.i.i178

.lr.ph.i.i.i183:                                  ; preds = %.lr.ph.i.i.i183, %.lr.ph.i.i.i183.preheader.new
  %.sroa.0.08.i.i.i184 = phi ptr [ %.sroa.10.0.i.i.i176, %.lr.ph.i.i.i183.preheader.new ], [ %i.aae, %.lr.ph.i.i.i183 ] ; 17 uses
  %niter1546 = phi i64 [ 0, %.lr.ph.i.i.i183.preheader.new ], [ %niter1546.next.7, %.lr.ph.i.i.i183 ]
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %.sroa.0.08.i.i.i184, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 2184
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186, align 8, !noalias !12569
  %i.zx = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 2192
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(2184) %i.zx, i8 0, i64 2184, i1 false)
  %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.1 = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 4376
  store float 3.402000e+38, ptr %.sroa.54.0..sroa.0.08.i.i.sroa_idx.i186.1, align 8, !noalias !12569
  %i.zy = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i.i184, i64 4384
end_hunk_12
begin_hunk_13_@_ZN6brotli3enc9metablock20BrotliBuildMetaBlock17h2be97dbed52f6456E:bb.a
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.aiv, i64 noundef %i.ajb, i64 noundef 8) #45, !noalias !12621
  br label %bb.gs

bb.fo:                                            ; preds = %bb.ft, %.lr.ph79.i.i342
  %i.ajc = phi i64 [ 1, %.lr.ph79.i.i342 ], [ %i.ajh, %bb.ft ] ; 5 uses
  %.sroa.029.078.i.i343 = phi i64 [ 0, %.lr.ph79.i.i342 ], [ %i.ajc, %bb.ft ] ; 4 uses
  %exitcond106.not.i.i344 = icmp eq i64 %i.ajc, %i.aiy
  br i1 %exitcond106.not.i.i344, label %bb.fp, label %bb.fr

bb.fp:                                            ; preds = %bb.fo
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i343, i64 noundef %i.aiw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1256) #46
          to label %bb.fq unwind label %.thread.i.i334, !noalias !12621

bb.fq:                                            ; preds = %bb.fz, %bb.fs, %bb.fp
  unreachable

bb.fr:                                            ; preds = %bb.fo
  %exitcond107.not.i.i345 = icmp eq i64 %i.ajc, %i.aiz
  br i1 %exitcond107.not.i.i345, label %bb.fs, label %bb.ft

bb.fs:                                            ; preds = %bb.fr
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.sroa.029.078.i.i343, i64 noundef %i.yt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1257) #46
          to label %bb.fq unwind label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349", !noalias !12621

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349": ; preds = %bb.fs
  %i.ajd = landingpad { ptr, i32 }
          cleanup
  %i.aje = mul nuw nsw i64 %i.aiw, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiv, i64 noundef %i.aje, i64 noundef 8) #45, !noalias !12621
  br label %.thread.thread144

bb.ft:                                            ; preds = %bb.fr
  %i.ajf = getelementptr inbounds nuw [2192 x i8], ptr %i.aiv, i64 %.sroa.029.078.i.i343
  %i.ajg = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %.sroa.029.078.i.i343
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.ajg, ptr noundef nonnull align 8 dereferenceable(2192) %i.ajf, i64 2192, i1 false), !noalias !12624
  %i.ajh = add nuw nsw i64 %i.ajc, 1
  %exitcond108.not.i.i346 = icmp eq i64 %i.ajc, %i.aix
  br i1 %exitcond108.not.i.i346, label %._crit_edge80.i.i347, label %bb.fo

bb.fu:                                            ; preds = %bb.gb, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i
  %i.aji = phi i64 [ 1, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %i.aka, %bb.gb ] ; 4 uses
  %.sroa.0.173.i.i330 = phi i32 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %.sroa.0.2.i.i338, %bb.gb ] ; 4 uses
  %.sroa.027.072.i.i331 = phi i64 [ 0, %_ZN6brotli3enc14combined_alloc8alloc_if17hd9a9ddd756460710E.exit.i.i ], [ %i.aji, %bb.gb ]
  %exitcond104.not.i.i332 = icmp eq i64 %i.aji, %i.aic
  br i1 %exitcond104.not.i.i332, label %.invoke180.i.i333, label %bb.fv

bb.fv:                                            ; preds = %bb.fu
  %i.ajj = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.sroa.027.072.i.i331 ; 2 uses
  %i.ajk = load i32, ptr %i.ajj, align 4, !alias.scope !12625, !noalias !12626, !noundef !21
  %i.ajl = zext i32 %i.ajk to i64                 ; 6 uses
  %i.ajm = icmp samesign ugt i64 %i.aaj, %i.ajl
  br i1 %i.ajm, label %bb.fw, label %.invoke180.i.i333

bb.fw:                                            ; preds = %bb.fv
  %i.ajn = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ajl ; 2 uses
  %i.ajo = load i32, ptr %i.ajn, align 4, !noalias !12621, !noundef !21 ; 2 uses
  %i.ajp = icmp eq i32 %i.ajo, %.sroa.0.173.i.i330
  br i1 %i.ajp, label %bb.fx, label %bb.gb

bb.fx:                                            ; preds = %bb.fw
  %i.ajq = icmp samesign ugt i64 %i.yt, %i.ajl
  br i1 %i.ajq, label %bb.fy, label %.invoke180.i.i333

.invoke180.i.i333:                                ; preds = %bb.fx, %bb.fv, %bb.fu
  %i.ajr = phi i64 [ %i.ajl, %bb.fv ], [ %.val46, %bb.fu ], [ %i.ajl, %bb.fx ]
  %i.ajs = phi i64 [ %i.aaj, %bb.fv ], [ %.val46, %bb.fu ], [ %i.yt, %bb.fx ]
  %i.ajt = phi ptr [ @1259, %bb.fv ], [ @1258, %bb.fu ], [ @1260, %bb.fx ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ajr, i64 noundef %i.ajs, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ajt) #46
          to label %.cont181.i.i337 unwind label %.thread.i.i334, !noalias !12621

.cont181.i.i337:                                  ; preds = %.invoke180.i.i333
  unreachable

bb.fy:                                            ; preds = %bb.fx
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aiv) ]
  %i.aju = zext i32 %.sroa.0.173.i.i330 to i64    ; 3 uses
  %i.ajv = icmp ugt i64 %i.aiw, %i.aju
  br i1 %i.ajv, label %bb.ga, label %bb.fz

bb.fz:                                            ; preds = %bb.fy
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.aju, i64 noundef %i.aiw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1261) #46
          to label %bb.fq unwind label %.thread.thread.i.i350, !noalias !12621

bb.ga:                                            ; preds = %bb.fy
  %i.ajw = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %i.ajl
  %i.ajx = getelementptr inbounds nuw [2192 x i8], ptr %i.aiv, i64 %i.aju
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.ajx, ptr noundef nonnull align 8 dereferenceable(2192) %i.ajw, i64 2192, i1 false), !noalias !12624
  %i.ajy = add i32 %.sroa.0.173.i.i330, 1
  %.pre.i.i352 = load i32, ptr %i.ajn, align 4, !noalias !12621
  br label %bb.gb

bb.gb:                                            ; preds = %bb.ga, %bb.fw
  %i.ajz = phi i32 [ %.pre.i.i352, %bb.ga ], [ %i.ajo, %bb.fw ]
  %.sroa.0.2.i.i338 = phi i32 [ %i.ajy, %bb.ga ], [ %.sroa.0.173.i.i330, %bb.fw ] ; 3 uses
  store i32 %i.ajz, ptr %i.ajj, align 4, !alias.scope !12625, !noalias !12626
  %i.aka = add i64 %i.aji, 1
  %exitcond105.not.i.i339 = icmp eq i64 %i.aji, %i.aaj
  br i1 %exitcond105.not.i.i339, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit.i.i340", label %bb.fu

bb.gc:                                            ; preds = %bb.gg, %.lr.ph.i117.i302
  %i.akb = phi i64 [ 1, %.lr.ph.i117.i302 ], [ %i.akk, %bb.gg ] ; 4 uses
  %.sroa.0.070.i.i306 = phi i32 [ 0, %.lr.ph.i117.i302 ], [ %.sroa.0.3.i.i318, %bb.gg ] ; 3 uses
  %.sroa.025.069.i.i307 = phi i64 [ 0, %.lr.ph.i117.i302 ], [ %i.akb, %bb.gg ]
  %exitcond102.not.i.i308 = icmp eq i64 %i.akb, %i.aic
  br i1 %exitcond102.not.i.i308, label %.invoke.i.i309, label %bb.gd

bb.gd:                                            ; preds = %bb.gc
  %i.akc = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.sroa.025.069.i.i307
  %i.akd = load i32, ptr %i.akc, align 4, !alias.scope !12625, !noalias !12626, !noundef !21
  %i.ake = zext i32 %i.akd to i64                 ; 3 uses
  %i.akf = icmp samesign ugt i64 %i.aaj, %i.ake
  br i1 %i.akf, label %bb.ge, label %.invoke.i.i309

bb.ge:                                            ; preds = %bb.gd
  %i.akg = getelementptr inbounds nuw [4 x i8], ptr %i.ahz, i64 %i.ake ; 2 uses
  %i.akh = load i32, ptr %i.akg, align 4, !noalias !12621, !noundef !21
  %i.aki = icmp eq i32 %i.akh, -1
  br i1 %i.aki, label %bb.gf, label %bb.gg

bb.gf:                                            ; preds = %bb.ge
  store i32 %.sroa.0.070.i.i306, ptr %i.akg, align 4, !noalias !12621
  %i.akj = add i32 %.sroa.0.070.i.i306, 1
  br label %bb.gg

bb.gg:                                            ; preds = %bb.gf, %bb.ge
  %.sroa.0.3.i.i318 = phi i32 [ %i.akj, %bb.gf ], [ %.sroa.0.070.i.i306, %bb.ge ] ; 5 uses
  %i.akk = add nuw nsw i64 %i.akb, 1
  %exitcond103.not.i.i319 = icmp eq i64 %i.akb, %i.aaj
  br i1 %exitcond103.not.i.i319, label %._crit_edge.i.i320, label %bb.gc

.invoke.i.i309:                                   ; preds = %bb.gd, %bb.gc
  %.ph.i310 = phi i64 [ %.val46, %bb.gc ], [ %i.ake, %bb.gd ]
  %.ph165.i311 = phi i64 [ %.val46, %bb.gc ], [ %i.aaj, %bb.gd ]
  %.ph166.i312 = phi ptr [ @1262, %bb.gc ], [ @1263, %bb.gd ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %.ph.i310, i64 noundef %.ph165.i311, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.ph166.i312) #46
          to label %.cont.i.i317 unwind label %.thread29.i.i313, !noalias !12621

.cont.i.i317:                                     ; preds = %.invoke.i.i309
  unreachable

bb.gh:                                            ; preds = %.thread.i.i334
  br i1 %i.akl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %.thread.thread144

.thread.i.i334:                                   ; preds = %.invoke180.i.i333, %bb.fp
  %i.akl = phi i1 [ false, %bb.fp ], [ true, %.invoke180.i.i333 ] ; 2 uses
  %lpad.thr_comm.i.i335 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.akm = icmp eq i64 %i.aiw, 0
  br i1 %i.akm, label %bb.gh, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336"

.thread.thread.i.i350:                            ; preds = %bb.fz
  %i.akn = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ako = icmp eq i64 %i.aiw, 0
  br i1 %i.ako, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351": ; preds = %.thread.thread.i.i350
  %i.akp = mul nuw nsw i64 %i.aiw, 2192
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiv, i64 noundef %i.akp, i64 noundef 8) #45, !noalias !12621
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336": ; preds = %.thread.i.i334
  %i.akq = mul nuw nsw i64 %i.aiw, 2192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aiv) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aiv, i64 noundef %i.akq, i64 noundef 8) #45, !noalias !12621
  br i1 %i.akl, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", label %.thread.thread144

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351", %.thread.thread.i.i350, %bb.gh, %.thread29.i.i313
  %.pn2033169.i.i316 = phi { ptr, i32 } [ %i.akn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread165.i.i351" ], [ %i.akn, %.thread.thread.i.i350 ], [ %lpad.thr_comm.split-lp.i.i314, %.thread29.i.i313 ], [ %lpad.thr_comm.i.i335, %bb.gh ], [ %lpad.thr_comm.i.i335, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ahz, i64 noundef %i.ahw, i64 noundef 4) #45, !noalias !12621
  br label %.thread.thread144

._crit_edge.i239:                                 ; preds = %bb.gl
  %i.akr = icmp ugt i64 %.sroa.08.0157.i232, %.val46
  br i1 %i.akr, label %.invoke.i386, label %bb.gi, !prof !30

.invoke.i386:                                     ; preds = %bb.gi, %._crit_edge.i239
  %i.aks = phi i64 [ %.sroa.08.0157.i232, %._crit_edge.i239 ], [ %.sroa.0.0158.i231, %bb.gi ]
  %i.akt = phi i64 [ %.val46, %._crit_edge.i239 ], [ %i.aax, %bb.gi ] ; 2 uses
  %i.aku = phi ptr [ @1265, %._crit_edge.i239 ], [ @1264, %bb.gi ]
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %i.aks, i64 noundef %i.akt, i64 noundef %i.akt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aku) #46
          to label %.cont.i387 unwind label %.loopexit.split-lp.loopexit.split-lp.i248, !noalias !12576

.cont.i387:                                       ; preds = %.invoke.i386
  unreachable

bb.gi:                                            ; preds = %._crit_edge.i239
  %i.akv = icmp ugt i64 %.sroa.0.0158.i231, %i.aax
  br i1 %i.akv, label %.invoke.i386, label %bb.gj, !prof !30

bb.gj:                                            ; preds = %bb.gi
  %i.akw = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.sroa.08.0157.i232
  %i.akx = sub nuw i64 %.val46, %.sroa.08.0157.i232
  %i.aky = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %.sroa.0.0158.i231
  %i.akz = sub nuw nsw i64 %i.aax, %.sroa.0.0158.i231
  %i.ala = invoke fastcc noundef i64 @_ZN6brotli3enc7cluster22BrotliHistogramCombine17h525836e2a4691d74E(ptr noalias noundef nonnull align 8 %.sroa.10.0.i.i.i176, i64 noundef %i.yt, ptr noalias noundef nonnull align 4 %i.aav, i64 noundef %i.aaj, ptr noalias noundef nonnull align 4 %i.akw, i64 noundef %i.akx, ptr noalias noundef nonnull align 4 %i.aky, i64 noundef %i.akz, ptr noalias noundef nonnull align 4 %i.aay, i64 noundef 2049, i64 noundef %.sroa.0.0.i92.i234, i64 noundef %.sroa.0.0.i92.i234, i64 noundef 256, i64 noundef 2048)
          to label %bb.gk unwind label %.loopexit.i240, !noalias !12581

bb.gk:                                            ; preds = %bb.gj
  %i.alb = add nuw nsw i64 %i.ala, %.sroa.0.0158.i231 ; 2 uses
  %i.alc = add i64 %.sroa.08.0157.i232, 64        ; 2 uses
  %i.ald = icmp ult i64 %i.alc, %i.aaj
  %indvars.iv.next.i242 = add i64 %indvars.iv.i230, -64
  br i1 %i.ald, label %.lr.ph156.i229, label %._crit_edge160.i243

scalar.ph1330:                                    ; preds = %scalar.ph1330.preheader, %bb.gl
  %i.ale = phi i64 [ %i.alj, %bb.gl ], [ %.ph1411, %scalar.ph1330.preheader ] ; 4 uses
  %.sroa.033.0155.i236 = phi i64 [ %i.ale, %bb.gl ], [ %.sroa.033.0155.i236.ph, %scalar.ph1330.preheader ] ; 2 uses
  %i.alf = add nuw i64 %.sroa.033.0155.i236, %.sroa.0.0158.i231 ; 2 uses
  %exitcond225.not.i237 = icmp eq i64 %i.ale, %i.abl
  br i1 %exitcond225.not.i237, label %.invoke340.i388, label %bb.gl

bb.gl:                                            ; preds = %scalar.ph1330
  %i.alg = add nuw nsw i64 %.sroa.033.0155.i236, %.sroa.08.0157.i232
  %i.alh = getelementptr inbounds nuw [4 x i8], ptr %i.aaw, i64 %i.alf
  %i.ali = trunc i64 %i.alg to i32
  store i32 %i.ali, ptr %i.alh, align 4, !noalias !12576
  %i.alj = add nuw nsw i64 %i.ale, 1
  %exitcond227.not.i238 = icmp eq i64 %i.ale, %umax226.i233
  br i1 %exitcond227.not.i238, label %._crit_edge.i239, label %scalar.ph1330, !llvm.loop !12444

.invoke340.i388:                                  ; preds = %bb.gq, %.lr.ph154.i203, %scalar.ph1330
  %i.alk = phi i64 [ %i.alf, %scalar.ph1330 ], [ %.val46, %bb.gq ], [ %i.cu, %.lr.ph154.i203 ]
  %i.all = phi i64 [ %i.aax, %scalar.ph1330 ], [ %.val46, %bb.gq ], [ %i.cu, %.lr.ph154.i203 ]
  %i.alm = phi ptr [ @1266, %scalar.ph1330 ], [ @1269, %bb.gq ], [ @1267, %.lr.ph154.i203 ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.alk, i64 noundef %i.all, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.alm) #46
          to label %.cont341.i389 unwind label %.loopexit.split-lp.loopexit.split-lp.i248, !noalias !12576

.cont341.i389:                                    ; preds = %.invoke340.i388
  unreachable

bb.gm:                                            ; preds = %.lr.ph154.i203
  %exitcond222.not.i206 = icmp eq i64 %i.abi, %i.abg
  br i1 %exitcond222.not.i206, label %bb.gn, label %bb.gp

bb.gn:                                            ; preds = %bb.gm
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.yt, i64 noundef %i.yt, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1268) #46
          to label %bb.ep unwind label %bb.go, !noalias !12576

bb.go:                                            ; preds = %bb.gn
  %i.aln = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i209"

bb.gp:                                            ; preds = %bb.gm
  %i.alo = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i89, i64 %.sroa.031.0153.i204 ; 2 uses
  %i.alp = getelementptr inbounds nuw [2192 x i8], ptr %.sroa.10.0.i.i.i176, i64 %.sroa.031.0153.i204 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2192) %i.alp, ptr noundef nonnull readonly align 8 dereferenceable(2192) %i.alo, i64 2192, i1 false), !alias.scope !12627, !noalias !12628
  %i.alq = invoke fastcc noundef float @_ZN6brotli3enc8bit_cost20BrotliPopulationCost17hcf0c1c8411fee5dfE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(2192) %i.alo)
          to label %bb.gq unwind label %.loopexit.split-lp.loopexit.i207, !noalias !12629

bb.gq:                                            ; preds = %bb.gp
  %i.alr = getelementptr inbounds nuw i8, ptr %i.alp, i64 2184
  store float %i.alq, ptr %i.alr, align 8, !alias.scope !12630, !noalias !12631
  %exitcond223.not.i226 = icmp eq i64 %i.abi, %i.abh
  br i1 %exitcond223.not.i226, label %.invoke340.i388, label %bb.gr

bb.gr:                                            ; preds = %bb.gq
  %i.als = getelementptr inbounds nuw [4 x i8], ptr %.val45, i64 %.sroa.031.0153.i204
  %i.alt = trunc i64 %.sroa.031.0153.i204 to i32
  store i32 %i.alt, ptr %i.als, align 4, !alias.scope !12573, !noalias !12632
  %i.alu = add nuw i64 %i.abi, 1
  %exitcond224.not.i227 = icmp eq i64 %i.abi, %i.aaj
  br i1 %exitcond224.not.i227, label %.preheader101.i228, label %.lr.ph154.i203

.lr.ph.i199:                                      ; preds = %.lr.ph.i199.preheader1419, %.lr.ph.i199
  %i.alv = phi i64 [ %i.alx, %.lr.ph.i199 ], [ %.ph1420, %.lr.ph.i199.preheader1419 ] ; 3 uses
  %.sroa.029.0152.i200 = phi i64 [ %i.alv, %.lr.ph.i199 ], [ %.sroa.029.0152.i200.ph, %.lr.ph.i199.preheader1419 ]
  %i.alw = getelementptr inbounds nuw [4 x i8], ptr %i.aav, i64 %.sroa.029.0152.i200
  store i32 1, ptr %i.alw, align 4, !noalias !12576
  %i.alx = add i64 %i.alv, 1
  %exitcond.not.i201 = icmp eq i64 %i.alv, %i.aaj
  br i1 %exitcond.not.i201, label %.preheader105.i202, label %.lr.ph.i199, !llvm.loop !12447

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i209": ; preds = %bb.go, %bb.en, %.loopexit.split-lp.loopexit.split-lp.i248, %.loopexit.split-lp.loopexit.i207, %.loopexit.i240
  %.pn42.i210 = phi { ptr, i32 } [ %i.aln, %bb.go ], [ %lpad.thr_comm.split-lp63.i384, %bb.en ], [ %lpad.loopexit102.i241, %.loopexit.i240 ], [ %lpad.loopexit106.i208, %.loopexit.split-lp.loopexit.i207 ], [ %lpad.loopexit.split-lp107.i251, %.loopexit.split-lp.loopexit.split-lp.i248 ]
  %.sroa.011.041.i211 = phi ptr [ %i.aay, %bb.go ], [ %i.aay, %bb.en ], [ %i.aay, %.loopexit.i240 ], [ %i.aay, %.loopexit.split-lp.loopexit.i207 ], [ %.sroa.011.1.ph.ph.ph.i250, %.loopexit.split-lp.loopexit.split-lp.i248 ] ; 2 uses
  %.sroa.10.040.i212 = phi i64 [ 32784, %bb.go ], [ 32784, %bb.en ], [ 32784, %.loopexit.i240 ], [ 32784, %.loopexit.split-lp.loopexit.i207 ], [ %i.aby, %.loopexit.split-lp.loopexit.split-lp.i248 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.011.041.i211) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.011.041.i211, i64 noundef %.sroa.10.040.i212, i64 noundef 4) #45, !noalias !12576
  br label %.thread45.thread81.i213

.thread45.thread81.i213:                          ; preds = %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i209", %.thread27.i390, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i258, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i266, %.thread45.thread81.loopexit.split-lp.loopexit.i276, %.thread45.thread81.loopexit.i367
  %.sroa.028.132.not.i214 = phi i1 [ %.not.i192, %.thread27.i390 ], [ %.not.i192, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i209" ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.i276 ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i258 ], [ true, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i266 ], [ true, %.thread45.thread81.loopexit.i367 ]
  %.pn.pn31.i215 = phi { ptr, i32 } [ %i.aba, %.thread27.i390 ], [ %.pn42.i210, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..cluster..HistogramPair$GT$$GT$17h3949a38ded192e10E.exit124.i209" ], [ %lpad.loopexit90.i277, %.thread45.thread81.loopexit.split-lp.loopexit.i276 ], [ %lpad.loopexit.split-lp.i259, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i258 ], [ %lpad.loopexit98.i267, %.thread45.thread81.loopexit.split-lp.loopexit.split-lp.loopexit.i266 ], [ %lpad.loopexit.i368, %.thread45.thread81.loopexit.i367 ] ; 2 uses
  %i.aly = icmp eq i64 %i.aax, 0
  br i1 %i.aly, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i216"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i216": ; preds = %.thread45.thread81.i213
  %i.alz = shl nuw nsw i64 %i.aax, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.aaw) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.aaw, i64 noundef %i.alz, i64 noundef 4) #45, !noalias !12576
  br label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i125.i216", %.thread45.thread81.i213
  br i1 %.sroa.028.132.not.i214, label %.thread.thread144, label %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219"

"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217"
  %.pre.i220 = shl nuw nsw i64 %i.aaj, 2
  br label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221": ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219", %.thread72.i392
  %.pre-phi.i222 = phi i64 [ %.pre.i220, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219" ], [ %i.aak, %.thread72.i392 ]
  %i.ama = phi ptr [ %i.aav, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219" ], [ %i.aan, %.thread72.i392 ] ; 2 uses
  %.pn.pn.pn2574.i223 = phi { ptr, i32 } [ %.pn.pn31.i215, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit._ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126_crit_edge.i219" ], [ %i.aau, %.thread72.i392 ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ama) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ama, i64 noundef %.pre-phi.i222, i64 noundef 4) #45, !noalias !12576
  br label %.thread.thread144

bb.gs:                                            ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i348", %._crit_edge80.i.i347, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299"
  %i.amb = phi i64 [ %i.aix, %._crit_edge80.i.i347 ], [ %i.aix, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i72.i.i348" ], [ 0, %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17h7012861f67b004adE.exit113.i299" ]
  store i64 %i.amb, ptr %i.zn, align 8, !alias.scope !12572, !noalias !12633
  br i1 %.not240, label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i402"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i402": ; preds = %bb.gs
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %.sroa.10.0.i.i.i89, i64 noundef %i.cv, i64 noundef 8) #45
  br label %"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit"

"_ZN111_$LT$alloc_stdlib..std_alloc..StandardAlloc$u20$as$u20$alloc_no_stdlib..stack_allocator..Allocator$LT$T$GT$$GT$9free_cell17hdde7f7542194245bE.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i402", %bb.gs
  ret void

.split465:                                        ; preds = %bb.ed, %bb.gt
  %.sroa.020.0464 = phi i64 [ %i.amn, %bb.gt ], [ 0, %bb.ed ] ; 3 uses
  %i.amc = add nuw nsw i64 %.sroa.020.0464, %i.zf ; 3 uses
  %i.amd = icmp ult i64 %i.amc, %.val48
  br i1 %i.amd, label %.split465.1, label %.invoke

.invoke:                                          ; preds = %bb.ed, %.split465, %.split465.1
  %i.ame = phi i64 [ %i.amj, %.split465.1 ], [ %i.amc, %.split465 ], [ %i.ze, %bb.ed ]
  %i.amf = phi ptr [ @1320, %.split465 ], [ @1320, %.split465.1 ], [ @1319, %bb.ed ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ame, i64 noundef %.val48, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.amf) #46
          to label %.cont unwind label %.split.thread

.cont:                                            ; preds = %.invoke
  unreachable

.split465.1:                                      ; preds = %.split465
  %i.amg = load i32, ptr %i.zg, align 4, !noundef !21
  %i.amh = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.amc
  store i32 %i.amg, ptr %i.amh, align 4
  %i.ami = or disjoint i64 %.sroa.020.0464, 1
  %i.amj = add nuw nsw i64 %i.ami, %i.zf          ; 3 uses
  %i.amk = icmp ult i64 %i.amj, %.val48
  br i1 %i.amk, label %bb.gt, label %.invoke

bb.gt:                                            ; preds = %.split465.1
  %i.aml = load i32, ptr %i.zg, align 4, !noundef !21
  %i.amm = getelementptr inbounds nuw [4 x i8], ptr %.val47, i64 %i.amj
  store i32 %i.aml, ptr %i.amm, align 4
  %i.amn = add nuw nsw i64 %.sroa.020.0464, 2     ; 2 uses
  %exitcond679.not.1 = icmp eq i64 %i.amn, 64
  br i1 %exitcond679.not.1, label %.loopexit, label %.split465

bb.gu:                                            ; preds = %.invoke1151, %bb.ab, %bb.z, %bb.x
  %i.amo = phi i64 [ %i.bv, %bb.x ], [ %i.cp, %bb.ab ], [ %i.cp, %.invoke1151 ], [ %i.cp, %bb.z ] ; 2 uses
  %.sroa.09.3899 = phi ptr [ %.sroa.09.3, %bb.x ], [ %.sroa.09.3898903913, %bb.ab ], [ %.sroa.09.3898903913, %.invoke1151 ], [ %.sroa.09.3898903913, %bb.z ] ; 2 uses
  %.sroa.10.3896 = phi i64 [ %.sroa.10.3, %bb.x ], [ %.sroa.10.3895904910, %bb.ab ], [ %.sroa.10.3895904910, %.invoke1151 ], [ %.sroa.10.3895904910, %bb.z ] ; 2 uses
  %i.amp = phi i64 [ %i.bu, %bb.x ], [ %i.cq, %bb.ab ], [ %i.cq, %.invoke1151 ], [ %i.cq, %bb.z ] ; 2 uses
  %.sroa.04.0.ph.ph = phi ptr [ undef, %bb.x ], [ %.sroa.10.0.i.i.i917, %bb.ab ], [ %.sroa.10.0.i.i.i917, %.invoke1151 ], [ %.sroa.10.0.i.i.i917, %bb.z ] ; 2 uses
  %.sroa.7.0.ph.ph = phi i64 [ undef, %bb.x ], [ %i.cu, %bb.ab ], [ %i.cu, %.invoke1151 ], [ undef, %bb.z ] ; 3 uses
  %.sroa.0.014.ph.ph = phi ptr [ undef, %bb.x ], [ %.sroa.10.0.i.i.i89, %bb.ab ], [ %.sroa.10.0.i.i.i89, %.invoke1151 ], [ undef, %bb.z ] ; 3 uses
  %.sroa.025.2.ph.ph = phi i1 [ false, %bb.x ], [ true, %bb.ab ], [ true, %.invoke1151 ], [ false, %bb.z ] ; 3 uses
  %.sroa.024.2.ph.ph = phi i1 [ false, %bb.x ], [ true, %bb.ab ], [ true, %.invoke1151 ], [ true, %bb.z ] ; 2 uses
  %lpad.thr_comm.split-lp121 = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.amq = icmp eq i64 %.sroa.10.3896, 0
  br i1 %i.amq, label %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403": ; preds = %bb.gu
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.09.3899) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.09.3899, i64 noundef %.sroa.10.3896, i64 noundef 1) #45
  br i1 %.sroa.024.2.ph.ph, label %.thread38.thread, label %.thread

"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404": ; preds = %bb.gu
  br i1 %.sroa.024.2.ph.ph, label %.thread38.thread, label %.thread

.thread:                                          ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404"
  br i1 %.sroa.025.2.ph.ph, label %.thread.thread144, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408"

.thread38.thread:                                 ; preds = %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i", %bb.dp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i", %.split, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403", %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404"
  %i.amr = phi i64 [ %i.amo, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %i.cp, %.split ], [ %i.amo, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %i.cp, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ %i.cp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ %i.cp, %bb.dp ], [ %i.cp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ %i.cp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ]
  %i.ams = phi i64 [ %i.amp, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %i.cq, %.split ], [ %i.amp, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %i.cq, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ 1, %bb.dp ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ 1, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ]
  %.sroa.0.262 = phi ptr [ %.sroa.0.014.ph.ph, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %.sroa.10.0.i.i.i89, %.split ], [ %.sroa.0.014.ph.ph, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %.sroa.10.0.i.i.i89, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ %.sroa.10.0.i.i.i89, %bb.dp ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ] ; 2 uses
  %.sroa.7.258 = phi i64 [ %.sroa.7.0.ph.ph, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %i.cu, %.split ], [ %.sroa.7.0.ph.ph, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %i.cu, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ %i.cu, %bb.dp ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ] ; 2 uses
  %.sroa.04.254 = phi ptr [ %.sroa.04.0.ph.ph, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %.sroa.10.0.i.i.i917, %.split ], [ %.sroa.04.0.ph.ph, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %.sroa.10.0.i.i.i917, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ %.sroa.10.0.i.i.i917, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ %.sroa.10.0.i.i.i917, %bb.dp ], [ %.sroa.10.0.i.i.i917, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ %.sroa.10.0.i.i.i917, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ] ; 2 uses
  %.sroa.025.021 = phi i1 [ %.sroa.025.2.ph.ph, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ true, %.split ], [ %.sroa.025.2.ph.ph, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ true, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ true, %bb.dp ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ true, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ] ; 2 uses
  %.pn.pn20 = phi { ptr, i32 } [ %lpad.thr_comm.split-lp121, %"_ZN4core3ptr97drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..ContextType$GT$$GT$17h23f00e536e795ec5E.exit404" ], [ %lpad.thr_comm.split-lp176, %.split ], [ %lpad.thr_comm.split-lp121, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i403" ], [ %.pn.pn31.i, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i" ], [ %i.vn, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i" ], [ %lpad.thr_comm.i.i, %bb.dp ], [ %lpad.thr_comm.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i" ], [ %.pn2033169.i.i, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i" ] ; 4 uses
  %i.amt = icmp eq i64 %i.ams, 0
  br i1 %i.amt, label %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405": ; preds = %.thread38.thread
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.04.254) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.04.254, i64 noundef %i.amr, i64 noundef 8) #45
  br i1 %.sroa.025.021, label %.thread.thread144, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408"

"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406": ; preds = %.thread38.thread
  br i1 %.sroa.025.021, label %.thread.thread144, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408"

"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i407", %.thread.thread144, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406", %.thread
  %.pn.pn18143 = phi { ptr, i32 } [ %.pn.pn18151, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i407" ], [ %.pn.pn20, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406" ], [ %lpad.thr_comm.split-lp121, %.thread ], [ %.pn.pn18151, %.thread.thread144 ], [ %.pn.pn20, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405" ]
  resume { ptr, i32 } %.pn.pn18143

.thread.thread144:                                ; preds = %.thread38.thread.thread, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221", %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336", %bb.gh, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349", %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405", %.split.thread, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406", %.thread
  %.pn.pn18151 = phi { ptr, i32 } [ %.pn.pn20, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406" ], [ %lpad.thr_comm.split-lp121, %.thread ], [ %.pn.pn20, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405" ], [ %lpad.thr_comm, %.split.thread ], [ %.pn2033169.i.i316, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315" ], [ %lpad.thr_comm.i.i335, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336" ], [ %lpad.thr_comm.i.i335, %bb.gh ], [ %i.ajd, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349" ], [ %.pn.pn.pn2574.i223, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221" ], [ %.pn.pn31.i215, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217" ], [ %.pn.pn.pn2574.i, %.thread38.thread.thread ] ; 2 uses
  %.sroa.7.257150 = phi i64 [ %.sroa.7.258, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406" ], [ %.sroa.7.0.ph.ph, %.thread ], [ %.sroa.7.258, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405" ], [ %i.cu, %.split.thread ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315" ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336" ], [ %i.cu, %bb.gh ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349" ], [ %i.cu, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221" ], [ %i.cu, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217" ], [ %i.cu, %.thread38.thread.thread ] ; 2 uses
  %.sroa.0.261149 = phi ptr [ %.sroa.0.262, %"_ZN4core3ptr102drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramLiteral$GT$$GT$17hf89d56f714b294d7E.exit406" ], [ %.sroa.0.014.ph.ph, %.thread ], [ %.sroa.0.262, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i405" ], [ %.sroa.10.0.i.i.i89, %.split.thread ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i73.i.i315" ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i120.i336" ], [ %.sroa.10.0.i.i.i89, %bb.gh ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.thread.i.i349" ], [ %.sroa.10.0.i.i.i89, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i126.i221" ], [ %.sroa.10.0.i.i.i89, %"_ZN4core3ptr65drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$u32$GT$$GT$17he4370984b667c1bcE.exit.i217" ], [ %.sroa.10.0.i.i.i89, %.thread38.thread.thread ] ; 2 uses
  %i.amu = icmp eq i64 %.sroa.7.257150, 0
  br i1 %i.amu, label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i407"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i407": ; preds = %.thread.thread144
  %i.amv = mul nuw nsw i64 %.sroa.7.257150, 2192
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.261149) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.0.261149, i64 noundef %i.amv, i64 noundef 8) #45
  br label %"_ZN4core3ptr103drop_in_place$LT$alloc_stdlib..heap_alloc..WrapBox$LT$brotli..enc..histogram..HistogramDistance$GT$$GT$17he896a1ac8999327dE.exit408"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN6brotli3enc9metablock24BlockSplitterFinishBlock17h108b880e4a2ddf12E(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(88) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address, read_provenance) %2, i64 noundef %3, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(8) %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2080 x i8], align 8              ; 10 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 6 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !21
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !21 ; 4 uses
  %.sroa.0.0.i = tail call noundef i64 @llvm.umax.i64(i64 %i.e, i64 %i.c) ; 6 uses
  store i64 %.sroa.0.0.i, ptr %i.b, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 4 uses
  %i.g = load i64, ptr %i.f, align 8, !noundef !21 ; 20 uses
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val84 = load i64, ptr %i.i, align 8, !noundef !21
  %.not54 = icmp eq i64 %.val84, 0
  br i1 %.not54, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  %.not = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not, label %bb.m, label %bb.n

bb.d:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val83 = load ptr, ptr %i.j, align 8, !nonnull !21, !align !28, !noundef !21
  %i.k = trunc i64 %.sroa.0.0.i to i32
  store i32 %i.k, ptr %.val83, align 4
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val74 = load i64, ptr %i.l, align 8, !noundef !21
  %.not55 = icmp eq i64 %.val74, 0
  br i1 %.not55, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef 0, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1322) #46
  unreachable

bb.f:                                             ; preds = %bb.d
  %.val73 = load ptr, ptr %1, align 8, !nonnull !21, !align !29, !noundef !21
  store i8 0, ptr %.val73, align 1
  %.not56 = icmp eq i64 %3, 0
  br i1 %.not56, label %bb.i, label %bb.h

bb.g:                                             ; preds = %bb.d
end_hunk_13
