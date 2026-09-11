Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN9actix_web4http6header15accept_encoding14AcceptEncoding10preference17h788d095e6ebff5aaE:bb.a
  %.sroa.519.0..sroa.03.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 8
  %.sroa.519.sroa.0.0.copyload = load ptr, ptr %.sroa.519.0..sroa.03.0..sroa_idx, align 8
  %.sroa.519.sroa.5.0..sroa.519.0..sroa.03.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.020.057, i64 16
  %.sroa.519.sroa.5.0.copyload = load i64, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa.03.0..sroa_idx.sroa_idx, align 8
  br label %bb.k

bb.o:                                             ; preds = %bb.m
  %.sroa.017.0.copyload18 = load i64, ptr %i.a, align 8
  %.sroa.519.sroa.0.0.copyload45 = load ptr, ptr %.sroa.519.0..sroa_idx, align 8
  %.sroa.519.sroa.5.0.copyload46 = load i64, ptr %.sroa.519.sroa.5.0..sroa.519.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.k
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding12ranked_items17h72777727209556b9E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.422.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [24 x i8], align 8                ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !25 ; 7 uses
  %i.g = icmp ult i64 %i.f, 288230376151711744
  tail call void @llvm.assume(i1 %i.g)
  %i.h = icmp eq i64 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8, !alias.scope !11222, !noalias !11223
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.i, align 8, !alias.scope !11222, !noalias !11223
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !11222, !noalias !11223
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8, !alias.scope !11222, !noalias !11223
  br label %bb.m

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.l, align 8, !nonnull !25, !noundef !25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11224)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11225
  %i.m = shl nuw nsw i64 %i.f, 5                  ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11226
  %i.n = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.m, i64 noundef range(i64 1, 9) 8) #46, !noalias !11226 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.m, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !11225
  unreachable

.lr.ph.i.i:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.f, ptr %i.c, align 8, !noalias !11225
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.n, ptr %i.p, align 8, !noalias !11225
  %i.q = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw [32 x i8], ptr %.val, i64 %i.f
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.h, %.lr.ph.i.i
  %.sroa.013.035.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.v, %bb.h ] ; 6 uses
  %.sroa.7.034.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.w, %bb.h ] ; 3 uses
  %.sroa.10.033.i.i = phi i64 [ %i.f, %.lr.ph.i.i ], [ %i.t, %bb.h ]
  %i.t = add nsw i64 %.sroa.10.033.i.i, -1        ; 2 uses
  %i.u = icmp eq ptr %.sroa.013.035.i.i, %i.r
  br i1 %i.u, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 32
  %i.w = add nuw nsw i64 %.sroa.7.034.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11227)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11225
  %i.x = load i64, ptr %.sroa.013.035.i.i, align 8, !range !37, !alias.scope !11228, !noalias !11229, !noundef !25 ; 2 uses
  switch i64 %i.x, label %bb.f [
    i64 -9223372036854775807, label %bb.h
    i64 -9223372036854775808, label %bb.g
  ]

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.013.035.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @555)
          to label %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i" unwind label %bb.i, !noalias !11230

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.013.035.i.i, i64 24, i1 false), !noalias !11231
  br label %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i"

"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i": ; preds = %bb.g, %bb.f
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.b, align 8, !noalias !11232
  br label %bb.h

bb.h:                                             ; preds = %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i", %bb.e
  %.sroa.0.0.i12.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %"_ZN82_$LT$actix_web..http..header..encoding..Encoding$u20$as$u20$core..clone..Clone$GT$5clone17hd4415a86631a91cbE.exit.i.i.i.i" ], [ %i.x, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 24
  %i.z = load i16, ptr %i.y, align 8, !alias.scope !11233, !noalias !11231, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.s, i64 16, i1 false), !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11225
  %i.aa = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.7.034.i.i ; 3 uses
  store i64 %.sroa.0.0.i12.i.i, ptr %i.aa, align 8, !noalias !11230
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.422.i.i, i64 16, i1 false), !noalias !11230
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  store i16 %i.z, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !11230
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i.i)
  %i.ab = icmp eq i64 %i.t, 0
  br i1 %i.ab, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit", label %bb.d

common.resume:                                    ; preds = %bb.n, %bb.i
  %.sink = phi ptr [ %i.d, %bb.n ], [ %i.c, %bb.i ]
  %common.resume.op = phi { ptr, i32 } [ %i.ao, %bb.n ], [ %lpad.loopexit.i.i, %bb.i ]
  call fastcc void @"_ZN4core3ptr203drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$GT$17hde1ab4660770297bE"(ptr noalias noundef align 8 dereferenceable(24) %.sink) #53
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.034.i.i, ptr %i.q, align 8, !alias.scope !11234, !noalias !11225
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit": ; preds = %bb.d, %bb.h
  store i64 %i.f, ptr %i.q, align 8, !noalias !11225
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !11224
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11225
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !25, !noundef !25 ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !25 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11235
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %.loopexit, label %bb.j, !prof !29

bb.j:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit"
  %i.ah = icmp ult i64 %i.af, 21
  br i1 %i.ah, label %bb.l, label %bb.k, !prof !29

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17h88c5b1a02b87627fE(ptr noalias noundef nonnull align 8 %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %.loopexit unwind label %bb.n

bb.l:                                             ; preds = %bb.j
  %.idx.i.i.i = shl nuw nsw i64 %i.af, 5
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx.i.i.i
  %.sroa.0.01.i.i.i = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  br label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.lr.ph.i.i.i, %bb.l
  %.sroa.0.03.i.i.i = phi ptr [ %.sroa.0.0.i.i.i, %.lr.ph.i.i.i ], [ %.sroa.0.01.i.i.i, %bb.l ] ; 2 uses
  call fastcc void @_ZN4core5slice4sort6shared9smallsort11insert_tail17h54b556b9d6601ae0E(ptr noundef nonnull align 8 %i.ad, ptr noundef %.sroa.0.03.i.i.i)
  %.sroa.0.0.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.03.i.i.i, i64 32 ; 2 uses
  %.not.i.i.i = icmp eq ptr %.sroa.0.0.i.i.i, %i.ai
  br i1 %.not.i.i.i, label %.loopexit, label %.lr.ph.i.i.i

bb.m:                                             ; preds = %.loopexit, %bb.b
  ret void

.loopexit:                                        ; preds = %.lr.ph.i.i.i, %bb.k, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h7dba8b275dddaf69E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11235
  %.sroa.08.0.copyload = load i64, ptr %i.d, align 8
  %i.aj = icmp ult i64 %i.af, 288230376151711744
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [32 x i8], ptr %i.ad, i64 %i.af
  store ptr %i.ad, ptr %0, align 8, !alias.scope !11236, !noalias !11237
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.08.0.copyload, ptr %i.al, align 8, !alias.scope !11236, !noalias !11237
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.ad, ptr %i.am, align 8, !alias.scope !11236, !noalias !11237
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.ak, ptr %i.an, align 8, !alias.scope !11236, !noalias !11237
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.m

bb.n:                                             ; preds = %bb.k
  %i.ao = landingpad { ptr, i32 }
          cleanup
  br label %common.resume
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding6ranked17h137886dc8ab97c95E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11265
  call void @_ZN9actix_web4http6header15accept_encoding14AcceptEncoding12ranked_items17h72777727209556b9E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11266)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11267)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11268)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11269)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11270)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11271)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11273)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !11274, !noalias !11275, !noundef !25 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !alias.scope !11274, !noalias !11275, !nonnull !25, !noundef !25 ; 7 uses
  %i.f = shl i64 %i.d, 5                          ; 4 uses
  %i.g = udiv i64 %i.f, 24                        ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11276)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11277)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11278)
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !11279, !noalias !11275, !nonnull !25, !noundef !25 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.promoted.i.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !11279, !noalias !11275 ; 3 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i.i, %i.i
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %bb.a, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.e, %bb.a ] ; 2 uses
  %i.k = phi ptr [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.promoted.i.i.i.i.i.i.i.i, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 3 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !noalias !11280
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 24 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.l, %i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %bb.a
  %i.n = phi ptr [ %.promoted.i.i.i.i.i.i.i.i, %bb.a ], [ %i.l, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.e, %bb.a ], [ %i.m, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.o = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.p = ptrtoint ptr %i.e to i64
  %i.q = sub nuw i64 %i.o, %i.p
  %i.r = udiv exact i64 %i.q, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11281
  store ptr %i.e, ptr %i.a, align 8, !noalias !11281
  %i.s = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.r, ptr %i.s, align 8, !noalias !11281
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %i.t, align 8, !noalias !11281
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11282)
  %i.u = ptrtoint ptr %i.i to i64
  %i.v = ptrtoint ptr %i.n to i64
  %i.w = sub nuw i64 %i.u, %i.v
  %i.x = lshr exact i64 %i.w, 5
  store i64 0, ptr %i.c, align 8, !alias.scope !11283, !noalias !11275
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11283, !noalias !11275
  store ptr inttoptr (i64 8 to ptr), ptr %i.j, align 8, !alias.scope !11283, !noalias !11275
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !11283, !noalias !11275
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11284)
  %i.y = icmp eq ptr %i.i, %i.n
  br i1 %i.y, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.aa, %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.z = getelementptr inbounds nuw [32 x i8], ptr %i.n, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.aa = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !range !37, !alias.scope !11284, !noalias !11285, !noundef !25 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.b, label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ab = getelementptr i8, ptr %i.z, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !11284, !noalias !11285, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11286
  br label %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i": ; preds = %bb.b, %.lr.ph.i.i.i.i.i.i.i
  %i.ac = icmp eq i64 %i.aa, %i.x
  br i1 %i.ac, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

