Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/regex_automata-4af06e9cdbcb175e.regex_automata.4a84a3584f3e0a2d-cgu.11?download=true
inline.NumInlined: 520
inline.NumDeleted: 182
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN4core5slice4sort6stable5drift4sort17h906f201189796b66E:bb.a
bb.r:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw [8 x i8], ptr %i.b, i64 %i.bc
  %i.bi = load i64, ptr %i.bh, align 8, !noundef !5 ; 3 uses
  %i.bj = lshr i64 %i.bi, 1                       ; 5 uses
  %i.bk = lshr i64 %.sroa.023.137, 1              ; 3 uses
  %i.bl = add nuw i64 %i.bj, %i.bk                ; 5 uses
  %i.bm = sub i64 %.sroa.09.0, %i.bl
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %0, i64 %i.bm ; 3 uses
  %i.bo = icmp ugt i64 %i.bl, %3
  %i.bp = trunc i64 %.sroa.023.137 to i1
  %i.bq = or i64 %i.bi, %.sroa.023.137
  %i.br = trunc i64 %i.bq to i1
  %or.cond3.i = or i1 %i.bo, %i.br
  br i1 %or.cond3.i, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.bs = trunc i64 %i.bi to i1
  br i1 %i.bs, label %bb.u, label %bb.v

bb.t:                                             ; preds = %bb.r
  %i.bt = shl i64 %i.bl, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit

bb.u:                                             ; preds = %bb.v, %bb.s
  br i1 %i.bp, label %bb.w, label %bb.x

bb.v:                                             ; preds = %bb.s
  %i.bu = or i64 %i.bj, 1
  %i.bv = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.bu, i1 true)
  %i.bw = trunc nuw nsw i64 %i.bv to i32
  %i.bx = shl nuw nsw i32 %i.bw, 1
  %i.by = xor i32 %i.bx, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %i.bn, i64 noundef %i.bj, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.by, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.u

bb.w:                                             ; preds = %bb.x, %bb.u
  tail call void @_ZN4core5slice4sort6stable5merge5merge17h13e7f218d54ff4c0E(ptr noalias noundef nonnull align 4 %i.bn, i64 noundef range(i64 0, -1) %i.bl, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i64 noundef %i.bj, ptr noalias noundef nonnull align 1 %5)
  %i.bz = shl i64 %i.bl, 1
  %i.ca = or disjoint i64 %i.bz, 1
  br label %_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit

bb.x:                                             ; preds = %bb.u
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.bn, i64 %i.bj
  %i.cc = or i64 %i.bk, 1
  %i.cd = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cc, i1 true)
  %i.ce = trunc nuw nsw i64 %i.cd to i32
  %i.cf = shl nuw nsw i32 %i.ce, 1
  %i.cg = xor i32 %i.cf, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %i.cb, i64 noundef %i.bk, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cg, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.w

_ZN4core5slice4sort6stable5drift13logical_merge17h9aae1791eda9bb92E.exit: ; preds = %bb.t, %bb.w
  %.sroa.0.0.i = phi i64 [ %i.ca, %bb.w ], [ %i.bt, %bb.t ] ; 2 uses
  %i.ch = icmp ugt i64 %i.bc, 1
  br i1 %i.ch, label %.lr.ph, label %._crit_edge

bb.y:                                             ; preds = %._crit_edge
  %i.ci = add nuw nsw i64 %.sroa.02.1.lcssa, 1
  %i.cj = lshr i64 %.sroa.018.0, 1
  %i.ck = add i64 %i.cj, %.sroa.09.0
  br label %bb.f

