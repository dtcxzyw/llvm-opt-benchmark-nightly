Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN9actix_web4rmap11ResourceMap3new17h3b818040b1a083bfE:bb.a
  store i64 0, ptr %.sroa.53.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.d
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4rmap11ResourceMap6finish17h838d1f0d201d3a24E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !24, !noundef !24 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 168 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !range !29, !noundef !24
  %.not = icmp eq i64 %i.c, -9223372036854775808
  %. = select i1 %.not, ptr null, ptr %i.b
  %i.d = getelementptr i8, ptr %i.a, i64 8        ; 2 uses
  br label %.split.us.preheader.i

.split.us.preheader.i:                            ; preds = %bb.a, %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit"
  %.sroa.12.0 = phi ptr [ undef, %bb.a ], [ %.sroa.12.2, %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit" ] ; 2 uses
  %.sroa.7.0 = phi ptr [ null, %bb.a ], [ %.sroa.7.3, %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit" ] ; 3 uses
  %.sroa.4.0 = phi ptr [ %., %bb.a ], [ %.sroa.4.2, %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit" ] ; 4 uses
  %.not.i.us.peel.i = icmp eq ptr %.sroa.7.0, null
  %i.e = icmp eq ptr %.sroa.7.0, %.sroa.12.0
  %or.cond = select i1 %.not.i.us.peel.i, i1 true, i1 %i.e
  br i1 %or.cond, label %select.unfold.us.peel.i, label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6caae1c8b17007bE.exit"

select.unfold.us.peel.i:                          ; preds = %.split.us.preheader.i
  %.not3.us.peel.i = icmp eq ptr %.sroa.4.0, null
  br i1 %.not3.us.peel.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h151637c76403182cE.exit.thread.i", label %.sink.split.i.us.i

.sink.split.i.us.i:                               ; preds = %select.unfold.us.peel.i
  %i.f = getelementptr i8, ptr %.sroa.4.0, i64 8
  %.val.us.peel.i = load ptr, ptr %i.f, align 8, !noalias !12161, !nonnull !24, !noundef !24 ; 2 uses
  %i.g = getelementptr i8, ptr %.sroa.4.0, i64 16
  %.val4.us.peel.i = load i64, ptr %i.g, align 8, !noalias !12161, !noundef !24 ; 2 uses
  %.idx.i = shl nuw nsw i64 %.val4.us.peel.i, 3
  %i.h = getelementptr inbounds nuw i8, ptr %.val.us.peel.i, i64 %.idx.i
  %i.i = icmp eq i64 %.val4.us.peel.i, 0
  br i1 %i.i, label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h151637c76403182cE.exit.thread.i", label %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6caae1c8b17007bE.exit"

"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h151637c76403182cE.exit.thread.i": ; preds = %.sink.split.i.us.i, %select.unfold.us.peel.i
  ret void

"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6caae1c8b17007bE.exit": ; preds = %.split.us.preheader.i, %.sink.split.i.us.i
  %.sroa.12.2 = phi ptr [ %i.h, %.sink.split.i.us.i ], [ %.sroa.12.0, %.split.us.preheader.i ]
  %.sroa.4.2 = phi ptr [ null, %.sink.split.i.us.i ], [ %.sroa.4.0, %.split.us.preheader.i ]
  %.sroa.0.0.i = phi ptr [ %.val.us.peel.i, %.sink.split.i.us.i ], [ %.sroa.7.0, %.split.us.preheader.i ] ; 3 uses
  %.sroa.7.3 = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i, i64 8
  %i.j = load ptr, ptr %.sroa.0.0.i, align 8, !nonnull !24, !noundef !24 ; 2 uses
  %.val.i.i = load i64, ptr %i.d, align 8, !noundef !24 ; 2 uses
  %i.k = icmp ne i64 %.val.i.i, 0
  tail call void @llvm.assume(i1 %i.k)
  %i.l = add i64 %.val.i.i, 1                     ; 2 uses
  store i64 %i.l, ptr %i.d, align 8
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %bb.b, label %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9downgrade17hd457b23af4ae5a93E.exit", !prof !32

bb.b:                                             ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6caae1c8b17007bE.exit"
  tail call void @llvm.trap()
  unreachable

"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9downgrade17hd457b23af4ae5a93E.exit": ; preds = %"_ZN116_$LT$core..iter..adapters..flatten..FlattenCompat$LT$I$C$U$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb6caae1c8b17007bE.exit"
  %i.n = getelementptr inbounds nuw i8, ptr %i.j, i64 232
  %i.o = load i64, ptr %i.n, align 8, !noundef !24
  %i.p = icmp eq i64 %i.o, 0
  br i1 %i.p, label %"_ZN4core4cell16RefCell$LT$T$GT$7replace17hb70234bfaef110f7E.exit", label %bb.c

bb.c:                                             ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9downgrade17hd457b23af4ae5a93E.exit"
  invoke void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @704) #52
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.q = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E"(ptr nonnull %i.a) #53
  resume { ptr, i32 } %i.q

"_ZN4core4cell16RefCell$LT$T$GT$7replace17hb70234bfaef110f7E.exit": ; preds = %"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9downgrade17hd457b23af4ae5a93E.exit"
  %i.r = getelementptr inbounds nuw i8, ptr %i.j, i64 240 ; 2 uses
  %i.s = load ptr, ptr %i.r, align 8, !nonnull !24, !noundef !24 ; 3 uses
  store ptr %i.a, ptr %i.r, align 8
  %i.t = icmp eq ptr %i.s, inttoptr (i64 -1 to ptr)
  br i1 %i.t, label %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit", label %bb.f

bb.f:                                             ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$7replace17hb70234bfaef110f7E.exit"
  %i.u = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !24
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.u, align 8
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.g, label %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit"

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.s, i64 noundef 248, i64 noundef 8) #46
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit"

"_ZN4core3ptr72drop_in_place$LT$alloc..rc..Weak$LT$actix_web..rmap..ResourceMap$GT$$GT$17h8a1f1c11a3873eb6E.exit": ; preds = %"_ZN4core4cell16RefCell$LT$T$GT$7replace17hb70234bfaef110f7E.exit", %bb.f, %bb.g
  tail call void @_ZN9actix_web4rmap11ResourceMap6finish17h838d1f0d201d3a24E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %.sroa.0.0.i)
  br label %.split.us.preheader.i
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4test12test_request11TestRequest10to_request17hac677b09d53a3446E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([80 x i8]) align 8 captures(none) dereferenceable(80) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(784) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZN9actix_web4test12test_request11TestRequest6finish17h0a296186cf333cadE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef align 8 dereferenceable(784) %1)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.g, %bb.c
  %.pn = phi { ptr, i32 } [ %i.i, %bb.g ], [ %i.b, %bb.c ]
  invoke fastcc void @"_ZN4core3ptr63drop_in_place$LT$actix_web..test..test_request..TestRequest$GT$17hfbbc390bcda032cdE"(ptr noalias noundef align 8 dereferenceable(784) %1) #53
          to label %bb.j unwind label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.val = load ptr, ptr %i.c, align 8, !nonnull !24, !noundef !24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !24
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %bb.e, label %bb.f, !prof !28

