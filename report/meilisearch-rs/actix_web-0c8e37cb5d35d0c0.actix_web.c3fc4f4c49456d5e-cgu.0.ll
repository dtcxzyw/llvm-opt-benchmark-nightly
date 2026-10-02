Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_ZN9actix_web4rmap11ResourceMap13url_from_path17hbdcd5156f3d568f8E:bb.a
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
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !12443, !noundef !25
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
  %i.o = load i64, ptr %i.n, align 8, !range !30, !noundef !25
  %.not12 = icmp eq i64 %i.o, -9223372036854775808
  br i1 %.not12, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$8find_map17h8ddcabe54621680bE.exit", label %bb.g

bb.f:                                             ; preds = %bb.d, %.split.i
  tail call void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i64 noundef %i.c, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @699) #52
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.s = load i64, ptr %i.r, align 8, !noundef !25 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12444)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12445), !noalias !12446
  %i.v = load ptr, ptr %.sroa.0.01726, align 8, !alias.scope !12447, !noalias !12448, !nonnull !25, !noundef !25
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.x = tail call fastcc { i64, ptr } @_ZN9actix_web4rmap11ResourceMap19_find_matching_node17hab1a7ce4c4bbbc10E(ptr noundef nonnull align 8 %i.w, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.m, i64 noundef %i.l), !noalias !12449, !inline_history !12442 ; 2 uses
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
  %i.q = load i64, ptr %i.p, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.q, -9223372036854775808
  br i1 %.not, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  %i.s = load i64, ptr %i.r, align 8, !noundef !25 ; 2 uses
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
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12580)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12581)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 200
  %i.y = load i64, ptr %i.x, align 8, !alias.scope !12582, !noalias !12583, !noundef !25 ; 6 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread", label %bb.g

"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread": ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12584
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !12585
  %i.aa = add i64 %i.y, 1                         ; 3 uses
  %i.ab = icmp ugt i64 %i.aa, 576460752303423487
  br i1 %i.ab, label %bb.i, label %bb.h, !prof !33

bb.h:                                             ; preds = %bb.g
  %i.ac = shl nuw i64 %i.aa, 5                    ; 3 uses
  %i.ad = add nsw i64 %i.y, 17                    ; 2 uses
  %i.ae = add i64 %i.ac, %i.ad                    ; 5 uses
  %i.af = icmp ult i64 %i.ae, %i.ac
  %i.ag = icmp ugt i64 %i.ae, 9223372036854775792
  %or.cond.i.i.i.i = or i1 %i.af, %i.ag
  br i1 %or.cond.i.i.i.i, label %bb.i, label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i, !prof !26

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i: ; preds = %bb.h
  %i.ah = icmp eq i64 %i.ae, 0
  br i1 %i.ah, label %bb.k, label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i": ; preds = %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !12586
  %i.ai = tail call noundef align 16 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ae, i64 noundef range(i64 1, -9223372036854775807) 16) #46, !noalias !12586 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %bb.j, label %bb.k

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.ak = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility17capacity_overflow17h092909d5f8586bb0E(i1 noundef zeroext true)
          to label %.noexc36 unwind label %.loopexit.split-lp

bb.j:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i"
  %i.al = invoke { i64, i64 } @_ZN9hashbrown3raw11Fallibility9alloc_err17h44476d943b442629E(i1 noundef zeroext true, i64 noundef 16, i64 noundef %i.ae)
          to label %.noexc36 unwind label %.loopexit.split-lp

.noexc36:                                         ; preds = %bb.j, %bb.i
  %.pn.i.i.i = phi { i64, i64 } [ %i.ak, %bb.i ], [ %i.al, %bb.j ] ; 2 uses
  %.sroa.7.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 0 ; 2 uses
  %.sroa.12.0.ph.i.i.i = extractvalue { i64, i64 } %.pn.i.i.i, 1
  %.pre.i.i = add i64 %.sroa.7.0.ph.i.i.i, 17
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"

