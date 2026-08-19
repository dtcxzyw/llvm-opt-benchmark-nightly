inline.NumInlined: 106527
inline.NumDeleted: 43100
loop-unroll.NumCompletelyUnrolled: 378
loop-unroll.NumRuntimeUnrolled: 1730
loop-unroll.NumUnrolled: 2138
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZN5milli6search6hybrid20ScoreWithRatioResult3new17hb5a577f475d3a217E:bb.a
bb.f:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %.val.i14.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.a, align 8, !alias.scope !237367, !noalias !237355, !nonnull !10, !noundef !10
  %i.aw = shl nuw i64 %.val1.i.i.i.i.i.i.i.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i14.i.i.i.i.i.i.i.i.i.i.i, i64 noundef %i.aw, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !237368
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h508d528d8da17501E.exit.i.i.i.i.i.i"

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ax = phi ptr [ %i.as, %bb.e ], [ %i.am, %bb.d ] ; 2 uses
  %i.ay = phi ptr [ %i.as, %bb.e ], [ %i.ap, %bb.d ]
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i32 [ %i.at, %bb.e ], [ undef, %bb.d ]
  call void @llvm.assume(i1 %i.ar)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617.i.i.i.i.i.i.i.i.i.i.i)
  %i.az = icmp eq ptr %i.ao, %.val17.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %i.az, label %bb.i, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i"

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.g
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ao, i64 24 ; 4 uses
  %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.ao, align 8, !noalias !237371 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !237377
  %i.bb = load float, ptr %.val.i15.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !237378, !noundef !10
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i", %bb.g
  %i.bc = phi ptr [ %i.ba, %bb.h ], [ %i.al, %bb.g ], [ %i.ba, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.bd = phi ptr [ %i.ba, %bb.h ], [ %i.ao, %bb.g ], [ %i.ba, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i = phi float [ %i.bb, %bb.h ], [ undef, %bb.g ], [ undef, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.016.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i.i.i.i.i.i.i.i.i.i, %bb.h ], [ -9223372036854775808, %bb.g ], [ -9223372036854775808, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf6d90174e9ae9601E.exit.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.be = icmp ne i64 %.sroa.016.0.i.i.i.i.i.i.i.i.i.i.i, -9223372036854775808
  call void @llvm.assume(i1 %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.624.i.i.i.i.i.i.i.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.624.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.617.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !237382
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617.i.i.i.i.i.i.i.i.i.i.i)
  %i.bf = getelementptr inbounds nuw [40 x i8], ptr %i.u, i64 %i.an ; 4 uses
  store i32 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i.i.i, ptr %i.bf, align 8, !noalias !237383
  %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  store i64 %.sroa.016.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.523.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !237383
  %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.624.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.624.i.i.i.i.i.i.i.i.i.i.i, i64 16, i1 false), !noalias !237383
  %.sroa.725.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bf, i64 32
  store float %.sroa.7.0.i.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.725.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !237383
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.624.i.i.i.i.i.i.i.i.i.i.i)
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.aq, %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.loopexit.i.i.i.i.i.i.i, label %bb.d

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h508d528d8da17501E.exit.i.i.i.i.i.i": ; preds = %bb.f, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i
  %i.bg = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$$GT$17hc849f7156c844e60E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.bg)
          to label %bb.m unwind label %.body.i.i.i.i.i, !noalias !237302

.body.i.i.i.i.i:                                  ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h508d528d8da17501E.exit.i.i.i.i.i.i"
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr129drop_in_place$LT$alloc..vec..Vec$LT$$LP$u32$C$$LP$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$C$f32$RP$$RP$$GT$$GT$17hfadf5f14dcfd2e96E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #107
          to label %.body unwind label %bb.j, !noalias !237302

bb.j:                                             ; preds = %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$17hfcff753233d57cc6E.exit.i.i.i.i.i", %.body.i.i.i.i.i
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #108, !noalias !237302
  unreachable

bb.k:                                             ; preds = %bb.c
  %i.bj = landingpad { ptr, i32 }
          cleanup
  %i.bk = icmp eq i64 %.sroa.016.0.copyload, 0
  br i1 %i.bk, label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$17hfcff753233d57cc6E.exit.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bl = shl nuw i64 %.sroa.016.0.copyload, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.4.0.copyload, i64 noundef %i.bl, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !237388
  br label %"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$17hfcff753233d57cc6E.exit.i.i.i.i.i"

"_ZN4core3ptr63drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$u32$GT$$GT$17hfcff753233d57cc6E.exit.i.i.i.i.i": ; preds = %bb.l, %bb.k
  invoke fastcc void @"_ZN4core3ptr117drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..vec..Vec$LT$milli..score_details..ScoreDetails$GT$$GT$$GT$17hc849f7156c844e60E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(40) %i.m)
          to label %.body unwind label %bb.j, !noalias !237393

bb.m:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17h508d528d8da17501E.exit.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !237329
  %i.bm = getelementptr inbounds nuw i8, ptr %0, i64 184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bm, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !237302
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bo, ptr noundef nonnull align 8 dereferenceable(24) %i.bn, i64 24, i1 false)
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.bq = load i8, ptr %i.bp, align 8, !range !405, !noundef !10
  %i.br = getelementptr inbounds nuw i8, ptr %1, i64 257
  %i.bs = load i8, ptr %i.br, align 1, !range !405, !noundef !10
  %i.bt = getelementptr inbounds nuw i8, ptr %1, i64 232
  %i.bu = getelementptr inbounds nuw i8, ptr %0, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bu, ptr noundef nonnull align 8 dereferenceable(24) %i.bt, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(160) %0, ptr noundef nonnull align 8 dereferenceable(160) %1, i64 160, i1 false)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 232
  store i8 %i.bq, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 233
  store i8 %i.bs, ptr %i.bw, align 1
  ret void

