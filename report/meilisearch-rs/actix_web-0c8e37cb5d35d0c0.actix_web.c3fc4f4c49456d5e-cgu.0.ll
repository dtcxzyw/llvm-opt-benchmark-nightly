Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 48
begin_hunk_0_@_ZN9actix_web4rmap11ResourceMap13url_from_path17hbdcd5156f3d568f8E:bb.a
  store i8 %i.em, ptr %.sroa.411.0..sroa_idx, align 8
  invoke void @_ZN3url3Url8set_path17h0ba734e4a756367eE(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.d, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.041.0, i64 noundef %.sroa.542.0)
          to label %bb.ad unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.eo = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val59 = load i64, ptr %i.d, align 8, !alias.scope !12417 ; 2 uses
  %i.ep = icmp eq i64 %.val59, 0
  br i1 %i.ep, label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17haf697e668ec56e27E.exit", label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %.val60 = load ptr, ptr %.sroa.411.0..sroa_idx, align 8, !nonnull !4, !noundef !4
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val60, i64 noundef %.val59, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12420
  br label %"_ZN4core3ptr29drop_in_place$LT$url..Url$GT$17haf697e668ec56e27E.exit"

bb.ad:                                            ; preds = %bb.aa
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %0, ptr noundef nonnull align 8 dereferenceable(88) %i.d, i64 88, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  switch i64 %.sroa.096.0, label %bb.ae [
    i64 -9223372036854775808, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75"
    i64 0, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75"
  ]

bb.ae:                                            ; preds = %bb.ad
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.597.0, i64 noundef %.sroa.096.0, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !12423
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75": ; preds = %bb.ae, %bb.ad, %bb.ad
  %.val.i76 = load i64, ptr %3, align 8, !alias.scope !12426 ; 2 uses
  %i.eq = icmp eq i64 %.val.i76, 0
  br i1 %i.eq, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78.sink.split": ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit74"
  %.val.i79.sink = phi i64 [ %.val.i79, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit74" ], [ %.val.i76, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75" ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.j, i64 noundef %.val.i79.sink, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !4
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78": ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78.sink.split", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit74", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit75"
  ret void

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit74": ; preds = %bb.z, %bb.y, %bb.y
  %.val.i79 = load i64, ptr %3, align 8, !alias.scope !12429 ; 2 uses
  %i.er = icmp eq i64 %.val.i79, 0
  br i1 %i.er, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78", label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit78.sink.split"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hbf43b4c4727e70bcE.exit": ; preds = %bb.b, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h7651704769174ef4E.exit73"
  resume { ptr, i32 } %.pn47
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { i64, ptr } @_ZN9actix_web4rmap11ResourceMap19_find_matching_node17hab1a7ce4c4bbbc10E(ptr noundef nonnull align 8 %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call { i64, i64 } @_ZN12actix_router8resource11ResourceDef10find_match17h151856b9d31dd8f2E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(152) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.b = extractvalue { i64, i64 } %i.a, 0
  %i.c = extractvalue { i64, i64 } %i.a, 1        ; 7 uses
  %i.d = trunc nuw i64 %i.b to i1
  br i1 %i.d, label %bb.b, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit"

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.not.i = icmp ult i64 %i.c, %2
  br i1 %.not.i, label %bb.d, label %.split.i

.split.i:                                         ; preds = %bb.c
  %i.f = icmp eq i64 %i.c, %2
  br i1 %i.f, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !12432, !noundef !4
  %i.i = icmp sgt i8 %i.h, -65
  br i1 %i.i, label %bb.e, label %bb.f

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit": ; preds = %bb.h, %bb.g, %bb.i, %bb.e, %bb.a
  %.sroa.3.0 = phi ptr [ undef, %bb.a ], [ %0, %bb.e ], [ %i.aa, %bb.i ], [ null, %bb.g ], [ null, %bb.h ]
  %.sroa.0.0 = phi i64 [ 0, %bb.a ], [ 1, %bb.e ], [ 1, %bb.i ], [ 1, %bb.g ], [ 1, %bb.h ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k

bb.e:                                             ; preds = %bb.d, %.split.i, %bb.b
  %i.l = sub nuw i64 %2, %i.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 %i.c
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.o = load i64, ptr %i.n, align 8, !range !91, !noundef !4
  %.not12 = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not12, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit", label %bb.g

bb.f:                                             ; preds = %bb.d, %.split.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @699) #52
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %.idx = shl nuw nsw i64 %i.s, 3
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %.idx
  %.not25 = icmp eq i64 %i.s, 0
  br i1 %.not25, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit", label %.lr.ph

bb.h:                                             ; preds = %.lr.ph
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.0.01726, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.u, %i.t
  br i1 %.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit", label %.lr.ph

.lr.ph:                                           ; preds = %bb.g, %bb.h
  %.sroa.0.01726 = phi ptr [ %i.u, %bb.h ], [ %i.q, %bb.g ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12435)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12438), !noalias !12441
  %i.v = load ptr, ptr %.sroa.0.01726, align 8, !alias.scope !12444, !noalias !12445, !nonnull !4, !noundef !4
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = tail call fastcc { i64, ptr } @_ZN9actix_web4rmap11ResourceMap19_find_matching_node17hab1a7ce4c4bbbc10E(ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef %i.l), !noalias !12448, !inline_history !12449 ; 2 uses
  %i.y = extractvalue { i64, ptr } %i.x, 0
  %i.z = trunc nuw i64 %i.y to i1
  br i1 %i.z, label %bb.i, label %bb.h

bb.i:                                             ; preds = %.lr.ph
  %i.aa = extractvalue { i64, ptr } %i.x, 1
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit"
}