bb.c:                                             ; preds = %bb.f
  %i.ad = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr340drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$C$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbe6730ab52dca72cE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11281
  call fastcc void @"_ZN4core3ptr353drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$$C$actix_web..http..header..accept_encoding..AcceptEncoding..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hef921b6b02525536E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11275
  resume { ptr, i32 } %i.ad

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr180drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$actix_web..http..header..encoding..Encoding$GT$$GT$$GT$17hbadaf0316661b28cE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %i.d, 0
  br i1 %.not.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i"
  %i.ae = mul nuw i64 %i.g, 24                    ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.f, %i.ae
  br i1 %.not49.i.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.af = icmp ule i64 %i.ae, %i.f
  tail call void @llvm.assume(i1 %i.af)
  %i.ag = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.f, i64 noundef 8, i64 noundef %i.ae) #46, !noalias !11281 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.f, label %_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit, !prof !32

bb.f:                                             ; preds = %bb.e
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ae) #52
          to label %bb.g unwind label %bb.c, !noalias !11281

bb.g:                                             ; preds = %bb.f
  unreachable

_ZN4core4iter6traits8iterator8Iterator7collect17hd3b5b1b9f89eab48E.exit: ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i", %bb.d, %bb.e
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.e, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17h716c632562611cd3E.exit.i.i.i.i.i" ], [ %i.e, %bb.d ], [ %i.ag, %bb.e ]
  store i64 %i.g, ptr %0, align 8, !alias.scope !11287, !noalias !11288
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.ai, align 8, !alias.scope !11287, !noalias !11288
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.aj, align 8, !alias.scope !11287, !noalias !11288
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11281
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11265
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_language14AcceptLanguage10preference17h17a0d86cd4bd8cdbE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.e, 80
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 %.idx
  %.not4656 = icmp eq i64 %i.e, 0
  br i1 %.not4656, label %._crit_edge.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  %.sroa.023.067 = phi i16 [ 0, %.lr.ph ], [ %.sroa.023.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 2 uses
  %.sroa.024.066 = phi ptr [ %i.c, %.lr.ph ], [ %i.j, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 7 uses
  %.sroa.0.065 = phi i64 [ -9223372036854775807, %.lr.ph ], [ %.sroa.0.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 5 uses
  %.sroa.8.064 = phi ptr [ undef, %.lr.ph ], [ %.sroa.8.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ] ; 5 uses
  %.sroa.13.063 = phi i64 [ undef, %.lr.ph ], [ %.sroa.13.1, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.g = phi <2 x i64> [ undef, %.lr.ph ], [ %i.n, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.h = phi <2 x i64> [ undef, %.lr.ph ], [ %i.o, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.i = phi <2 x i64> [ undef, %.lr.ph ], [ %i.p, %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit" ]
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 80 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 72
  %i.l = load i16, ptr %i.k, align 8, !noundef !25 ; 5 uses
  %i.m = icmp ugt i16 %i.l, %.sroa.023.067
  br i1 %i.m, label %bb.c, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"

._crit_edge:                                      ; preds = %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  %.not28 = icmp eq i64 %.sroa.0.1, -9223372036854775807
  br i1 %.not28, label %._crit_edge.thread, label %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit"

"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit": ; preds = %bb.e, %bb.e, %bb.e, %bb.f, %bb.b
  %.sroa.13.1 = phi i64 [ %.sroa.13.063, %bb.b ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.f ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.4.0, %bb.e ] ; 2 uses
  %.sroa.8.1 = phi ptr [ %.sroa.8.064, %bb.b ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.f ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ], [ %.sroa.5.sroa.0.sroa.0.0, %bb.e ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.065, %bb.b ], [ %.sroa.01.0, %bb.f ], [ %.sroa.01.0, %bb.e ], [ %.sroa.01.0, %bb.e ], [ %.sroa.01.0, %bb.e ] ; 3 uses
  %.sroa.023.1 = phi i16 [ %.sroa.023.067, %bb.b ], [ %i.l, %bb.f ], [ %i.l, %bb.e ], [ %i.l, %bb.e ], [ %i.l, %bb.e ]
  %i.n = phi <2 x i64> [ %i.g, %bb.b ], [ %i.r, %bb.f ], [ %i.r, %bb.e ], [ %i.r, %bb.e ], [ %i.r, %bb.e ] ; 2 uses
  %i.o = phi <2 x i64> [ %i.h, %bb.b ], [ %i.s, %bb.f ], [ %i.s, %bb.e ], [ %i.s, %bb.e ], [ %i.s, %bb.e ] ; 2 uses
  %i.p = phi <2 x i64> [ %i.i, %bb.b ], [ %i.t, %bb.f ], [ %i.t, %bb.e ], [ %i.t, %bb.e ], [ %i.t, %bb.e ] ; 2 uses
  %.not46 = icmp eq ptr %i.j, %i.f
  br i1 %.not46, label %._crit_edge, label %bb.b

bb.c:                                             ; preds = %bb.b
  %i.q = load i64, ptr %.sroa.024.066, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.024.066, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435)
          to label %bb.h unwind label %bb.g

bb.e:                                             ; preds = %bb.c, %bb.h
  %.sroa.5.sroa.0.sroa.4.0 = phi i64 [ undef, %bb.c ], [ %.sroa.415.sroa.4.0.copyload, %bb.h ] ; 4 uses
  %.sroa.5.sroa.0.sroa.0.0 = phi ptr [ undef, %bb.c ], [ %.sroa.415.sroa.0.0.copyload, %bb.h ] ; 4 uses
  %.sroa.01.0 = phi i64 [ -9223372036854775808, %bb.c ], [ %.sroa.014.0.copyload, %bb.h ] ; 4 uses
  %i.r = phi <2 x i64> [ undef, %bb.c ], [ %i.w, %bb.h ] ; 4 uses
  %i.s = phi <2 x i64> [ undef, %bb.c ], [ %i.y, %bb.h ] ; 4 uses
  %i.t = phi <2 x i64> [ undef, %bb.c ], [ %i.aa, %bb.h ] ; 4 uses
  switch i64 %.sroa.0.065, label %bb.f [
    i64 -9223372036854775807, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
    i64 -9223372036854775808, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
    i64 0, label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"
  ]

bb.f:                                             ; preds = %bb.e
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.064) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.064, i64 noundef %.sroa.0.065, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11293
  br label %"_ZN4core3ptr130drop_in_place$LT$core..option..Option$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17haa1a4ccb7623ece7E.exit"

bb.g:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  switch i64 %.sroa.0.065, label %bb.j [
    i64 -9223372036854775807, label %bb.i
    i64 -9223372036854775808, label %bb.i
    i64 0, label %bb.i
  ]

bb.h:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 24
  %i.w = load <2 x i64>, ptr %i.v, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 40
  %i.y = load <2 x i64>, ptr %i.x, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.024.066, i64 56
  %i.aa = load <2 x i64>, ptr %i.z, align 8
  %.sroa.014.0.copyload = load i64, ptr %i.a, align 8
  %.sroa.415.sroa.0.0.copyload = load ptr, ptr %.sroa.415.0..sroa_idx, align 8
  %.sroa.415.sroa.4.0.copyload = load i64, ptr %.sroa.415.sroa.4.0..sroa.415.0..sroa_idx.sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.e

"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit": ; preds = %._crit_edge
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.8.1, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.sroa.13.1, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store <2 x i64> %i.n, ptr %.sroa.4.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x i64> %i.o, ptr %.sroa.4.sroa.7.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store <2 x i64> %i.p, ptr %.sroa.4.sroa.9.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %bb.a, %._crit_edge, %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit"
  %.sroa.0.0.lcssa.sink = phi i64 [ %.sroa.0.1, %"_ZN4core3ptr102drop_in_place$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$17h4edb119732b9bbd9E.exit" ], [ -9223372036854775808, %._crit_edge ], [ -9223372036854775808, %bb.a ]
  store i64 %.sroa.0.0.lcssa.sink, ptr %0, align 8
  ret void

bb.i:                                             ; preds = %bb.j, %bb.g, %bb.g, %bb.g
  resume { ptr, i32 } %i.u

bb.j:                                             ; preds = %bb.g
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.8.064) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.8.064, i64 noundef %.sroa.0.065, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11294
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header15accept_language14AcceptLanguage6ranked17h73cc2535e2f66fb5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [72 x i8], align 8                ; 8 uses
  %.sroa.422.i.i = alloca [64 x i8], align 8      ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !25 ; 7 uses
  %i.i = icmp ult i64 %i.h, 115292150460684698
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.l

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !25, !noundef !25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11345)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11346
  %i.n = mul nuw nsw i64 %i.h, 80                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11347
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #46, !noalias !11347 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !11346
  unreachable

.lr.ph.i.i:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.h, ptr %i.e, align 8, !noalias !11346
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !11346
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [80 x i8], ptr %.val, i64 %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  br label %bb.d

bb.d:                                             ; preds = %bb.g, %.lr.ph.i.i
  %.sroa.013.035.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.z, %bb.g ] ; 8 uses
  %.sroa.7.034.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.aa, %bb.g ] ; 3 uses
  %.sroa.10.033.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.x, %bb.g ]
  %i.x = add nsw i64 %.sroa.10.033.i.i, -1        ; 2 uses
  %i.y = icmp eq ptr %.sroa.013.035.i.i, %i.s
  br i1 %i.y, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 80
  %i.aa = add nuw nsw i64 %.sroa.7.034.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !11348)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11346
  %i.ab = load i64, ptr %.sroa.013.035.i.i, align 8, !range !30, !alias.scope !11349, !noalias !11350, !noundef !25
  %.not.i.i.i.i = icmp eq i64 %i.ab, -9223372036854775808
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %.sroa.013.035.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @435)
          to label %.noexc.i.i unwind label %bb.h, !noalias !11351