bb.n:                                             ; preds = %.body
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 240
  %.val6 = load ptr, ptr %i.bx, align 8, !nonnull !10, !noundef !10
  %i.by = shl nuw i64 %.val5, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val6, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !237394
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h5b1fdda61d8fdc1fE.exit"

"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h5b1fdda61d8fdc1fE.exit": ; preds = %.body, %bb.n
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5milli6search6hybrid22return_keyword_results17habaab94eab4c9d3cE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(272) %0, i64 noundef %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(264) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [256 x i8], align 8               ; 6 uses
  %i.e = alloca [256 x i8], align 8               ; 6 uses
  %.sroa.04.sroa.0 = alloca [184 x i8], align 8   ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 11 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 184
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 192
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 12 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 200
  %.sroa.10.0.copyload = load i64, ptr %.sroa.10.0..sroa_idx, align 8 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 208
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.l = load i8, ptr %i.k, align 8, !range !405, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 257
  %i.n = load i8, ptr %i.m, align 1, !range !405, !noundef !10 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %3, i64 232
  %.sroa.0117.0.copyload = load i64, ptr %i.o, align 8 ; 4 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 240
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8 ; 4 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 248
  %.sroa.8.0.copyload = load i64, ptr %.sroa.8.0..sroa_idx, align 8 ; 2 uses
  %i.p = icmp ult i64 %.sroa.10.0.copyload, 2305843009213693952
  tail call void @llvm.assume(i1 %i.p)
  %.not = icmp ult i64 %2, %.sroa.10.0.copyload
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 4 uses
  %i.r = load i64, ptr %i.q, align 8              ; 8 uses
  br i1 %.not, label %bb.b, label %._crit_edge

bb.b:                                             ; preds = %bb.a
  %i.s = icmp ult i64 %i.r, 384307168202282326
  tail call void @llvm.assume(i1 %i.s)
  %.not78 = icmp samesign ult i64 %2, %i.r
  br i1 %.not78, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.t = sub nuw nsw i64 %.sroa.10.0.copyload, %2 ; 6 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %2 ; 3 uses
  %i.v = icmp eq i64 %2, 0                        ; 2 uses
  br i1 %i.v, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  %..i.i = tail call i64 @llvm.umin.i64(i64 range(i64 -384307168202282324, 2305843009213693952) %i.t, i64 range(i64 0, 384307168202282325) %2)
  %i.w = icmp samesign ult i64 %..i.i, 65
  br i1 %i.w, label %bb.e, label %.preheader.i.i

bb.e:                                             ; preds = %bb.d
  %i.x = icmp samesign ult i64 %i.t, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.t ; 2 uses
  br i1 %i.x, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.z = shl nuw nsw i64 %2, 2                    ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.e, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.6.0.copyload, i64 %i.z, i1 false)
  %i.aa = shl nuw nsw i64 %i.t, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 4 %.sroa.6.0.copyload, ptr nonnull align 4 %i.u, i64 %i.aa, i1 false), !alias.scope !237397
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.y, ptr noundef nonnull align 8 dereferenceable(1) %i.e, i64 %i.z, i1 false)
  br label %_ZN4core5slice6rotate18ptr_rotate_memmove17h88c263b8adbf9a70E.exit.i.i

bb.g:                                             ; preds = %bb.e
  %i.ab = shl nuw nsw i64 %i.t, 2                 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %i.e, ptr nonnull align 4 %i.u, i64 %i.ab, i1 false)
  %i.ac = shl nuw nsw i64 %2, 2
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %i.y, ptr noundef nonnull align 4 dereferenceable(1) %.sroa.6.0.copyload, i64 %i.ac, i1 false), !alias.scope !237397
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %.sroa.6.0.copyload, ptr nonnull align 8 %i.e, i64 %i.ab, i1 false)
  br label %_ZN4core5slice6rotate18ptr_rotate_memmove17h88c263b8adbf9a70E.exit.i.i

_ZN4core5slice6rotate18ptr_rotate_memmove17h88c263b8adbf9a70E.exit.i.i: ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit"

.preheader.i.i:                                   ; preds = %bb.d, %.loopexit.i.i.i
  %.sroa.016.0.i.i.i = phi i64 [ %.sroa.016.2.i.i.i, %.loopexit.i.i.i ], [ %i.t, %bb.d ] ; 21 uses
  %.sroa.010.0.i.i.i = phi ptr [ %.sroa.010.2.i.i.i, %.loopexit.i.i.i ], [ %i.u, %bb.d ] ; 11 uses
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.1.i.i.i, %.loopexit.i.i.i ], [ %2, %bb.d ] ; 24 uses
  %.not.i2.i.i = icmp ult i64 %.sroa.0.0.i.i.i, %.sroa.016.0.i.i.i
  br i1 %.not.i2.i.i, label %.preheader.split.preheader.i.i.i, label %.preheader41.split.i.i.i

.preheader41.split.i.i.i:                         ; preds = %.preheader.i.i
  %i.ad = sub nsw i64 0, %.sroa.016.0.i.i.i       ; 3 uses
  %i.ae = shl nuw nsw i64 %.sroa.016.0.i.i.i, 2
  %i.af = lshr i64 %.sroa.016.0.i.i.i, 1          ; 6 uses
  %i.ag = and i64 %.sroa.016.0.i.i.i, 1
  %.not4.i.i37.i.i.i = icmp eq i64 %i.ag, 0       ; 2 uses
  %i.ah = and i64 %i.ae, 9223372036854775800      ; 5 uses
  %.not.i.i30.i.i.i = icmp eq i64 %i.af, 0
  br i1 %.not.i.i30.i.i.i, label %.preheader41.split.split.us.i.i.i, label %.preheader.i.i31.preheader.i.i.i.preheader