bb.e:                                             ; preds = %bb.d
  %i.g = load i64, ptr %.val, align 8, !noundef !24
  %i.h = icmp eq i64 %i.g, 1
  br i1 %i.h, label %bb.h, label %bb.f, !prof !28

bb.f:                                             ; preds = %bb.e, %bb.d
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @561, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #52
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.f
  unreachable

bb.g:                                             ; preds = %bb.f
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr255drop_in_place$LT$actix_http..requests..request..Request$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17hc6dbdaa4e5cac5e4E"(ptr noalias noundef align 8 dereferenceable(80) %i.a) #53
          to label %bb.b unwind label %bb.i

bb.h:                                             ; preds = %bb.e
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.k = getelementptr inbounds nuw i8, ptr %.val, i64 16
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.k, ptr noundef nonnull align 8 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %0, ptr noundef nonnull align 8 dereferenceable(80) %i.a, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call fastcc void @"_ZN4core3ptr63drop_in_place$LT$actix_web..test..test_request..TestRequest$GT$17hfbbc390bcda032cdE"(ptr noalias noundef align 8 dereferenceable(784) %1)
  ret void

bb.i:                                             ; preds = %bb.g, %bb.b
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.j:                                             ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4test12test_request11TestRequest13to_http_parts17h80798c26cf59ba40E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(784) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_ZN9actix_web4test12test_request11TestRequest6finish17h0a296186cf333cadE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef align 8 dereferenceable(784) %1)
          to label %bb.c unwind label %bb.b

.body28:                                          ; preds = %bb.f, %bb.b, %bb.ao, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ao ], [ %.pn.pn, %bb.an ], [ %i.o, %bb.b ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.09.0 = phi i1 [ %.sroa.09.1, %bb.ao ], [ %.sroa.09.1, %bb.an ], [ true, %bb.b ], [ true, %bb.f ]
  %.sroa.07.0 = phi i8 [ %.sroa.06.0, %bb.ao ], [ %.sroa.06.0, %bb.an ], [ 1, %bb.b ], [ 1, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_http..test..TestRequest$GT$17h70e3ed880e2a3189E"(ptr noalias noundef align 8 dereferenceable(184) %i.n) #53
          to label %bb.ap unwind label %bb.ah

bb.b:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12197)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12198)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12198, !nonnull !24, !noundef !24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !12199
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12200)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !12201, !noundef !24 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !noalias !12202, !noundef !24
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !12202
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i" unwind label %bb.f, !noalias !12197

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.y)
          to label %.body28 unwind label %bb.g, !noalias !12197

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.z)
          to label %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit" unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12197
  unreachable