.noexc.i.i:                                       ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 24
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 40
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 56
  %i.af = load <2 x i64>, ptr %i.ac, align 8, !alias.scope !11352, !noalias !11353
  store <2 x i64> %i.af, ptr %i.t, align 8, !noalias !11354
  %i.ag = load <2 x i64>, ptr %i.ad, align 8, !alias.scope !11352, !noalias !11353
  store <2 x i64> %i.ag, ptr %i.u, align 8, !noalias !11354
  %i.ah = load <2 x i64>, ptr %i.ae, align 8, !alias.scope !11352, !noalias !11353
  store <2 x i64> %i.ah, ptr %i.v, align 8, !noalias !11354
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.d, align 8, !noalias !11354
  br label %bb.g

bb.g:                                             ; preds = %.noexc.i.i, %bb.e
  %.sroa.0.0.i12.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %.noexc.i.i ], [ -9223372036854775808, %bb.e ]
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.013.035.i.i, i64 72
  %i.aj = load i16, ptr %i.ai, align 8, !alias.scope !11355, !noalias !11356, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.422.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.i.i, ptr noundef nonnull align 8 dereferenceable(64) %i.w, i64 64, i1 false), !noalias !11346
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11346
  %i.ak = getelementptr inbounds nuw [80 x i8], ptr %i.o, i64 %.sroa.7.034.i.i ; 3 uses
  store i64 %.sroa.0.0.i12.i.i, ptr %i.ak, align 8, !noalias !11351
  %.sroa.422.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.0..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.422.i.i, i64 64, i1 false), !noalias !11351
  %.sroa.523.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ak, i64 72
  store i16 %i.aj, ptr %.sroa.523.0..sroa_idx.i.i, align 8, !noalias !11351
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.422.i.i)
  %i.al = icmp eq i64 %i.x, 0
  br i1 %i.al, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit", label %bb.d

