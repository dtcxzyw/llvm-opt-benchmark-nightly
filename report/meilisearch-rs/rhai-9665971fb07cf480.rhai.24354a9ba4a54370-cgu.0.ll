Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/rhai-9665971fb07cf480.rhai.24354a9ba4a54370-cgu.0?download=true
inline.NumInlined: 22837
inline.NumDeleted: 6491
loop-unroll.NumCompletelyUnrolled: 109
loop-unroll.NumRuntimeUnrolled: 150
loop-unroll.NumUnrolled: 259
begin_hunk_0_@_ZN4rhai8packages11array_basic15array_functions12extract_tail17ha533dce96eaa0d2dE:bb.a

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i: ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, %bb.d
  store i64 0, ptr %0, align 8, !alias.scope !44160, !noalias !44161
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.l, align 8, !alias.scope !44160, !noalias !44161
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.m, align 8, !alias.scope !44160, !noalias !44161
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

bb.f:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  %i.n = add nuw i64 %spec.select.i.i, %.sroa.01.0.i.i ; 2 uses
  %.not.i = icmp ugt i64 %i.n, %i.b
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !83

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.01.0.i.i, i64 noundef %i.n, i64 noundef %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1868) #70, !noalias !44162
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !44161, !noalias !44160, !nonnull !55, !noundef !55
  %i.q = getelementptr inbounds nuw [16 x i8], ptr %i.p, i64 %.sroa.01.0.i.i
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hdd9f0a48cae959c4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.q, i64 noundef %spec.select.i.i), !noalias !44161
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit: ; preds = %bb.b, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i, %bb.h
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions12retain_range17h36f461ee0f2c1528E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !noundef !55 ; 7 uses
  %i.f = icmp ult i64 %i.e, 576460752303423488
  tail call void @llvm.assume(i1 %i.f)
  %i.g = icmp eq i64 %i.e, 0
  %i.h = icmp slt i64 %3, 1
  %or.cond = or i1 %i.h, %i.g
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.j, align 8
  br label %bb.i

bb.c:                                             ; preds = %bb.a
  %i.k = icmp slt i64 %2, 0
  br i1 %i.k, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i = icmp samesign ult i64 %2, %i.e
  br i1 %.not.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread

bb.e:                                             ; preds = %bb.c
  %i.l = sub i64 0, %2
  %i.m = tail call noundef range(i64 0, -1) i64 @llvm.usub.sat.i64(i64 range(i64 1, -9223372036854775808) %i.e, i64 range(i64 1, -9223372036854775807) %i.l)
  br label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit: ; preds = %bb.e, %bb.d
  %.sroa.01.0.i = phi i64 [ %i.m, %bb.e ], [ %2, %bb.d ] ; 5 uses
  %i.n = sub nsw i64 %i.e, %.sroa.01.0.i          ; 2 uses
  %spec.select.i = tail call i64 @llvm.umin.i64(i64 %3, i64 %i.n) ; 5 uses
  %i.o = icmp eq i64 %spec.select.i, 0
  br i1 %i.o, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, label %bb.f

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread: ; preds = %bb.d, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  store i64 0, ptr %0, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.q, align 8
  br label %bb.i

bb.f:                                             ; preds = %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44169)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44170)
  %i.r = icmp samesign ugt i64 %.sroa.01.0.i, %i.e
  br i1 %i.r, label %bb.g, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h0677e62b58efa08fE.exit", !prof !66

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef 0, i64 noundef %.sroa.01.0.i, i64 noundef range(i64 0, -9223372036854775808) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70, !noalias !44171
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h0677e62b58efa08fE.exit": ; preds = %bb.f
  store i64 0, ptr %i.d, align 8, !alias.scope !44170, !noalias !44169
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !44170, !noalias !44169, !nonnull !55, !noundef !55 ; 2 uses
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %.sroa.01.0.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 %.sroa.01.0.i, ptr %i.v, align 8, !alias.scope !44169, !noalias !44170
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 %i.n, ptr %i.w, align 8, !alias.scope !44169, !noalias !44170
  store ptr %i.t, ptr %i.b, align 8, !alias.scope !44169, !noalias !44170
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.u, ptr %i.x, align 8, !alias.scope !44169, !noalias !44170
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %1, ptr %i.y, align 8, !alias.scope !44169, !noalias !44170
  call fastcc void @_ZN4core4iter6traits8iterator8Iterator7collect17h56774169da76f29aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44172)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44173)
  %i.z = load i64, ptr %i.d, align 8, !alias.scope !44173, !noalias !44172, !noundef !55 ; 6 uses
  %i.aa = icmp ult i64 %i.z, 576460752303423488
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp samesign ugt i64 %spec.select.i, %i.z
  br i1 %i.ab, label %bb.h, label %bb.k, !prof !66