.preheader.i.i31.preheader.i.i.i.preheader:       ; preds = %.preheader41.split.i.i.i
  %i.ai = shl i64 %i.af, 3                        ; 2 uses
  %i.aj = shl i64 %.sroa.016.0.i.i.i, 2
  %i.ak = sub i64 %i.ai, %i.aj
  %4 = mul i64 %.sroa.016.0.i.i.i, -4
  %min.iters.check291 = icmp ult i64 %.sroa.016.0.i.i.i, 8
  %i.al = getelementptr i8, ptr %.sroa.010.0.i.i.i, i64 %i.ai
  %i.am = getelementptr i8, ptr %.sroa.010.0.i.i.i, i64 %i.ak
  %n.vec293 = and i64 %i.af, 9223372036854775804  ; 3 uses
  %cmp.n302 = icmp eq i64 %i.af, %n.vec293
  %i.an = and i64 %.sroa.016.0.i.i.i, 2
  %lcmp.mod.not = icmp eq i64 %i.an, 0
  br label %.preheader.i.i31.preheader.i.i.i

.preheader41.split.split.us.i.i.i:                ; preds = %.preheader41.split.i.i.i
  br i1 %.not4.i.i37.i.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.preheader.i.i.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.preheader.i.i.i: ; preds = %.preheader41.split.split.us.i.i.i
  %.phi.trans.insert.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.i.i.i, i64 %i.ah
  %.sroa.02.0.copyload.i.i6.i.i39.us.pre.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i, align 1, !alias.scope !237400, !noalias !237403
  br label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i: ; preds = %.preheader41.split.split.us.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i
  %.sroa.010.3.us47.us.i.i.i = phi ptr [ %i.ao, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i ], [ %.sroa.010.0.i.i.i, %.preheader41.split.split.us.i.i.i ]
  %.sroa.0.2.us48.us.i.i.i = phi i64 [ %i.ap, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i ], [ %.sroa.0.0.i.i.i, %.preheader41.split.split.us.i.i.i ]
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.3.us47.us.i.i.i, i64 %i.ad ; 2 uses
  %i.ap = sub nuw nsw i64 %.sroa.0.2.us48.us.i.i.i, %.sroa.016.0.i.i.i ; 3 uses
  %i.aq = icmp ult i64 %i.ap, %.sroa.016.0.i.i.i
  br i1 %i.aq, label %.loopexit.i.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i: ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.preheader.i.i.i
  %.sroa.010.3.us47.i.i.i = phi ptr [ %i.ar, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i ], [ %.sroa.010.0.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.preheader.i.i.i ] ; 2 uses
  %.sroa.0.2.us48.i.i.i = phi i64 [ %i.au, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.preheader.i.i.i ]
  %i.ar = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.us47.i.i.i, i64 %i.ad ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %i.ah ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.010.3.us47.i.i.i, i64 %i.ah
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237405)
  %.sroa.0.0.copyload.i.i5.i.i38.us.i.i.i = load i32, ptr %i.as, align 1, !alias.scope !237406, !noalias !237405
  store i32 %.sroa.02.0.copyload.i.i6.i.i39.us.pre.i.i.i, ptr %i.as, align 1, !alias.scope !237406, !noalias !237405
  store i32 %.sroa.0.0.copyload.i.i5.i.i38.us.i.i.i, ptr %i.at, align 1, !alias.scope !237400, !noalias !237403
  %i.au = sub i64 %.sroa.0.2.us48.i.i.i, %.sroa.016.0.i.i.i ; 3 uses
  %i.av = icmp ult i64 %i.au, %.sroa.016.0.i.i.i
  br i1 %i.av, label %.loopexit.i.i.i, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i

.preheader.split.preheader.i.i.i:                 ; preds = %.preheader.i.i
  %i.aw = sub nsw i64 0, %.sroa.0.0.i.i.i         ; 2 uses
  %i.ax = shl nuw nsw i64 %.sroa.0.0.i.i.i, 2
  %i.ay = lshr i64 %.sroa.0.0.i.i.i, 1            ; 6 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ay, 0
  %i.az = and i64 %.sroa.0.0.i.i.i, 1
  %.not4.i.i.i.i.i = icmp eq i64 %i.az, 0         ; 2 uses
  %i.ba = and i64 %i.ax, 9223372036854775800      ; 4 uses
  br i1 %.not.i.i.i.i.i, label %.preheader.split.preheader.i.split.us.i.i, label %.preheader.split.i.i.i.preheader

.preheader.split.i.i.i.preheader:                 ; preds = %.preheader.split.preheader.i.i.i
  %i.bb = shl i64 %i.ay, 3                        ; 2 uses
  %i.bc = shl i64 %.sroa.0.0.i.i.i, 2
  %i.bd = sub i64 %i.bb, %i.bc
  %5 = shl i64 %.sroa.0.0.i.i.i, 2
  %min.iters.check = icmp ult i64 %.sroa.0.0.i.i.i, 8
  %i.be = getelementptr i8, ptr %.sroa.010.0.i.i.i, i64 %i.bb
  %i.bf = getelementptr i8, ptr %.sroa.010.0.i.i.i, i64 %i.bd
  %n.vec = and i64 %i.ay, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.ay, %n.vec
  %i.bg = and i64 %.sroa.0.0.i.i.i, 2
  %lcmp.mod358.not = icmp eq i64 %i.bg, 0
  br label %.preheader.split.i.i.i

.preheader.split.preheader.i.split.us.i.i:        ; preds = %.preheader.split.preheader.i.i.i
  br i1 %.not4.i.i.i.i.i, label %.preheader.split.i.us.us.i.i, label %.preheader.split.i.us.i.i