; Function Attrs: nonlazybind uwtable
define void @_ZN9actix_web4rmap11ResourceMap3add17h2dd1882f0dcb8eccE(ptr noalias noundef align 8 dereferenceable(232) %0, ptr noalias nofree noundef align 8 captures(address, read_provenance) dereferenceable(152) %1, ptr noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 6 uses
  %.sroa.2.i.i.i.i = alloca [24 x i8], align 8    ; 4 uses
  %i.e = alloca [64 x i8], align 8                ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 13 uses
  %i.g = alloca [32 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [248 x i8], align 8               ; 11 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [152 x i8], align 8               ; 5 uses
  %i.m = alloca [8 x i8], align 8                 ; 5 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 5 uses
  %i.q = load i64, ptr %i.p, align 8, !range !91, !noundef !4
  %.not = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b, !prof !223

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !4 ; 2 uses
  %i.t = icmp ult i64 %i.s, 1152921504606846976
  tail call void @llvm.assume(i1 %i.t)
  %i.u = trunc i64 %i.s to i16
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 144
  store i16 %i.u, ptr %i.v, align 8
  %.not24 = icmp eq ptr %2, null
  br i1 %.not24, label %bb.r, label %bb.f

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @700) #52
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.not127 = icmp eq ptr %2, null
  br i1 %.not127, label %.thread96, label %bb.bw

bb.e:                                             ; preds = %bb.br, %bb.am, %bb.c
  unreachable

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  store ptr %2, ptr %i.n, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 192
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12450)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12453)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !12456, !noalias !12457, !noundef !4 ; 6 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread", label %bb.g

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12460
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12464
  %i.aa = add i64 %i.y, 1                         ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 576460752303423487
  br i1 %i.ab, label %bb.i, label %bb.h, !prof !223

bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw i64 %i.aa, 5                    ; 3 uses
  %i.ad = add nsw i64 %i.y, 17                    ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, !prof !28

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.h
  %3 = icmp eq i64 %i.ae, 0
  br i1 %3, label %bb.k, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12465
  %i.ah = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #46, !noalias !12465 ; 2 uses
  %i.ai = icmp eq ptr %i.ah, null
  br i1 %i.ai, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.aj = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc36 unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.ak = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.j, %bb.i
  %.pn.i.i.i = phi { i64, i64 } [ %i.aj, %bb.i ], [ %i.ak, %bb.j ] ; 2 uses
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i = phi ptr [ %i.ah, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ]
  %4 = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i, i64 %i.ac
  %i.al = icmp ult i64 %i.y, 8
  %i.am = lshr i64 %i.aa, 3
  %i.an = mul nuw nsw i64 %i.am, 7
  %.sroa.02.0.i.i.i.i = select i1 %i.al, i64 %i.y, i64 %i.an
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i": ; preds = %bb.k, %.noexc36
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.noexc36 ], [ %i.ad, %bb.k ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i, %.noexc36 ], [ %.sroa.02.0.i.i.i.i, %bb.k ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %.noexc36 ], [ %i.y, %bb.k ] ; 6 uses
  %.sroa.0.0.i.i = phi ptr [ null, %.noexc36 ], [ %4, %bb.k ] ; 8 uses
  store ptr %.sroa.0.0.i.i, ptr %i.h, align 8, !noalias !12464
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12464
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !12464
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !12464
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12470)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12473)
  %i.ao = load ptr, ptr %i.w, align 8, !alias.scope !12476, !noalias !12477, !nonnull !4, !noundef !4 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull align 1 %i.ao, i64 %.pre-phi.i.i, i1 false), !noalias !12480
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !12476, !noalias !12477, !noundef !4 ; 4 uses
  %i.ar = icmp eq i64 %i.aq, 0
  br i1 %i.ar, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.ao, align 16, !noalias !12481
  %i.as = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.at = bitcast <16 x i1> %i.as to i16
  %i.au = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.av = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.aw = ptrtoint ptr %i.ao to i64
  br label %bb.m

bb.l:                                             ; preds = %.loopexit.i.i.i.i
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr365drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc43af60c298cbddbE"(i64 %.sroa.015.030.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.h) #53
          to label %.body.i.i unwind label %bb.p, !noalias !12484

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.015.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bv, %bb.o ]
  %.sroa.016.029.i.i.i.i = phi ptr [ %i.ao, %.lr.ph.i.i.i.i ], [ %.sroa.016.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i.i.i = phi ptr [ %i.au, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.817.027.i.i.i.i = phi i16 [ %i.at, %.lr.ph.i.i.i.i ], [ %i.bg, %bb.o ] ; 2 uses
  %.sroa.1018.026.i.i.i.i = phi i64 [ %i.aq, %.lr.ph.i.i.i.i ], [ %i.bj, %bb.o ]
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.817.027.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.ay = phi ptr [ %i.bc, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.028.i.i.i.i, %bb.m ] ; 2 uses
  %i.az = phi ptr [ %i.bb, %.lr.ph.i.i.i.i.i ], [ %.sroa.016.029.i.i.i.i, %bb.m ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.ay, align 16, !noalias !12485
  %i.ba = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.bb = getelementptr inbounds i8, ptr %i.az, i64 -512 ; 2 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.ba to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.028.i.i.i.i, %bb.m ], [ %i.bc, %.lr.ph.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i = phi ptr [ %.sroa.016.029.i.i.i.i, %bb.m ], [ %i.bb, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.817.027.i.i.i.i, %bb.m ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bd = add i16 %.lcssa.i.i.i.i.i, -1
  %i.be = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bf = zext nneg i16 %i.be to i64
  %i.bg = and i16 %i.bd, %.lcssa.i.i.i.i.i
  %i.bh = sub nsw i64 0, %i.bf
  %i.bi = getelementptr inbounds [32 x i8], ptr %.sroa.016.1.i.i.i.i, i64 %i.bh ; 3 uses
  %i.bj = add i64 %.sroa.1018.026.i.i.i.i, -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12480
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !12488)
  call void @llvm.experimental.noalias.scope.decl(metadata !12491)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bk, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293)
          to label %.noexc.i.i.i.i unwind label %bb.l, !noalias !12480

.noexc.i.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.bl = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %.val.i.i.i.i.i = load ptr, ptr %i.bl, align 8, !alias.scope !12491, !noalias !12493, !nonnull !4, !noundef !4 ; 3 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !12493, !noundef !4 ; 2 uses
  %i.bm = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bm)
  %i.bn = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.bn, ptr %.val.i.i.i.i.i, align 8, !noalias !12493
  %i.bo = icmp eq i64 %i.bn, 0
  br i1 %i.bo, label %bb.n, label %bb.o, !prof !223

bb.n:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.av, align 8, !alias.scope !12488, !noalias !12494
  %i.bp = ptrtoint ptr %i.bi to i64
  %i.bq = sub i64 %i.aw, %i.bp
  %i.br = ashr exact i64 %i.bq, 5                 ; 2 uses
  %i.bs = sub nsw i64 0, %i.br
  %i.bt = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i, i64 %i.bs
  %i.bu = getelementptr inbounds i8, ptr %i.bt, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bu, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !12480
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12480
  %i.bv = add nsw i64 %i.br, 1
  %i.bw = icmp eq i64 %i.bj, 0
  br i1 %i.bw, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %bb.m

bb.p:                                             ; preds = %bb.l
  %i.bx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12480
  unreachable

.body.i.i:                                        ; preds = %bb.l
  invoke fastcc void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa7049d2bc167cd4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h)
          to label %bb.ap unwind label %bb.q, !noalias !12464, !inline_history !12495