bb.k:                                             ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i
  %.sroa.07.0.i.i6.i.i.i.i = phi ptr [ %i.ai, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$8allocate17h2c5e185936086779E.exit.i.i.i.i" ], [ inttoptr (i64 16 to ptr), %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i ]
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.07.0.i.i6.i.i.i.i, i64 %i.ac
  %i.an = icmp ult i64 %i.y, 8
  %i.ao = lshr i64 %i.aa, 3
  %i.ap = mul nuw nsw i64 %i.ao, 7
  %.sroa.02.0.i.i.i.i = select i1 %i.an, i64 %i.y, i64 %i.ap
  br label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i": ; preds = %bb.k, %.noexc36
  %.pre-phi.i.i = phi i64 [ %.pre.i.i, %.noexc36 ], [ %i.ad, %bb.k ]
  %.sroa.7.0.i.i = phi i64 [ %.sroa.12.0.ph.i.i.i, %.noexc36 ], [ %.sroa.02.0.i.i.i.i, %bb.k ]
  %.sroa.5.0.i.i = phi i64 [ %.sroa.7.0.ph.i.i.i, %.noexc36 ], [ %i.y, %bb.k ] ; 5 uses
  %.sroa.0.0.i.i = phi ptr [ null, %.noexc36 ], [ %i.am, %bb.k ] ; 8 uses
  store ptr %.sroa.0.0.i.i, ptr %i.h, align 8, !noalias !12585
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.5.0.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !12585
  %.sroa.52.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.7.0.i.i, ptr %.sroa.52.0..sroa_idx.i.i, align 8, !noalias !12585
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !12585
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12587)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12588)
  %i.aq = load ptr, ptr %i.w, align 8, !alias.scope !12589, !noalias !12590, !nonnull !25, !noundef !25 ; 5 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull align 1 %i.aq, i64 %.pre-phi.i.i, i1 false), !noalias !12591
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 216
  %i.as = load i64, ptr %i.ar, align 8, !alias.scope !12589, !noalias !12590, !noundef !25 ; 4 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$17new_uninitialized17hc76a527eec220e83E.exit.i.i"
  %.val3.i.i.i.i.i = load <16 x i8>, ptr %i.aq, align 16, !noalias !12592
  %i.au = icmp sgt <16 x i8> %.val3.i.i.i.i.i, splat (i8 -1)
  %i.av = bitcast <16 x i1> %i.au to i16
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.ax = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.ay = ptrtoint ptr %i.aq to i64
  br label %bb.m

bb.l:                                             ; preds = %.loopexit.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr365drop_in_place$LT$hashbrown..scopeguard..ScopeGuard$LT$$LP$usize$C$$RF$mut$u20$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$RP$$C$hashbrown..raw..RawTable$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$..clone_from_impl..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17hc43af60c298cbddbE"(i64 %.sroa.015.030.i.i.i.i, ptr nonnull align 8 dereferenceable(32) %i.h) #53
          to label %.body.i.i unwind label %bb.p, !noalias !12593

bb.m:                                             ; preds = %bb.o, %.lr.ph.i.i.i.i
  %.sroa.015.030.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.bx, %bb.o ]
  %.sroa.016.029.i.i.i.i = phi ptr [ %i.aq, %.lr.ph.i.i.i.i ], [ %.sroa.016.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.6.028.i.i.i.i = phi ptr [ %i.aw, %.lr.ph.i.i.i.i ], [ %.sroa.6.1.i.i.i.i, %bb.o ] ; 2 uses
  %.sroa.817.027.i.i.i.i = phi i16 [ %i.av, %.lr.ph.i.i.i.i ], [ %i.bi, %bb.o ] ; 2 uses
  %.sroa.1018.026.i.i.i.i = phi i64 [ %i.as, %.lr.ph.i.i.i.i ], [ %i.bl, %bb.o ]
  %.not13.i.i.i.i.i = icmp eq i16 %.sroa.817.027.i.i.i.i, 0
  br i1 %.not13.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.m, %.lr.ph.i.i.i.i.i
  %i.ba = phi ptr [ %i.be, %.lr.ph.i.i.i.i.i ], [ %.sroa.6.028.i.i.i.i, %bb.m ] ; 2 uses
  %i.bb = phi ptr [ %i.bd, %.lr.ph.i.i.i.i.i ], [ %.sroa.016.029.i.i.i.i, %bb.m ]
  %.val11.i.i.i.i.i = load <16 x i8>, ptr %i.ba, align 16, !noalias !12594
  %i.bc = icmp sgt <16 x i8> %.val11.i.i.i.i.i, splat (i8 -1)
  %i.bd = getelementptr inbounds i8, ptr %i.bb, i64 -512 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.ba, i64 16 ; 2 uses
  %.cast.i.i.i.i.i = bitcast <16 x i1> %i.bc to i16 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.i.i, label %.loopexit.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %.lr.ph.i.i.i.i.i, %bb.m
  %.sroa.6.1.i.i.i.i = phi ptr [ %.sroa.6.028.i.i.i.i, %bb.m ], [ %i.be, %.lr.ph.i.i.i.i.i ]
  %.sroa.016.1.i.i.i.i = phi ptr [ %.sroa.016.029.i.i.i.i, %bb.m ], [ %i.bd, %.lr.ph.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i = phi i16 [ %.sroa.817.027.i.i.i.i, %bb.m ], [ %.cast.i.i.i.i.i, %.lr.ph.i.i.i.i.i ] ; 3 uses
  %i.bf = add i16 %.lcssa.i.i.i.i.i, -1
  %i.bg = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i, i1 true)
  %i.bh = zext nneg i16 %i.bg to i64
  %i.bi = and i16 %i.bf, %.lcssa.i.i.i.i.i
  %i.bj = sub nsw i64 0, %i.bh
  %i.bk = getelementptr inbounds [32 x i8], ptr %.sroa.016.1.i.i.i.i, i64 %i.bj ; 3 uses
  %i.bl = add i64 %.sroa.1018.026.i.i.i.i, -1     ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !12591
  %i.bm = getelementptr inbounds i8, ptr %i.bk, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !12595)
  call void @llvm.experimental.noalias.scope.decl(metadata !12596)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(32) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bm, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @293)
          to label %.noexc.i.i.i.i unwind label %bb.l, !noalias !12591

