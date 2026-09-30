Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-3c1d4d562737d5f2.uuid.9f091606239b2833-cgu.0?download=true
inline.NumInlined: 169
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@"_ZN4uuid3fmt62_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Variant$GT$3fmt17h2897bfdb43a5fa95E":bb.a
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 7), !noalias !71, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 9), !noalias !72, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 6), !noalias !73, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.g, %bb.d ], [ %i.f, %bb.c ], [ %i.h, %bb.e ], [ %i.e, %bb.b ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid3fmt89_$LT$impl$u20$core..convert..From$LT$uuid..Uuid$GT$$u20$for$u20$alloc..string..String$GT$4from17hbbfa5677896d7cf4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [36 x i8], align 1                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !88
  store i64 0, ptr %i.d, align 8, !noalias !88
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !88
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !88
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !88
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !88
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !88
  store ptr %i.d, ptr %i.c, align 8, !noalias !88
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @0, ptr %i.f, align 8, !noalias !88
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !89
  invoke fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.b, !noalias !90

.noexc.i:                                         ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 36)
          to label %bb.c unwind label %bb.b, !noalias !88

bb.b:                                             ; preds = %bb.d, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !91)
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !91, !noalias !88 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i": ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !91, !noalias !88, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !92
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i"

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !89
  br i1 %i.g, label %bb.d, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E.exit", !prof !7

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %.noexc7.i unwind label %bb.b, !noalias !88

.noexc7.i:                                        ; preds = %bb.d
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i", %bb.b
  resume { ptr, i32 } %i.h

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !88
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !88
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i56 0, -254) i56 @_ZN4uuid4Uuid11get_node_id17h4b0d3903ae6f3561E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !96, !noundef !6
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit.thread [
    i8 6, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
    i8 1, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
  ]

_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !noundef !6
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1, !noundef !6
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.i = load i32, ptr %i.h, align 1
  %i.j = zext i32 %i.i to i48
  %i.k = shl nuw i48 %i.j, 16
  %.sroa.4.0.insert.ext = zext i8 %i.g to i48
  %.sroa.4.0.insert.shift = shl nuw nsw i48 %.sroa.4.0.insert.ext, 8
  %.sroa.04.0.insert.ext = zext i8 %i.e to i48
  %.sroa.4.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.shift, %.sroa.04.0.insert.ext
  %.sroa.04.0.insert.insert = or disjoint i48 %.sroa.4.0.insert.insert, %i.k
  br label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit.thread