bb.z:                                             ; preds = %._crit_edge
  %i.cl = and i64 %.sroa.023.1.lcssa, 1
  %.not31 = icmp eq i64 %i.cl, 0
  br i1 %.not31, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %i.cm = or i64 %1, 1
  %i.cn = tail call range(i64 0, 64) i64 @llvm.ctlz.i64(i64 %i.cm, i1 true)
  %i.co = trunc nuw nsw i64 %i.cn to i32
  %i.cp = shl nuw nsw i32 %i.co, 1
  %i.cq = xor i32 %i.cp, 126
  tail call void @_ZN4core5slice4sort6stable9quicksort9quicksort17ha3c1028d8114576bE(ptr noalias noundef nonnull align 4 %0, i64 noundef %1, ptr noalias noundef nonnull align 4 %2, i64 noundef %3, i32 noundef %i.cq, ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable_or_null(4) null, ptr noalias noundef nonnull align 1 %5)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.z, %bb.aa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ac

bb.ac:                                            ; preds = %bb.a, %bb.ab
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc5f9b252535ba185E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #0 {
bb.a:
  %.val = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.c = tail call noundef zeroext i1 @"_ZN4core5slice3cmp81_$LT$impl$u20$core..cmp..PartialEq$LT$$u5b$U$u5d$$GT$$u20$for$u20$$u5b$T$u5d$$GT$2eq17hc611a94e807e7660E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, i64 noundef %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %.val1)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define hidden noundef zeroext i1 @"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hc659dfb599125639E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %2) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val1 = load i64, ptr %i.a, align 8, !noundef !5
  %.not.i = icmp eq i64 %1, %.val1
  br i1 %.not.i, label %bb.b, label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit"

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %2, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %bcmp.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %0, ptr nonnull readonly align 1 %i.b, i64 %1), !alias.scope !2967
  %i.c = icmp eq i32 %bcmp.i, 0
  br label %"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit"

"_ZN4core3str6traits54_$LT$impl$u20$core..cmp..PartialEq$u20$for$u20$str$GT$2eq17h276c06cb868a1e82E.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i = phi i1 [ %i.c, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN62_$LT$core..char..EscapeDebug$u20$as$u20$core..fmt..Display$GT$3fmt17h6b7cfb9d39272b1dE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @"_ZN106_$LT$core..escape..EscapeIterInner$LT$_$C$core..escape..MaybeEscaped$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17habc9d025bca6f3bcE"(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$core..str..error..Utf8Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h1ab0e6022e16e251E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field2_finish17h76eec2bdcf20fea6E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @101, i64 noundef 9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @102, i64 noundef 11, ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @99, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @103, i64 noundef 9, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @100)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h40c8d1608cfc8a92E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load i8, ptr %i.b, align 8, !range !9, !noundef !5
  %.not = icmp eq i8 %i.c, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.d = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @106, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @105)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.d, %bb.b ], [ %i.e, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hdbab190ec91e2bf0E"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i8, ptr %0, align 1, !range !10, !noundef !5
  %.not = icmp eq i8 %i.b, 2
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @106, i64 noundef 4, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @107)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @104, i64 noundef 4)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 3 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [16 x i8], align 8                ; 15 uses
  %i.g = alloca [10 x i8], align 1                ; 14 uses
  %i.h = load i8, ptr %0, align 1, !noundef !5    ; 2 uses
  %i.i = icmp eq i8 %i.h, 32
  br i1 %i.i, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit, label %bb.b

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val26 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val25 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.val26, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !2975, !nonnull !5
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val25, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @110, i64 noundef 3), !noalias !2975, !inline_history !0
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) %i.g, i8 0, i64 10, i1 false)
  %i.n = tail call i64 @_ZN4core5ascii14escape_default17h891a98644b91b709E(i8 noundef %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %i.n, ptr %i.f, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 23 uses
  store i64 0, ptr %.sroa.2.0..sroa_idx, align 8
  %i.o = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.p = extractvalue { i1, i8 } %i.o, 0
  br i1 %i.p, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %bb.b
  %i.q = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.r = add i64 %i.q, 1
  store i64 %i.r, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.s = icmp ugt i64 %i.q, 1
  %i.t = extractvalue { i1, i8 } %i.o, 1          ; 3 uses
  %i.u = add i8 %i.t, -97
  %i.v = icmp ult i8 %i.u, 6
  %or.cond5 = and i1 %i.v, %i.s
  %i.w = add nsw i8 %i.t, -32
  %spec.select = select i1 %or.cond5, i8 %i.w, i8 %i.t
  store i8 %spec.select, ptr %i.g, align 1
  %i.x = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.y = extractvalue { i1, i8 } %i.x, 0
  br i1 %i.y, label %.lr.ph.1, label %._crit_edge

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.am, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31 ]
  ret i1 %.sroa.0.0.in