"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !24
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !28

bb.h:                                             ; preds = %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  %i.af = load i64, ptr %i.q, align 8, !noundef !24
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h, %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @561, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #52
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.aa, %bb.al, %bb.am, %bb.q, %bb.n, %bb.j, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.ah, %bb.j ], [ %i.aq, %bb.n ], [ %i.av, %bb.q ], [ %i.cg, %bb.al ], [ %i.cg, %bb.am ], [ %i.bn, %bb.aa ] ; 2 uses
  %.sroa.09.1 = phi i1 [ false, %bb.ak ], [ true, %bb.j ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.aa ] ; 2 uses
  %.sroa.06.0.a = phi i1 [ false, %bb.ak ], [ true, %bb.j ], [ true, %bb.n ], [ true, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ false, %bb.aa ]
  %.sroa.06.0 = phi i8 [ 0, %bb.ak ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.al ], [ 1, %bb.am ], [ 0, %bb.aa ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2a24f08e635f7441E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #53
          to label %bb.an unwind label %bb.ah

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  invoke fastcc void @_ZN12actix_router3url3Url6update17h3158d8f3439ba75bE(ptr noalias noundef align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 %i.al)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.am, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.an, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12203
  %i.ao = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12203 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.p, !prof !31

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #52
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_web..rmap..ResourceMap$GT$17h6418147a322f8bc5E"(ptr noalias noundef align 8 dereferenceable(232) %i.am)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ao, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ao, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.au = load i8, ptr %i.at, align 8, !range !30, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705)
          to label %bb.r unwind label %bb.al

bb.q:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 %i.au, ptr %i.ay, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = invoke noundef nonnull ptr @_ZN9actix_web11app_service19AppInitServiceState3new17h238f3b4bf80706d3E(ptr noundef nonnull %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i)
          to label %bb.s unwind label %bb.q       ; 4 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.az, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bc, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12204
  %i.bd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12204 ; 6 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.t, label %bb.w, !prof !31

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #52
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bb)
          to label %.body20 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.bd, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.bh = call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #46 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.x, label %bb.y, !prof !32

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #52
          to label %.noexc35 unwind label %.noexc39

.noexc35:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  store i64 1, ptr %i.bh, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @78, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12205
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.h, i64 144, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !12205
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bk, align 8, !noalias !12205
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !12205
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12205
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.az, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !12205
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.bd, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12205
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !12205
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12205
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12206
  %i.bl = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12206 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.z, label %bb.ac, !prof !31

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #52
          to label %.noexc.i unwind label %bb.aa, !noalias !12205

.noexc.i:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_web..request..HttpRequestInner$GT$17h45eec93f766ef7e4E"(ptr noalias noundef align 8 dereferenceable(216) %i.bj)
          to label %.body unwind label %bb.ab, !noalias !12205

bb.ab:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12205
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 232, i1 false), !noalias !12205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12205
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bp, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  store ptr %i.bl, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_http..test..TestRequest$GT$17h70e3ed880e2a3189E"(ptr noalias noundef align 8 dereferenceable(184) %i.bq)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val25.a = load i64, ptr %i.as, align 8, !alias.scope !72 ; 2 uses
  %i.bs = icmp eq i64 %.val25.a, 0
  br i1 %i.bs, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val26 = load ptr, ptr %i.bt, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26, i64 noundef %.val25.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12207
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"

bb.af:                                            ; preds = %bb.ac
  %.val23.a = load i64, ptr %i.as, align 8, !alias.scope !72 ; 2 uses
  %i.bu = icmp eq i64 %.val23.a, 0
  br i1 %i.bu, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val24 = load ptr, ptr %i.bv, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12208
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38"

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38": ; preds = %bb.ag, %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 688
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$cookie..jar..CookieJar$GT$17h210cf6a84bd2190dE"(ptr noalias noundef align 8 dereferenceable(96) %i.bw)
  ret void

bb.ah:                                            ; preds = %bb.am, %bb.aj, %bb.ai, %bb.au, %bb.at, %bb.as, %bb.ao, %bb.ak, %.noexc41, %.body, %.body28
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit": ; preds = %bb.ad, %bb.ae, %bb.au, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"
  %.pn14.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.au ], [ %.pn.pn.pn, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43" ], [ %i.br, %bb.ae ], [ %i.br, %bb.ad ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 688
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$cookie..jar..CookieJar$GT$17h210cf6a84bd2190dE"(ptr noalias noundef align 8 dereferenceable(96) %i.by) #53
  resume { ptr, i32 } %.pn14.pn

.noexc39:                                         ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load i64, ptr %i.bd, align 8, !noalias !12209, !noundef !24
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  store i64 %i.cb, ptr %i.bd, align 8, !noalias !12209
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.ai, label %.body20

bb.ai:                                            ; preds = %.noexc39
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body20 unwind label %bb.ah

.body20:                                          ; preds = %.noexc39, %bb.ai, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.bz, %.noexc39 ], [ %i.bz, %bb.ai ]
  %i.cd = load i64, ptr %i.az, align 8, !noalias !12210, !noundef !24
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.az, align 8, !noalias !12210
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %.noexc41