common.resume:                                    ; preds = %.body, %bb.v, %bb.h
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.h ], [ %i.cs, %bb.v ], [ %i.as, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.f
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.034.i.i, ptr %i.r, align 8, !alias.scope !11357, !noalias !11346
  call fastcc void @"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #53, !noalias !11351
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit": ; preds = %bb.d, %bb.g
  store i64 %i.h, ptr %i.r, align 8, !noalias !11346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11345
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11346
  %i.am = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !25, !noundef !25 ; 15 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !25 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11358
  %i.aq = icmp ult i64 %i.ap, 2
  br i1 %i.aq, label %bb.m, label %bb.i, !prof !29

bb.i:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit"
  %i.ar = icmp ult i64 %i.ap, 21
  br i1 %i.ar, label %bb.k, label %bb.j, !prof !29

bb.j:                                             ; preds = %bb.i
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hf0e40f45a62d7de1E(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.m unwind label %bb.v

bb.k:                                             ; preds = %bb.i
  call fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h782a46af7c17f943E(ptr noalias noundef nonnull align 8 %i.an, i64 noundef %i.ap)
  br label %bb.m

bb.l:                                             ; preds = %bb.u, %bb.b
  ret void

.body:                                            ; preds = %bb.s
  %i.as = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr306drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$C$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h72556f0f40fc7053E"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11359
  call fastcc void @"_ZN4core3ptr336drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$C$actix_web..http..header..accept_language..AcceptLanguage..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h31367caf4e2423cbE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11360
  br label %common.resume

bb.m:                                             ; preds = %bb.j, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hec9ee5395934ef23E.exit", %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11358
  %.sroa.07.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  %i.at = icmp ult i64 %i.ap, 115292150460684698
  call void @llvm.assume(i1 %i.at)
  %.idx = mul nuw i64 %i.ap, 80                   ; 2 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 %.idx ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11361)
  call void @llvm.experimental.noalias.scope.decl(metadata !11362)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11363
  %.sroa.44.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.66.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !11364)
  call void @llvm.experimental.noalias.scope.decl(metadata !11365)
  call void @llvm.experimental.noalias.scope.decl(metadata !11366)
  call void @llvm.experimental.noalias.scope.decl(metadata !11367)
  call void @llvm.experimental.noalias.scope.decl(metadata !11368)
  call void @llvm.experimental.noalias.scope.decl(metadata !11369)
  %i.av = mul i64 %.sroa.07.0.copyload, 80        ; 6 uses
  %i.aw = udiv i64 %i.av, 72                      ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.ap, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.m
  %i.ax = add i64 %.idx, -80                      ; 2 uses
  %i.ay = udiv i64 %i.ax, 80
  %i.az = add nuw nsw i64 %i.ay, 1
  %xtraiter = and i64 %i.az, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.4.013.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.ba = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 80 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.013.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(72) %i.ba, i64 72, i1 false), !noalias !11370
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.prol, i64 72 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !11338

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bc, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.an, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.bb, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.bd = icmp ult i64 %i.ax, 560
  br i1 %i.bd, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.4.013.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.be = phi ptr [ %i.bt, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 80
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(72) %i.be, i64 72, i1 false), !noalias !11370
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 72
  %i.bh = getelementptr inbounds nuw i8, ptr %i.be, i64 160
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bg, ptr noundef nonnull align 8 dereferenceable(72) %i.bf, i64 72, i1 false), !noalias !11370
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 144
  %i.bj = getelementptr inbounds nuw i8, ptr %i.be, i64 240
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bi, ptr noundef nonnull align 8 dereferenceable(72) %i.bh, i64 72, i1 false), !noalias !11370
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 216
  %i.bl = getelementptr inbounds nuw i8, ptr %i.be, i64 320
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bk, ptr noundef nonnull align 8 dereferenceable(72) %i.bj, i64 72, i1 false), !noalias !11370
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 288
  %i.bn = getelementptr inbounds nuw i8, ptr %i.be, i64 400
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bm, ptr noundef nonnull align 8 dereferenceable(72) %i.bl, i64 72, i1 false), !noalias !11370
  %i.bo = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 360
  %i.bp = getelementptr inbounds nuw i8, ptr %i.be, i64 480
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bo, ptr noundef nonnull align 8 dereferenceable(72) %i.bn, i64 72, i1 false), !noalias !11370
  %i.bq = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 432
  %i.br = getelementptr inbounds nuw i8, ptr %i.be, i64 560
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bq, ptr noundef nonnull align 8 dereferenceable(72) %i.bp, i64 72, i1 false), !noalias !11370
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 504
  %i.bt = getelementptr inbounds nuw i8, ptr %i.be, i64 640 ; 2 uses
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.bs, ptr noundef nonnull align 8 dereferenceable(72) %i.br, i64 72, i1 false), !noalias !11370
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 576 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bt, %i.au
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.m
  %i.bv = phi ptr [ %i.an, %bb.m ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.an, %bb.m ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bw = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.bx = ptrtoint ptr %i.an to i64
  %i.by = sub nuw i64 %i.bw, %i.bx
  %i.bz = udiv exact i64 %i.by, 72                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11359
  store ptr %i.an, ptr %i.a, align 8, !noalias !11359
  %i.ca = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bz, ptr %i.ca, align 8, !noalias !11359
  %i.cb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.07.0.copyload, ptr %i.cb, align 8, !noalias !11359
  call void @llvm.experimental.noalias.scope.decl(metadata !11371)
  %i.cc = ptrtoint ptr %i.au to i64
  %i.cd = ptrtoint ptr %i.bv to i64
  %i.ce = sub nuw i64 %i.cc, %i.cd
  %i.cf = udiv exact i64 %i.ce, 80
  store i64 0, ptr %.sroa.55.0..sroa_idx, align 8, !alias.scope !11372, !noalias !11360
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11372, !noalias !11360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.44.0..sroa_idx, align 8, !alias.scope !11372, !noalias !11360
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.66.0..sroa_idx, align 8, !alias.scope !11372, !noalias !11360
  call void @llvm.experimental.noalias.scope.decl(metadata !11373)
  %i.cg = icmp eq ptr %i.au, %i.bv
  br i1 %i.cg, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"
  %.sroa.0.011.i.i.i.i.i.i.i = phi i64 [ %i.ci, %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ch = getelementptr inbounds nuw [80 x i8], ptr %i.bv, i64 %.sroa.0.011.i.i.i.i.i.i.i ; 2 uses
  %i.ci = add nuw i64 %.sroa.0.011.i.i.i.i.i.i.i, 1 ; 2 uses
  %.val8.i.i.i.i.i.i.i = load i64, ptr %i.ch, align 8, !range !30, !alias.scope !11373, !noalias !11374, !noundef !25 ; 2 uses
  %switch.i.i.i.i.i.i.i = icmp sgt i64 %.val8.i.i.i.i.i.i.i, 0
  br i1 %switch.i.i.i.i.i.i.i, label %bb.n, label %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cj = getelementptr i8, ptr %i.ch, i64 8
  %.val9.i.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !11373, !noalias !11374, !nonnull !25, !noundef !25
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i.i.i.i, i64 noundef %.val8.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11375
  br label %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i": ; preds = %bb.n, %.lr.ph.i.i.i.i.i.i.i
  %i.ck = icmp eq i64 %i.ci, %i.cf
  br i1 %i.ck, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr163drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$17h4d37a6c4baa51f26E.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.07.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %bb.u, label %bb.o

bb.o:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i"
  %i.cl = mul nuw i64 %i.aw, 72                   ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.av, %i.cl
  br i1 %.not49.i.i.i.i.i, label %bb.u, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.cm = icmp ult i64 %i.av, 72
  br i1 %i.cm, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.an, i64 noundef %i.av, i64 noundef 8) #46, !noalias !11359
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.cn = icmp ule i64 %i.cl, %i.av
  call void @llvm.assume(i1 %i.cn)
  %i.co = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.an, i64 noundef %i.av, i64 noundef 8, i64 noundef %i.cl) #46, !noalias !11359 ; 2 uses
  %i.cp = icmp eq ptr %i.co, null
  br i1 %i.cp, label %bb.s, label %bb.u, !prof !32

bb.s:                                             ; preds = %bb.r
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.cl) #52
          to label %bb.t unwind label %.body, !noalias !11359

bb.t:                                             ; preds = %bb.s
  unreachable