.noexc.i.i.i.i:                                   ; preds = %.loopexit.i.i.i.i
  %i.bn = getelementptr inbounds i8, ptr %i.bk, i64 -8
  %.val.i.i.i.i.i = load ptr, ptr %i.bn, align 8, !alias.scope !12596, !noalias !12597, !nonnull !25, !noundef !25 ; 3 uses
  %.val.i.i.i.i.i.i.i = load i64, ptr %.val.i.i.i.i.i, align 8, !noalias !12597, !noundef !25 ; 2 uses
  %i.bo = icmp ne i64 %.val.i.i.i.i.i.i.i, 0
  call void @llvm.assume(i1 %i.bo)
  %i.bp = add i64 %.val.i.i.i.i.i.i.i, 1          ; 2 uses
  store i64 %i.bp, ptr %.val.i.i.i.i.i, align 8, !noalias !12597
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %bb.o, !prof !33

bb.n:                                             ; preds = %.noexc.i.i.i.i
  call void @llvm.trap()
  unreachable

bb.o:                                             ; preds = %.noexc.i.i.i.i
  store ptr %.val.i.i.i.i.i, ptr %i.ax, align 8, !alias.scope !12595, !noalias !12598
  %i.br = ptrtoint ptr %i.bk to i64
  %i.bs = sub i64 %i.ay, %i.br
  %i.bt = ashr exact i64 %i.bs, 5                 ; 2 uses
  %i.bu = sub nsw i64 0, %i.bt
  %i.bv = getelementptr inbounds [32 x i8], ptr %.sroa.0.0.i.i, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bw, ptr noundef nonnull align 8 dereferenceable(32) %i.g, i64 32, i1 false), !noalias !12591
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !12591
  %i.bx = add nsw i64 %i.bt, 1
  %i.by = icmp eq i64 %i.bl, 0
  br i1 %i.by, label %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit", label %bb.m

bb.p:                                             ; preds = %bb.l
  %i.bz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12591
  unreachable

.body.i.i:                                        ; preds = %bb.l
  invoke fastcc void @"_ZN79_$LT$hashbrown..raw..RawTable$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfa7049d2bc167cd4E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.h)
          to label %bb.ap unwind label %bb.q, !noalias !12585, !inline_history !12476

bb.q:                                             ; preds = %.body.i.i
  %i.ca = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12585
  unreachable

bb.r:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call fastcc void @"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE"(ptr noalias noundef align 8 captures(address) dereferenceable(152) %i.l, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(152) %1)
  %i.cb = invoke noundef i64 @_ZN8foldhash4seed19gen_per_hasher_seed17h40665e60abfadd55E()
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !12585
  call void @llvm.experimental.noalias.scope.decl(metadata !12599)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !12600
  call void @llvm.experimental.noalias.scope.decl(metadata !12601)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.i.i) ]
  %.val3.i.i.i.i.i40 = load <16 x i8>, ptr %.sroa.0.0.i.i, align 16, !noalias !12602 ; 2 uses
  %i.cc = icmp eq i64 %.sroa.5.0.i.i, 0
  br i1 %i.cc, label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i: ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %i.cd = shl i64 %.sroa.5.0.i.i, 5
  %3 = mul i64 %.sroa.5.0.i.i, 33
  %i.ce = add i64 %3, 49
  %i.cf = sub nuw nsw i64 -32, %i.cd
  %i.cg = getelementptr inbounds i8, ptr %.sroa.0.0.i.i, i64 %i.cf
  br label %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"