bb.aj:                                            ; preds = %.body20
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h974726a9574f8280E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %.noexc41 unwind label %bb.ah, !inline_history !19

.noexc41:                                         ; preds = %bb.aj, %.body20
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E"(ptr noalias noundef align 8 dereferenceable(8) %i.g) #53
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %.noexc41
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %i.h) #53
          to label %.body unwind label %bb.ah

bb.al:                                            ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load i64, ptr %i.ao, align 8, !noalias !12211, !noundef !24
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  store i64 %i.ci, ptr %i.ao, align 8, !noalias !12211
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.am, label %.body

bb.am:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.j)
          to label %.body unwind label %bb.ah, !inline_history !18

bb.an:                                            ; preds = %.body
  br i1 %.sroa.06.0.a, label %bb.ao, label %.body28

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E"(ptr noalias noundef align 8 dereferenceable(8) %i.m) #53
          to label %.body28 unwind label %bb.ah

bb.ap:                                            ; preds = %.body28
  br i1 %.sroa.09.0, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val = load i64, ptr %i.ck, align 8, !alias.scope !72 ; 2 uses
  %i.cl = icmp eq i64 %.val, 0
  br i1 %i.cl, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val22 = load ptr, ptr %i.cm, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12212
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_web..rmap..ResourceMap$GT$17h6418147a322f8bc5E"(ptr noalias noundef align 8 dereferenceable(232) %1) #53
          to label %bb.aq unwind label %bb.ah

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43": ; preds = %bb.ar, %bb.aq
  %cond18 = icmp eq i8 %.sroa.07.0, 0
  br i1 %cond18, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %i.cn) #53
          to label %bb.au unwind label %bb.ah

bb.au:                                            ; preds = %bb.at
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef align 8 dereferenceable(32) %i.co) #53
          to label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit" unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4test12test_request11TestRequest14to_srv_request17h4f6fe9bc15cd53c7E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(784) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %.sroa.4 = alloca [24 x i8], align 8            ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_ZN9actix_web4test12test_request11TestRequest6finish17h0a296186cf333cadE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef align 8 dereferenceable(784) %1)
          to label %bb.c unwind label %bb.b

.body28:                                          ; preds = %bb.f, %bb.b, %bb.ao, %bb.an
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.ao ], [ %.pn.pn, %bb.an ], [ %i.o, %bb.b ], [ %i.x, %bb.f ] ; 2 uses
  %.sroa.09.0 = phi i1 [ %.sroa.09.1, %bb.ao ], [ %.sroa.09.1, %bb.an ], [ true, %bb.b ], [ true, %bb.f ]
  %.sroa.07.0 = phi i8 [ %.sroa.06.0, %bb.ao ], [ %.sroa.06.0, %bb.an ], [ 1, %bb.b ], [ 1, %bb.f ]
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_http..test..TestRequest$GT$17h70e3ed880e2a3189E"(ptr noalias noundef align 8 dereferenceable(184) %i.n) #53
          to label %bb.ap unwind label %bb.ah

bb.b:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12248)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12249)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12249, !nonnull !24, !noundef !24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, ptr noundef nonnull align 8 dereferenceable(24) %i.k, i64 24, i1 false), !alias.scope !12250
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12251)
  %i.s = load ptr, ptr %i.r, align 8, !alias.scope !12252, !noundef !24 ; 3 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = load i64, ptr %i.s, align 8, !noalias !12253, !noundef !24
  %i.v = add i64 %i.u, -1                         ; 2 uses
  store i64 %i.v, ptr %i.s, align 8, !noalias !12253
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.e, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.r)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i" unwind label %bb.f, !noalias !12248

bb.f:                                             ; preds = %bb.e
  %i.x = landingpad { ptr, i32 }
          cleanup
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.y)
          to label %.body28 unwind label %bb.g, !noalias !12248

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.z)
          to label %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit" unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12248
  unreachable

"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store ptr %i.q, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 624
  %i.ac = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.ad = load i64, ptr %i.ac, align 8, !noundef !24
  %i.ae = icmp eq i64 %i.ad, 1
  br i1 %i.ae, label %bb.h, label %bb.i, !prof !28

bb.h:                                             ; preds = %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  %i.af = load i64, ptr %i.q, align 8, !noundef !24
  %i.ag = icmp eq i64 %i.af, 1
  br i1 %i.ag, label %bb.k, label %bb.i, !prof !28

bb.i:                                             ; preds = %bb.h, %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @561, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #52
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.i
  unreachable