.preheader.split.i.us.us.i.i:                     ; preds = %.preheader.split.preheader.i.split.us.i.i, %.preheader.split.i.us.us.i.i
  %.sroa.016.1.i.us.us.i.i = phi i64 [ %i.bi, %.preheader.split.i.us.us.i.i ], [ %.sroa.016.0.i.i.i, %.preheader.split.preheader.i.split.us.i.i ]
  %.sroa.010.1.i.us.us.i.i = phi ptr [ %i.bh, %.preheader.split.i.us.us.i.i ], [ %.sroa.010.0.i.i.i, %.preheader.split.preheader.i.split.us.i.i ]
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us.us.i.i, i64 %.sroa.0.0.i.i.i ; 2 uses
  %i.bi = sub nuw nsw i64 %.sroa.016.1.i.us.us.i.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.bj = icmp ult i64 %i.bi, %.sroa.0.0.i.i.i
  br i1 %i.bj, label %.loopexit.i.i.i, label %.preheader.split.i.us.us.i.i

.preheader.split.i.us.i.i:                        ; preds = %.preheader.split.preheader.i.split.us.i.i, %.preheader.split.i.us.i.i
  %.sroa.016.1.i.us.i.i = phi i64 [ %i.bo, %.preheader.split.i.us.i.i ], [ %.sroa.016.0.i.i.i, %.preheader.split.preheader.i.split.us.i.i ]
  %.sroa.010.1.i.us.i.i = phi ptr [ %i.bn, %.preheader.split.i.us.i.i ], [ %.sroa.010.0.i.i.i, %.preheader.split.preheader.i.split.us.i.i ] ; 3 uses
  %i.bk = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i.us.i.i, i64 %i.aw
  %i.bl = getelementptr inbounds nuw i8, ptr %i.bk, i64 %i.ba ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.us.i.i, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237410)
  %.sroa.0.0.copyload.i.i5.i.i.i.us.i.i = load i32, ptr %i.bl, align 1, !alias.scope !237412, !noalias !237410
  %.sroa.02.0.copyload.i.i6.i.i.i.us.i.i = load i32, ptr %i.bm, align 1, !alias.scope !237413, !noalias !237407
  store i32 %.sroa.02.0.copyload.i.i6.i.i.i.us.i.i, ptr %i.bl, align 1, !alias.scope !237412, !noalias !237410
  store i32 %.sroa.0.0.copyload.i.i5.i.i.i.us.i.i, ptr %i.bm, align 1, !alias.scope !237413, !noalias !237407
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.us.i.i, i64 %.sroa.0.0.i.i.i ; 2 uses
  %i.bo = sub i64 %.sroa.016.1.i.us.i.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.bp = icmp ult i64 %i.bo, %.sroa.0.0.i.i.i
  br i1 %i.bp, label %.loopexit.i.i.i, label %.preheader.split.i.us.i.i

.preheader.split.i.i.i:                           ; preds = %.preheader.split.i.i.i.preheader, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i
  %indvar = phi i64 [ 0, %.preheader.split.i.i.i.preheader ], [ %indvar.next, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ] ; 2 uses
  %.sroa.016.1.i.i.i = phi i64 [ %.sroa.016.0.i.i.i, %.preheader.split.i.i.i.preheader ], [ %i.ck, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ]
  %.sroa.010.1.i.i.i = phi ptr [ %.sroa.010.0.i.i.i, %.preheader.split.i.i.i.preheader ], [ %i.cj, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ] ; 8 uses
  %i.bq = getelementptr inbounds [4 x i8], ptr %.sroa.010.1.i.i.i, i64 %i.aw ; 6 uses
  br i1 %min.iters.check, label %.preheader.i.i.i.i.i.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.preheader.split.i.i.i
  %i.br = mul i64 %5, %indvar                     ; 2 uses
  %scevgep276 = getelementptr i8, ptr %i.be, i64 %i.br
  %scevgep = getelementptr i8, ptr %i.bf, i64 %i.br
  %bound0 = icmp ult ptr %i.bq, %scevgep276
  %bound1 = icmp ult ptr %.sroa.010.1.i.i.i, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.preheader.i.i.i.i.i.preheader, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %index ; 3 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i.i, i64 %index ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237417)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bs, i64 16 ; 2 uses
  %wide.load = load <2 x i64>, ptr %i.bs, align 1, !alias.scope !237419, !noalias !237422
  %wide.load278.a = load <2 x i64>, ptr %i.bu, align 1, !alias.scope !237419, !noalias !237422
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bt, i64 16 ; 2 uses
  %wide.load279.a = load <2 x i64>, ptr %i.bt, align 1, !alias.scope !237424, !noalias !237414
  %wide.load280 = load <2 x i64>, ptr %i.bv, align 1, !alias.scope !237424, !noalias !237414
  store <2 x i64> %wide.load279.a, ptr %i.bs, align 1, !alias.scope !237419, !noalias !237422
  store <2 x i64> %wide.load280, ptr %i.bu, align 1, !alias.scope !237419, !noalias !237422
  store <2 x i64> %wide.load, ptr %i.bt, align 1, !alias.scope !237424, !noalias !237414
  store <2 x i64> %wide.load278.a, ptr %i.bv, align 1, !alias.scope !237424, !noalias !237414
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !237425

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i, label %.preheader.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.preheader:                   ; preds = %vector.memcheck, %.preheader.split.i.i.i, %middle.block
  %.sroa.0.03.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.preheader.split.i.i.i ], [ %n.vec, %middle.block ] ; 5 uses
  %.neg359 = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod358.not, label %.preheader.i.i.i.i.i.prol.loopexit, label %.preheader.i.i.i.i.i.prol

.preheader.i.i.i.i.i.prol:                        ; preds = %.preheader.i.i.i.i.i.preheader
  %i.bx = or disjoint i64 %.sroa.0.03.i.i.i.i.i.i.ph, 1
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.0.03.i.i.i.i.i.i.ph ; 2 uses
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237417)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.prol = load i64, ptr %i.by, align 1, !alias.scope !237426, !noalias !237417
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.prol = load i64, ptr %i.bz, align 1, !alias.scope !237427, !noalias !237414
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.prol, ptr %i.by, align 1, !alias.scope !237426, !noalias !237417
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.prol, ptr %i.bz, align 1, !alias.scope !237427, !noalias !237414
  br label %.preheader.i.i.i.i.i.prol.loopexit