_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit.thread: ; preds = %bb.a, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
  %.sroa.3.sroa.0.0 = phi i48 [ %.sroa.04.0.insert.insert, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i8 [ 1, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ 0, %bb.a ]
  %.sroa.3.0.insert.ext = zext i48 %.sroa.3.sroa.0.0 to i56
  %.sroa.3.0.insert.shift = shl nuw i56 %.sroa.3.0.insert.ext, 8
  %.sroa.0.0.insert.ext = zext nneg i8 %.sroa.0.0 to i56
  %.sroa.0.0.insert.insert = or disjoint i56 %.sroa.3.0.insert.shift, %.sroa.0.0.insert.ext
  ret i56 %.sroa.0.0.insert.insert
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid12to_fields_le17ha67f629cc7853aefE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load i32, ptr %1, align 1
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %i.a, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load <2 x i16>, ptr %i.b, align 1
  store <2 x i16> %i.e, ptr %i.d, align 4
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid13get_timestamp17haf8d636ecbee0fe5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 16)) %0, ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %1) unnamed_addr #5 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !103, !noundef !6 ; 3 uses
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %select.unfold [
    i8 6, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
    i8 1, label %bb.b
    i8 7, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.d = and i8 %i.b, 15
  %i.e = zext nneg i8 %i.d to i64
  %i.f = shl nuw nsw i64 %i.e, 56
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !104, !noundef !6
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 48
  %i.k = or disjoint i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !104, !noundef !6
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !104, !noundef !6
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.p, %i.t
  %i.v = load i8, ptr %1, align 1, !alias.scope !104, !noundef !6
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !104, !noundef !6
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !104, !noundef !6
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !104, !noundef !6
  %i.al = zext i8 %i.ak to i64
  %i.am = or i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !104, !noundef !6
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !104, !noundef !6
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.ar, %i.au
  %i.aw = add nsw i64 %i.am, -122192928000000000  ; 2 uses
  %i.ax = udiv i64 %i.aw, 10000000
  %i.ay = urem i64 %i.aw, 10000000
  br label %select.unfold.sink.split

_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit: ; preds = %bb.a
  %2 = load i8, ptr %1, align 1, !alias.scope !105, !noundef !6
  %3 = zext i8 %2 to i64
  %4 = shl nuw nsw i64 %3, 52
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !alias.scope !105, !noundef !6
  %7 = zext i8 %6 to i64
  %8 = shl nuw nsw i64 %7, 44
  %9 = or disjoint i64 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1, !alias.scope !105, !noundef !6
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 36
  %14 = or disjoint i64 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1, !alias.scope !105, !noundef !6
  %i.az = zext i8 %16 to i64
  %i.ba = shl nuw nsw i64 %i.az, 28
  %17 = or disjoint i64 %14, %i.ba
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !105, !noundef !6
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 20
  %18 = or disjoint i64 %17, %i.be
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !105, !noundef !6
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 12
  %19 = or disjoint i64 %18, %i.bi
  %i.bj = and i8 %i.b, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %20 = or disjoint i64 %19, %i.bl
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !105, !noundef !6
  %i.bo = zext i8 %i.bn to i64
  %21 = or i64 %20, %i.bo
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !105, !noundef !6
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !105, !noundef !6
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bt, %i.bw
  %i.by = add nsw i64 %21, -122192928000000000    ; 2 uses
  %i.bz = udiv i64 %i.by, 10000000
  %i.ca = urem i64 %i.by, 10000000
  br label %select.unfold.sink.split

bb.c:                                             ; preds = %bb.a
  %22 = load i8, ptr %1, align 1, !noundef !6
  %i.cb = zext i8 %22 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 40
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !6
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 32
  %23 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %24 = load i32, ptr %23, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %24)
  %i.ch = zext i32 %25 to i64
  %op.rdx = or disjoint i64 %i.cg, %i.ch
  %op.rdx27 = or disjoint i64 %op.rdx, %i.cc      ; 2 uses
  %i.ci = udiv i64 %op.rdx27, 1000
  %i.cj = urem i64 %op.rdx27, 1000
  br label %select.unfold.sink.split

select.unfold.sink.split:                         ; preds = %bb.b, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit, %bb.c
  %.sink26 = phi i64 [ %i.ay, %bb.b ], [ %i.ca, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ %i.cj, %bb.c ]
  %.sink25 = phi i32 [ 100, %bb.b ], [ 100, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ 1000000, %bb.c ]
  %.sink22.shrunk = phi i16 [ %i.av, %bb.b ], [ %i.bx, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ 0, %bb.c ]
  %.sink21 = phi i64 [ %i.ax, %bb.b ], [ %i.bz, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ %i.ci, %bb.c ]
  %.sink19 = phi i8 [ 14, %bb.b ], [ 14, %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit ], [ 0, %bb.c ]
  %i.ck = trunc nuw nsw i64 %.sink26 to i32
  %i.cl = mul nuw nsw i32 %.sink25, %i.ck
  %.sink22 = zext i16 %.sink22.shrunk to i128
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 %.sink22, ptr %i.cm, align 16
  %.sroa.49.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sink21, ptr %.sroa.49.0..sroa_idx, align 16
  %.sroa.510.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.cl, ptr %.sroa.510.0..sroa_idx, align 8
  %.sroa.611.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %.sink19, ptr %.sroa.611.0..sroa_idx, align 4
  br label %select.unfold