.body:                                            ; preds = %bb.aa, %bb.al, %bb.am, %bb.q, %bb.n, %bb.j, %bb.ak
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.ak ], [ %i.ah, %bb.j ], [ %i.aq, %bb.n ], [ %i.av, %bb.q ], [ %i.cg, %bb.al ], [ %i.cg, %bb.am ], [ %i.bn, %bb.aa ] ; 2 uses
  %.sroa.09.1 = phi i1 [ false, %bb.ak ], [ true, %bb.j ], [ false, %bb.n ], [ false, %bb.q ], [ false, %bb.al ], [ false, %bb.am ], [ false, %bb.aa ] ; 2 uses
  %.sroa.06.0.a = phi i1 [ false, %bb.ak ], [ true, %bb.j ], [ true, %bb.n ], [ true, %bb.q ], [ true, %bb.al ], [ true, %bb.am ], [ false, %bb.aa ]
  %.sroa.06.0 = phi i8 [ 0, %bb.ak ], [ 1, %bb.j ], [ 1, %bb.n ], [ 1, %bb.q ], [ 1, %bb.al ], [ 1, %bb.am ], [ 0, %bb.aa ] ; 2 uses
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2a24f08e635f7441E"(ptr noalias noundef align 8 dereferenceable(24) %i.l) #53
          to label %bb.an unwind label %bb.ah

bb.j:                                             ; preds = %bb.i, %bb.k
  %i.ah = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noundef nonnull align 8 dereferenceable(32) %i.ab, i64 32, i1 false)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 480
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 504
  %i.al = getelementptr inbounds nuw i8, ptr %i.q, i64 48
  invoke fastcc void @_ZN12actix_router3url3Url6update17h3158d8f3439ba75bE(ptr noalias noundef align 8 dereferenceable(112) %i.ak, ptr noundef nonnull align 8 %i.al)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.am, ptr noundef nonnull align 8 dereferenceable(232) %1, i64 232, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.an, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12254
  %i.ao = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12254 ; 6 uses
  %i.ap = icmp eq ptr %i.ao, null
  br i1 %i.ap, label %bb.m, label %bb.p, !prof !31

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #52
          to label %.noexc30 unwind label %bb.n

.noexc30:                                         ; preds = %bb.m
  unreachable

bb.n:                                             ; preds = %bb.m
  %i.aq = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_web..rmap..ResourceMap$GT$17h6418147a322f8bc5E"(ptr noalias noundef align 8 dereferenceable(232) %i.am)
          to label %.body unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ar = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.ao, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.ao, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 416 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 472
  %i.au = load i8, ptr %i.at, align 8, !range !30, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.as, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705)
          to label %bb.r unwind label %bb.al

bb.q:                                             ; preds = %bb.r
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.r:                                             ; preds = %bb.p
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 440
  %i.ax = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ax, ptr noundef nonnull align 8 dereferenceable(32) %i.aw, i64 32, i1 false)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 %i.au, ptr %i.ay, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.az = invoke noundef nonnull ptr @_ZN9actix_web11app_service19AppInitServiceState3new17h238f3b4bf80706d3E(ptr noundef nonnull %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i)
          to label %bb.s unwind label %bb.q       ; 4 uses

bb.s:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.aj, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.q, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.az, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 656
  %i.bb = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bb, ptr noundef nonnull align 8 dereferenceable(32) %i.ba, i64 32, i1 false)
  store i64 1, ptr %i.b, align 8
  %i.bc = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.bc, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12255
  %i.bd = call noundef align 8 dereferenceable_or_null(48) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 48, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12255 ; 6 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.t, label %bb.w, !prof !31

bb.t:                                             ; preds = %bb.s
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 48) #52
          to label %.noexc32 unwind label %bb.u

.noexc32:                                         ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.t
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef readonly align 8 dereferenceable(32) %i.bb)
          to label %.body20 unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.w:                                             ; preds = %bb.s
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.bd, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store ptr %i.bd, ptr %i.e, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46
  %i.bh = call noalias noundef align 8 dereferenceable_or_null(56) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 56, i64 noundef range(i64 1, -9223372036854775807) 8) #46 ; 6 uses
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %bb.x, label %bb.y, !prof !32

bb.x:                                             ; preds = %bb.w
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 56) #52
          to label %.noexc35 unwind label %.noexc39

.noexc35:                                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.w
  store i64 1, ptr %i.bh, align 8
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i64 1, ptr %.sroa.45.0..sroa_idx.i, align 8
  %.sroa.56.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i64 0, ptr %.sroa.56.0..sroa_idx.i, align 8
  %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bh, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.sroa.4.0..sroa.56.0..sroa_idx.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @78, i64 32, i1 false)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !12256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.bj, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.h, i64 144, i1 false)
  store i64 1, ptr %i.a, align 8, !noalias !12256
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.bk, align 8, !noalias !12256
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  store ptr %i.q, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !12256
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 168
  store ptr %i.bh, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !12256
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 176
  store ptr %i.az, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !12256
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 184
  store ptr %i.bd, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !12256
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 1, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx.sroa_idx.i, align 8, !noalias !12256
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store ptr null, ptr %.sroa.8.0..sroa_idx.i, align 8, !noalias !12256
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12257
  %i.bl = call noundef align 8 dereferenceable_or_null(232) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 232, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12257 ; 3 uses
  %i.bm = icmp eq ptr %i.bl, null
  br i1 %i.bm, label %bb.z, label %bb.ac, !prof !31

