Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4rhai8packages11array_basic15array_functions8split_at17h83f3bd42c5026cc6E:bb.a
  store i64 0, ptr %i.x, align 8, !alias.scope !45038, !noalias !45039
  store ptr %i.u, ptr %i.a, align 8, !alias.scope !45038, !noalias !45039
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.v, ptr %i.y, align 8, !alias.scope !45038, !noalias !45039
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.z, align 8, !alias.scope !45038, !noalias !45039
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hfdfd415d03bb5600E"(ptr noalias noundef align 8 dereferenceable(24) %i.b, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.m unwind label %bb.k

bb.m:                                             ; preds = %bb.l
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions8truncate17he291e8d2c64ba720E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 8 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = icmp slt i64 %1, 1
  br i1 %i.e, label %bb.c, label %bb.g

"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i2", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i", %bb.h, %bb.g, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !55, !noundef !55 ; 2 uses
  store i64 0, ptr %i.a, align 8
  br label %bb.d

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i": ; preds = %bb.d
  %i.h = icmp eq i64 %i.j, %i.b
  br i1 %i.h, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i"
  %.sroa.0.0.i24 = phi i64 [ 0, %bb.c ], [ %i.j, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i" ] ; 2 uses
  %i.i = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.0.i24
  %i.j = add nuw nsw i64 %.sroa.0.0.i24, 1        ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.i)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i" unwind label %bb.e, !inline_history !2

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i": ; preds = %.lr.ph26
  %i.k = add nuw nsw i64 %.sroa.0.1.i25, 1        ; 2 uses
  %i.l = icmp eq i64 %i.k, %i.b
  br i1 %i.l, label %common.resume, label %.lr.ph26

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.n = icmp eq i64 %i.j, %i.b
  br i1 %i.n, label %common.resume, label %.lr.ph26

.lr.ph26:                                         ; preds = %bb.e, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i"
  %.sroa.0.1.i25 = phi i64 [ %i.k, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i" ], [ %i.j, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.0.1.i25
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.o)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i" unwind label %bb.f, !inline_history !2

common.resume:                                    ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i", %bb.i, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.ab, %bb.i ], [ %i.m, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i" ], [ %i.ab, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4" ]
  resume { ptr, i32 } %common.resume.op

bb.f:                                             ; preds = %.lr.ph26
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !45044, !inline_history !3
  unreachable

bb.g:                                             ; preds = %bb.b
  %i.q = icmp samesign ugt i64 %1, %i.b
  br i1 %i.q, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = sub nuw nsw i64 %i.b, %1                 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !55, !noundef !55
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %1 ; 2 uses
  store i64 %1, ptr %i.a, align 8
  %i.v = icmp eq i64 %i.b, %1
  br i1 %i.v, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit", label %.lr.ph

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i2": ; preds = %.lr.ph
  %i.w = icmp eq i64 %i.y, %i.r
  br i1 %i.w, label %"_ZN4core3ptr60drop_in_place$LT$$u5b$rhai..types..dynamic..Dynamic$u5d$$GT$17h13b5ca14416a3c89E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.h, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i2"
  %.sroa.0.0.i321 = phi i64 [ %i.y, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i2" ], [ 0, %bb.h ] ; 2 uses
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.0.0.i321
  %i.y = add nuw nsw i64 %.sroa.0.0.i321, 1       ; 4 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.x)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.i2" unwind label %bb.i, !inline_history !2

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4": ; preds = %.lr.ph23
  %i.z = add nuw nsw i64 %.sroa.0.1.i522, 1       ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.r
  br i1 %i.aa, label %common.resume, label %.lr.ph23

bb.i:                                             ; preds = %.lr.ph
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = icmp eq i64 %i.y, %i.r
  br i1 %i.ac, label %common.resume, label %.lr.ph23

.lr.ph23:                                         ; preds = %bb.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4"
  %.sroa.0.1.i522 = phi i64 [ %i.z, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4" ], [ %i.y, %bb.i ] ; 2 uses
  %i.ad = getelementptr inbounds nuw [16 x i8], ptr %i.u, i64 %.sroa.0.1.i522
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.ad)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit7.i4" unwind label %bb.j, !inline_history !2

bb.j:                                             ; preds = %.lr.ph23
  %i.ae = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73, !noalias !45045, !inline_history !3
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN4rhai8packages11array_basic20index_of_start_inner17h10782a6c2801402fE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr %.8.val, i64 %.16.val, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dead_on_return dereferenceable(48) %1, i64 noundef %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 11 uses
  %.sroa.7 = alloca [7 x i8], align 1             ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 14 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 7 uses
  %i.e = icmp ult i64 %.16.val, 576460752303423488
  tail call void @llvm.assume(i1 %i.e)
  %i.f = icmp eq i64 %.16.val, 0
  br i1 %i.f, label %.loopexit16, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = icmp slt i64 %2, 0
  br i1 %i.g, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %spec.select = tail call i64 @llvm.umin.i64(i64 %2, i64 %.16.val)
  br label %.split.i

bb.d:                                             ; preds = %bb.b
  %i.h = sub i64 0, %2
  %i.i = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %.16.val, i64 range(i64 1, -9223372036854775807) %i.h)
  br label %.split.i