select.unfold:                                    ; preds = %select.unfold.sink.split, %bb.a
  %.sink = phi i128 [ 0, %bb.a ], [ 1, %select.unfold.sink.split ]
  store i128 %.sink, ptr %0, align 16
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid4Uuid9as_fields17hfb520e6d7f1cfd4aE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 8 captures(none) dereferenceable(16) initializes((0, 16)) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %1) unnamed_addr #5 personality ptr @rust_eh_personality {
bb.a:
  %2 = load i8, ptr %1, align 1, !noundef !6
  %3 = zext i8 %2 to i32
  %4 = shl nuw i32 %3, 24
  %5 = getelementptr inbounds nuw i8, ptr %1, i64 1
  %6 = load i8, ptr %5, align 1, !noundef !6
  %7 = zext i8 %6 to i32
  %8 = shl nuw nsw i32 %7, 16
  %9 = or disjoint i32 %8, %4
  %10 = getelementptr inbounds nuw i8, ptr %1, i64 2
  %11 = load i8, ptr %10, align 1, !noundef !6
  %12 = zext i8 %11 to i32
  %13 = shl nuw nsw i32 %12, 8
  %14 = or disjoint i32 %9, %13
  %15 = getelementptr inbounds nuw i8, ptr %1, i64 3
  %16 = load i8, ptr %15, align 1, !noundef !6
  %17 = zext i8 %16 to i32
  %18 = or disjoint i32 %14, %17
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %19 = load i8, ptr %i.a, align 1, !noundef !6
  %20 = zext i8 %19 to i16
  %21 = shl nuw i16 %20, 8
  %22 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %23 = load i8, ptr %22, align 1, !noundef !6
  %24 = zext i8 %23 to i16
  %25 = or disjoint i16 %21, %24
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 6
  %26 = load i8, ptr %i.b, align 1, !noundef !6
  %27 = zext i8 %26 to i16
  %28 = shl nuw i16 %27, 8
  %29 = getelementptr inbounds nuw i8, ptr %1, i64 7
  %30 = load i8, ptr %29, align 1, !noundef !6
  %31 = zext i8 %30 to i16
  %32 = or disjoint i16 %28, %31
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %18, ptr %0, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %25, ptr %i.d, align 4
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %32, ptr %i.e, align 2
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.c, ptr %i.f, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 11 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = load ptr, ptr %1, align 8, !nonnull !6, !align !9, !noundef !6 ; 18 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !noundef !6 ; 13 uses
  %i.f = add i64 %i.e, -46
  %or.cond = icmp ult i64 %i.f, -45
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i32 5, ptr %0, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.e, ptr %.sroa.47.0..sroa_idx, align 8
  br label %bb.ao

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.c, i64 noundef %i.e)
  %i.g = load i64, ptr %i.b, align 8, !range !10, !noundef !6
  %i.h = trunc nuw i64 %i.g to i1
  br i1 %i.h, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i32 4, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.ao

bb.e:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !6, !align !9, !noundef !6 ; 10 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.l = load i64, ptr %i.k, align 8, !noundef !6 ; 15 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.n = load i8, ptr %i.m, align 8, !range !122, !noundef !6 ; 5 uses
  %i.o = icmp samesign ugt i64 %i.e, 1
  br i1 %i.o, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.h, %bb.g, %bb.e
  %i.p = icmp eq i8 %i.n, 3
  br i1 %i.p, label %bb.o, label %bb.n

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.c, align 1, !noundef !6
  %i.r = icmp eq i8 %i.q, 123
  br i1 %i.r, label %bb.h, label %bb.f

bb.h:                                             ; preds = %bb.g
  %i.s = getelementptr i8, ptr %i.c, i64 %i.e
  %i.t = getelementptr i8, ptr %i.s, i64 -1
  %i.u = load i8, ptr %i.t, align 1, !noundef !6
  %i.v = icmp eq i8 %i.u, 125
  br i1 %i.v, label %bb.i, label %bb.f

bb.i:                                             ; preds = %bb.h
  switch i8 %i.n, label %bb.n [
    i8 0, label %bb.j
    i8 3, label %bb.j
  ]

.split7.i.thread:                                 ; preds = %bb.ak, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  br label %bb.ap

bb.j:                                             ; preds = %bb.i, %bb.i, %bb.ak
  %.sink = phi i64 [ -9, %bb.ak ], [ -3, %bb.i ], [ -3, %bb.i ]
  %.sroa.082.0 = phi i64 [ 9, %bb.ak ], [ 1, %bb.i ], [ 1, %bb.i ] ; 6 uses
  %.sroa.084.0 = phi i8 [ 4, %bb.ak ], [ 3, %bb.i ], [ 3, %bb.i ]
  %i.w = add nsw i64 %i.e, %.sink                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, i8 0, i64 32, i1 false)
  %.not.i = icmp ugt i64 %.sroa.082.0, %i.w
  br i1 %.not.i, label %.split7.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.not5.i = icmp samesign ult i64 %.sroa.082.0, %i.e
  br i1 %.not5.i, label %bb.l, label %.split.i