bb.z:                                             ; preds = %bb.y
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 232) #52
          to label %.noexc.i unwind label %bb.aa, !noalias !12256

.noexc.i:                                         ; preds = %bb.z
  unreachable

bb.aa:                                            ; preds = %bb.z
  %i.bn = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr57drop_in_place$LT$actix_web..request..HttpRequestInner$GT$17h45eec93f766ef7e4E"(ptr noalias noundef align 8 dereferenceable(216) %i.bj)
          to label %.body unwind label %bb.ab, !noalias !12256

bb.ab:                                            ; preds = %bb.aa
  %i.bo = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12256
  unreachable

bb.ac:                                            ; preds = %bb.y
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.bl, ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 232, i1 false), !noalias !12256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !12256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.bl, ptr %i.bp, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 232
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_http..test..TestRequest$GT$17h70e3ed880e2a3189E"(ptr noalias noundef align 8 dereferenceable(184) %i.bq)
          to label %bb.af unwind label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val25.a = load i64, ptr %i.as, align 8, !alias.scope !72 ; 2 uses
  %i.bs = icmp eq i64 %.val25.a, 0
  br i1 %i.bs, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val26 = load ptr, ptr %i.bt, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val26, i64 noundef %.val25.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12258
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit"

bb.af:                                            ; preds = %bb.ac
  %.val23.a = load i64, ptr %i.as, align 8, !alias.scope !72 ; 2 uses
  %i.bu = icmp eq i64 %.val23.a, 0
  br i1 %i.bu, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38", label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val24 = load ptr, ptr %i.bv, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val24, i64 noundef %.val23.a, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12259
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38"

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit38": ; preds = %bb.ag, %bb.af
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 688
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$cookie..jar..CookieJar$GT$17h210cf6a84bd2190dE"(ptr noalias noundef align 8 dereferenceable(96) %i.bw)
  ret void

bb.ah:                                            ; preds = %bb.am, %bb.aj, %bb.ai, %bb.au, %bb.at, %bb.as, %bb.ao, %bb.ak, %.noexc41, %.body, %.body28
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit": ; preds = %bb.ad, %bb.ae, %bb.au, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"
  %.pn14.pn = phi { ptr, i32 } [ %.pn.pn.pn, %bb.au ], [ %.pn.pn.pn, %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43" ], [ %i.br, %bb.ae ], [ %i.br, %bb.ad ]
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 688
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$cookie..jar..CookieJar$GT$17h210cf6a84bd2190dE"(ptr noalias noundef align 8 dereferenceable(96) %i.by) #53
  resume { ptr, i32 } %.pn14.pn

.noexc39:                                         ; preds = %bb.x
  %i.bz = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ca = load i64, ptr %i.bd, align 8, !noalias !12260, !noundef !24
  %i.cb = add i64 %i.ca, -1                       ; 2 uses
  store i64 %i.cb, ptr %i.bd, align 8, !noalias !12260
  %i.cc = icmp eq i64 %i.cb, 0
  br i1 %i.cc, label %bb.ai, label %.body20

bb.ai:                                            ; preds = %.noexc39
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e)
          to label %.body20 unwind label %bb.ah

.body20:                                          ; preds = %.noexc39, %bb.ai, %bb.u
  %.pn = phi { ptr, i32 } [ %i.bf, %bb.u ], [ %i.bz, %.noexc39 ], [ %i.bz, %bb.ai ]
  %i.cd = load i64, ptr %i.az, align 8, !noalias !12261, !noundef !24
  %i.ce = add i64 %i.cd, -1                       ; 2 uses
  store i64 %i.ce, ptr %i.az, align 8, !noalias !12261
  %i.cf = icmp eq i64 %i.ce, 0
  br i1 %i.cf, label %bb.aj, label %.noexc41

bb.aj:                                            ; preds = %.body20
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h974726a9574f8280E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.f)
          to label %.noexc41 unwind label %bb.ah, !inline_history !19

.noexc41:                                         ; preds = %bb.aj, %.body20
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E"(ptr noalias noundef align 8 dereferenceable(8) %i.g) #53
          to label %bb.ak unwind label %bb.ah

bb.ak:                                            ; preds = %.noexc41
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %i.h) #53
          to label %.body unwind label %bb.ah