.preheader.i.i.i.i.i.prol.loopexit:               ; preds = %.preheader.i.i.i.i.i.prol, %.preheader.i.i.i.i.i.preheader
  %.sroa.0.03.i.i.i.i.i.i.unr = phi i64 [ %.sroa.0.03.i.i.i.i.i.i.ph, %.preheader.i.i.i.i.i.preheader ], [ %i.bx, %.preheader.i.i.i.i.i.prol ]
  %i.ca = icmp eq i64 %i.ay, %.neg359
  br i1 %i.ca, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i, label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i
  %.sroa.0.03.i.i.i.i.i.i = phi i64 [ %i.ce, %.preheader.i.i.i.i.i ], [ %.sroa.0.03.i.i.i.i.i.i.unr, %.preheader.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.cb = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 1 ; 2 uses
  %i.cc = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i.i, i64 %.sroa.0.03.i.i.i.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237414)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237417)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cc, align 1, !alias.scope !237426, !noalias !237417
  %.sroa.02.0.copyload.i.i.i.i.i.i.i = load i64, ptr %i.cd, align 1, !alias.scope !237427, !noalias !237414
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i, ptr %i.cc, align 1, !alias.scope !237426, !noalias !237417
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i, ptr %i.cd, align 1, !alias.scope !237427, !noalias !237414
  %i.ce = add nuw nsw i64 %.sroa.0.03.i.i.i.i.i.i, 2 ; 2 uses
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bq, i64 %i.cb ; 2 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.1.i.i.i, i64 %i.cb ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237428)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237430)
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.cf, align 1, !alias.scope !237432, !noalias !237430
  %.sroa.02.0.copyload.i.i.i.i.i.i.i.1 = load i64, ptr %i.cg, align 1, !alias.scope !237433, !noalias !237428
  store i64 %.sroa.02.0.copyload.i.i.i.i.i.i.i.1, ptr %i.cf, align 1, !alias.scope !237432, !noalias !237430
  store i64 %.sroa.0.0.copyload.i.i.i.i.i.i.i.1, ptr %i.cg, align 1, !alias.scope !237433, !noalias !237428
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ce, %i.ay
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i, label %.preheader.i.i.i.i.i, !llvm.loop !237434

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i: ; preds = %.preheader.i.i.i.i.i.prol.loopexit, %.preheader.i.i.i.i.i, %middle.block
  br i1 %.not4.i.i.i.i.i, label %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i, label %bb.h

bb.h:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i
  %i.ch = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.ba ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.010.1.i.i.i, i64 %i.ba ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237407)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237410)
  %.sroa.0.0.copyload.i.i5.i.i.i.i.i = load i32, ptr %i.ch, align 1, !alias.scope !237412, !noalias !237410
  %.sroa.02.0.copyload.i.i6.i.i.i.i.i = load i32, ptr %i.ci, align 1, !alias.scope !237413, !noalias !237407
  store i32 %.sroa.02.0.copyload.i.i6.i.i.i.i.i, ptr %i.ch, align 1, !alias.scope !237412, !noalias !237410
  store i32 %.sroa.0.0.copyload.i.i5.i.i.i.i.i, ptr %i.ci, align 1, !alias.scope !237413, !noalias !237407
  br label %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i

_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i: ; preds = %bb.h, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i.i.loopexit.i.i
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %.sroa.010.1.i.i.i, i64 %.sroa.0.0.i.i.i ; 2 uses
  %i.ck = sub i64 %.sroa.016.1.i.i.i, %.sroa.0.0.i.i.i ; 3 uses
  %i.cl = icmp ult i64 %i.ck, %.sroa.0.0.i.i.i
  %indvar.next = add i64 %indvar, 1
  br i1 %i.cl, label %.loopexit.i.i.i, label %.preheader.split.i.i.i

.loopexit.i.i.i:                                  ; preds = %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i, %.preheader.split.i.us.i.i, %.preheader.split.i.us.us.i.i
  %.sroa.016.2.i.i.i = phi i64 [ %.sroa.016.0.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i ], [ %i.ck, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ], [ %.sroa.016.0.i.i.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i ], [ %i.bo, %.preheader.split.i.us.i.i ], [ %i.bi, %.preheader.split.i.us.us.i.i ], [ %.sroa.016.0.i.i.i, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ] ; 2 uses
  %.sroa.010.2.i.i.i = phi ptr [ %i.ao, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i ], [ %i.cj, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ], [ %i.ar, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i ], [ %i.bn, %.preheader.split.i.us.i.i ], [ %i.bh, %.preheader.split.i.us.us.i.i ], [ %i.co, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ]
  %.sroa.0.1.i.i.i = phi i64 [ %i.ap, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.us.i.i.i ], [ %.sroa.0.0.i.i.i, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit.i.i.i ], [ %i.au, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.us.i.i.i ], [ %.sroa.0.0.i.i.i, %.preheader.split.i.us.i.i ], [ %.sroa.0.0.i.i.i, %.preheader.split.i.us.us.i.i ], [ %i.dh, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ] ; 2 uses
  %i.cm = icmp eq i64 %.sroa.016.2.i.i.i, 0
  %i.cn = icmp eq i64 %.sroa.0.1.i.i.i, 0
  %or.cond.i.i.i = or i1 %i.cm, %i.cn
  br i1 %or.cond.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit.loopexit", label %.preheader.i.i