._crit_edge:                                      ; preds = %.lr.ph.preheader, %.lr.ph.1, %.lr.ph.2, %.lr.ph.3, %.lr.ph.4, %.lr.ph.5, %.lr.ph.6, %.lr.ph.7, %.lr.ph.8, %.lr.ph.9, %bb.b
  %.sroa.06.0.lcssa = phi i64 [ 0, %bb.b ], [ 1, %.lr.ph.preheader ], [ 2, %.lr.ph.1 ], [ 3, %.lr.ph.2 ], [ 4, %.lr.ph.3 ], [ 5, %.lr.ph.4 ], [ 6, %.lr.ph.5 ], [ 7, %.lr.ph.6 ], [ 8, %.lr.ph.7 ], [ 9, %.lr.ph.8 ], [ 10, %.lr.ph.9 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.g, i64 noundef %.sroa.06.0.lcssa)
  call void @llvm.experimental.noalias.scope.decl(metadata !2978)
  %i.z = load i64, ptr %i.c, align 8, !range !15, !alias.scope !2978, !noundef !5
  %i.aa = trunc nuw i64 %i.z to i1
  br i1 %i.aa, label %bb.d, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31, !prof !8

bb.d:                                             ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2978
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(16) %i.ab, i64 16, i1 false)
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @97, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @96, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @112) #22, !noalias !2978
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31: ; preds = %._crit_edge
  %i.ac = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !2978, !nonnull !5, !align !7, !noundef !5
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !2978, !noundef !5
  store ptr %i.ad, ptr %i.d, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 %i.af, ptr %i.ag, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hfc384e1800be557bE", ptr %.sroa.421.0..sroa_idx, align 8
  store ptr @113, ptr %i.e, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.b, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %i.ak, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val24 = load ptr, ptr %i.al, align 8, !nonnull !5, !noundef !5
  %i.am = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val24, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

.lr.ph.1:                                         ; preds = %.lr.ph.preheader
  %i.an = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.ao = add i64 %i.an, 1
  store i64 %i.ao, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.ap = icmp ugt i64 %i.an, 1
  %i.aq = extractvalue { i1, i8 } %i.x, 1         ; 3 uses
  %i.ar = add i8 %i.aq, -97
  %i.as = icmp ult i8 %i.ar, 6
  %or.cond5.1 = and i1 %i.as, %i.ap
  %i.at = add nsw i8 %i.aq, -32
  %spec.select.1 = select i1 %or.cond5.1, i8 %i.at, i8 %i.aq
  %i.au = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  store i8 %spec.select.1, ptr %i.au, align 1
  %i.av = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.aw = extractvalue { i1, i8 } %i.av, 0
  br i1 %i.aw, label %.lr.ph.2, label %._crit_edge

.lr.ph.2:                                         ; preds = %.lr.ph.1
  %i.ax = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.ay = add i64 %i.ax, 1
  store i64 %i.ay, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.az = icmp ugt i64 %i.ax, 1
  %i.ba = extractvalue { i1, i8 } %i.av, 1        ; 3 uses
  %i.bb = add i8 %i.ba, -97
  %i.bc = icmp ult i8 %i.bb, 6
  %or.cond5.2 = and i1 %i.bc, %i.az
  %i.bd = add nsw i8 %i.ba, -32
  %spec.select.2 = select i1 %or.cond5.2, i8 %i.bd, i8 %i.ba
  %i.be = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  store i8 %spec.select.2, ptr %i.be, align 1
  %i.bf = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.bg = extractvalue { i1, i8 } %i.bf, 0
  br i1 %i.bg, label %.lr.ph.3, label %._crit_edge