bb.al:                                            ; preds = %bb.p
  %i.cg = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ch = load i64, ptr %i.ao, align 8, !noalias !12262, !noundef !24
  %i.ci = add i64 %i.ch, -1                       ; 2 uses
  store i64 %i.ci, ptr %i.ao, align 8, !noalias !12262
  %i.cj = icmp eq i64 %i.ci, 0
  br i1 %i.cj, label %bb.am, label %.body

bb.am:                                            ; preds = %bb.al
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.j)
          to label %.body unwind label %bb.ah, !inline_history !18

bb.an:                                            ; preds = %.body
  br i1 %.sroa.06.0.a, label %bb.ao, label %.body28

bb.ao:                                            ; preds = %bb.an
  invoke fastcc void @"_ZN4core3ptr96drop_in_place$LT$actix_http..message..Message$LT$actix_http..requests..head..RequestHead$GT$$GT$17h8eba602fdc113c94E"(ptr noalias noundef align 8 dereferenceable(8) %i.m) #53
          to label %.body28 unwind label %bb.ah

bb.ap:                                            ; preds = %.body28
  br i1 %.sroa.09.0, label %bb.as, label %bb.aq

bb.aq:                                            ; preds = %bb.as, %bb.ap
  %i.ck = getelementptr inbounds nuw i8, ptr %1, i64 416
  %.val = load i64, ptr %i.ck, align 8, !alias.scope !72 ; 2 uses
  %i.cl = icmp eq i64 %.val, 0
  br i1 %i.cl, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43", label %bb.ar

bb.ar:                                            ; preds = %bb.aq
  %i.cm = getelementptr inbounds nuw i8, ptr %1, i64 424
  %.val22 = load ptr, ptr %i.cm, align 8, !nonnull !24, !noundef !24
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val22, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12263
  br label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"

bb.as:                                            ; preds = %bb.ap
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_web..rmap..ResourceMap$GT$17h6418147a322f8bc5E"(ptr noalias noundef align 8 dereferenceable(232) %1) #53
          to label %bb.aq unwind label %bb.ah

"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43": ; preds = %bb.ar, %bb.aq
  %cond18 = icmp eq i8 %.sroa.07.0, 0
  br i1 %cond18, label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit", label %bb.at

bb.at:                                            ; preds = %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit43"
  %i.cn = getelementptr inbounds nuw i8, ptr %1, i64 480
  invoke fastcc void @"_ZN4core3ptr75drop_in_place$LT$actix_router..path..Path$LT$actix_router..url..Url$GT$$GT$17h962b4104b346aa41E"(ptr noalias noundef align 8 dereferenceable(144) %i.cn) #53
          to label %bb.au unwind label %bb.ah

bb.au:                                            ; preds = %bb.at
  %i.co = getelementptr inbounds nuw i8, ptr %1, i64 656
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef align 8 dereferenceable(32) %i.co) #53
          to label %"_ZN4core3ptr49drop_in_place$LT$actix_web..config..AppConfig$GT$17h47fc701721b820faE.exit" unwind label %bb.ah
}

; Function Attrs: nonlazybind uwtable
define noalias noundef nonnull ptr @_ZN9actix_web4test12test_request11TestRequest15to_http_request17hda386351165895efE(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(784) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 12 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [248 x i8], align 8               ; 6 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [144 x i8], align 8               ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 6 uses
  %i.j = alloca [8 x i8], align 8                 ; 4 uses
  %i.k = alloca [80 x i8], align 8                ; 8 uses
  %i.l = alloca [32 x i8], align 8                ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  invoke fastcc void @_ZN9actix_web4test12test_request11TestRequest6finish17h0a296186cf333cadE(ptr noalias noundef align 8 captures(address) dereferenceable(80) %i.k, ptr noalias noundef align 8 dereferenceable(784) %0)
          to label %bb.c unwind label %bb.b

.body28:                                          ; preds = %bb.ab, %bb.al, %bb.f, %bb.b, %.body
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %.body ], [ %i.y, %bb.f ], [ %i.o, %bb.b ], [ %.pn, %bb.al ], [ %i.bp, %bb.ab ] ; 2 uses
  %.sroa.09.0 = phi i1 [ %.sroa.09.1, %.body ], [ true, %bb.f ], [ true, %bb.b ], [ false, %bb.al ], [ false, %bb.ab ]
  %cond19 = phi i1 [ false, %.body ], [ false, %bb.f ], [ false, %bb.b ], [ true, %bb.al ], [ true, %bb.ab ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 232
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$actix_http..test..TestRequest$GT$17h70e3ed880e2a3189E"(ptr noalias noundef align 8 dereferenceable(184) %i.n) #53
          to label %bb.ao unwind label %bb.ai

bb.b:                                             ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", %bb.a
  %i.o = landingpad { ptr, i32 }
          cleanup
  br label %.body28

bb.c:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12299)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12300)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !12300, !nonnull !24, !noundef !24
  %i.r = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(80) %i.k, i64 24, i1 false), !alias.scope !12301
  store ptr %i.q, ptr %i.l, align 8, !alias.scope !12299
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 32 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12302)
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !12303, !noundef !24 ; 3 uses
  %i.u = icmp eq ptr %i.t, null
  br i1 %i.u, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.v = load i64, ptr %i.t, align 8, !noalias !12304, !noundef !24
  %i.w = add i64 %i.v, -1                         ; 2 uses
  store i64 %i.w, ptr %i.t, align 8, !noalias !12304
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.e, label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.s)
          to label %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i" unwind label %bb.f, !noalias !12299