.preheader.i.i31.preheader.i.i.i:                 ; preds = %.preheader.i.i31.preheader.i.i.i.preheader, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i
  %indvar282 = phi i64 [ 0, %.preheader.i.i31.preheader.i.i.i.preheader ], [ %indvar.next283, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ] ; 2 uses
  %.sroa.010.3.i.i.i = phi ptr [ %.sroa.010.0.i.i.i, %.preheader.i.i31.preheader.i.i.i.preheader ], [ %i.co, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ] ; 7 uses
  %.sroa.0.2.i.i.i = phi i64 [ %.sroa.0.0.i.i.i, %.preheader.i.i31.preheader.i.i.i.preheader ], [ %i.dh, %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i ]
  %i.co = getelementptr inbounds [4 x i8], ptr %.sroa.010.3.i.i.i, i64 %i.ad ; 8 uses
  br i1 %min.iters.check291, label %.preheader.i.i31.i.i.i.preheader, label %vector.memcheck281

vector.memcheck281:                               ; preds = %.preheader.i.i31.preheader.i.i.i
  %i.cp = mul i64 %4, %indvar282                  ; 2 uses
  %scevgep285 = getelementptr i8, ptr %i.al, i64 %i.cp
  %scevgep284 = getelementptr i8, ptr %i.am, i64 %i.cp
  %bound0287 = icmp ult ptr %i.co, %scevgep285
  %bound1288 = icmp ult ptr %.sroa.010.3.i.i.i, %scevgep284
  %found.conflict289 = and i1 %bound0287, %bound1288
  br i1 %found.conflict289, label %.preheader.i.i31.i.i.i.preheader, label %vector.body294

vector.body294:                                   ; preds = %vector.memcheck281, %vector.body294
  %index295 = phi i64 [ %index.next300, %vector.body294 ], [ 0, %vector.memcheck281 ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %index295 ; 3 uses
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i.i, i64 %index295 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237438)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.cq, i64 16 ; 2 uses
  %wide.load296.a = load <2 x i64>, ptr %i.cq, align 1, !alias.scope !237440, !noalias !237443
  %wide.load297.a = load <2 x i64>, ptr %i.cs, align 1, !alias.scope !237440, !noalias !237443
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cr, i64 16 ; 2 uses
  %wide.load298 = load <2 x i64>, ptr %i.cr, align 1, !alias.scope !237445, !noalias !237435
  %wide.load299 = load <2 x i64>, ptr %i.ct, align 1, !alias.scope !237445, !noalias !237435
  store <2 x i64> %wide.load298, ptr %i.cq, align 1, !alias.scope !237440, !noalias !237443
  store <2 x i64> %wide.load299, ptr %i.cs, align 1, !alias.scope !237440, !noalias !237443
  store <2 x i64> %wide.load296.a, ptr %i.cr, align 1, !alias.scope !237445, !noalias !237435
  store <2 x i64> %wide.load297.a, ptr %i.ct, align 1, !alias.scope !237445, !noalias !237435
  %index.next300 = add nuw i64 %index295, 4       ; 2 uses
  %i.cu = icmp eq i64 %index.next300, %n.vec293
  br i1 %i.cu, label %middle.block301, label %vector.body294, !llvm.loop !237446

middle.block301:                                  ; preds = %vector.body294
  br i1 %cmp.n302, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i, label %.preheader.i.i31.i.i.i.preheader

.preheader.i.i31.i.i.i.preheader:                 ; preds = %vector.memcheck281, %.preheader.i.i31.preheader.i.i.i, %middle.block301
  %.sroa.0.03.i.i.i32.i.i.i.ph = phi i64 [ 0, %vector.memcheck281 ], [ 0, %.preheader.i.i31.preheader.i.i.i ], [ %n.vec293, %middle.block301 ] ; 5 uses
  %.neg = or disjoint i64 %.sroa.0.03.i.i.i32.i.i.i.ph, 1
  br i1 %lcmp.mod.not, label %.preheader.i.i31.i.i.i.prol.loopexit, label %.preheader.i.i31.i.i.i.prol

.preheader.i.i31.i.i.i.prol:                      ; preds = %.preheader.i.i31.i.i.i.preheader
  %i.cv = or disjoint i64 %.sroa.0.03.i.i.i32.i.i.i.ph, 1
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.0.03.i.i.i32.i.i.i.ph ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i.i, i64 %.sroa.0.03.i.i.i32.i.i.i.ph ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237438)
  %.sroa.0.0.copyload.i.i.i.i33.i.i.i.prol = load i64, ptr %i.cw, align 1, !alias.scope !237447, !noalias !237438
  %.sroa.02.0.copyload.i.i.i.i34.i.i.i.prol = load i64, ptr %i.cx, align 1, !alias.scope !237448, !noalias !237435
  store i64 %.sroa.02.0.copyload.i.i.i.i34.i.i.i.prol, ptr %i.cw, align 1, !alias.scope !237447, !noalias !237438
  store i64 %.sroa.0.0.copyload.i.i.i.i33.i.i.i.prol, ptr %i.cx, align 1, !alias.scope !237448, !noalias !237435
  br label %.preheader.i.i31.i.i.i.prol.loopexit

.preheader.i.i31.i.i.i.prol.loopexit:             ; preds = %.preheader.i.i31.i.i.i.prol, %.preheader.i.i31.i.i.i.preheader
  %.sroa.0.03.i.i.i32.i.i.i.unr = phi i64 [ %.sroa.0.03.i.i.i32.i.i.i.ph, %.preheader.i.i31.i.i.i.preheader ], [ %i.cv, %.preheader.i.i31.i.i.i.prol ]
  %i.cy = icmp eq i64 %i.af, %.neg
  br i1 %i.cy, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i, label %.preheader.i.i31.i.i.i