bb.u:                                             ; preds = %bb.r, %bb.q, %bb.o, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.an, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hb4826d2434ca663bE.exit.i.i.i.i.i" ], [ %i.an, %bb.o ], [ %i.co, %bb.r ], [ inttoptr (i64 8 to ptr), %bb.q ]
  store i64 %i.aw, ptr %0, align 8, !alias.scope !11376, !noalias !11377
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.cq, align 8, !alias.scope !11376, !noalias !11377
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bz, ptr %i.cr, align 8, !alias.scope !11376, !noalias !11377
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11359
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11363
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.l

bb.v:                                             ; preds = %bb.j
  %i.cs = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr186drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$actix_web..http..header..preference..Preference$LT$language_tags..LanguageTag$GT$$GT$$GT$$GT$17h12ff89f94f19a767E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #53
  br label %common.resume
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define { ptr, i64 } @_ZN9actix_web4http6header19content_disposition18ContentDisposition12get_filename17h5f7124d8cebb995bE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 4 uses
  %i.j = load i64, ptr %i.i, align 8, !range !28, !alias.scope !11384, !noalias !11385, !noundef !25
  %.not.i = icmp eq i64 %i.j, -9223372036854775807
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i": ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !11384, !noalias !11385, !nonnull !25
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.n = load i64, ptr %i.m, align 8, !alias.scope !11384, !noalias !11385
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h82a80edb4561139aE.exit": ; preds = %bb.b, %bb.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i"
  %.sroa.3.0.i = phi i64 [ %i.n, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i" ], [ undef, %bb.a ], [ undef, %bb.b ]
  %.sroa.0.0.i = phi ptr [ %i.l, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit13.i" ], [ null, %bb.a ], [ null, %bb.b ]
  %i.o = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0.i, 0
  %i.p = insertvalue { ptr, i64 } %i.o, i64 %.sroa.3.0.i, 1
  ret { ptr, i64 } %i.p
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, inaccessiblemem: none, target_mem: none) uwtable
define noundef align 8 dereferenceable_or_null(120) ptr @_ZN9actix_web4http6header19content_disposition18ContentDisposition16get_filename_ext17hab443ea200ccf41eE(ptr noalias noundef readonly align 8 captures(none) dereferenceable(48) %0) unnamed_addr #26 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx = mul nuw nsw i64 %i.d, 144
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hd1259365efae0f4eE.exit", label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.g = getelementptr inbounds nuw i8, ptr %i.i, i64 144 ; 2 uses
  %i.h = icmp eq ptr %i.g, %i.e
  br i1 %i.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hd1259365efae0f4eE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ] ; 3 uses
  %i.j = load i64, ptr %i.i, align 8, !range !28, !alias.scope !11392, !noalias !11393, !noundef !25
  %.not.i = icmp eq i64 %i.j, -9223372036854775806
  br i1 %.not.i, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit10.i", label %bb.b

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit10.i": ; preds = %.lr.ph
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hd1259365efae0f4eE.exit"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17hd1259365efae0f4eE.exit": ; preds = %bb.b, %bb.a, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit10.i"
  %.sroa.0.0.i = phi ptr [ %i.k, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h58e3c7dbe02ecc4dE.exit.thread.split.loop.exit10.i" ], [ null, %bb.a ], [ null, %bb.b ]
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header19content_disposition18ContentDisposition8from_raw17h09c66776f594e8e5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr nofree noundef nonnull readonly align 8 captures(none) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 8               ; 13 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 14 uses
  %i.f = alloca [144 x i8], align 8               ; 8 uses
  %.sroa.543.sroa.6 = alloca [120 x i8], align 8  ; 5 uses
  %i.g = alloca [120 x i8], align 8               ; 7 uses
  %.sroa.735 = alloca [16 x i8], align 8          ; 6 uses
  %i.h = alloca [120 x i8], align 8               ; 9 uses
  %i.i = alloca [32 x i8], align 8                ; 7 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [48 x i8], align 8                ; 15 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !noundef !25
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !25 ; 12 uses
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.s = icmp eq i64 %i.q, 0                      ; 6 uses
  br i1 %i.s, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11485
  %i.t = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.q, i64 noundef range(i64 1, 9) 1) #46, !noalias !11485 ; 2 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %bb.c, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.q, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52, !noalias !11486
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, %bb.b
  %.sroa.10.0.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i ], [ %i.t, %bb.b ] ; 7 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i, ptr nonnull readonly align 1 %i.o, i64 %i.q, i1 false), !noalias !11487
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11488
  invoke void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %i.q)
          to label %bb.e unwind label %bb.d, !noalias !11488

bb.d:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"
  %i.v = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.s, label %common.resume, label %common.resume.sink.split

bb.e:                                             ; preds = %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h413af03d5566ccc2E.exit"
  %i.w = load i64, ptr %i.b, align 8, !range !38, !noalias !11488, !noundef !25
  %i.x = trunc nuw i64 %i.w to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11488
  br i1 %i.x, label %bb.f, label %bb.i

common.resume.sink.split:                         ; preds = %bb.d, %bb.j
  %common.resume.op.ph = phi { ptr, i32 } [ %.pn186, %bb.j ], [ %i.v, %bb.d ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !25
  br label %common.resume

common.resume:                                    ; preds = %common.resume.sink.split, %bb.j, %bb.d
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.d ], [ %.pn186, %bb.j ], [ %common.resume.op.ph, %common.resume.sink.split ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %bb.e
  br i1 %i.s, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.10.0.i.i, i64 noundef %i.q, i64 noundef range(i64 1, -9223372036854775807) 1) #46
  br label %bb.h

bb.h:                                             ; preds = %bb.f, %bb.g
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.y, align 8
  %.sroa.2122.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 5, ptr %.sroa.2122.0..sroa_idx, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit207"

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.z = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17he36c9352b3a3d1fcE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.10.0.i.i, i64 noundef %i.q) ; 2 uses
  %i.aa = extractvalue { ptr, i64 } %i.z, 0
  %i.ab = extractvalue { ptr, i64 } %i.z, 1
  invoke fastcc void @_ZN9actix_web4http6header19content_disposition19split_once_and_trim17h4d3c0ab9e27ca417E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.m, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ab, i32 noundef 59)
          to label %bb.l unwind label %bb.k

bb.j:                                             ; preds = %.body248, %bb.k
  %.pn186 = phi { ptr, i32 } [ %i.ac, %bb.k ], [ %.pn, %.body248 ] ; 2 uses
  br i1 %i.s, label %common.resume, label %common.resume.sink.split

bb.k:                                             ; preds = %bb.n, %bb.i
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.l:                                             ; preds = %bb.i
  %i.ad = load ptr, ptr %i.m, align 8, !nonnull !25, !align !35, !noundef !25
  %i.ae = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !25 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !25, !align !35, !noundef !25
  %i.ai = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !25 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ak = icmp eq i64 %i.af, 0
  br i1 %i.ak, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_0