.lr.ph.3:                                         ; preds = %.lr.ph.2
  %i.bh = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.bi = add i64 %i.bh, 1
  store i64 %i.bi, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.bj = icmp ugt i64 %i.bh, 1
  %i.bk = extractvalue { i1, i8 } %i.bf, 1        ; 3 uses
  %i.bl = add i8 %i.bk, -97
  %i.bm = icmp ult i8 %i.bl, 6
  %or.cond5.3 = and i1 %i.bm, %i.bj
  %i.bn = add nsw i8 %i.bk, -32
  %spec.select.3 = select i1 %or.cond5.3, i8 %i.bn, i8 %i.bk
  %i.bo = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  store i8 %spec.select.3, ptr %i.bo, align 1
  %i.bp = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.bq = extractvalue { i1, i8 } %i.bp, 0
  br i1 %i.bq, label %.lr.ph.4, label %._crit_edge

.lr.ph.4:                                         ; preds = %.lr.ph.3
  %i.br = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.bs = add i64 %i.br, 1
  store i64 %i.bs, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.bt = icmp ugt i64 %i.br, 1
  %i.bu = extractvalue { i1, i8 } %i.bp, 1        ; 3 uses
  %i.bv = add i8 %i.bu, -97
  %i.bw = icmp ult i8 %i.bv, 6
  %or.cond5.4 = and i1 %i.bw, %i.bt
  %i.bx = add nsw i8 %i.bu, -32
  %spec.select.4 = select i1 %or.cond5.4, i8 %i.bx, i8 %i.bu
  %i.by = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  store i8 %spec.select.4, ptr %i.by, align 1
  %i.bz = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.ca = extractvalue { i1, i8 } %i.bz, 0
  br i1 %i.ca, label %.lr.ph.5, label %._crit_edge

.lr.ph.5:                                         ; preds = %.lr.ph.4
  %i.cb = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.cc = add i64 %i.cb, 1
  store i64 %i.cc, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.cd = icmp ugt i64 %i.cb, 1
  %i.ce = extractvalue { i1, i8 } %i.bz, 1        ; 3 uses
  %i.cf = add i8 %i.ce, -97
  %i.cg = icmp ult i8 %i.cf, 6
  %or.cond5.5 = and i1 %i.cg, %i.cd
  %i.ch = add nsw i8 %i.ce, -32
  %spec.select.5 = select i1 %or.cond5.5, i8 %i.ch, i8 %i.ce
  %i.ci = getelementptr inbounds nuw i8, ptr %i.g, i64 5
  store i8 %spec.select.5, ptr %i.ci, align 1
  %i.cj = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.ck = extractvalue { i1, i8 } %i.cj, 0
  br i1 %i.ck, label %.lr.ph.6, label %._crit_edge

.lr.ph.6:                                         ; preds = %.lr.ph.5
  %i.cl = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.cm = add i64 %i.cl, 1
  store i64 %i.cm, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.cn = icmp ugt i64 %i.cl, 1
  %i.co = extractvalue { i1, i8 } %i.cj, 1        ; 3 uses
  %i.cp = add i8 %i.co, -97
  %i.cq = icmp ult i8 %i.cp, 6
  %or.cond5.6 = and i1 %i.cq, %i.cn
  %i.cr = add nsw i8 %i.co, -32
  %spec.select.6 = select i1 %or.cond5.6, i8 %i.cr, i8 %i.co
  %i.cs = getelementptr inbounds nuw i8, ptr %i.g, i64 6
  store i8 %spec.select.6, ptr %i.cs, align 1
  %i.ct = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.cu = extractvalue { i1, i8 } %i.ct, 0
  br i1 %i.cu, label %.lr.ph.7, label %._crit_edge