bb.h:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h0677e62b58efa08fE.exit"
  invoke void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %spec.select.i, i64 noundef range(i64 0, -9223372036854775808) %i.z, i64 noundef range(i64 0, -9223372036854775808) %i.z, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2624) #70
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.h
  unreachable

bb.i:                                             ; preds = %bb.l, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread, %bb.b
  ret void

bb.j:                                             ; preds = %bb.k, %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr73drop_in_place$LT$alloc..vec..Vec$LT$rhai..types..dynamic..Dynamic$GT$$GT$17h782e8d342978f167E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #72
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h0677e62b58efa08fE.exit"
  store i64 %spec.select.i, ptr %i.d, align 8, !alias.scope !44173, !noalias !44172
  %i.ad = load ptr, ptr %i.s, align 8, !alias.scope !44173, !noalias !44172, !nonnull !55, !noundef !55 ; 2 uses
  %i.ae = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %spec.select.i
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %i.ad, i64 %i.z
  %i.ag = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.z, ptr %i.ag, align 8, !alias.scope !44172, !noalias !44173
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.ah, align 8, !alias.scope !44172, !noalias !44173
  store ptr %i.ae, ptr %i.a, align 8, !alias.scope !44172, !noalias !44173
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.af, ptr %i.ai, align 8, !alias.scope !44172, !noalias !44173
  %i.aj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %1, ptr %i.aj, align 8, !alias.scope !44172, !noalias !44173
  invoke fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$14extend_trusted17hfdfd415d03bb5600E"(ptr noalias noundef align 8 dereferenceable(24) %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(40) %i.a)
          to label %bb.l unwind label %bb.j

bb.l:                                             ; preds = %bb.k
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.m:                                             ; preds = %bb.j
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.n:                                             ; preds = %bb.j
  resume { ptr, i32 } %i.ac
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions12splice_range17hf256ebffde09e14aE(ptr noalias noundef align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %1, i64 0) ; 3 uses
  %.sroa.0.0.i2 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %2)
  %i.a = sub nuw nsw i64 %.sroa.0.0.i2, %.sroa.0.0.i
  tail call void @_ZN4rhai8packages11array_basic15array_functions6splice17hd3738da0b65d8c4dE(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %.sroa.0.0.i, i64 noundef %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %3)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions13extract_range17h1d36c94220e33734E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, i64 noundef %2, i64 noundef %3) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.i = tail call noundef i64 @llvm.smax.i64(i64 %2, i64 0) ; 5 uses
  %.sroa.0.0.i1 = tail call noundef i64 @llvm.smax.i64(i64 %.sroa.0.0.i, i64 %3)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44178)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !alias.scope !44178, !noalias !44177, !noundef !55 ; 4 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  %i.e = icmp sge i64 %.sroa.0.0.i, %3
  %or.cond.i = or i1 %i.e, %i.d
  br i1 %or.cond.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 0, ptr %0, align 8, !alias.scope !44177, !noalias !44178
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !alias.scope !44177, !noalias !44178
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.g, align 8, !alias.scope !44177, !noalias !44178
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

bb.c:                                             ; preds = %bb.a
  %.not.i.i = icmp samesign ult i64 %.sroa.0.0.i, %i.b
  br i1 %.not.i.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i, label %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i.a

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i.a: ; preds = %bb.c
  store i64 0, ptr %0, align 8, !alias.scope !44177, !noalias !44178
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.h, align 8, !alias.scope !44177, !noalias !44178
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %4, align 8, !alias.scope !44177, !noalias !44178
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i: ; preds = %bb.c
  %5 = tail call i64 @llvm.umin.i64(i64 %.sroa.0.0.i1, i64 %i.b)
  %spec.select.i.i = sub nuw nsw i64 %5, %.sroa.0.0.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %6 = load ptr, ptr %i.i, align 8, !alias.scope !44178, !noalias !44177, !nonnull !55, !noundef !55
  %7 = getelementptr inbounds nuw [16 x i8], ptr %6, i64 %.sroa.0.0.i
  tail call fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hdd9f0a48cae959c4E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %7, i64 noundef %spec.select.i.i), !noalias !44178
  br label %_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit

_ZN4rhai8packages11array_basic15array_functions7extract17h253114294c45b06fE.exit: ; preds = %bb.b, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.thread.i.a, %_ZN4rhai4eval6target15calc_offset_len17h407217cb2a84fe50E.exit.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define { i64, ptr } @_ZN4rhai8packages11array_basic15array_functions15index_of_filter17hdca923314cee2403E(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #8 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !55 ; 3 uses
  %i.d = icmp ult i64 %i.c, 576460752303423488
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp eq i64 %i.c, 0
  br i1 %i.e, label %bb.b, label %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  br label %bb.c

_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit: ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44183)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !44184
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %2, i64 48, i1 false), !noalias !44185
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val.i = load ptr, ptr %i.f, align 8, !alias.scope !44183, !noalias !44186
  %i.g = call fastcc { i64, ptr } @_ZN4rhai8packages11array_basic20index_of_start_inner17h10782a6c2801402fE(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %0, ptr %.val.i, i64 %i.c, ptr noalias noundef align 8 captures(address) dereferenceable(48) %i.a, i64 noundef 0), !noalias !44187 ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !44184
  br label %bb.c

bb.c:                                             ; preds = %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit, %bb.b
  %.sroa.3.0 = phi ptr [ inttoptr (i64 -1 to ptr), %bb.b ], [ %i.i, %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit ]
  %.sroa.0.0 = phi i64 [ 0, %bb.b ], [ %i.h, %_ZN4rhai8packages11array_basic15array_functions29index_of_filter_starting_from17hb4148fbfd2bdc623E.exit ]
  %i.j = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.k = insertvalue { i64, ptr } %i.j, ptr %.sroa.3.0, 1
  ret { i64, ptr } %i.k
}

; Function Attrs: nonlazybind uwtable
define void @_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer17h52b8b5fd5dc4c796E(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !55 ; 7 uses
  %i.c = icmp ult i64 %i.b, 576460752303423488
  tail call void @llvm.assume(i1 %i.c)
  %i.d = icmp eq i64 %i.b, 0
  br i1 %i.d, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44196)
  %i.e = icmp eq i64 %i.b, 1
  br i1 %i.e, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !44196, !noalias !44197, !nonnull !55, !noundef !55 ; 5 uses
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.0.026.i = phi i64 [ 1, %bb.c ], [ %i.k, %bb.f ] ; 5 uses
  %i.h = getelementptr [16 x i8], ptr %i.g, i64 %.sroa.0.026.i ; 3 uses
  %i.i = getelementptr i8, ptr %i.h, i64 -16
  %i.j = invoke fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nonnull readonly align 8 dereferenceable(48) %2, ptr nonnull readonly align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(16) %i.h, ptr noalias noundef align 8 dereferenceable(16) %i.i)
          to label %.noexc unwind label %bb.k

.noexc:                                           ; preds = %bb.d
  %i.k = add nuw nsw i64 %.sroa.0.026.i, 1        ; 5 uses
  br i1 %i.j, label %bb.g, label %bb.f

.loopexit.i:                                      ; preds = %bb.j, %.lr.ph.i
  %.sroa.5.0.ph.i = phi i64 [ %.sroa.5.127.i, %.lr.ph.i ], [ %i.x, %bb.j ]
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

.loopexit.split-lp.i:                             ; preds = %bb.g
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.e:                                             ; preds = %.loopexit.split-lp.i, %.loopexit.i
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.ph.i, %.loopexit.i ], [ %i.k, %.loopexit.split-lp.i ] ; 2 uses
  %.sroa.12.0.i = phi i64 [ %.sroa.12.128.i, %.loopexit.i ], [ %.sroa.0.026.i, %.loopexit.split-lp.i ] ; 2 uses
  %lpad.phi.i = phi { ptr, i32 } [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.i ]
  %i.l = sub i64 %i.b, %.sroa.5.0.i               ; 2 uses
  %i.m = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.12.0.i
  %i.n = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.5.0.i
  %i.o = shl i64 %i.l, 4
  tail call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.m, ptr nonnull align 8 %i.n, i64 %i.o, i1 false), !noalias !44198
  %i.p = add i64 %i.l, %.sroa.12.0.i
  store i64 %i.p, ptr %i.a, align 8, !alias.scope !44196, !noalias !44199
  br label %.body

bb.f:                                             ; preds = %.noexc
  %.not.i = icmp eq i64 %i.k, %i.b
  br i1 %.not.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit", label %bb.d