.sink.split:                                      ; preds = %.loopexit24, %.loopexit19
  %.sroa.5.0.ph = phi i64 [ %i.ab, %.loopexit19 ], [ %..sroa.04.0.lcssa14, %.loopexit24 ]
  %.sroa.0.0.ph = phi i64 [ 1, %.loopexit19 ], [ 0, %.loopexit24 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.loopexit16

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit": ; preds = %.loopexit.loopexit, %.loopexit.loopexit.split-lp, %.loopexit.split-lp, %bb.i
  %.pn43 = phi { ptr, i32 } [ %lpad.phi23, %bb.i ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ], [ %lpad.loopexit17, %.loopexit.loopexit ], [ %lpad.loopexit.split-lp18, %.loopexit.loopexit.split-lp ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1) #72
          to label %bb.m unwind label %bb.l

.loopexit.loopexit:                               ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit", %bb.k
  %lpad.loopexit17 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

.loopexit.loopexit.split-lp:                      ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit.peel.thread35", %bb.g
  %lpad.loopexit.split-lp18 = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

.loopexit.split-lp:                               ; preds = %.loopexit24
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"

.split.i:                                         ; preds = %bb.c, %bb.d
  %.sroa.0.0.i = phi i64 [ %spec.select, %bb.c ], [ %i.i, %bb.d ] ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %.idx = shl nuw nsw i64 %.16.val, 4
  %i.j = getelementptr inbounds nuw i8, ptr %.8.val, i64 %.idx
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 1 ; 2 uses
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 4 ; 2 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %.sroa.535.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 1 ; 2 uses
  %.sroa.636.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1 ; 2 uses
  %.sroa.520.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.not.peel = icmp eq i64 %.sroa.0.0.i, 0
  br i1 %.not.peel, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit.peel.thread35", label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel", !prof !74

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel": ; preds = %.split.i
  %.not.i.not.i.peel.not = icmp samesign ult i64 %.sroa.0.0.i, %.16.val
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.8.val, i64 %.sroa.0.0.i
  %i.m = add nuw nsw i64 %.sroa.0.0.i, 1
  br i1 %.not.i.not.i.peel.not, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit.peel.thread35", label %.loopexit16

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit.peel.thread35": ; preds = %.split.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel"
  %.sroa.2.0.i.pn.peel44 = phi ptr [ %i.l, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel" ], [ %.8.val, %.split.i ] ; 2 uses
  %.sroa.0.0.i46.pn.peel43 = phi i64 [ %.sroa.0.0.i, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel" ], [ 0, %.split.i ] ; 2 uses
  %.sroa.11.3.peel41 = phi i64 [ %i.m, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel" ], [ 1, %.split.i ]
  store i8 4, ptr %i.d, align 8
  store i8 0, ptr %.sroa.430.0..sroa_idx, align 1
  store i32 0, ptr %.sroa.632.0..sroa_idx, align 4
  store i64 %.sroa.0.0.i46.pn.peel43, ptr %.sroa.733.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZN4rhai5types6fn_ptr5FnPtr21_call_with_extra_args17hc610f898457910bcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @438, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable_or_null(16) %.sroa.2.0.i.pn.peel44, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d)
          to label %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit.peel unwind label %.loopexit.loopexit.split-lp

_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit.peel: ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit.peel.thread35"
  %i.n = load i8, ptr %i.a, align 8, !range !70, !noundef !55 ; 2 uses
  %i.o = icmp eq i8 %i.n, 12
  br i1 %i.o, label %.loopexit19, label %bb.e

bb.e:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit.peel
  %.sroa.636.0.copyload.peel = load ptr, ptr %.sroa.636.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.535.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.n, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  store ptr %.sroa.636.0.copyload.peel, ptr %.sroa.520.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.f unwind label %.loopexit.split-lp21

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.c, align 8, !noundef !55
  %.not42.peel = icmp eq ptr %i.p, null
  %i.q = load i8, ptr %i.k, align 8, !range !57
  %i.r = trunc nuw i8 %i.q to i1
  %.sroa.011.0.peel = select i1 %.not42.peel, i1 %i.r, i1 false
  br i1 %.sroa.011.0.peel, label %.loopexit24, label %bb.g

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49" unwind label %.loopexit.loopexit.split-lp, !inline_history !73

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49": ; preds = %bb.g, %bb.k
  %.sroa.11.0 = phi i64 [ %i.t, %bb.k ], [ %.sroa.11.3.peel41, %bb.g ] ; 2 uses
  %.sroa.0.04.pn = phi ptr [ %.sroa.0.04, %bb.k ], [ %.sroa.2.0.i.pn.peel44, %bb.g ]
  %.sroa.0.04 = getelementptr inbounds nuw i8, ptr %.sroa.0.04.pn, i64 16 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.s = icmp eq ptr %.sroa.0.04, %i.j
  br i1 %i.s, label %.loopexit16, label %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit"

"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49"
  %i.t = add i64 %.sroa.11.0, 1
  %i.u = tail call i64 @llvm.umin.i64(i64 %.sroa.11.0, i64 9223372036854775807) ; 2 uses
  store i8 4, ptr %i.d, align 8
  store i8 0, ptr %.sroa.430.0..sroa_idx, align 1
  store i32 0, ptr %.sroa.632.0..sroa_idx, align 4
  store i64 %i.u, ptr %.sroa.733.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke fastcc void @_ZN4rhai5types6fn_ptr5FnPtr21_call_with_extra_args17hc610f898457910bcE(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @438, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef nonnull align 8 dereferenceable_or_null(16) %.sroa.0.04, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(16) %i.d)
          to label %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit unwind label %.loopexit.loopexit

.loopexit16:                                      ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49", %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel", %bb.a, %.sink.split
  %.sroa.5.1 = phi i64 [ %.sroa.5.0.ph, %.sink.split ], [ -1, %bb.a ], [ -1, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel" ], [ -1, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49" ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0.ph, %.sink.split ], [ 0, %bb.a ], [ 0, %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$3nth17h8f3edf9c0ea6b97bE.exit.peel" ], [ 0, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49" ]
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  %i.v = inttoptr i64 %.sroa.5.1 to ptr
  %i.w = insertvalue { i64, ptr } poison, i64 %.sroa.0.1, 0
  %i.x = insertvalue { i64, ptr } %i.w, ptr %i.v, 1
  ret { i64, ptr } %i.x

_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit: ; preds = %"_ZN110_$LT$core..iter..adapters..enumerate..Enumerate$LT$I$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3ed5c54bdde4b634E.exit"
  %i.y = load i8, ptr %i.a, align 8, !range !70, !noundef !55 ; 2 uses
  %i.z = icmp eq i8 %i.y, 12
  br i1 %i.z, label %.loopexit19, label %bb.h

.loopexit19:                                      ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit, %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit.peel
  %i.aa = load ptr, ptr %.sroa.636.0..sroa_idx, align 8, !nonnull !55, !align !56, !noundef !55
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.ab = ptrtoint ptr %i.aa to i64
  br label %.sink.split

bb.h:                                             ; preds = %_ZN4rhai5types6fn_ptr5FnPtr24call_raw_with_extra_args17h05fb235a79c5aa57E.exit
  %.sroa.636.0.copyload = load ptr, ptr %.sroa.636.0..sroa_idx, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.535.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store i8 %i.y, ptr %i.b, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.419.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7, i64 7, i1 false)
  store ptr %.sroa.636.0.copyload, ptr %.sroa.520.0..sroa_idx, align 8
  invoke fastcc void @_ZN4rhai5types7dynamic7Dynamic7as_bool17hc508fd842342423dE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b)
          to label %bb.j unwind label %.loopexit20

.loopexit20:                                      ; preds = %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

.loopexit.split-lp21:                             ; preds = %bb.e
  %lpad.loopexit.split-lp22 = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.i:                                             ; preds = %.loopexit.split-lp21, %.loopexit20
  %lpad.phi23 = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit20 ], [ %lpad.loopexit.split-lp22, %.loopexit.split-lp21 ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.l, !inline_history !73

bb.j:                                             ; preds = %bb.h
  %i.ac = load ptr, ptr %i.c, align 8, !noundef !55
  %.not42 = icmp eq ptr %i.ac, null
  %i.ad = load i8, ptr %i.k, align 8, !range !57
  %i.ae = trunc nuw i8 %i.ad to i1
  %.sroa.011.0 = select i1 %.not42, i1 %i.ae, i1 false
  br i1 %.sroa.011.0, label %.loopexit24, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit49" unwind label %.loopexit.loopexit, !llvm.loop !45046, !inline_history !73

.loopexit24:                                      ; preds = %bb.j, %bb.f
  %..sroa.04.0.lcssa14 = phi i64 [ %.sroa.0.0.i46.pn.peel43, %bb.f ], [ %i.u, %bb.j ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %.sink.split unwind label %.loopexit.split-lp, !inline_history !73

bb.l:                                             ; preds = %bb.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.m:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit"
  resume { ptr, i32 } %.pn43
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull ptr @_ZN4rhai8packages11string_more16string_functions10add_append17h1ea7f617d6397ce6E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(16) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.d = invoke fastcc noundef nonnull ptr @_ZN4rhai8packages12string_basic15print_with_func17h197686c1531b0789E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @575, i64 noundef 9, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(16) %2)
          to label %bb.c unwind label %bb.b       ; 7 uses

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit": ; preds = %.body, %bb.f, %bb.b
  %.pn7 = phi { ptr, i32 } [ %i.e, %bb.b ], [ %.pn, %bb.f ], [ %.pn, %.body ]
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %2)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit" unwind label %bb.ac, !inline_history !73