.split.i:                                         ; preds = %bb.k
  %i.x = icmp eq i64 %.sroa.082.0, %i.e
  %.not6.i = icmp ult i64 %i.w, %i.e
  %or.cond229 = and i1 %i.x, %.not6.i
  br i1 %or.cond229, label %bb.m, label %.split7.i

bb.l:                                             ; preds = %bb.k
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.082.0
  %i.z = load i8, ptr %i.y, align 1, !alias.scope !123, !noundef !6
  %i.aa = icmp sgt i8 %i.z, -65
  %.not6.i.old = icmp ult i64 %i.w, %i.e
  %or.cond230 = and i1 %i.aa, %.not6.i.old
  br i1 %or.cond230, label %bb.m, label %.split7.i

bb.m:                                             ; preds = %bb.l, %.split.i
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 %i.w
  %i.ac = load i8, ptr %i.ab, align 1, !alias.scope !123, !noundef !6
  %i.ad = icmp sgt i8 %i.ac, -65
  br i1 %i.ad, label %bb.ap, label %.split7.i

bb.n:                                             ; preds = %bb.i, %bb.f
  %i.ae = icmp samesign ugt i64 %i.e, 8
  br i1 %i.ae, label %bb.ac, label %bb.ab

bb.o:                                             ; preds = %bb.f
  %i.af = load i8, ptr %i.c, align 1, !noundef !6
  %i.ag = icmp eq i8 %i.af, 123
  br i1 %i.ag, label %bb.p, label %bb.u

bb.p:                                             ; preds = %bb.o
  %i.ah = getelementptr inbounds nuw i8, ptr %i.j, i64 %i.l ; 4 uses
  %i.ai = icmp samesign eq i64 %i.l, 0
  br i1 %i.ai, label %bb.y, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.aj = getelementptr inbounds i8, ptr %i.ah, i64 -1 ; 2 uses
  %i.ak = load i8, ptr %i.aj, align 1, !noalias !124, !noundef !6 ; 3 uses
  %i.al = icmp sgt i8 %i.ak, -1
  br i1 %i.al, label %bb.r, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i"

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i": ; preds = %bb.q
  %i.am = icmp ne i64 %i.l, 1
  call void @llvm.assume(i1 %i.am)
  %i.an = getelementptr inbounds i8, ptr %i.ah, i64 -2 ; 2 uses
  %i.ao = load i8, ptr %i.an, align 1, !noalias !124, !noundef !6 ; 3 uses
  %i.ap = and i8 %i.ao, 31
  %i.aq = zext nneg i8 %i.ap to i32
  %i.ar = icmp slt i8 %i.ao, -64
  br i1 %i.ar, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i", label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.as = zext nneg i8 %i.ak to i32
  br label %bb.x

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i"
  %i.at = icmp ne i64 %i.l, 2
  call void @llvm.assume(i1 %i.at)
  %i.au = getelementptr inbounds i8, ptr %i.ah, i64 -3 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !noalias !124, !noundef !6 ; 3 uses
  %i.aw = and i8 %i.av, 15
  %i.ax = zext nneg i8 %i.aw to i32
  %i.ay = icmp slt i8 %i.av, -64
  br i1 %i.ay, label %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit21.i.i", label %bb.t