.lr.ph.7:                                         ; preds = %.lr.ph.6
  %i.cv = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.cw = add i64 %i.cv, 1
  store i64 %i.cw, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.cx = icmp ugt i64 %i.cv, 1
  %i.cy = extractvalue { i1, i8 } %i.ct, 1        ; 3 uses
  %i.cz = add i8 %i.cy, -97
  %i.da = icmp ult i8 %i.cz, 6
  %or.cond5.7 = and i1 %i.da, %i.cx
  %i.db = add nsw i8 %i.cy, -32
  %spec.select.7 = select i1 %or.cond5.7, i8 %i.db, i8 %i.cy
  %i.dc = getelementptr inbounds nuw i8, ptr %i.g, i64 7
  store i8 %spec.select.7, ptr %i.dc, align 1
  %i.dd = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.de = extractvalue { i1, i8 } %i.dd, 0
  br i1 %i.de, label %.lr.ph.8, label %._crit_edge

.lr.ph.8:                                         ; preds = %.lr.ph.7
  %i.df = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.dg = add i64 %i.df, 1
  store i64 %i.dg, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.dh = icmp ugt i64 %i.df, 1
  %i.di = extractvalue { i1, i8 } %i.dd, 1        ; 3 uses
  %i.dj = add i8 %i.di, -97
  %i.dk = icmp ult i8 %i.dj, 6
  %or.cond5.8 = and i1 %i.dk, %i.dh
  %i.dl = add nsw i8 %i.di, -32
  %spec.select.8 = select i1 %or.cond5.8, i8 %i.dl, i8 %i.di
  %i.dm = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i8 %spec.select.8, ptr %i.dm, align 1
  %i.dn = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976 ; 2 uses
  %i.do = extractvalue { i1, i8 } %i.dn, 0
  br i1 %i.do, label %.lr.ph.9, label %._crit_edge

.lr.ph.9:                                         ; preds = %.lr.ph.8
  %i.dp = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5 ; 2 uses
  %i.dq = add i64 %i.dp, 1
  store i64 %i.dq, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  %i.dr = icmp ugt i64 %i.dp, 1
  %i.ds = extractvalue { i1, i8 } %i.dn, 1        ; 3 uses
  %i.dt = add i8 %i.ds, -97
  %i.du = icmp ult i8 %i.dt, 6
  %or.cond5.9 = and i1 %i.du, %i.dr
  %i.dv = add nsw i8 %i.ds, -32
  %spec.select.9 = select i1 %or.cond5.9, i8 %i.dv, i8 %i.ds
  %i.dw = getelementptr inbounds nuw i8, ptr %i.g, i64 9
  store i8 %spec.select.9, ptr %i.dw, align 1
  %i.dx = call { i1, i8 } @"_ZN4core6escape54EscapeIterInner$LT$_$C$core..escape..AlwaysEscaped$GT$4next17hd022ae78c1e5c029E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.f), !noalias !2976
  %i.dy = extractvalue { i1, i8 } %i.dx, 0
  br i1 %i.dy, label %bb.e, label %._crit_edge

bb.e:                                             ; preds = %.lr.ph.9
  %i.dz = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976, !noundef !5
  %i.ea = add i64 %i.dz, 1
  store i64 %i.ea, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2977, !noalias !2976
  call void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef 10, i64 noundef 10, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @114) #22
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$regex_syntax..unicode..UnicodeWordError$u20$as$u20$core..fmt..Debug$GT$3fmt17h44a49edfd3694d97E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @116, i64 noundef 16, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @115)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN77_$LT$regex_automata..util..search..MatchError$u20$as$u20$core..fmt..Debug$GT$3fmt17hbbeb93230aa55534E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17hc313809d8640491eE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @118, i64 noundef 10, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @117)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..hybrid..error..BuildError$u20$as$u20$core..fmt..Display$GT$3fmt17h88b58f34631ed61cE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(128) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = load i64, ptr %0, align 8, !range !26, !noundef !5
  %i.i = tail call i64 @llvm.usub.sat.i64(i64 %i.h, i64 -9223372036854775801)
  switch i64 %i.i, label %default.unreachable [
    i64 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i64 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21
    i64 2, label %bb.b
    i64 3, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val15 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !2981, !nonnull !5
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @123, i64 noundef 18), !noalias !2981, !inline_history !0
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.o = load i64, ptr %i.n, align 8, !noundef !5
  store i64 %i.o, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.q = load i64, ptr %i.p, align 8, !noundef !5
  store i64 %i.q, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.g, ptr %i.r, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.411.0..sroa_idx, align 8
  store ptr @127, ptr %i.e, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 3, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.d, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 2, ptr %i.v, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.w, align 8, !nonnull !5, !noundef !5
  %i.x = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.z = tail call noundef zeroext i1 @"_ZN83_$LT$regex_automata..hybrid..id..LazyStateIDError$u20$as$u20$core..fmt..Display$GT$3fmt17hca4d0227454bef10E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.aa, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h7e3eea522b74381aE", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @129, ptr %i.b, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.ae, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.af, align 8, !nonnull !5, !noundef !5
  %i.ag = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val12, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.c