"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i": ; preds = %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread", %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit"
  %.val3.i.i.i.i.i40113 = phi <16 x i8> [ %.val3.i.i.i.i.i40, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.val3.i.i.i.i.i40, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ splat (i8 -1), %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.084.0112 = phi ptr [ %.sroa.0.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %.sroa.0.0.i.i, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ @77, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.586.0111 = phi i64 [ %.sroa.5.0.i.i, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.790.0110 = phi i64 [ %i.as, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ %i.as, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ] ; 3 uses
  %.sroa.5.sroa.0.0.i.i.i.i.i.i = phi i64 [ %i.ce, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.5.sroa.4.0.i.i.i.i.i.i = phi ptr [ %i.cg, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ undef, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %.sroa.0.0.i.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i.i ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit" ], [ 0, %"_ZN83_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h0f9f077cf0e7e9c1E.exit.thread" ]
  %i.ch = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.084.0112, i64 16
  %i.cj = icmp sgt <16 x i8> %.val3.i.i.i.i.i40113, splat (i8 -1)
  %i.ck = getelementptr i8, ptr %.sroa.084.0112, i64 %.sroa.586.0111
  %i.cl = getelementptr i8, ptr %i.ck, i64 1
  store i64 %.sroa.0.0.i.i.i.i.i.i, ptr %i.f, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.4.0..sroa_idx.i.i41 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.5.sroa.0.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i41, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %.sroa.5.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.6.0..sroa_idx.i.i42 = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store ptr %.sroa.084.0112, ptr %.sroa.6.0..sroa_idx.i.i42, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr %i.ci, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %i.cl, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store <16 x i1> %i.cj, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !alias.scope !12601, !noalias !12603
  %.sroa.101.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 56
  store i64 %.sroa.790.0110, ptr %.sroa.101.0..sroa_idx.i.i, align 8, !alias.scope !12601, !noalias !12603
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.cn = load i64, ptr %i.cm, align 8, !alias.scope !12599, !noalias !12604, !noundef !25
  %i.co = icmp eq i64 %i.cn, 0
  %i.cp = add i64 %.sroa.790.0110, 1
  %i.cq = lshr i64 %i.cp, 1
  %.sroa.0.0.i = select i1 %i.co, i64 %.sroa.790.0110, i64 %i.cq ; 2 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cs = load i64, ptr %i.cr, align 8, !alias.scope !12605, !noalias !12606, !noundef !25
  %i.ct = icmp ugt i64 %.sroa.0.0.i, %i.cs
  br i1 %i.ct, label %bb.s, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i", !prof !33

bb.s:                                             ; preds = %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"
  %i.cu = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.cv = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17he30a5e2ac34175ceE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ch, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cu, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i" unwind label %bb.ae, !noalias !12604 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i": ; preds = %bb.s, %"_ZN115_$LT$std..collections..hash..map..HashMap$LT$K$C$V$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17hcba43b8afc7083d8E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !12607
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.f, i64 64, i1 false), !noalias !12600
  call void @llvm.experimental.noalias.scope.decl(metadata !12608)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i.i.i.i)
  %i.cw = getelementptr inbounds nuw i8, ptr %i.e, i64 56 ; 3 uses
  %.promoted.i.i.i.i = load i64, ptr %i.cw, align 8, !noalias !12609 ; 2 uses
  %i.cx = icmp eq i64 %.promoted.i.i.i.i, 0
  br i1 %i.cx, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i43

.lr.ph.i.i.i.i43:                                 ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17h6cd04d3ba3defabbE.exit.i"
  %i.cy = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.e, i64 48 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.e, i64 32 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.db = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.promoted10.i.i.i.i = load i16, ptr %i.cz, align 8, !alias.scope !12610, !noalias !12611
  %.promoted11.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !12608, !noalias !12612
  %.promoted14.i.i.i.i = load ptr, ptr %i.da, align 8, !alias.scope !12608, !noalias !12612
  br label %bb.t

bb.t:                                             ; preds = %bb.y, %.lr.ph.i.i.i.i43
  %.lcssa16.i.i.i.i = phi ptr [ %.promoted14.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.promoted11.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %.lcssa913.i.i.i.i = phi ptr [ %.promoted11.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %.promoted7.i.i.i.i.i.i, %bb.y ] ; 2 uses
  %i.dc = phi i16 [ %.promoted10.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %i.dn, %bb.y ] ; 2 uses
  %i.dd = phi i64 [ %.promoted.i.i.i.i, %.lr.ph.i.i.i.i43 ], [ %i.dq, %bb.y ]
  call void @llvm.experimental.noalias.scope.decl(metadata !12613)
  call void @llvm.experimental.noalias.scope.decl(metadata !12614)
  %.not13.i.i.i.i.i.i = icmp eq i16 %i.dc, 0
  br i1 %.not13.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i
  store ptr %i.di, ptr %i.da, align 8, !alias.scope !12610, !noalias !12611
  store ptr %i.dh, ptr %i.cy, align 8, !alias.scope !12610, !noalias !12611
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %.lr.ph.i.i.i.i.i.i
  %i.de = phi ptr [ %i.di, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i, %bb.t ] ; 2 uses
  %i.df = phi ptr [ %i.dh, %.lr.ph.i.i.i.i.i.i ], [ %.lcssa913.i.i.i.i, %bb.t ]
  %.val11.i.i.i.i.i.i = load <16 x i8>, ptr %i.de, align 16, !noalias !12615
  %i.dg = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i, splat (i8 -1)
  %i.dh = getelementptr inbounds i8, ptr %i.df, i64 -512 ; 3 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.de, i64 16 ; 3 uses
  %.cast.i.i.i.i.i.i = bitcast <16 x i1> %i.dg to i16 ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.x, %bb.v
  %i.dj = landingpad { ptr, i32 }
          cleanup
  store i16 %i.dn, ptr %i.cz, align 8, !alias.scope !12610, !noalias !12611
  store i64 %i.dq, ptr %i.cw, align 8, !alias.scope !12616, !noalias !12611
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$hashbrown..raw..RawIntoIter$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$$GT$17h524d19f9f1d3216dE"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e) #53
          to label %bb.ap unwind label %bb.z, !noalias !12617

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i": ; preds = %._crit_edge.i.i.i.i.i.i, %bb.t
  %.promoted11.i.i.i.i.i.i = phi ptr [ %i.di, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa16.i.i.i.i, %bb.t ] ; 2 uses
  %.promoted7.i.i.i.i.i.i = phi ptr [ %i.dh, %._crit_edge.i.i.i.i.i.i ], [ %.lcssa913.i.i.i.i, %bb.t ] ; 3 uses
  %.lcssa.i.i.i.i.i.i = phi i16 [ %.cast.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i ], [ %i.dc, %bb.t ] ; 3 uses
  %i.dk = add i16 %.lcssa.i.i.i.i.i.i, -1
  %i.dl = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i, i1 true)
  %i.dm = zext nneg i16 %i.dl to i64
  %i.dn = and i16 %i.dk, %.lcssa.i.i.i.i.i.i      ; 4 uses
  %i.do = sub nsw i64 0, %i.dm
  %i.dp = getelementptr inbounds [32 x i8], ptr %.promoted7.i.i.i.i.i.i, i64 %i.do ; 2 uses
  %i.dq = add i64 %i.dd, -1                       ; 6 uses
  %i.dr = getelementptr inbounds i8, ptr %i.dp, i64 -32
  %.sroa.03.0.copyload4.i.i.i.i = load i64, ptr %i.dr, align 8, !noalias !12618 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.03.0.copyload4.i.i.i.i, -9223372036854775808
  br i1 %.not.i.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i, label %bb.v

bb.v:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"
  %.sroa.7.0..sroa_idx5.i.i.i.i = getelementptr inbounds i8, ptr %i.dp, i64 -24
  call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx5.i.i.i.i, i64 24, i1 false), !noalias !12619
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !12620
  store i64 %.sroa.03.0.copyload4.i.i.i.i, ptr %i.d, align 8, !noalias !12620
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.i.i.i.i, i64 24, i1 false), !noalias !12620
  call void @llvm.experimental.noalias.scope.decl(metadata !12621)
  call void @llvm.experimental.noalias.scope.decl(metadata !12622)
  %i.ds = load ptr, ptr %i.db, align 8, !alias.scope !12623, !noalias !12620, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !12624
  %i.dt = invoke fastcc noundef ptr @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17hd63be122fd9fb5b0E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.ch, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.d, ptr noundef nonnull %i.ds)
          to label %.noexc.i.i.i.i44 unwind label %bb.u, !noalias !12619 ; 4 uses