begin_hunk_1_@_ZN9actix_web4http6header6accept6Accept4star17h3987aa14a97bc303E:bb.a
bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @675, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept4text17h5e7e3bc9439b1b3fE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @681, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept5image17h9688ecde952453e6E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0) unnamed_addr #0 {
bb.a:
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.a = tail call noundef align 8 dereferenceable_or_null(96) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 96, i64 noundef 8) #46 ; 4 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c, !prof !33

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 96) #52
  unreachable

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) @683, i64 88, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store i16 1000, ptr %.sroa.4.0..sroa_idx, align 8
  store i64 1, ptr %0, align 8
  %.sroa.4.0..sroa_idx5 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.a, ptr %.sroa.4.0..sroa_idx5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6accept6Accept6ranked17h5c31449181035c80E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [96 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !noundef !25 ; 7 uses
  %i.i = icmp ult i64 %i.h, 96076792050570582
  tail call void @llvm.assume(i1 %i.i)
  %i.j = icmp eq i64 %i.h, 0
  br i1 %i.j, label %bb.b, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.l, align 8
  br label %bb.k

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.m, align 8, !nonnull !25, !noundef !25 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11695)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11696
  %i.n = mul nuw nsw i64 %i.h, 96                 ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !11697
  %i.o = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.n, i64 noundef range(i64 1, 9) 8) #46, !noalias !11697 ; 3 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.c, label %.lr.ph.i.i

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !11696
  unreachable

.lr.ph.i.i:                                       ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  store i64 %i.h, ptr %i.e, align 8, !noalias !11696
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.o, ptr %i.q, align 8, !noalias !11696
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw [96 x i8], ptr %.val, i64 %i.h
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %.lr.ph.i.i
  %.sroa.012.023.i.i = phi ptr [ %.val, %.lr.ph.i.i ], [ %i.x, %bb.f ] ; 4 uses
  %.sroa.7.022.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.w, %bb.f ] ; 3 uses
  %.sroa.10.021.i.i = phi i64 [ %i.h, %.lr.ph.i.i ], [ %i.u, %bb.f ]
  %i.u = add nsw i64 %.sroa.10.021.i.i, -1        ; 2 uses
  %i.v = icmp eq ptr %.sroa.012.023.i.i, %i.s
  br i1 %i.v, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !11696
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11698)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11699)
  invoke fastcc void @"_ZN49_$LT$mime..Mime$u20$as$u20$core..clone..Clone$GT$5clone17he158e8ae0cbadfb2E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(96) %.sroa.012.023.i.i)
          to label %bb.f unwind label %bb.g, !noalias !11700

bb.f:                                             ; preds = %bb.e
  %i.w = add nuw nsw i64 %.sroa.7.022.i.i, 1
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 96
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i.i, i64 88
  %i.z = load i16, ptr %i.y, align 8, !alias.scope !11701, !noalias !11702, !noundef !25
  store i16 %i.z, ptr %i.t, align 8, !alias.scope !11698, !noalias !11703
  %i.aa = getelementptr inbounds nuw [96 x i8], ptr %i.o, i64 %.sroa.7.022.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.aa, ptr noundef nonnull align 8 dereferenceable(96) %i.d, i64 96, i1 false), !noalias !11700
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !11696
  %i.ab = icmp eq i64 %i.u, 0
  br i1 %i.ab, label %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit", label %bb.d

common.resume:                                    ; preds = %.body, %bb.w, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %lpad.loopexit.i.i, %bb.g ], [ %i.cr, %bb.w ], [ %i.ai, %.body ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i.i, ptr %i.r, align 8, !alias.scope !11704, !noalias !11696
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #53, !noalias !11700
  br label %common.resume

"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit": ; preds = %bb.d, %bb.f
  store i64 %i.h, ptr %i.r, align 8, !noalias !11696
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !11695
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !11696
  %i.ac = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !nonnull !25, !noundef !25 ; 15 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !noundef !25 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !11705
  %i.ag = icmp ult i64 %i.af, 2
  br i1 %i.ag, label %bb.l, label %bb.h, !prof !29

bb.h:                                             ; preds = %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit"
  %i.ah = icmp ult i64 %i.af, 21
  br i1 %i.ah, label %bb.j, label %bb.i, !prof !29

bb.i:                                             ; preds = %bb.h
  invoke void @_ZN4core5slice4sort6stable14driftsort_main17hc310332344a5dac4E(ptr noalias noundef nonnull align 8 %i.ad, i64 noundef %i.af, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.l unwind label %bb.w

bb.j:                                             ; preds = %bb.h
  invoke fastcc void @_ZN4core5slice4sort6shared9smallsort25insertion_sort_shift_left17h954e04d66902a653E(ptr noalias noundef nonnull align 8 %i.ad, i64 noundef %i.af)
          to label %bb.l unwind label %bb.w

bb.k:                                             ; preds = %bb.v, %bb.b
  ret void

.body:                                            ; preds = %bb.t
  %i.ai = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr164drop_in_place$LT$alloc..vec..in_place_drop..InPlaceDstDataSrcBufDrop$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$C$mime..Mime$GT$$GT$17hb28af52d0ed5479fE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #53, !noalias !11706
  call fastcc void @"_ZN4core3ptr248drop_in_place$LT$core..iter..adapters..map..Map$LT$alloc..vec..into_iter..IntoIter$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$C$actix_web..http..header..accept..Accept..ranked..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h256853844a9cf9f1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b) #53, !noalias !11707
  br label %common.resume

bb.l:                                             ; preds = %bb.j, %bb.i, %"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h322e336dbc5a7fd6E.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11705
  %.sroa.08.0.copyload = load i64, ptr %i.f, align 8 ; 3 uses
  %i.aj = icmp ult i64 %i.af, 96076792050570582
  tail call void @llvm.assume(i1 %i.aj)
  %.idx = mul nuw i64 %i.af, 96                   ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 %.idx ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11708)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11709)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11710
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11711)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11712)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11713)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11714)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11715)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11716)
  %i.al = mul i64 %.sroa.08.0.copyload, 96        ; 6 uses
  %i.am = udiv i64 %i.al, 88                      ; 2 uses
  %.not12.i.i.i.i.i.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not12.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.i.preheader:                 ; preds = %bb.l
  %i.an = add i64 %.idx, -96                      ; 2 uses
  %i.ao = udiv i64 %i.an, 96
  %i.ap = add nuw nsw i64 %i.ao, 1
  %xtraiter = and i64 %i.ap, 7                    ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i.i.prol
  %.sroa.4.013.i.i.i.i.i.i.i.i.prol = phi ptr [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %i.aq = phi ptr [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.preheader ]
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 96 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.013.i.i.i.i.i.i.i.i.prol, ptr noundef nonnull align 8 dereferenceable(88) %i.aq, i64 88, i1 false), !noalias !11717
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i.prol, i64 88 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.prol, !llvm.loop !11682