bb.g:                                             ; preds = %.noexc
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.h)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" unwind label %.loopexit.split-lp.i, !noalias !44200, !inline_history !73

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i": ; preds = %bb.g
  %i.q = icmp samesign ult i64 %i.k, %i.b
  br i1 %i.q, label %.lr.ph.i, label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i": ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i"
  %.sroa.12.1.lcssa.i = phi i64 [ %.sroa.0.026.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ], [ %.sroa.12.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ]
  store i64 %.sroa.12.1.lcssa.i, ptr %i.a, align 8, !alias.scope !44196, !noalias !44197
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit"

.lr.ph.i:                                         ; preds = %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i", %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i"
  %.sroa.12.128.i = phi i64 [ %.sroa.12.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ], [ %.sroa.0.026.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ] ; 4 uses
  %.sroa.5.127.i = phi i64 [ %.sroa.5.2.i, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" ], [ %i.k, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit.preheader.i" ] ; 4 uses
  %i.r = getelementptr inbounds nuw [16 x i8], ptr %i.g, i64 %.sroa.5.127.i ; 3 uses
  %i.s = getelementptr [16 x i8], ptr %i.g, i64 %.sroa.12.128.i ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 -16
  %i.u = invoke fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nonnull readonly align 8 dereferenceable(48) %2, ptr nonnull readonly align 8 dereferenceable(56) %0, ptr noalias noundef align 8 dereferenceable(16) %i.r, ptr noalias noundef align 8 dereferenceable(16) %i.t)
          to label %bb.h unwind label %.loopexit.i, !noalias !44196

bb.h:                                             ; preds = %.lr.ph.i
  br i1 %i.u, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, ptr noundef nonnull align 8 dereferenceable(16) %i.r, i64 16, i1 false), !noalias !44200
  %i.v = add i64 %.sroa.12.128.i, 1
  %i.w = add nuw nsw i64 %.sroa.5.127.i, 1
  br label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i"

bb.j:                                             ; preds = %bb.h
  %i.x = add nuw nsw i64 %.sroa.5.127.i, 1        ; 2 uses
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.r)
          to label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i" unwind label %.loopexit.i, !noalias !44200, !inline_history !73

"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit14.i": ; preds = %bb.j, %bb.i
  %.sroa.5.2.i = phi i64 [ %i.w, %bb.i ], [ %i.x, %bb.j ] ; 2 uses
  %.sroa.12.2.i = phi i64 [ %i.v, %bb.i ], [ %.sroa.12.128.i, %bb.j ] ; 2 uses
  %i.y = icmp samesign ult i64 %.sroa.5.2.i, %i.b
  br i1 %i.y, label %.lr.ph.i, label %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8dedup_by17hb6d8b0ac7f1899c7E.exit": ; preds = %bb.f, %bb.a, %bb.b, %"_ZN4core3ptr50drop_in_place$LT$rhai..types..dynamic..Dynamic$GT$17hebb38c0752eb41d6E.exit._crit_edge.i"
  tail call fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void

bb.k:                                             ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.e, %bb.k
  %eh.lpad-body = phi { ptr, i32 } [ %i.z, %bb.k ], [ %lpad.phi.i, %bb.e ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$rhai..types..fn_ptr..FnPtr$GT$17hb4a2b9fd1bf00e83E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %2) #72
          to label %bb.m unwind label %bb.l

bb.l:                                             ; preds = %.body
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #73
  unreachable

bb.m:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN4rhai8packages11array_basic15array_functions17dedup_by_comparer28_$u7b$$u7b$closure$u7d$$u7d$17ha01eef4794f77af0E"(ptr nofree readonly captures(none) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [32 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %1)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @"_ZN68_$LT$rhai..types..dynamic..Dynamic$u20$as$u20$core..clone..Clone$GT$5clone17h1b28c043977b7655E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$rhai..types..dynamic..Union$GT$17h49c4795ab223165bE"(ptr noalias noundef readonly align 8 dereferenceable(16) %i.b)
          to label %common.resume unwind label %bb.h, !inline_history !73

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.h, ptr noundef nonnull align 8 dereferenceable(16) %i.a, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4rhai5types6fn_ptr5FnPtr8call_raw17hfa5242f005dea6bfE(ptr noalias noundef align 8 captures(address) dereferenceable(16) %i.d, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %.0.val, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %.8.val, ptr noalias noundef align 8 dereferenceable_or_null(16) null, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44209)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44210)
end_hunk_0