bb.b:                                             ; preds = %bb.z, %bb.n, %bb.a
  %i.e = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit"

bb.c:                                             ; preds = %bb.a
  store ptr %i.d, ptr %i.c, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 5 uses
  %i.g = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc12 unwind label %bb.g

.noexc12:                                         ; preds = %bb.c
  br i1 %i.g, label %bb.d, label %bb.e

bb.d:                                             ; preds = %.noexc12
  %i.h = invoke { ptr, i64 } @"_ZN77_$LT$smartstring..inline..InlineString$u20$as$u20$core..ops..deref..Deref$GT$5deref17h9358a1a898cbf6e4E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.f)
          to label %.noexc13 unwind label %bb.g

.noexc13:                                         ; preds = %bb.d
  %i.i = extractvalue { ptr, i64 } %i.h, 1
  br label %bb.h

bb.e:                                             ; preds = %.noexc12
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.k = load i64, ptr %i.j, align 8, !noundef !55
  br label %bb.h

.body:                                            ; preds = %.noexc30, %bb.ab, %bb.w, %.noexc26, %bb.g
  %.pn = phi { ptr, i32 } [ %i.ai, %bb.w ], [ %i.n, %bb.g ], [ %i.ai, %.noexc26 ], [ %i.an, %bb.ab ], [ %i.an, %.noexc30 ] ; 2 uses
  %i.l = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !45070
  %i.m = icmp eq i64 %i.l, 1
  br i1 %i.m, label %bb.f, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit"