.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.preheader
  %.lcssa.unr = phi ptr [ poison, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.sroa.4.013.i.i.i.i.i.i.i.i.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.as, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %.unr = phi ptr [ %i.ad, %.lr.ph.i.i.i.i.i.i.i.i.preheader ], [ %i.ar, %.lr.ph.i.i.i.i.i.i.i.i.prol ]
  %i.at = icmp ult i64 %i.an, 672
  br i1 %i.at, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i
  %.sroa.4.013.i.i.i.i.i.i.i.i = phi ptr [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.sroa.4.013.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.au = phi ptr [ %i.bj, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 9 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 96
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %.sroa.4.013.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(88) %i.au, i64 88, i1 false), !noalias !11717
  %i.aw = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 88
  %i.ax = getelementptr inbounds nuw i8, ptr %i.au, i64 192
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.aw, ptr noundef nonnull align 8 dereferenceable(88) %i.av, i64 88, i1 false), !noalias !11717
  %i.ay = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 176
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 288
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ay, ptr noundef nonnull align 8 dereferenceable(88) %i.ax, i64 88, i1 false), !noalias !11717
  %i.ba = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 264
  %i.bb = getelementptr inbounds nuw i8, ptr %i.au, i64 384
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.ba, ptr noundef nonnull align 8 dereferenceable(88) %i.az, i64 88, i1 false), !noalias !11717
  %i.bc = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 352
  %i.bd = getelementptr inbounds nuw i8, ptr %i.au, i64 480
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bc, ptr noundef nonnull align 8 dereferenceable(88) %i.bb, i64 88, i1 false), !noalias !11717
  %i.be = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 440
  %i.bf = getelementptr inbounds nuw i8, ptr %i.au, i64 576
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.be, ptr noundef nonnull align 8 dereferenceable(88) %i.bd, i64 88, i1 false), !noalias !11717
  %i.bg = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 528
  %i.bh = getelementptr inbounds nuw i8, ptr %i.au, i64 672
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bg, ptr noundef nonnull align 8 dereferenceable(88) %i.bf, i64 88, i1 false), !noalias !11717
  %i.bi = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 616
  %i.bj = getelementptr inbounds nuw i8, ptr %i.au, i64 768 ; 2 uses
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.bi, ptr noundef nonnull align 8 dereferenceable(88) %i.bh, i64 88, i1 false), !noalias !11717
  %i.bk = getelementptr inbounds nuw i8, ptr %.sroa.4.013.i.i.i.i.i.i.i.i, i64 704 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.7 = icmp eq ptr %i.bj, %i.ak
  br i1 %.not.i.i.i.i.i.i.i.i.7, label %._crit_edge.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i, %bb.l
  %i.bl = phi ptr [ %i.ad, %bb.l ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i ], [ %i.ak, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.ad, %bb.l ], [ %.lcssa.unr, %.lr.ph.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.bk, %.lr.ph.i.i.i.i.i.i.i.i ]
  %i.bm = ptrtoint ptr %.sroa.4.0.lcssa.i.i.i.i.i.i.i.i to i64
  %i.bn = ptrtoint ptr %i.ad to i64
  %i.bo = sub nuw i64 %i.bm, %i.bn
  %i.bp = udiv exact i64 %i.bo, 88                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11706
  store ptr %i.ad, ptr %i.a, align 8, !noalias !11706
  %i.bq = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.bp, ptr %i.bq, align 8, !noalias !11706
  %i.br = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %.sroa.08.0.copyload, ptr %i.br, align 8, !noalias !11706
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11718)
  %i.bs = ptrtoint ptr %i.ak to i64
  %i.bt = ptrtoint ptr %i.bl to i64
  %i.bu = sub nuw i64 %i.bs, %i.bt
  %i.bv = udiv exact i64 %i.bu, 96
  store i64 0, ptr %.sroa.56.0..sroa_idx, align 8, !alias.scope !11719, !noalias !11707
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8, !alias.scope !11719, !noalias !11707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.45.0..sroa_idx, align 8, !alias.scope !11719, !noalias !11707
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.67.0..sroa_idx, align 8, !alias.scope !11719, !noalias !11707
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11720)
  %i.bw = icmp eq ptr %i.ak, %i.bl
  br i1 %i.bw, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.i = phi i64 [ %i.by, %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i" ], [ 0, %._crit_edge.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bx = getelementptr inbounds nuw [96 x i8], ptr %i.bl, i64 %.sroa.0.07.i.i.i.i.i.i.i ; 5 uses
  %i.by = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11721)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11722)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.bx, i64 48
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11723)
  %i.ca = load i8, ptr %i.bz, align 8, !range !31, !alias.scope !11724, !noalias !11725, !noundef !25
  %i.cb = icmp eq i8 %i.ca, 0
  br i1 %i.cb, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i", label %bb.m

bb.m:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bx, i64 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11726)
  %.val.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !alias.scope !11727, !noalias !11725 ; 2 uses
  %i.cd = icmp eq i64 %.val.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cd, label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i", label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bx, i64 64
  %.val1.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ce, align 8, !alias.scope !11727, !noalias !11725, !nonnull !25, !noundef !25
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11728
  br label %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"

"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i": ; preds = %bb.n, %bb.m, %.lr.ph.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bx, i64 16
  %.val.i.i.i.i.i.i.i.i.i = load i64, ptr %i.cf, align 8, !range !24, !alias.scope !11729, !noalias !11725, !noundef !25 ; 3 uses
  %i.cg = icmp ne i64 %.val.i.i.i.i.i.i.i.i.i, -9223372036854775807
  tail call void @llvm.assume(i1 %i.cg)
  %or.cond.i4.i.i.i.i.i.i.i.i.i = icmp slt i64 %.val.i.i.i.i.i.i.i.i.i, 1
  br i1 %or.cond.i4.i.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i", label %bb.o

bb.o:                                             ; preds = %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %.val1.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.ch, align 8, !alias.scope !11729, !noalias !11725, !nonnull !25, !noundef !25
  %i.ci = shl nuw i64 %.val.i.i.i.i.i.i.i.i.i, 5
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.i, i64 noundef %i.ci, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !11730
  br label %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i"

"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i": ; preds = %bb.o, %"_ZN4core3ptr33drop_in_place$LT$mime..Source$GT$17h54fe0fc51dd68f85E.exit.i.i.i.i.i.i.i.i.i"
  %i.cj = icmp eq i64 %i.by, %i.bv
  br i1 %i.cj, label %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i": ; preds = %"_ZN4core3ptr92drop_in_place$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$17he7e7208bb6f8822dE.exit.i.i.i.i.i.i.i", %._crit_edge.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.08.0.copyload, 0
  br i1 %.not.i.i.i.i.i, label %bb.v, label %bb.p

bb.p:                                             ; preds = %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i"
  %i.ck = mul nuw i64 %i.am, 88                   ; 4 uses
  %.not49.i.i.i.i.i = icmp eq i64 %i.al, %i.ck
  br i1 %.not49.i.i.i.i.i, label %bb.v, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.cl = icmp ult i64 %i.al, 88
  br i1 %i.cl, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.ad, i64 noundef %i.al, i64 noundef 8) #46, !noalias !11706
  br label %bb.v

bb.s:                                             ; preds = %bb.q
  %i.cm = icmp ule i64 %i.ck, %i.al
  tail call void @llvm.assume(i1 %i.cm)
  %i.cn = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr noundef nonnull %i.ad, i64 noundef %i.al, i64 noundef 8, i64 noundef %i.ck) #46, !noalias !11706 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.t, label %bb.v, !prof !32

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef %i.ck) #52
          to label %bb.u unwind label %.body, !noalias !11706

bb.u:                                             ; preds = %bb.t
  unreachable

bb.v:                                             ; preds = %bb.s, %bb.r, %bb.p, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i"
  %.sroa.01.0.i.i.i.i.i = phi ptr [ %i.ad, %"_ZN5alloc3vec9into_iter21IntoIter$LT$T$C$A$GT$32forget_allocation_drop_remaining17hd67ca21da714113cE.exit.i.i.i.i.i" ], [ %i.ad, %bb.p ], [ %i.cn, %bb.s ], [ inttoptr (i64 8 to ptr), %bb.r ]
  store i64 %i.am, ptr %0, align 8, !alias.scope !11731, !noalias !11732
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.01.0.i.i.i.i.i, ptr %i.cp, align 8, !alias.scope !11731, !noalias !11732
  %i.cq = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bp, ptr %i.cq, align 8, !alias.scope !11731, !noalias !11732
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !11706
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11710
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.k