.preheader.i.i31.i.i.i:                           ; preds = %.preheader.i.i31.i.i.i.prol.loopexit, %.preheader.i.i31.i.i.i
  %.sroa.0.03.i.i.i32.i.i.i = phi i64 [ %i.dc, %.preheader.i.i31.i.i.i ], [ %.sroa.0.03.i.i.i32.i.i.i.unr, %.preheader.i.i31.i.i.i.prol.loopexit ] ; 4 uses
  %i.cz = add nuw nsw i64 %.sroa.0.03.i.i.i32.i.i.i, 1 ; 2 uses
  %i.da = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %.sroa.0.03.i.i.i32.i.i.i ; 2 uses
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i.i, i64 %.sroa.0.03.i.i.i32.i.i.i ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237438)
  %.sroa.0.0.copyload.i.i.i.i33.i.i.i = load i64, ptr %i.da, align 1, !alias.scope !237447, !noalias !237438
  %.sroa.02.0.copyload.i.i.i.i34.i.i.i = load i64, ptr %i.db, align 1, !alias.scope !237448, !noalias !237435
  store i64 %.sroa.02.0.copyload.i.i.i.i34.i.i.i, ptr %i.da, align 1, !alias.scope !237447, !noalias !237438
  store i64 %.sroa.0.0.copyload.i.i.i.i33.i.i.i, ptr %i.db, align 1, !alias.scope !237448, !noalias !237435
  %i.dc = add nuw nsw i64 %.sroa.0.03.i.i.i32.i.i.i, 2 ; 2 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.co, i64 %i.cz ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %.sroa.010.3.i.i.i, i64 %i.cz ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237449)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237451)
  %.sroa.0.0.copyload.i.i.i.i33.i.i.i.1 = load i64, ptr %i.dd, align 1, !alias.scope !237453, !noalias !237451
  %.sroa.02.0.copyload.i.i.i.i34.i.i.i.1 = load i64, ptr %i.de, align 1, !alias.scope !237454, !noalias !237449
  store i64 %.sroa.02.0.copyload.i.i.i.i34.i.i.i.1, ptr %i.dd, align 1, !alias.scope !237453, !noalias !237451
  store i64 %.sroa.0.0.copyload.i.i.i.i33.i.i.i.1, ptr %i.de, align 1, !alias.scope !237454, !noalias !237449
  %exitcond.not.i.i.i35.i.i.i.1 = icmp eq i64 %i.dc, %i.af
  br i1 %exitcond.not.i.i.i35.i.i.i.1, label %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i, label %.preheader.i.i31.i.i.i, !llvm.loop !237455

_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i: ; preds = %.preheader.i.i31.i.i.i.prol.loopexit, %.preheader.i.i31.i.i.i, %middle.block301
  br i1 %.not4.i.i37.i.i.i, label %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i, label %bb.i

bb.i:                                             ; preds = %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i
  %i.df = getelementptr inbounds nuw i8, ptr %i.co, i64 %i.ah ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.010.3.i.i.i, i64 %i.ah ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237403)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237405)
  %.sroa.0.0.copyload.i.i5.i.i38.i.i.i = load i32, ptr %i.df, align 1, !alias.scope !237406, !noalias !237405
  %.sroa.02.0.copyload.i.i6.i.i39.i.i.i = load i32, ptr %i.dg, align 1, !alias.scope !237400, !noalias !237403
  store i32 %.sroa.02.0.copyload.i.i6.i.i39.i.i.i, ptr %i.df, align 1, !alias.scope !237406, !noalias !237405
  store i32 %.sroa.0.0.copyload.i.i5.i.i38.i.i.i, ptr %i.dg, align 1, !alias.scope !237400, !noalias !237403
  br label %_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i

_ZN4core3ptr19swap_nonoverlapping17hf44f21b189018eeeE.exit40.i.i.i: ; preds = %bb.i, %_ZN4core3ptr25swap_nonoverlapping_bytes26swap_nonoverlapping_chunks17h7c7e4ceb136157f8E.exit.i.i36.loopexit.i.i.i
  %i.dh = sub i64 %.sroa.0.2.i.i.i, %.sroa.016.0.i.i.i ; 3 uses
  %i.di = icmp ult i64 %i.dh, %.sroa.016.0.i.i.i
  %indvar.next283 = add i64 %indvar282, 1
  br i1 %i.di, label %.loopexit.i.i.i, label %.preheader.i.i31.preheader.i.i.i

bb.j:                                             ; preds = %bb.l
  %i.dj = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.ag, %bb.ah, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.dj, %bb.j ], [ %i.fy, %bb.ah ], [ %i.fy, %bb.ag ]
  switch i64 %.sroa.0117.0.copyload, label %bb.k [
    i64 -9223372036854775808, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h5b1fdda61d8fdc1fE.exit"
    i64 0, label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h5b1fdda61d8fdc1fE.exit"
  ]

bb.k:                                             ; preds = %.body
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %i.dk = shl nuw i64 %.sroa.0117.0.copyload, 2
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.dk, i64 noundef range(i64 1, -9223372036854775807) 4) #101, !noalias !237456
  br label %"_ZN4core3ptr75drop_in_place$LT$core..option..Option$LT$alloc..vec..Vec$LT$f32$GT$$GT$$GT$17h5b1fdda61d8fdc1fE.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit.loopexit": ; preds = %.loopexit.i.i.i
  %.pre = load i64, ptr %i.q, align 8
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit.loopexit", %_ZN4core5slice6rotate18ptr_rotate_memmove17h88c263b8adbf9a70E.exit.i.i, %bb.c
  %i.dl = phi i64 [ %.pre, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit.loopexit" ], [ %i.r, %_ZN4core5slice6rotate18ptr_rotate_memmove17h88c263b8adbf9a70E.exit.i.i ], [ %i.r, %bb.c ] ; 6 uses
  %spec.select = tail call i64 @llvm.umin.i64(i64 %1, i64 %.sroa.10.0.copyload)
  %i.dm = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.dn = load ptr, ptr %i.dm, align 8, !nonnull !10, !noundef !10 ; 14 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !237459)
  %.not.i83 = icmp ugt i64 %2, %i.dl
  br i1 %.not.i83, label %bb.l, label %bb.m, !prof !59

