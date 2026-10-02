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
  %2 = load i32, ptr %1, align 1, !alias.scope !105
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.az = zext i32 %3 to i64
  %i.ba = shl nuw nsw i64 %i.az, 28
  %i.bb = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.bc = load i8, ptr %i.bb, align 1, !alias.scope !105, !noundef !6
  %i.bd = zext i8 %i.bc to i64
  %i.be = shl nuw nsw i64 %i.bd, 20
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.bg = load i8, ptr %i.bf, align 1, !alias.scope !105, !noundef !6
  %i.bh = zext i8 %i.bg to i64
  %i.bi = shl nuw nsw i64 %i.bh, 12
  %i.bj = and i8 %i.b, 15
  %i.bk = zext nneg i8 %i.bj to i64
  %i.bl = shl nuw nsw i64 %i.bk, 8
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !105, !noundef !6
  %i.bo = zext i8 %i.bn to i64
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bq = load i8, ptr %i.bp, align 1, !alias.scope !105, !noundef !6
  %i.br = and i8 %i.bq, 63
  %i.bs = zext nneg i8 %i.br to i16
  %i.bt = shl nuw nsw i16 %i.bs, 8
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.bv = load i8, ptr %i.bu, align 1, !alias.scope !105, !noundef !6
  %i.bw = zext i8 %i.bv to i16
  %i.bx = or disjoint i16 %i.bt, %i.bw
  %4 = or disjoint i64 %i.bl, -122192928000000000
  %5 = add nuw nsw i64 %4, %i.be
  %6 = add nsw i64 %5, %i.ba
  %7 = or disjoint i64 %6, %i.bo
  %i.by = add nsw i64 %7, %i.bi                   ; 2 uses
  %i.bz = udiv i64 %i.by, 10000000
  %i.ca = urem i64 %i.by, 10000000
  br label %select.unfold.sink.split

bb.c:                                             ; preds = %bb.a
  %8 = load i32, ptr %1, align 1
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %i.cb = zext i32 %9 to i64
  %i.cc = shl nuw nsw i64 %i.cb, 16
  %i.cd = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.ce = load i8, ptr %i.cd, align 1, !noundef !6
  %i.cf = zext i8 %i.ce to i64
  %i.cg = shl nuw nsw i64 %i.cf, 8
  %10 = or disjoint i64 %i.cc, %i.cg
  %11 = getelementptr inbounds nuw i8, ptr %1, i64 5
  %12 = load i8, ptr %11, align 1, !noundef !6
  %i.ch = zext i8 %12 to i64
  %op.rdx27 = or disjoint i64 %10, %i.ch          ; 2 uses
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
  %2 = load i32, ptr %1, align 1
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.b = load i8, ptr %i.a, align 1, !noundef !6
  %i.c = zext i8 %i.b to i16
  %i.d = shl nuw i16 %i.c, 8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.f = load i8, ptr %i.e, align 1, !noundef !6
  %i.g = zext i8 %i.f to i16
  %i.h = or disjoint i16 %i.d, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.j = load i8, ptr %i.i, align 1, !noundef !6
  %i.k = zext i8 %i.j to i16
  %i.l = shl nuw i16 %i.k, 8
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.n = load i8, ptr %i.m, align 1, !noundef !6
  %i.o = zext i8 %i.n to i16
  %i.p = or disjoint i16 %i.l, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i32 %3, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i16 %i.h, ptr %i.r, align 4
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i16 %i.p, ptr %i.s, align 2
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.q, ptr %i.t, align 8
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
end_hunk_0