bb.w:                                             ; preds = %bb.j, %bb.i
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr115drop_in_place$LT$alloc..vec..Vec$LT$actix_http..header..shared..quality_item..QualityItem$LT$mime..Mime$GT$$GT$$GT$17hf817c962f99692d4E"(ptr noalias noundef align 8 dereferenceable(24) %i.f) #53
  br label %common.resume
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef zeroext i1 @_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE(ptr noalias noundef nonnull readonly align 1 captures(address) %0, i64 noundef %1) unnamed_addr #27 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %1
  %.not.not.not.i.not2 = icmp samesign eq i64 %1, 0
  br i1 %.not.not.not.i.not2, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h4c288dec6bd8f8baE.exit, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph, %bb.a
  %i.b = phi ptr [ %i.f, %.lr.ph ], [ %0, %bb.a ] ; 2 uses
  %.val.i = load i8, ptr %i.b, align 1, !noalias !11735, !noundef !25 ; 3 uses
  %i.c = icmp eq i8 %.val.i, 33
  %i.d = add i8 %.val.i, -35
  %spec.select.i.i.i.i.i.i = icmp ult i8 %i.d, 92
  %i.e = icmp slt i8 %.val.i, 0
  %spec.select.i.i.not1.i.i.i.not6 = or i1 %i.e, %spec.select.i.i.i.i.i.i
  %.sroa.0.0.i.i.not.i.i.i.not = or i1 %i.c, %spec.select.i.i.not1.i.i.i.not6 ; 2 uses
  %.sroa.0.0.i.i.not.i.i.i.not.not = xor i1 %.sroa.0.0.i.i.not.i.i.i.not, true
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.not.not.not.i.not = icmp eq ptr %i.f, %i.a
  %or.cond = select i1 %.sroa.0.0.i.i.not.i.i.i.not.not, i1 true, i1 %.not.not.not.i.not
  br i1 %or.cond, label %_ZN4core4iter6traits8iterator8Iterator8try_fold17h4c288dec6bd8f8baE.exit, label %.lr.ph

_ZN4core4iter6traits8iterator8Iterator8try_fold17h4c288dec6bd8f8baE.exit: ; preds = %.lr.ph, %bb.a
  %.not.not.not.i.not.lcssa = phi i1 [ true, %bb.a ], [ %.sroa.0.0.i.i.not.i.i.i.not, %.lr.ph ]
  ret i1 %.not.not.not.i.not.lcssa
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6entity9EntityTag10new_strong17hba6c182b5e992e08E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11745)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11746)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !11746, !noalias !11745, !nonnull !25, !noundef !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !alias.scope !11746, !noalias !11745, !noundef !25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not.not.not.i.not.i.i1 = icmp samesign eq i64 %i.f, 0
  br i1 %.not.not.not.i.not.i.i1, label %_ZN9actix_web4http6header6entity9EntityTag3new17h159cf8d2aa3697f3E.exit, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.not.not.not.i.not.i.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.not.not.i.not.i.i, label %_ZN9actix_web4http6header6entity9EntityTag3new17h159cf8d2aa3697f3E.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.val.i.i.i = load i8, ptr %i.i, align 1, !alias.scope !11747, !noalias !11748, !noundef !25 ; 3 uses
  %i.j = icmp ne i8 %.val.i.i.i, 33
  %i.k = add i8 %.val.i.i.i, -127
  %spec.select.i.i.i.i.i.i.i.i = icmp ult i8 %i.k, -92
  %i.l = icmp sgt i8 %.val.i.i.i, -1
  %spec.select.i.i.not1.i.i.i.i.i = and i1 %i.l, %spec.select.i.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.not.i.i.i.i.i = and i1 %i.j, %spec.select.i.i.not1.i.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.i.i.i.i, label %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit.i, label %bb.b

bb.c:                                             ; preds = %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !11749)
  %.val.i.i = load i64, ptr %1, align 8, !alias.scope !11750, !noalias !11745 ; 2 uses
  %i.n = icmp eq i64 %.val.i.i, 0
  br i1 %i.n, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i.i = load ptr, ptr %i.c, align 8, !alias.scope !11750, !noalias !11745, !nonnull !25, !noundef !25
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11751
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i"

_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit.i: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !11752
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11752
  store ptr %1, ptr %i.a, align 8, !noalias !11752
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E", ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !11752
  store ptr @685, ptr %i.b, align 8, !noalias !11752
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8, !noalias !11752
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8, !noalias !11752
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.q, align 8, !noalias !11752
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.r, align 8, !noalias !11752
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #52
          to label %bb.e unwind label %bb.c, !noalias !11745

bb.e:                                             ; preds = %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit.i
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.m

_ZN9actix_web4http6header6entity9EntityTag3new17h159cf8d2aa3697f3E.exit: ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !alias.scope !11752
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 0, ptr %i.s, align 8, !alias.scope !11745, !noalias !11746
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6entity9EntityTag3new17h159cf8d2aa3697f3E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, i1 noundef zeroext %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !25 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.f
  %.not.not.not.i.not.i5 = icmp samesign eq i64 %i.f, 0
  br i1 %.not.not.not.i.not.i5, label %._crit_edge, label %.lr.ph

bb.b:                                             ; preds = %.lr.ph
  %i.h = getelementptr inbounds nuw i8, ptr %i.i, i64 1 ; 2 uses
  %.not.not.not.i.not.i = icmp eq ptr %i.h, %i.g
  br i1 %.not.not.not.i.not.i, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %i.i = phi ptr [ %i.h, %bb.b ], [ %i.d, %bb.a ] ; 2 uses
  %.val.i.i = load i8, ptr %i.i, align 1, !alias.scope !11759, !noalias !11760, !noundef !25 ; 3 uses
  %i.j = icmp ne i8 %.val.i.i, 33
  %i.k = add i8 %.val.i.i, -127
  %spec.select.i.i.i.i.i.i.i = icmp ult i8 %i.k, -92
  %i.l = icmp sgt i8 %.val.i.i, -1
  %spec.select.i.i.not1.i.i.i.i = and i1 %i.l, %spec.select.i.i.i.i.i.i.i
  %.sroa.0.0.i.i.not.i.i.i.i = and i1 %i.j, %spec.select.i.i.not1.i.i.i.i
  br i1 %.sroa.0.0.i.i.not.i.i.i.i, label %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit, label %bb.b

bb.c:                                             ; preds = %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !11761)
  %.val.i = load i64, ptr %2, align 8, !alias.scope !11761 ; 2 uses
  %i.n = icmp eq i64 %.val.i, 0
  br i1 %i.n, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val1.i = load ptr, ptr %i.c, align 8, !alias.scope !11761, !nonnull !25, !noundef !25
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !11761
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit"

_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit: ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %2, ptr %i.a, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Debug$GT$3fmt17hc9ba220b3a6d24e8E", ptr %.sroa.42.0..sroa_idx, align 8
  store ptr @685, ptr %i.b, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.r, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @686) #52
          to label %bb.e unwind label %bb.c

._crit_edge:                                      ; preds = %bb.b, %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = zext i1 %1 to i8
  store i8 %i.t, ptr %i.s, align 8
  ret void

bb.e:                                             ; preds = %_ZN9actix_web4http6header6entity20check_slice_validity17ha9af411239614ccfE.exit
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4http6header6entity9EntityTag4weak17hfd460e7d3948977cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11774)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11775)
end_hunk_1