.noexc.i.i.i.i44:                                 ; preds = %bb.v
  store ptr %i.dt, ptr %i.c, align 8, !noalias !12624
  %i.du = icmp eq ptr %i.dt, null
  br i1 %i.du, label %bb.y, label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i.i44
  %i.dv = load i64, ptr %i.dt, align 8, !noalias !12625, !noundef !25
  %i.dw = add i64 %i.dv, -1                       ; 2 uses
  store i64 %i.dw, ptr %i.dt, align 8, !noalias !12625
  %i.dx = icmp eq i64 %i.dw, 0
  br i1 %i.dx, label %bb.x, label %bb.y

bb.x:                                             ; preds = %bb.w
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h940cfb47f23fff8cE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.c)
          to label %bb.y unwind label %bb.u, !noalias !12619

bb.y:                                             ; preds = %bb.x, %bb.w, %.noexc.i.i.i.i44
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !12624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !12620
  %i.dy = icmp eq i64 %i.dq, 0
  br i1 %i.dy, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %bb.t

bb.z:                                             ; preds = %bb.u
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !12619
  unreachable

_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i: ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hcce70c64973d2795E.exit.i.i.i.i"
  store i16 %i.dn, ptr %i.cz, align 8, !alias.scope !12610, !noalias !12611
  store i64 %i.dq, ptr %i.cw, align 8, !alias.scope !12616, !noalias !12611
  call void @llvm.experimental.noalias.scope.decl(metadata !12626)
  call void @llvm.experimental.noalias.scope.decl(metadata !12627)
  %i.ea = icmp eq i64 %i.dq, 0
  br i1 %i.ea, label %"_ZN9hashbrown3raw16RawIter$LT$T$GT$13drop_elements17ha8ba81e8172c2570E.exit.i.i.i.i.i", label %.preheader.i.i.i.i.i.i