bb.l:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit"
  invoke void @_ZN4core9panicking5panic17ha264d2bb233f2b69E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @44, i64 noundef 35, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2040) #106
          to label %.noexc105 unwind label %bb.j

.noexc105:                                        ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17hd00322fa8685b749E.exit"
  %i.do = sub nuw i64 %i.dl, %2                   ; 12 uses
  %i.dp = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %2 ; 3 uses
  %i.dq = icmp eq i64 %i.do, 0
  %or.cond.i.i84 = or i1 %i.v, %i.dq
  br i1 %or.cond.i.i84, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17h1b0d14865715681dE.exit", label %bb.n

bb.n:                                             ; preds = %bb.m
  %..i.i85 = tail call i64 @llvm.umin.i64(i64 %i.do, i64 range(i64 0, 384307168202282325) %2)
  %i.dr = icmp samesign ult i64 %..i.i85, 11
  br i1 %i.dr, label %bb.p, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.ds = icmp ult i64 %i.dl, 24
  br i1 %i.ds, label %bb.u, label %.preheader.i.i86

bb.p:                                             ; preds = %bb.n
  %i.dt = icmp ult i64 %i.do, %2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.du = getelementptr inbounds nuw [24 x i8], ptr %i.dn, i64 %i.do ; 2 uses
  br i1 %i.dt, label %bb.r, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.dv = mul nuw nsw i64 %2, 24                  ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.dv, i1 false)
  %i.dw = mul i64 %i.do, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.dn, ptr nonnull align 8 %i.dp, i64 %i.dw, i1 false), !alias.scope !237459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.dv, i1 false)
  br label %_ZN4core5slice6rotate18ptr_rotate_memmove17h2f15e07a61047162E.exit.i.i

bb.r:                                             ; preds = %bb.p
  %i.dx = mul nuw nsw i64 %i.do, 24               ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.d, ptr noundef nonnull align 8 dereferenceable(1) %i.dp, i64 %i.dx, i1 false)
  %i.dy = mul nuw nsw i64 %2, 24
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.du, ptr noundef nonnull align 8 dereferenceable(1) %i.dn, i64 %i.dy, i1 false), !alias.scope !237459
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %i.dn, ptr noundef nonnull align 8 dereferenceable(1) %i.d, i64 %i.dx, i1 false)
  br label %_ZN4core5slice6rotate18ptr_rotate_memmove17h2f15e07a61047162E.exit.i.i

_ZN4core5slice6rotate18ptr_rotate_memmove17h2f15e07a61047162E.exit.i.i: ; preds = %bb.r, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11rotate_left17h1b0d14865715681dE.exit"

.preheader.i.i86:                                 ; preds = %bb.o, %.loopexit.i.i.i93
  %.sroa.016.0.i.i.i87 = phi i64 [ %.sroa.016.2.i.i.i94, %.loopexit.i.i.i93 ], [ %i.do, %bb.o ] ; 8 uses
  %.sroa.010.0.i.i.i88 = phi ptr [ %.sroa.010.2.i.i.i95, %.loopexit.i.i.i93 ], [ %i.dp, %bb.o ] ; 2 uses
  %.sroa.0.0.i.i.i89 = phi i64 [ %.sroa.0.1.i.i.i96, %.loopexit.i.i.i93 ], [ %2, %bb.o ] ; 9 uses
  %.not.i2.i.i90 = icmp ult i64 %.sroa.0.0.i.i.i89, %.sroa.016.0.i.i.i87
  br i1 %.not.i2.i.i90, label %.preheader.i.i.i, label %.preheader35.i.i.i

.preheader35.i.i.i:                               ; preds = %.preheader.i.i86
  %i.dz = sub nsw i64 0, %.sroa.016.0.i.i.i87
  %i.ea = mul nuw nsw i64 %.sroa.016.0.i.i.i87, 3 ; 3 uses
  %min.iters.check319 = icmp ult i64 %.sroa.016.0.i.i.i87, 2
  %n.vec321 = and i64 %i.ea, 9223372036854775804  ; 3 uses
  %cmp.n330 = icmp eq i64 %i.ea, %n.vec321
  br label %bb.t

.preheader.i.i.i:                                 ; preds = %.preheader.i.i86
  %i.eb = sub nsw i64 0, %.sroa.0.0.i.i.i89
  %i.ec = mul nuw nsw i64 %.sroa.0.0.i.i.i89, 3   ; 3 uses
  %min.iters.check305 = icmp ult i64 %.sroa.0.0.i.i.i89, 2
  %n.vec307 = and i64 %i.ec, 9223372036854775804  ; 3 uses
  %cmp.n316 = icmp eq i64 %i.ec, %n.vec307
  br label %bb.s

bb.s:                                             ; preds = %_ZN4core3ptr19swap_nonoverlapping17hcb123e8f1f2b1acaE.exit.i.i.i, %.preheader.i.i.i
  %.sroa.016.1.i.i.i98 = phi i64 [ %i.en, %_ZN4core3ptr19swap_nonoverlapping17hcb123e8f1f2b1acaE.exit.i.i.i ], [ %.sroa.016.0.i.i.i87, %.preheader.i.i.i ]
  %.sroa.010.1.i.i.i99 = phi ptr [ %i.em, %_ZN4core3ptr19swap_nonoverlapping17hcb123e8f1f2b1acaE.exit.i.i.i ], [ %.sroa.010.0.i.i.i88, %.preheader.i.i.i ] ; 4 uses
  %i.ed = getelementptr inbounds [24 x i8], ptr %.sroa.010.1.i.i.i99, i64 %i.eb ; 2 uses
  br i1 %min.iters.check305, label %.preheader.i.i.i.i.i100.preheader, label %vector.body308

end_hunk_0