bb.c:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26, %bb.b, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.x, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21 ], [ %i.z, %bb.b ], [ %i.ag, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26 ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..hybrid..error..CacheError$u20$as$u20$core..fmt..Display$GT$3fmt17h479377ba1bbe1dd9E"(ptr noalias noundef nonnull readonly align 1 captures(none) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !invariant.load !5, !noalias !2984, !nonnull !5
  %i.d = tail call noundef zeroext i1 %i.c(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @130, i64 noundef 46), !noalias !2984, !inline_history !0
  ret i1 %i.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..hybrid..error..StartError$u20$as$u20$core..fmt..Display$GT$3fmt17h2b032465c9b05149E"(ptr noalias noundef readonly align 4 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [1 x i8], align 1                 ; 4 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = load i32, ptr %0, align 4, !range !2991, !noundef !5 ; 3 uses
  %i.h = add nsw i32 %i.g, -3
  %i.i = icmp samesign ugt i32 %i.g, 2
  %narrow = select i1 %i.i, i32 %i.h, i32 2
  switch i32 %narrow, label %bb.b [
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21
    i32 2, label %bb.c
  ]

bb.b:                                             ; preds = %bb.c, %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val16 = load ptr, ptr %i.j, align 8, !nonnull !5, !noundef !5
  %.val15 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.k = getelementptr inbounds nuw i8, ptr %.val16, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !5, !noalias !2992, !nonnull !5
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val15, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @131, i64 noundef 57), !noalias !2992, !inline_history !0
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21: ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.o = load i8, ptr %i.n, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store i8 %i.o, ptr %i.e, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.e, ptr %i.d, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr @"_ZN76_$LT$regex_automata..util..escape..DebugByte$u20$as$u20$core..fmt..Debug$GT$3fmt17h94caa00428537c73E", ptr %.sroa.43.0..sroa_idx, align 8
  store ptr @134, ptr %i.f, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 1, ptr %i.s, align 8
  %.val13 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val14 = load ptr, ptr %i.t, align 8, !nonnull !5, !noundef !5
  %i.u = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val13, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val14, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  switch i32 %i.g, label %bb.b [
    i32 0, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26
    i32 1, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31
    i32 2, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36
  ]

bb.d:                                             ; preds = %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit
  %.sroa.0.0.in = phi i1 [ %i.m, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit ], [ %i.u, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit21 ], [ %i.y, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26 ], [ %i.ac, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36 ]
  ret i1 %.sroa.0.0.in

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit26: ; preds = %bb.c
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val12 = load ptr, ptr %i.v, align 8, !nonnull !5, !noundef !5
  %.val11 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.w = getelementptr inbounds nuw i8, ptr %.val12, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !5, !noalias !2993, !nonnull !5
  %i.y = tail call noundef zeroext i1 %i.x(ptr noundef nonnull align 1 %.val11, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @135, i64 noundef 84), !noalias !2993, !inline_history !0
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit31: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val10 = load ptr, ptr %i.z, align 8, !nonnull !5, !noundef !5
  %.val9 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.aa = getelementptr inbounds nuw i8, ptr %.val10, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !invariant.load !5, !noalias !2994, !nonnull !5
  %i.ac = tail call noundef zeroext i1 %i.ab(ptr noundef nonnull align 1 %.val9, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @136, i64 noundef 82), !noalias !2994, !inline_history !0
  br label %bb.d