bb.s:                                             ; preds = %bb.t, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i"
  %i.az = phi ptr [ %i.bn, %bb.t ], [ %i.an, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i" ]
  %.sroa.04.0.i.i = phi i32 [ %i.br, %bb.t ], [ %i.aq, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit17.i.i" ]
  %i.ba = shl nuw nsw i32 %.sroa.04.0.i.i, 6
  %i.bb = and i8 %i.ak, 63
  %i.bc = zext nneg i8 %i.bb to i32
  %i.bd = or disjoint i32 %i.ba, %i.bc
  br label %bb.x

"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit21.i.i": ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i"
  %i.be = icmp ne i64 %i.l, 3
  call void @llvm.assume(i1 %i.be)
  %i.bf = getelementptr inbounds i8, ptr %i.ah, i64 -4 ; 2 uses
  %i.bg = load i8, ptr %i.bf, align 1, !noalias !124, !noundef !6
  %i.bh = and i8 %i.bg, 7
  %i.bi = zext nneg i8 %i.bh to i32
  %i.bj = shl nuw nsw i32 %i.bi, 6
  %i.bk = and i8 %i.av, 63
  %i.bl = zext nneg i8 %i.bk to i32
  %i.bm = or disjoint i32 %i.bj, %i.bl
  br label %bb.t

bb.t:                                             ; preds = %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit21.i.i", %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i"
  %i.bn = phi ptr [ %i.bf, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit21.i.i" ], [ %i.au, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i" ]
  %.sroa.04.1.i.i = phi i32 [ %i.bm, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit21.i.i" ], [ %i.ax, %"_ZN106_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17hb2a13af7b417ad85E.exit19.i.i" ]
  %i.bo = shl nuw nsw i32 %.sroa.04.1.i.i, 6
  %i.bp = and i8 %i.ao, 63
  %i.bq = zext nneg i8 %i.bp to i32
  %i.br = or disjoint i32 %i.bo, %i.bq
  br label %bb.s

bb.u:                                             ; preds = %bb.o
  %i.bs = icmp samesign eq i64 %i.l, 0
  br i1 %i.bs, label %bb.aa, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bt = load i8, ptr %i.j, align 1, !noalias !125, !noundef !6 ; 5 uses
  %i.bu = icmp sgt i8 %i.bt, -1
  br i1 %i.bu, label %bb.w, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa578b8e622d511bE.exit12.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17haa578b8e622d511bE.exit12.i.i": ; preds = %bb.v
  %i.bv = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %i.bw = and i8 %i.bt, 31
  %i.bx = zext nneg i8 %i.bw to i32               ; 3 uses
  %i.by = icmp samesign ne i64 %i.l, 1
  call void @llvm.assume(i1 %i.by)
  %i.bz = load i8, ptr %i.bv, align 1, !noalias !125, !noundef !6
  %i.ca = shl nuw nsw i32 %i.bx, 6
  %i.cb = and i8 %i.bz, 63
end_hunk_0
begin_hunk_1_@"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE":bb.a
  %i.bk = tail call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 %i.bj)
  %i.bl = select i1 %i.be, i64 -1, i64 %i.bk, !prof !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !422)
  %i.bm = tail call noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"(), !noalias !422
  %i.bn = and i64 %i.bm, 2199023255551            ; 2 uses
  br i1 %i.y, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !422, !noundef !6 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !422
  unreachable

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split: ; preds = %bb.m, %bb.f
  %.sink = phi i32 [ %.sroa.08.0, %bb.f ], [ %i.bh, %bb.m ] ; 2 uses
  %.sink65 = phi i64 [ %i.ae, %bb.f ], [ %i.bp, %bb.m ]
  %.sink63 = phi i64 [ %i.aa, %bb.f ], [ %i.bn, %bb.m ]
  %.sroa.5.0.ph = phi i64 [ %.sroa.07.0, %bb.f ], [ %i.bc, %bb.m ]
  %.sroa.0.044.ph = phi i64 [ %i.t, %bb.f ], [ %i.bl, %bb.m ]
  %i.br = urem i32 %.sink, 1000000
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = udiv i64 %i.bs, %.sink65
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i64, ptr %i.bu, align 16, !noundef !6
  %i.bw = and i64 %i.bv, %.sink63
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !6
  %i.bz = and i64 %i.by, 63
  %i.ca = shl i64 %i.bt, %i.bz
  %i.cb = or i64 %i.ca, %i.bw
  br label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit: ; preds = %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split, %bb.l, %bb.e, %bb.i
  %.sroa.12.0 = phi i32 [ %.sroa.737.0.copyload, %bb.i ], [ undef, %bb.l ], [ undef, %bb.e ], [ undef, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.i.i, %bb.i ], [ %i.bh, %bb.l ], [ %.sroa.08.0, %bb.e ], [ %.sink, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.5.0 = phi i64 [ %.sroa.536.0.copyload, %bb.i ], [ %i.bc, %bb.l ], [ %.sroa.07.0, %bb.e ], [ %.sroa.5.0.ph, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.0.044 = phi i64 [ %.sroa.035.0.copyload, %bb.i ], [ %i.bl, %bb.l ], [ %i.t, %bb.e ], [ %.sroa.0.044.ph, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.i ], [ %i.bn, %bb.l ], [ %i.aa, %bb.e ], [ %i.cb, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  store i64 %.sroa.0.044, ptr %i.m, align 16
  store i64 %.sroa.5.0, ptr %.sroa.536.0..sroa_idx, align 8
  store i32 %.sroa.7.0, ptr %.sroa.6.0..sroa_idx, align 16
  store i32 %.sroa.12.0, ptr %.sroa.737.0..sroa_idx, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.sroa.0.0, ptr %i.cc, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.5.0, ptr %i.cd, align 8
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.7.0, ptr %i.ce, align 8
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef zeroext i1 @_ZN3std9panicking11panic_count17is_zero_slow_path17hca8cf3adadc2c48aE() unnamed_addr #12

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex14lock_contended17h12c639f5f1e6de5eE(ptr noundef nonnull align 4) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN57_$LT$core..time..Duration$u20$as$u20$core..fmt..Debug$GT$3fmt17h6dc90c1fafc37461E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17hc26b542d45893745E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #13

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() unnamed_addr #14

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48), ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #15

; Function Attrs: cold noinline nonlazybind uwtable
declare noundef nonnull ptr @_ZN9getrandom8backends27linux_android_with_fallback4init17h788c862a68ad1cd4E() unnamed_addr #12

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef readonly align 8 captures(address) dead_on_return dereferenceable(48), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #17

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13expect_failed17h1729d0bd73171c50E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.bswap.i128(i128) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.uadd.sat.i64(i64, i64) #15

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #18

; Function Attrs: nonlazybind uwtable
declare void @_ZN4core3str8converts9from_utf817h61448895180b8340E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_ZN4core3str16slice_error_fail17h34415ed9969dc080E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, i64 noundef, i64 noundef, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #16

; Function Attrs: nonlazybind uwtable
declare { i64, i32 } @"_ZN91_$LT$std..time..SystemTime$u20$as$u20$core..ops..arith..Add$LT$core..time..Duration$GT$$GT$3add17h2da34e10fae85c2bE"(i64 noundef, i32 noundef range(i32 0, 1000000000), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime7elapsed17hb54201ce03b980a7E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i128 @llvm.uadd.sat.i128(i128, i128) #15

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @"_ZN62_$LT$getrandom..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc6b6d3de1a5ce8d5E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4), ptr noalias noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nounwind nonlazybind uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() unnamed_addr #1

; Function Attrs: nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef, i64 allocalign noundef) unnamed_addr #19

; Function Attrs: nounwind nonlazybind allockind("free") uwtable
declare void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr allocptr noundef, i64 noundef, i64 noundef) unnamed_addr #20

; Function Attrs: nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable
declare noalias noundef ptr @_RNvCskdKJRKLKjqM_7___rustc14___rust_realloc(ptr allocptr noundef, i64 noundef, i64 allocalign noundef, i64 noundef) unnamed_addr #21

; Function Attrs: cold minsize noreturn nonlazybind optsize uwtable
declare void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef range(i64 0, -9223372036854775807), i64, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #22

; Function Attrs: nonlazybind uwtable
declare noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef align 8 dereferenceable(24), ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance), i64 noundef, ptr noundef nonnull align 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32)) unnamed_addr #0