.preheader.i.i.i.i.i.i:                           ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i"
  %.lcssa13.i.i.i.i.i.i = phi ptr [ %.lcssa12.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %.promoted11.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %i.eb = phi i64 [ %i.eo, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %i.dq, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ]
  %.lcssa69.i.i.i.i.i.i = phi ptr [ %.lcssa68.i.i.i.i.i.i, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %.promoted7.i.i.i.i.i.i, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %i.ec = phi i16 [ %i.el, %"_ZN4core3ptr102drop_in_place$LT$$LP$alloc..string..String$C$alloc..rc..Rc$LT$actix_web..rmap..ResourceMap$GT$$RP$$GT$17h34e74cbf90b2631bE.exit.i.i.i.i.i.i" ], [ %i.dn, %_ZN4core4iter6traits8iterator8Iterator4fold17h140e3e7dabab21c3E.exit.i.i.i ] ; 2 uses
  %.not13.i.i.i.i.i.i.i = icmp eq i16 %i.ec, 0
  br i1 %.not13.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i
  %i.ed = phi ptr [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa13.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.ee = phi ptr [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ], [ %.lcssa69.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ]
  %.val11.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ed, align 16, !noalias !12628
  %i.ef = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i, splat (i8 -1)
  %i.eg = getelementptr inbounds i8, ptr %i.ee, i64 -512 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ef to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i"

"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17hca5e3c178469850eE.exit.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i
  %.lcssa12.i.i.i.i.i.i = phi ptr [ %.lcssa13.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.eh, %.lr.ph.i.i.i.i.i.i.i ]
  %.lcssa68.i.i.i.i.i.i = phi ptr [ %.lcssa69.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i ], [ %i.eg, %.lr.ph.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i = phi i16 [ %i.ec, %.preheader.i.i.i.i.i.i ], [ %.cast.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i ] ; 3 uses
  %i.ei = add i16 %.lcssa.i.i.i.i.i.i.i, -1
  %i.ej = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i, i1 true)
  %i.ek = zext nneg i16 %i.ej to i64
  %i.el = and i16 %i.ei, %.lcssa.i.i.i.i.i.i.i
  %i.em = sub nsw i64 0, %i.ek
  %i.en = getelementptr inbounds [32 x i8], ptr %.lcssa68.i.i.i.i.i.i, i64 %i.em ; 3 uses
  %i.eo = add i64 %i.eb, -1                       ; 2 uses
  %i.ep = getelementptr inbounds i8, ptr %i.en, i64 -32
  call void @llvm.experimental.noalias.scope.decl(metadata !12629)
end_hunk_0