_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit36: ; preds = %bb.c
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.af = zext i32 %i.ae to i64
  store i64 %i.af, ptr %i.b, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17hb55abab394fd8017E", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @139, ptr %i.c, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 2, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.a, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %i.aj, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load ptr, ptr %i.ak, align 8, !nonnull !5, !noundef !5
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h1d2246b072ea91ebE(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val8, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.d
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN80_$LT$regex_automata..util..escape..DebugHaystack$u20$as$u20$core..fmt..Debug$GT$3fmt17hafc80ad3d71aebbeE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
.split:
  %i.a = alloca [12 x i8], align 1                ; 6 uses
  %i.b = alloca [12 x i8], align 1                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [16 x i8], align 4                ; 15 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [4 x i8], align 4                 ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [48 x i8], align 8                ; 9 uses
  %i.l = alloca [1 x i8], align 1                 ; 5 uses
  %.val54 = load ptr, ptr %1, align 8, !nonnull !5, !noundef !5 ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val55 = load ptr, ptr %i.m, align 8, !nonnull !5, !noundef !5 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val55, i64 24
  %i.o = load ptr, ptr %i.n, align 8, !invariant.load !5, !noalias !3007, !nonnull !5 ; 3 uses
  %i.p = tail call noundef zeroext i1 %i.o(ptr noundef nonnull align 1 %.val54, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @140, i64 noundef 1), !noalias !3007, !inline_history !0
  br i1 %i.p, label %.loopexit, label %bb.a

bb.a:                                             ; preds = %.split
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 10
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 11
  %.sroa.411.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 12 ; 3 uses
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 13 ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 10
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 11
  %.sroa.437.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.433.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  %i.ak = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.al = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.am = icmp eq i64 %i.r, 0
  br i1 %i.am, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit61, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.an = load ptr, ptr %0, align 8, !nonnull !5, !align !7, !noundef !5
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %.backedge
  %.sroa.010.0197 = phi ptr [ %i.an, %.lr.ph ], [ %.sroa.010.0.be, %.backedge ] ; 5 uses
  %.sroa.8.0195 = phi i64 [ %i.r, %.lr.ph ], [ %.sroa.8.0.be, %.backedge ] ; 7 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3008)
  %i.ao = load i8, ptr %.sroa.010.0197, align 1, !alias.scope !3008, !noundef !5 ; 10 uses
  %i.ap = icmp sgt i8 %i.ao, -1
  br i1 %i.ap, label %.thread173, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.aq = icmp samesign ult i8 %i.ao, -64
  br i1 %i.aq, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ar = icmp samesign ult i8 %i.ao, -32
  br i1 %i.ar, label %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i.thread, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.as = icmp samesign ult i8 %i.ao, -16
  br i1 %i.as, label %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i.thread, label %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i

_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i: ; preds = %bb.e
  %i.at = icmp samesign ugt i8 %i.ao, -9
  %i.au = icmp ult i64 %.sroa.8.0195, 4
  %or.cond189 = or i1 %i.at, %i.au
  br i1 %or.cond189, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66, label %.thread90

_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i.thread: ; preds = %bb.d, %bb.e
  %.sroa.7.0.i.i.ph = phi i64 [ 2, %bb.d ], [ 3, %bb.e ] ; 2 uses
  %i.av = icmp ugt i64 %.sroa.7.0.i.i.ph, %.sroa.8.0195
  br i1 %i.av, label %_ZN4core3fmt9Formatter9write_fmt17ha6161c9cef1c865fE.exit66, label %.thread90

.thread173:                                       ; preds = %bb.b
  %.sroa.419.4.insert.ext.i = zext nneg i8 %i.ao to i64
  %.sroa.640.0.extract.trunc135160 = zext nneg i8 %i.ao to i32
  br label %bb.m