; Function Attrs: cold nonlazybind uwtable
declare void @_ZN3std3sys4sync5mutex5futex5Mutex4wake17hda74d737948706abE(ptr noundef nonnull align 4) unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), i64 noundef, i32 noundef range(i32 0, 1000000000)) unnamed_addr #0

; Function Attrs: noinline nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17hd4fde6409425fab5E(ptr noalias noundef nonnull align 1, i64 noundef) unnamed_addr #23

; Function Attrs: nonlazybind uwtable
declare noundef i32 @_ZN9getrandom8backends8use_file5utils9get_errno9get_errno17h698397144bad8d62E() unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef range(i32 1, 0) i32 @_ZN9getrandom5error5Error10from_errno17hf4b4f1ca7ac401b4E(i32 noundef) unnamed_addr #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #24

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i8 @llvm.umin.i8(i8, i8) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #15

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.bswap.i32(i32) #15

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { inlinehint nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { inlinehint mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #7 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #8 = { cold noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { cold noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #14 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #15 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #16 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #17 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #18 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #19 = { nounwind nonlazybind allockind("alloc,uninitialized,aligned") allocsize(0) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #20 = { nounwind nonlazybind allockind("free") uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #21 = { nounwind nonlazybind allockind("realloc,aligned") allocsize(3) uwtable "alloc-family"="__rust_alloc" "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #22 = { cold minsize noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #23 = { noinline nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #24 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #25 = { cold }
attributes #26 = { cold noreturn nounwind }
attributes #27 = { nounwind }
attributes #28 = { noreturn }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}

!0 = distinct !{null}
!1 = distinct !{null, null, null, null}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 2, !"RtLibUseGOT", i32 1}
!4 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = !{i64 8}
!9 = !{i64 1}
!10 = !{i64 0, i64 2}
!11 = !{i32 0, i32 1000000000}
!12 = !{i8 0, i8 6}
!13 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!14 = !{i64 0, i64 -9223372036854775808}
!15 = !{i64 0, i64 -9223372036854775807}
!16 = !{i128 1, i128 0}
!17 = distinct !{!17, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!18 = distinct !{!18, !17, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!19 = !{!18}
!20 = distinct !{!20, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E"}
!21 = distinct !{!21, !20, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E: argument 0"}
!22 = distinct !{!22, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!23 = distinct !{!23, !22, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!24 = !{!23, !21}
!25 = !{!21}
!26 = distinct !{!26, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE"}
!27 = distinct !{!27, !26, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE: argument 1"}
!28 = distinct !{!28, !26, !"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h6b1cf17435ab68aeE: argument 0"}
!29 = distinct !{null}
!30 = !{!28, !27}
!31 = !{!28}
!32 = !{!27}
!33 = distinct !{!33, !"_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE"}
!34 = distinct !{!34, !33, !"_ZN4uuid9timestamp9Timestamp3now17ha4d980ed2e28162aE: argument 0"}
!35 = distinct !{!35, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hba1abef4bc4105ccE"}
!36 = distinct !{!36, !35, !"_ZN4core6result19Result$LT$T$C$E$GT$6expect17hba1abef4bc4105ccE: argument 0"}
!37 = !{!34}
!38 = !{!36}
!39 = !{!36, !34}
!40 = distinct !{!40, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE"}
!41 = distinct !{!41, !40, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE: argument 1"}
!42 = distinct !{!42, !40, !"_ZN4uuid3fmt13format_simple17hf3e5591187cd59dcE: argument 0"}
!43 = !{!41}
!44 = !{!42}
!45 = !{!42, !41}
!46 = distinct !{!46, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE"}
!47 = distinct !{!47, !46, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 1"}
!48 = distinct !{!48, !46, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 0"}
!49 = distinct !{!49, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!50 = distinct !{!50, !49, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!51 = distinct !{!51, !49, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!52 = !{!51, !50, !48, !47}
!53 = !{!50, !47}
!54 = !{!51, !48}
!55 = distinct !{!55, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!56 = distinct !{!56, !55, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!57 = distinct !{!57, !55, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!58 = !{!57, !56}
!59 = !{!56}
!60 = !{!57}
!61 = distinct !{!61, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!62 = distinct !{!62, !61, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!63 = distinct !{!63, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!64 = distinct !{!64, !63, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!65 = distinct !{!65, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!66 = distinct !{!66, !65, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!67 = distinct !{!67, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E"}
!68 = distinct !{!68, !67, !"_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E: argument 0"}
!69 = !{i8 0, i8 4}
!70 = !{!62}
!71 = !{!64}
!72 = !{!66}
!73 = !{!68}
!74 = distinct !{!74, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E"}
!75 = distinct !{!75, !74, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E: argument 1"}
!76 = distinct !{!76, !74, !"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E: argument 0"}
!77 = distinct !{!77, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E"}
!78 = distinct !{!78, !77, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E: argument 1"}
!79 = distinct !{!79, !77, !"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E: argument 0"}
!80 = distinct !{!80, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE"}
!81 = distinct !{!81, !80, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 1"}
!82 = distinct !{!82, !80, !"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE: argument 0"}
!83 = distinct !{!83, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E"}
!84 = distinct !{!84, !83, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 1"}
!85 = distinct !{!85, !83, !"_ZN61_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h191d239ea6a52dc4E: argument 0"}
!86 = distinct !{!86, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!87 = distinct !{!87, !86, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!88 = !{!76, !75}
!89 = !{!85, !84, !82, !81, !79, !78, !76, !75}
!90 = !{!76}
!91 = !{!87}
!92 = !{!87, !76, !75}
!93 = !{!75}
!94 = distinct !{!94, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE"}
!95 = distinct !{!95, !94, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE: argument 0"}
!96 = !{!95}
!97 = distinct !{!97, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE"}
!98 = distinct !{!98, !97, !"_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE: argument 0"}
!99 = distinct !{!99, !"_ZN4uuid9timestamp26decode_gregorian_timestamp17hcaa87c3a643166e7E"}
!100 = distinct !{!100, !99, !"_ZN4uuid9timestamp26decode_gregorian_timestamp17hcaa87c3a643166e7E: argument 0"}
!101 = distinct !{!101, !"_ZN4uuid9timestamp33decode_sorted_gregorian_timestamp17h8f78f0f52ce292b6E"}
!102 = distinct !{!102, !101, !"_ZN4uuid9timestamp33decode_sorted_gregorian_timestamp17h8f78f0f52ce292b6E: argument 0"}
!103 = !{!98}
!104 = !{!100}
!105 = !{!102}
!106 = distinct !{!106, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE"}
!107 = distinct !{!107, !106, !"_ZN4core3str6traits108_$LT$impl$u20$core..slice..index..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..Range$LT$usize$GT$$GT$3get17hd25d66d2195f7afdE: argument 0"}
!108 = distinct !{!108, !"_ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76e3bd467a52c44bE"}
!109 = distinct !{!109, !108, !"_ZN102_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..double_ended..DoubleEndedIterator$GT$9next_back17h76e3bd467a52c44bE: argument 0"}
!110 = distinct !{!110, !"_ZN4core3str11validations23next_code_point_reverse17h2c59968780c8f0a9E"}
!111 = distinct !{!111, !110, !"_ZN4core3str11validations23next_code_point_reverse17h2c59968780c8f0a9E: argument 0"}
!112 = distinct !{!112, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE"}
!113 = distinct !{!113, !112, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE: argument 0"}
!114 = distinct !{!114, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!115 = distinct !{!115, !114, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!116 = distinct !{!116, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!117 = distinct !{!117, !116, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!118 = distinct !{!118, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE"}
!119 = distinct !{!119, !118, !"_ZN87_$LT$core..str..iter..CharIndices$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h48457e68ea1e620eE: argument 0"}
!120 = distinct !{!120, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E"}
!121 = distinct !{!121, !120, !"_ZN4core3str11validations15next_code_point17hf7b453c589ba8888E: argument 0"}
!122 = !{i8 0, i8 5}
!123 = !{!107}
!124 = !{!111, !109}
!125 = !{!115, !113}
!126 = !{!117}
!127 = !{!"branch_weights", !"expected", i32 0, i32 -2147483648}
!128 = !{!121, !119}
!129 = distinct !{!129, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE"}
!130 = distinct !{!130, !129, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE: argument 0"}
!131 = distinct !{!131, !129, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$15try_parse_ascii17h1e874a332d0d9dcdE: argument 1"}
!132 = !{!130}
!133 = !{!130, !131}
!134 = !{!131}
!135 = distinct !{!135, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!136 = distinct !{!136, !135, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!137 = distinct !{!137, !135, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!138 = !{!136}
!139 = !{!136, !137}
!140 = !{!137}
!141 = distinct !{!141, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!142 = distinct !{!142, !141, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!143 = distinct !{!143, !141, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!144 = !{!142}
!145 = !{!142, !143}
!146 = !{!143}
!147 = distinct !{!147, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E"}
!148 = distinct !{!148, !147, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E: argument 0"}
!149 = distinct !{!149, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E"}
!150 = distinct !{!150, !149, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 0"}
!151 = distinct !{!151, !147, !"_ZN4uuid6parser78_$LT$impl$u20$core..convert..TryFrom$LT$$RF$str$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17hb0830f93e18c10c2E: argument 1"}
!152 = distinct !{!152, !149, !"_ZN4uuid6parser28_$LT$impl$u20$uuid..Uuid$GT$9parse_str17haed7e84c7b2e7c45E: argument 1"}
!153 = distinct !{!153, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!154 = distinct !{!154, !153, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!155 = distinct !{!155, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E"}
!156 = distinct !{!156, !155, !"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E: argument 0"}
!157 = !{!148}
!158 = !{!150}
!159 = !{!148, !151}
!160 = !{!150, !152, !148, !151}
!161 = !{!150, !148}
!162 = !{!152, !151}
!163 = !{!154}
!164 = !{!156}
!165 = distinct !{!165, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E"}
!166 = distinct !{!166, !165, !"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h86b55017c06adfe9E: argument 1"}
end_hunk_1