bb.f:                                             ; preds = %.body
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit" unwind label %bb.ac

bb.g:                                             ; preds = %bb.l, %bb.j, %bb.c, %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.h:                                             ; preds = %bb.e, %.noexc13
  %.merged.i11 = phi i64 [ %i.i, %.noexc13 ], [ %i.k, %bb.e ]
  %i.o = icmp eq i64 %.merged.i11, 0
  br i1 %i.o, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.p = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55 ; 2 uses
  %i.q = atomicrmw add ptr %i.p, i64 1 monotonic, align 8
  %i.r = icmp slt i64 %i.q, 0
  br i1 %i.r, label %bb.o, label %bb.m

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.s = load ptr, ptr %1, align 8, !nonnull !55, !noundef !55
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16 ; 3 uses
  %i.u = invoke noundef zeroext i1 @_ZN11smartstring5boxed11BoxedString15check_alignment17h45a5a60d2f25a250E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %.noexc18 unwind label %bb.g

.noexc18:                                         ; preds = %bb.j
  br i1 %i.u, label %bb.k, label %bb.l

bb.k:                                             ; preds = %.noexc18
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.t, i64 24, i1 false), !alias.scope !45071
  br label %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit"

bb.l:                                             ; preds = %.noexc18
  invoke void @"_ZN70_$LT$smartstring..boxed..BoxedString$u20$as$u20$core..clone..Clone$GT$5clone17h57d38e5bd813c3d3E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %"_ZN75_$LT$smartstring..SmartString$LT$Mode$GT$$u20$as$u20$core..clone..Clone$GT$5clone17he46ba88336015572E.exit" unwind label %bb.g

bb.m:                                             ; preds = %bb.i
  %i.v = atomicrmw sub ptr %i.d, i64 1 release, align 8, !noalias !45072
  %i.w = icmp eq i64 %i.v, 1
  br i1 %i.w, label %bb.n, label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit21"

bb.n:                                             ; preds = %bb.m
  fence acquire
  invoke void @"_ZN5alloc4sync16Arc$LT$T$C$A$GT$9drop_slow17h9676a7fc3180fc2bE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit21" unwind label %bb.b

bb.o:                                             ; preds = %bb.i
  tail call void @llvm.trap()
  unreachable

"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit21": ; preds = %bb.m, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %2), !inline_history !73
  br label %bb.p

bb.p:                                             ; preds = %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit29", %"_ZN4core3ptr67drop_in_place$LT$rhai..types..immutable_string..ImmutableString$GT$17hc11d0e3fcce6a14cE.exit21"
end_hunk_0