.thread90:                                        ; preds = %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i.thread, %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i
  %.sroa.7.0.i.i848992 = phi i64 [ 4, %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i ], [ %.sroa.7.0.i.i.ph, %_ZN14regex_automata4util4utf83len17h1ba633ed47474e7dE.exit.i.thread ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3008
  call void @_ZN4core3str8converts9from_utf817h9c5b52cb88650bd2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.010.0197, i64 noundef %.sroa.7.0.i.i848992)
  %i.aw = load i64, ptr %i.c, align 8, !range !15, !noalias !3008, !noundef !5
  %i.ax = trunc nuw i64 %i.aw to i1
  br i1 %i.ax, label %.thread164, label %bb.f

bb.f:                                             ; preds = %.thread90
  %i.ay = load ptr, ptr %i.s, align 8, !noalias !3008, !nonnull !5, !align !7, !noundef !5 ; 4 uses
  %i.az = load i64, ptr %i.t, align 8, !noalias !3008, !noundef !5 ; 4 uses
  %i.ba = icmp samesign eq i64 %i.az, 0
  br i1 %i.ba, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.bb = load i8, ptr %i.ay, align 1, !noalias !3009, !noundef !5 ; 5 uses
  %i.bc = icmp sgt i8 %i.bb, -1
  br i1 %i.bc, label %bb.h, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12.i": ; preds = %bb.g
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ay, i64 1
  %i.be = and i8 %i.bb, 31
  %i.bf = zext nneg i8 %i.be to i32               ; 3 uses
  %i.bg = icmp samesign ne i64 %i.az, 1
  call void @llvm.assume(i1 %i.bg)
  %i.bh = load i8, ptr %i.bd, align 1, !noalias !3009, !noundef !5
  %i.bi = shl nuw nsw i32 %i.bf, 6
  %i.bj = and i8 %i.bh, 63
  %i.bk = zext nneg i8 %i.bj to i32               ; 2 uses
  %i.bl = or disjoint i32 %i.bi, %i.bk
  %i.bm = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bm, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14.i", label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.bn = zext nneg i8 %i.bb to i32
  br label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit12.i"
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ay, i64 2
  %i.bp = icmp samesign ne i64 %i.az, 2
  call void @llvm.assume(i1 %i.bp)
  %i.bq = load i8, ptr %i.bo, align 1, !noalias !3009, !noundef !5
  %i.br = shl nuw nsw i32 %i.bk, 6
  %i.bs = and i8 %i.bq, 63
  %i.bt = zext nneg i8 %i.bs to i32
  %i.bu = or disjoint i32 %i.br, %i.bt            ; 2 uses
  %i.bv = shl nuw nsw i32 %i.bf, 12
  %i.bw = or disjoint i32 %i.bu, %i.bv
  %i.bx = icmp samesign ugt i8 %i.bb, -17
  br i1 %i.bx, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16.i", label %bb.j

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit16.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h694dc25ae6df4113E.exit14.i"
  %i.by = getelementptr inbounds nuw i8, ptr %i.ay, i64 3
  %i.bz = icmp samesign ne i64 %i.az, 3
  call void @llvm.assume(i1 %i.bz)
  %i.ca = load i8, ptr %i.by, align 1, !noalias !3009, !noundef !5
  %i.cb = shl nuw nsw i32 %i.bf, 18
  %i.cc = and i32 %i.cb, 1835008
  %i.cd = shl nuw nsw i32 %i.bu, 6
  %i.ce = and i8 %i.ca, 63
  %i.cf = zext nneg i8 %i.ce to i32
  %i.cg = or disjoint i32 %i.cd, %i.cf
  %i.ch = or disjoint i32 %i.cg, %i.cc
  br label %bb.j

bb.i:                                             ; preds = %bb.f
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @94) #22
  unreachable

.thread164:                                       ; preds = %.thread90
  %i.ci = load i8, ptr %.sroa.010.0197, align 1, !alias.scope !3008, !noundef !5
end_hunk_0