bb.f:                                             ; preds = %bb.e
  %i.y = landingpad { ptr, i32 }
          cleanup
  %i.z = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.z)
          to label %.body28 unwind label %bb.g, !noalias !12299

"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i": ; preds = %bb.e, %bb.d, %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_http..extensions..Extensions$GT$17h203e7f71b26233cfE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.aa)
          to label %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit" unwind label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12299
  unreachable

"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit": ; preds = %"_ZN4core3ptr104drop_in_place$LT$core..option..Option$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$$GT$17h0e48c6dd9e6cc1e5E.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.ac = load ptr, ptr %i.l, align 8, !nonnull !24, !noundef !24 ; 7 uses
  store ptr %i.ac, ptr %i.m, align 8
  invoke fastcc void @"_ZN4core3ptr245drop_in_place$LT$actix_http..payload..Payload$LT$core..pin..Pin$LT$alloc..boxed..Box$LT$dyn$u20$futures_core..stream..Stream$u2b$Item$u20$$u3d$$u20$core..result..Result$LT$bytes..bytes..Bytes$C$actix_http..error..PayloadError$GT$$GT$$GT$$GT$$GT$17h2a24f08e635f7441E"(ptr noalias noundef align 8 dereferenceable(24) %i.r)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %bb.k, %bb.l, %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  %i.ad = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.i:                                             ; preds = %"_ZN10actix_http8requests7request16Request$LT$P$GT$10into_parts17h75a6c176ecada70bE.exit"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 624
  %i.af = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.ag = load i64, ptr %i.af, align 8, !noundef !24
  %i.ah = icmp eq i64 %i.ag, 1
  br i1 %i.ah, label %bb.j, label %bb.k, !prof !28

bb.j:                                             ; preds = %bb.i
  %i.ai = load i64, ptr %i.ac, align 8, !noundef !24
  %i.aj = icmp eq i64 %i.ai, 1
  br i1 %i.aj, label %bb.l, label %bb.k, !prof !28

bb.k:                                             ; preds = %bb.j, %bb.i
  invoke void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @561, i64 noundef 21, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @562) #52
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.k
  unreachable

bb.l:                                             ; preds = %bb.j
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ac, i64 16
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ak, ptr noundef nonnull align 8 dereferenceable(32) %i.ae, i64 32, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 504
  %i.an = getelementptr inbounds nuw i8, ptr %i.ac, i64 48
  invoke fastcc void @_ZN12actix_router3url3Url6update17h3158d8f3439ba75bE(ptr noalias noundef align 8 dereferenceable(112) %i.am, ptr noundef nonnull align 8 %i.an)
          to label %bb.m unwind label %bb.h

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.ao, ptr noundef nonnull align 8 dereferenceable(232) %0, i64 232, i1 false)
  store i64 1, ptr %i.d, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %i.ap, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12305
  %i.aq = call noundef align 8 dereferenceable_or_null(248) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 248, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !12305 ; 6 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.n, label %bb.q, !prof !31

bb.n:                                             ; preds = %bb.m
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 248) #52
          to label %.noexc30 unwind label %bb.o

.noexc30:                                         ; preds = %bb.n
  unreachable

bb.o:                                             ; preds = %bb.n
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr49drop_in_place$LT$actix_web..rmap..ResourceMap$GT$17h6418147a322f8bc5E"(ptr noalias noundef align 8 dereferenceable(232) %i.ao)
          to label %.body unwind label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

bb.q:                                             ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(248) %i.aq, ptr noundef nonnull align 8 dereferenceable(248) %i.d, i64 248, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.aq, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 472
  %i.aw = load i8, ptr %i.av, align 8, !range !30, !noundef !24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.au, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @705)
          to label %bb.s unwind label %bb.am

bb.r:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.s:                                             ; preds = %bb.q
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.az = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.az, ptr noundef nonnull align 8 dereferenceable(32) %i.ay, i64 32, i1 false)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  store i8 %i.aw, ptr %i.ba, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bb = invoke noundef nonnull ptr @_ZN9actix_web11app_service19AppInitServiceState3new17h238f3b4bf80706d3E(ptr noundef nonnull %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.i)
          to label %bb.t unwind label %bb.r       ; 4 uses

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.h, ptr noundef nonnull align 8 dereferenceable(144) %i.al, i64 144, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.ac, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.bb, ptr %i.f, align 8
end_hunk_0