bb.q:                                             ; preds = %.body.i.i
  %i.by = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12464
  unreachable

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  %i.bz = invoke noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E()
          to label %.noexc34 unwind label %bb.at

.loopexit:                                        ; preds = %bb.ab
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

.loopexit.split-lp:                               ; preds = %bb.am, %bb.i, %bb.j
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.ap

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit": ; preds = %bb.o, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12464
  call void @llvm.experimental.noalias.scope.decl(metadata !12496)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12498
  call void @llvm.experimental.noalias.scope.decl(metadata !12500)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %.val3.i.i.i.i.i40 = load <16 x i8>, ptr %.sroa.0.0.i.i, align 16, !noalias !12503 ; 2 uses
  %i.ca = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %i.ca, label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %i.cb = icmp slt i64 %.sroa.5.0.i.i, 576460752303423487
  call void @llvm.assume(i1 %i.cb)
  %i.cc = shl i64 %.sroa.5.0.i.i, 5               ; 2 uses
  %i.cd = add i64 %i.cc, 32                       ; 2 uses
  %i.ce = add nsw i64 %.sroa.5.0.i.i, 17
  %i.cf = add i64 %i.ce, %i.cd                    ; 3 uses
  %i.cg = icmp uge i64 %i.cf, %i.cd
  call void @llvm.assume(i1 %i.cg)
  %i.ch = icmp ult i64 %i.cf, 9223372036854775793
  call void @llvm.assume(i1 %i.ch)
  %i.ci = sub nuw nsw i64 -32, %i.cc
  %i.cj = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 %i.ci
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"

"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i": ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %.val3.i.i.i.i.i40113 = phi <16 x i8> [ %.val3.i.i.i.i.i40, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i40, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ splat (i8 -1), %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.084.0112 = phi ptr [ %.sroa.0.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ @77, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.586.0111 = phi i64 [ %.sroa.5.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.790.0110 = phi i64 [ %i.aq, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %i.aq, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.cf, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.cj, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %i.ck = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %.sroa.084.0112, i64 16
  %i.cm = icmp sgt <16 x i8> %.val3.i.i.i.i.i40113, splat (i8 -1)
  %i.cn = getelementptr i8, ptr %.sroa.084.0112, i64 %.sroa.586.0111
  %i.co = getelementptr i8, ptr %i.cn, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.4.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i41, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.6.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.084.0112, ptr %.sroa.6.0..sroa_idx.i.i42, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.cl, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.co, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i1> %i.cm, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %.sroa.101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.790.0110, ptr %.sroa.101.0..sroa_idx.i.i, align 8, !alias.scope !12500, !noalias !12513
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cq = load i64, ptr %i.cp, align 8, !alias.scope !12496, !noalias !12514, !noundef !4
  %i.cr = icmp eq i64 %i.cq, 0
  %i.cs = add i64 %.sroa.790.0110, 1
  %i.ct = lshr i64 %i.cs, 1
  %.sroa.0.0.i = select i1 %i.cr, i64 %.sroa.790.0110, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cv = load i64, ptr %i.cu, align 8, !alias.scope !12515, !noalias !12518, !noundef !4
  %i.cw = icmp ugt i64 %.sroa.0.0.i, %i.cv
  br i1 %i.cw, label %bb.s, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i", !prof !223

bb.s:                                             ; preds = %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cy = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17he30a5e2ac34175ceE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ck, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i" unwind label %bb.ae, !noalias !12514 ; 0 uses

end_hunk_0
