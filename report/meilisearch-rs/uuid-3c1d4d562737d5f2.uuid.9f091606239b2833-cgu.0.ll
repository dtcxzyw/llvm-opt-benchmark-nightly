Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/uuid-3c1d4d562737d5f2.uuid.9f091606239b2833-cgu.0?download=true
inline.NumInlined: 169
inline.NumDeleted: 88
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E:.lr.ph.preheader.1
  %i.cn = lshr i8 %i.cm, 4
  %i.co = zext nneg i8 %i.cn to i64
  %i.cp = getelementptr inbounds nuw i8, ptr %., i64 %i.co
  %i.cq = load i8, ptr %i.cp, align 1, !noundef !7
  %i.cr = and i8 %i.cm, 15
  %i.cs = zext nneg i8 %i.cr to i64
  %i.ct = getelementptr inbounds nuw i8, ptr %., i64 %i.cs
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !7
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 10
  %i.cw = load i8, ptr %i.cv, align 1, !noundef !7 ; 2 uses
  %i.cx = lshr i8 %i.cw, 4
  %i.cy = zext nneg i8 %i.cx to i64
  %i.cz = getelementptr inbounds nuw i8, ptr %., i64 %i.cy
  %i.da = load i8, ptr %i.cz, align 1, !noundef !7
  %i.db = and i8 %i.cw, 15
  %i.dc = zext nneg i8 %i.db to i64
  %i.dd = getelementptr inbounds nuw i8, ptr %., i64 %i.dc
  %i.de = load i8, ptr %i.dd, align 1, !noundef !7
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 11
  %i.dg = load i8, ptr %i.df, align 1, !noundef !7 ; 2 uses
  %i.dh = lshr i8 %i.dg, 4
  %i.di = zext nneg i8 %i.dh to i64
  %i.dj = getelementptr inbounds nuw i8, ptr %., i64 %i.di
  %i.dk = load i8, ptr %i.dj, align 1, !noundef !7
  %i.dl = and i8 %i.dg, 15
  %i.dm = zext nneg i8 %i.dl to i64
  %i.dn = getelementptr inbounds nuw i8, ptr %., i64 %i.dm
  %i.do = load i8, ptr %i.dn, align 1, !noundef !7
  %i.dp = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.dq = load i8, ptr %i.dp, align 1, !noundef !7 ; 2 uses
  %i.dr = lshr i8 %i.dq, 4
  %i.ds = zext nneg i8 %i.dr to i64
  %i.dt = getelementptr inbounds nuw i8, ptr %., i64 %i.ds
  %i.du = load i8, ptr %i.dt, align 1, !noundef !7
  %i.dv = and i8 %i.dq, 15
  %i.dw = zext nneg i8 %i.dv to i64
  %i.dx = getelementptr inbounds nuw i8, ptr %., i64 %i.dw
  %i.dy = load i8, ptr %i.dx, align 1, !noundef !7
  %i.dz = getelementptr inbounds nuw i8, ptr %1, i64 13
  %i.ea = load i8, ptr %i.dz, align 1, !noundef !7 ; 2 uses
  %i.eb = lshr i8 %i.ea, 4
  %i.ec = zext nneg i8 %i.eb to i64
  %i.ed = getelementptr inbounds nuw i8, ptr %., i64 %i.ec
  %i.ee = load i8, ptr %i.ed, align 1, !noundef !7
  %i.ef = and i8 %i.ea, 15
  %i.eg = zext nneg i8 %i.ef to i64
  %i.eh = getelementptr inbounds nuw i8, ptr %., i64 %i.eg
  %i.ei = load i8, ptr %i.eh, align 1, !noundef !7
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 14
  %i.ek = load i8, ptr %i.ej, align 1, !noundef !7 ; 2 uses
  %i.el = and i8 %i.ek, 15
  %i.em = zext nneg i8 %i.el to i64
  %i.en = getelementptr inbounds nuw i8, ptr %., i64 %i.em
  %i.eo = load i8, ptr %i.en, align 1, !noundef !7
  %i.ep = lshr i8 %i.ek, 4
  %i.eq = zext nneg i8 %i.ep to i64
  %i.er = getelementptr inbounds nuw i8, ptr %., i64 %i.eq
  %i.es = load i8, ptr %i.er, align 1, !noundef !7
  %i.et = getelementptr inbounds nuw i8, ptr %1, i64 15
  %i.eu = load i8, ptr %i.et, align 1, !noundef !7 ; 2 uses
  %i.ev = lshr i8 %i.eu, 4
  %i.ew = zext nneg i8 %i.ev to i64
  %i.ex = getelementptr inbounds nuw i8, ptr %., i64 %i.ew
  %i.ey = load i8, ptr %i.ex, align 1, !noundef !7
  %i.ez = and i8 %i.eu, 15
  %i.fa = zext nneg i8 %i.ez to i64
  %i.fb = getelementptr inbounds nuw i8, ptr %., i64 %i.fa
  %i.fc = load i8, ptr %i.fb, align 1, !noundef !7
  store i8 %i.e, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.i, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.o, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.s, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.y, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.ac, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.ai, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.am, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 45, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.as, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  store i8 %i.aw, ptr %.sroa.14.0..sroa_idx, align 1
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 11
  store i8 %i.bc, ptr %.sroa.15.0..sroa_idx, align 1
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i8 %i.bg, ptr %.sroa.16.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 13
  store i8 45, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.bm, ptr %.sroa.18.0..sroa_idx, align 1
  %.sroa.19.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.bq, ptr %.sroa.19.0..sroa_idx, align 1
  %.sroa.20.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bw, ptr %.sroa.20.0..sroa_idx, align 1
  %.sroa.21.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 17
  store i8 %i.ca, ptr %.sroa.21.0..sroa_idx, align 1
  %.sroa.22.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 18
  store i8 45, ptr %.sroa.22.0..sroa_idx, align 1
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 19
  store i8 %i.cg, ptr %.sroa.23.0..sroa_idx, align 1
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  store i8 %i.ck, ptr %.sroa.24.0..sroa_idx, align 1
  %.sroa.25.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 21
  store i8 %i.cq, ptr %.sroa.25.0..sroa_idx, align 1
  %.sroa.26.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 22
  store i8 %i.cu, ptr %.sroa.26.0..sroa_idx, align 1
  %.sroa.27.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 23
  store i8 45, ptr %.sroa.27.0..sroa_idx, align 1
  %.sroa.28.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %i.da, ptr %.sroa.28.0..sroa_idx, align 1
  %.sroa.29.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %i.de, ptr %.sroa.29.0..sroa_idx, align 1
  %.sroa.30.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 26
  store i8 %i.dk, ptr %.sroa.30.0..sroa_idx, align 1
  %.sroa.31.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 27
  store i8 %i.do, ptr %.sroa.31.0..sroa_idx, align 1
  %.sroa.32.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i8 %i.du, ptr %.sroa.32.0..sroa_idx, align 1
  %.sroa.33.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 29
  store i8 %i.dy, ptr %.sroa.33.0..sroa_idx, align 1
  %.sroa.34.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 30
  store i8 %i.ee, ptr %.sroa.34.0..sroa_idx, align 1
  %.sroa.35.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 31
  store i8 %i.ei, ptr %.sroa.35.0..sroa_idx, align 1
  %.sroa.36.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i8 %i.es, ptr %.sroa.36.0..sroa_idx, align 1
  %.sroa.37.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 33
  store i8 %i.eo, ptr %.sroa.37.0..sroa_idx, align 1
  %.sroa.38.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 34
  store i8 %i.ey, ptr %.sroa.38.0..sroa_idx, align 1
  %.sroa.39.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 35
  store i8 %i.fc, ptr %.sroa.39.0..sroa_idx, align 1
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4uuid3fmt59_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Uuid$GT$3fmt17h147f08f520647497E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [36 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !39
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext false), !noalias !46
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 36), !noalias !47
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !39
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4uuid3fmt60_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$uuid..Uuid$GT$3fmt17h6fa6b53201eb166cE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [36 x i8], align 1                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !48
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext false), !noalias !52
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 36), !noalias !53
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !48
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN4uuid3fmt62_$LT$impl$u20$core..fmt..Display$u20$for$u20$uuid..Variant$GT$3fmt17h2897bfdb43a5fa95E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !54, !noundef !7
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load ptr, ptr %i.b, align 8
  %.val6 = load ptr, ptr %1, align 8              ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %.val7, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !invariant.load !7, !noalias !7, !nonnull !7 ; 4 uses
  switch i8 %i.a, label %default.unreachable41 [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
  ]

default.unreachable41:                            ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @12, i64 noundef 3), !noalias !55, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.c:                                             ; preds = %bb.a
  %i.f = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @13, i64 noundef 7), !noalias !59, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @14, i64 noundef 9), !noalias !62, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.h = tail call noundef zeroext i1 %i.d(ptr noundef nonnull align 1 %.val6, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @15, i64 noundef 6), !noalias !65, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.f, %bb.c ], [ %i.g, %bb.d ], [ %i.h, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN4uuid3fmt89_$LT$impl$u20$core..convert..From$LT$uuid..Uuid$GT$$u20$for$u20$alloc..string..String$GT$4from17hbbfa5677896d7cf4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 1 captures(none) dead_on_return dereferenceable(16) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [36 x i8], align 1                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !68
  store i64 0, ptr %i.d, align 8, !noalias !68
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.0..sroa_idx.i, align 8, !noalias !68
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !68
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i32 -536870880, ptr %i.e, align 8, !noalias !68
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  store i16 0, ptr %.sroa.4.0..sroa_idx.i, align 4, !noalias !68
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 22
  store i16 0, ptr %.sroa.5.0..sroa_idx.i, align 2, !noalias !68
  store ptr %i.d, ptr %i.c, align 8, !noalias !68
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @0, ptr %i.f, align 8, !noalias !68
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !72
  invoke fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %1, i1 noundef zeroext false)
          to label %.noexc.i unwind label %bb.b, !noalias !82

.noexc.i:                                         ; preds = %bb.a
  %i.g = invoke noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 36)
          to label %bb.c unwind label %bb.b, !noalias !68

bb.b:                                             ; preds = %bb.d, %.noexc.i, %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !83)
  %.val.i.i = load i64, ptr %i.d, align 8, !alias.scope !83, !noalias !68 ; 2 uses
  %i.i = icmp eq i64 %.val.i.i, 0
  br i1 %i.i, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i": ; preds = %bb.b
  %.val1.i.i = load ptr, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !83, !noalias !68, !nonnull !7, !noundef !7
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %.val.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !86
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i"

bb.c:                                             ; preds = %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !72
  br i1 %i.g, label %bb.d, label %"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E.exit", !prof !8

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4core6result13unwrap_failed17h0501379eaec3e720E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @1, i64 noundef 55, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @7, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @3) #28
          to label %.noexc7.i unwind label %bb.b, !noalias !68

.noexc7.i:                                        ; preds = %bb.d
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i.i", %bb.b
  resume { ptr, i32 } %i.h

"_ZN49_$LT$T$u20$as$u20$alloc..string..SpecToString$GT$14spec_to_string17ha13e41d161edd8f9E.exit": ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !87
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !68
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !68
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define range(i56 0, -254) i56 @_ZN4uuid4Uuid11get_node_id17h4b0d3903ae6f3561E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0) unnamed_addr #4 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !88, !noundef !7
  %i.c = lshr i8 %i.b, 4
  switch i8 %i.c, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit.thread [
    i8 6, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
    i8 1, label %_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit
  ]

_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit: ; preds = %bb.a, %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.e = load i8, ptr %i.d, align 1, !noundef !7
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 11
  %i.g = load i8, ptr %i.f, align 1, !noundef !7
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
  %i.b = load i8, ptr %i.a, align 1, !alias.scope !91, !noundef !7 ; 3 uses
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
  %i.h = load i8, ptr %i.g, align 1, !alias.scope !94, !noundef !7
  %i.i = zext i8 %i.h to i64
  %i.j = shl nuw nsw i64 %i.i, 48
  %i.k = or disjoint i64 %i.j, %i.f
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.m = load i8, ptr %i.l, align 1, !alias.scope !94, !noundef !7
  %i.n = zext i8 %i.m to i64
  %i.o = shl nuw nsw i64 %i.n, 40
  %i.p = or disjoint i64 %i.k, %i.o
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.r = load i8, ptr %i.q, align 1, !alias.scope !94, !noundef !7
  %i.s = zext i8 %i.r to i64
  %i.t = shl nuw nsw i64 %i.s, 32
  %i.u = or disjoint i64 %i.p, %i.t
  %i.v = load i8, ptr %1, align 1, !alias.scope !94, !noundef !7
  %i.w = zext i8 %i.v to i64
  %i.x = shl nuw nsw i64 %i.w, 24
  %i.y = or disjoint i64 %i.u, %i.x
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.aa = load i8, ptr %i.z, align 1, !alias.scope !94, !noundef !7
  %i.ab = zext i8 %i.aa to i64
  %i.ac = shl nuw nsw i64 %i.ab, 16
  %i.ad = or disjoint i64 %i.y, %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.af = load i8, ptr %i.ae, align 1, !alias.scope !94, !noundef !7
  %i.ag = zext i8 %i.af to i64
  %i.ah = shl nuw nsw i64 %i.ag, 8
  %i.ai = or disjoint i64 %i.ad, %i.ah
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !94, !noundef !7
  %i.al = zext i8 %i.ak to i64
  %i.am = or i64 %i.ai, %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ao = load i8, ptr %i.an, align 1, !alias.scope !94, !noundef !7
  %i.ap = and i8 %i.ao, 63
  %i.aq = zext nneg i8 %i.ap to i16
  %i.ar = shl nuw nsw i16 %i.aq, 8
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 9
  %i.at = load i8, ptr %i.as, align 1, !alias.scope !94, !noundef !7
  %i.au = zext i8 %i.at to i16
  %i.av = or disjoint i16 %i.ar, %i.au
  %i.aw = add nsw i64 %i.am, -122192928000000000  ; 2 uses
  %i.ax = udiv i64 %i.aw, 10000000
  %i.ay = urem i64 %i.aw, 10000000
  br label %select.unfold.sink.split

_ZN4uuid4Uuid11get_version17h2910ef5f0f59be2eE.exit: ; preds = %bb.a
  %i.az = load i8, ptr %1, align 1, !alias.scope !97, !noundef !7
  %i.ba = zext i8 %i.az to i64
  %i.bb = shl nuw nsw i64 %i.ba, 52
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.bd = load i8, ptr %i.bc, align 1, !alias.scope !97, !noundef !7
  %i.be = zext i8 %i.bd to i64
  %i.bf = shl nuw nsw i64 %i.be, 44
  %i.bg = or disjoint i64 %i.bf, %i.bb
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.bi = load i8, ptr %i.bh, align 1, !alias.scope !97, !noundef !7
  %i.bj = zext i8 %i.bi to i64
  %i.bk = shl nuw nsw i64 %i.bj, 36
  %i.bl = or disjoint i64 %i.bg, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.bn = load i8, ptr %i.bm, align 1, !alias.scope !97, !noundef !7
  %i.bo = zext i8 %i.bn to i64
end_hunk_0
begin_hunk_1_@"_ZN4uuid6parser92_$LT$impl$u20$core..convert..TryFrom$LT$alloc..string..String$GT$$u20$for$u20$uuid..Uuid$GT$8try_from17h27db9d734f085b2dE":bb.a
  call void @_ZN4uuid6parser9try_parse17hf9a366a3feb31e3bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef %i.f)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i8, ptr %i.g, align 8, !range !123, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i8 %i.h, 5
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.h, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !noalias !150
  invoke fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
          to label %bb.e unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i32 9, ptr %0, align 8, !alias.scope !152, !noalias !153
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  tail call void @llvm.experimental.noalias.scope.decl(metadata !154)
  %.val.i = load i64, ptr %1, align 8, !alias.scope !154 ; 2 uses
  %i.k = icmp eq i64 %.val.i, 0
  br i1 %i.k, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !154
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit"

bb.e:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !148
  tail call void @llvm.experimental.noalias.scope.decl(metadata !157)
  %.val.i1 = load i64, ptr %1, align 8, !alias.scope !157 ; 2 uses
  %i.l = icmp eq i64 %.val.i1, 0
  br i1 %i.l, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit4", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i2"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i2": ; preds = %bb.e
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %.val.i1, i64 noundef range(i64 1, -9223372036854775807) 1) #27, !noalias !157
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit4"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit4": ; preds = %bb.e, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i2"
  ret void

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hb033157cd775ec18E.exit": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i.i", %bb.d
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid6parser9try_parse17hf9a366a3feb31e3bE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) initializes((0, 17)) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  switch i64 %2, label %bb.b [
    i64 32, label %bb.c
    i64 36, label %bb.e
    i64 38, label %bb.f
    i64 45, label %bb.i
  ]

bb.b:                                             ; preds = %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.g, %bb.f, %bb.a
  store ptr %1, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 0, ptr %.sroa.5.0..sroa_idx, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4uuid6parser12parse_simple17h45621b81a65dd21aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef 32, i1 noundef zeroext true)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c, %bb.b
  ret void

bb.e:                                             ; preds = %bb.a, %bb.q, %bb.h
  %.sroa.0.0 = phi ptr [ %i.ag, %bb.q ], [ %i.f, %bb.h ], [ %1, %bb.a ]
  tail call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0.0, i64 noundef 36)
  br label %bb.d

bb.f:                                             ; preds = %bb.a
  %i.a = load i8, ptr %1, align 1, !noundef !7
  %i.b = icmp eq i8 %i.a, 123
  br i1 %i.b, label %bb.g, label %bb.b

bb.g:                                             ; preds = %bb.f
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.d = load i8, ptr %i.c, align 1, !noundef !7
  %i.e = icmp eq i8 %i.d, 125
  br i1 %i.e, label %bb.h, label %bb.b

bb.h:                                             ; preds = %bb.g
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 1
  br label %bb.e

bb.i:                                             ; preds = %bb.a
  %i.g = load i8, ptr %1, align 1, !noundef !7
  %i.h = icmp eq i8 %i.g, 117
  br i1 %i.h, label %bb.j, label %bb.b

bb.j:                                             ; preds = %bb.i
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  %i.j = load i8, ptr %i.i, align 1, !noundef !7
  %i.k = icmp eq i8 %i.j, 114
  br i1 %i.k, label %bb.k, label %bb.b

bb.k:                                             ; preds = %bb.j
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 2
  %i.m = load i8, ptr %i.l, align 1, !noundef !7
  %i.n = icmp eq i8 %i.m, 110
  br i1 %i.n, label %bb.l, label %bb.b

bb.l:                                             ; preds = %bb.k
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 3
  %i.p = load i8, ptr %i.o, align 1, !noundef !7
  %i.q = icmp eq i8 %i.p, 58
  br i1 %i.q, label %bb.m, label %bb.b

bb.m:                                             ; preds = %bb.l
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.s = load i8, ptr %i.r, align 1, !noundef !7
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 5
  %i.u = load i8, ptr %i.t, align 1, !noundef !7
  %i.v = icmp eq i8 %i.s, 117
  %i.w = icmp eq i8 %i.u, 117
  %or.cond = and i1 %i.v, %i.w
  br i1 %or.cond, label %bb.n, label %bb.b

bb.n:                                             ; preds = %bb.m
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 6
  %i.y = load i8, ptr %i.x, align 1, !noundef !7
  %i.z = icmp eq i8 %i.y, 105
  br i1 %i.z, label %bb.o, label %bb.b

bb.o:                                             ; preds = %bb.n
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 7
  %i.ab = load i8, ptr %i.aa, align 1, !noundef !7
  %i.ac = icmp eq i8 %i.ab, 100
  br i1 %i.ac, label %bb.p, label %bb.b

bb.p:                                             ; preds = %bb.o
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i8, ptr %i.ad, align 1, !noundef !7
  %i.af = icmp eq i8 %i.ae, 58
  br i1 %i.af, label %bb.q, label %bb.b

bb.q:                                             ; preds = %bb.p
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 9
  br label %bb.e
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$13from_slice_le17h4733f87721390f98E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load <16 x i8>, ptr %1, align 1, !alias.scope !160, !noalias !164
  %i.d = shufflevector <16 x i8> %i.c, <16 x i8> poison, <16 x i32> <i32 3, i32 2, i32 1, i32 0, i32 5, i32 4, i32 7, i32 6, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  store <16 x i8> %i.d, ptr %i.b, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.54.0..sroa_idx, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder10from_slice17h5b0ad9414cb3902cE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !166
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !166
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !166
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i32 [ %.sroa.512.4.copyload14, %bb.b ], [ undef, %bb.a ]
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink32 = phi i32 [ %.sroa.9.sroa.0.0.copyload23, %bb.b ], [ undef, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink32, ptr %4, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder13from_slice_le17heae5414b36de22d1E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.8.0..sroa_idx43.i = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.12.0..sroa_idx51.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.12.0.copyload52.i = load i32, ptr %.sroa.12.0..sroa_idx51.i, align 1, !alias.scope !170, !noalias !176
  %i.b = zext i32 %.sroa.12.0.copyload52.i to i64
  %i.c = shl nuw i64 %i.b, 32
  %.sroa.16.0..sroa_idx59.i = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.d = load <4 x i8>, ptr %.sroa.8.0..sroa_idx43.i, align 1, !alias.scope !170, !noalias !176
  %i.e = shufflevector <4 x i8> %i.d, <4 x i8> poison, <4 x i32> <i32 1, i32 0, i32 3, i32 2>
  %i.f = bitcast <4 x i8> %i.e to i32
  %i.g = zext i32 %i.f to i64
  %op.rdx = or disjoint i64 %i.c, %i.g
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.i = load <4 x i8>, ptr %1, align 1, !alias.scope !170, !noalias !176
  %i.j = shufflevector <4 x i8> %i.i, <4 x i8> poison, <4 x i32> <i32 3, i32 2, i32 1, i32 0>
  store <4 x i8> %i.j, ptr %i.h, align 4
  %.sroa.990.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load <4 x i8>, ptr %.sroa.16.0..sroa_idx59.i, align 1, !alias.scope !170, !noalias !176
  store <4 x i8> %i.k, ptr %.sroa.990.0..sroa_idx, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink128 = phi i64 [ %op.rdx, %bb.b ], [ %2, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink128, ptr %i.l, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder22from_rfc4122_timestamp17hac25928804b25dbeE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, i16 noundef %2, ptr noalias noundef readonly align 1 captures(none) dereferenceable(6) %3) unnamed_addr #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !182)
  %i.a = lshr i64 %1, 32
  %i.b = lshr i64 %1, 48
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !184, !noalias !187, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !184, !noalias !187, !noundef !7
  %i.l = lshr i64 %1, 24
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 16
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 8
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %1 to i8
  %i.s = lshr i64 %1, 40
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.a to i8
  %i.v = lshr i64 %1, 56
  %i.w = trunc nuw i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 16
  %i.z = trunc i64 %i.b to i8
  store i8 %i.m, ptr %0, align 1, !alias.scope !179, !noalias !182
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.r, ptr %.sroa.6.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.t, ptr %.sroa.7.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.8.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.u, ptr %.sroa.8.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.y, ptr %.sroa.9.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.10.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.z, ptr %.sroa.10.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %.sroa.11.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.g, ptr %.sroa.12.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1, !alias.scope !184, !noalias !187
  store <4 x i8> %i.aa, ptr %.sroa.13.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.17.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.17.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.18.0..sroa_idx.i, align 1, !alias.scope !179, !noalias !182
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder24from_gregorian_timestamp17h775f95606c222c75E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, i16 noundef %2, ptr noalias noundef readonly align 1 captures(none) dereferenceable(6) %3) unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 32
  %i.b = lshr i64 %1, 48
  %i.c = lshr i16 %2, 8
  %i.d = trunc nuw i16 %i.c to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128
  %i.g = trunc i16 %2 to i8
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 4
  %i.i = load i8, ptr %i.h, align 1, !alias.scope !189, !noalias !192, !noundef !7
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 5
  %i.k = load i8, ptr %i.j, align 1, !alias.scope !189, !noalias !192, !noundef !7
  %i.l = lshr i64 %1, 24
  %i.m = trunc i64 %i.l to i8
  %i.n = lshr i64 %1, 16
  %i.o = trunc i64 %i.n to i8
  %i.p = lshr i64 %1, 8
  %i.q = trunc i64 %i.p to i8
  %i.r = trunc i64 %1 to i8
  %i.s = lshr i64 %1, 40
  %i.t = trunc i64 %i.s to i8
  %i.u = trunc i64 %i.a to i8
  %i.v = lshr i64 %1, 56
  %i.w = trunc nuw i64 %i.v to i8
  %i.x = and i8 %i.w, 15
  %i.y = or disjoint i8 %i.x, 16
  %i.z = trunc i64 %i.b to i8
  store i8 %i.m, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.o, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.q, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.r, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.t, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.u, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  store i8 %i.y, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 7
  store i8 %i.z, ptr %.sroa.10.0..sroa_idx, align 1
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.f, ptr %.sroa.11.0..sroa_idx, align 1
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 %i.g, ptr %.sroa.12.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.aa = load <4 x i8>, ptr %3, align 1, !alias.scope !189, !noalias !192
  store <4 x i8> %i.aa, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.i, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.k, ptr %.sroa.18.0..sroa_idx, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4uuid7builder7Builder26from_unix_timestamp_millis17h2298c5edebbb6495E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([16 x i8]) align 1 captures(none) dereferenceable(16) initializes((0, 16)) %0, i64 noundef %1, ptr noalias noundef readonly align 1 captures(none) dereferenceable(10) %2) unnamed_addr #5 {
bb.a:
  %i.a = lshr i64 %1, 16
  %i.b = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.d = load i8, ptr %i.c, align 1, !alias.scope !194, !noalias !197, !noundef !7
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 9
  %i.f = load i8, ptr %i.e, align 1, !alias.scope !194, !noalias !197, !noundef !7
  %i.g = lshr i64 %1, 40
  %i.h = trunc i64 %i.g to i8
  %i.i = lshr i64 %1, 32
  %i.j = trunc i64 %i.i to i8
  %i.k = lshr i64 %1, 24
  %i.l = trunc i64 %i.k to i8
  %i.m = trunc i64 %i.a to i8
  %i.n = lshr i64 %1, 8
  %i.o = trunc i64 %i.n to i8
  %i.p = trunc i64 %1 to i8
  store i8 %i.h, ptr %0, align 1
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 %i.j, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  store i8 %i.l, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 3
  store i8 %i.m, ptr %.sroa.6.0..sroa_idx, align 1
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i8 %i.o, ptr %.sroa.7.0..sroa_idx, align 1
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 5
  store i8 %i.p, ptr %.sroa.8.0..sroa_idx, align 1
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 6
  %i.q = load <4 x i8>, ptr %2, align 1, !alias.scope !194, !noalias !197
  %i.r = and <4 x i8> %i.q, <i8 15, i8 -1, i8 63, i8 -1>
  %i.s = or disjoint <4 x i8> %i.r, <i8 112, i8 0, i8 -128, i8 0>
  store <4 x i8> %i.s, ptr %.sroa.9.0..sroa_idx, align 1
  %.sroa.13.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 10
  %i.t = load <4 x i8>, ptr %i.b, align 1, !alias.scope !194, !noalias !197
  store <4 x i8> %i.t, ptr %.sroa.13.0..sroa_idx, align 1
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 14
  store i8 %i.d, ptr %.sroa.17.0..sroa_idx, align 1
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 15
  store i8 %i.f, ptr %.sroa.18.0..sroa_idx, align 1
end_hunk_1
begin_hunk_2_@"_ZN57_$LT$uuid..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc5fc501e77e05b49E":bb.a
    i32 5, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72
    i32 6, label %bb.d
    i32 7, label %bb.e
    i32 8, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87
  ]

default.unreachable141:                           ; preds = %bb.a
  unreachable

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.y = load i32, ptr %i.x, align 4, !range !243, !noundef !7
  store i32 %i.y, ptr %i.v, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aa = load i64, ptr %i.z, align 8, !noundef !7
  store i64 %i.aa, ptr %i.u, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.v, ptr %i.t, align 8
  %.sroa.419.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @"_ZN43_$LT$char$u20$as$u20$core..fmt..Display$GT$3fmt17h70f50921d2b95bdfE", ptr %.sroa.419.0..sroa_idx, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.u, ptr %i.ab, align 8
  %.sroa.423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.423.0..sroa_idx, align 8
  %.val51 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val52 = load ptr, ptr %i.ac, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !244
  store ptr @35, ptr %i.f, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.t, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 2, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.ad = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val51, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val52, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.f), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !244
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load i64, ptr %i.ae, align 8, !noundef !7
  store i64 %i.af, ptr %i.s, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.415.0..sroa_idx, align 8
  %.val49 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val50 = load ptr, ptr %i.ag, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !247
  store ptr @37, ptr %i.e, align 8
  %.sroa.594.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 1, ptr %.sroa.594.0..sroa_idx, align 8
  %.sroa.795.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.r, ptr %.sroa.795.0..sroa_idx, align 8
  %.sroa.896.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 1, ptr %.sroa.896.0..sroa_idx, align 8
  %.sroa.1097.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  store ptr null, ptr %.sroa.1097.0..sroa_idx, align 8
  %i.ah = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val49, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val50, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.e), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !247
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.aj = load i64, ptr %i.ai, align 8, !noundef !7
  store i64 %i.aj, ptr %i.q, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store ptr %i.q, ptr %i.p, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.411.0..sroa_idx, align 8
  %.val47 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val48 = load ptr, ptr %i.ak, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !250
  store ptr @39, ptr %i.d, align 8
  %.sroa.5100.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 1, ptr %.sroa.5100.0..sroa_idx, align 8
  %.sroa.7101.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.p, ptr %.sroa.7101.0..sroa_idx, align 8
  %.sroa.8102.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  store i64 1, ptr %.sroa.8102.0..sroa_idx, align 8
  %.sroa.10103.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr null, ptr %.sroa.10103.0..sroa_idx, align 8
  %i.al = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val47, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val48, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !250
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

bb.b:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.an = load i64, ptr %i.am, align 8, !noundef !7 ; 4 uses
  store i64 %i.an, ptr %i.o, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ap = load i64, ptr %i.ao, align 8, !noundef !7
  store i64 %i.ap, ptr %i.n, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  store <4 x i32> <i32 8, i32 4, i32 4, i32 4>, ptr %i.l, align 16
  %i.aq = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i32 12, ptr %i.aq, align 16
  %i.ar = icmp ult i64 %i.an, 5
  br i1 %i.ar, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92, label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val46 = load ptr, ptr %i.as, align 8
  %.val45 = load ptr, ptr %1, align 8
  %i.at = getelementptr inbounds nuw i8, ptr %.val46, i64 24
  %i.au = load ptr, ptr %i.at, align 8, !invariant.load !7, !noalias !253, !nonnull !7
  %i.av = tail call noundef zeroext i1 %i.au(ptr noundef nonnull align 1 %.val45, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @45, i64 noundef 14), !noalias !253, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ax = load i64, ptr %i.aw, align 8, !noundef !7
  store i64 %i.ax, ptr %i.j, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  store ptr %i.j, ptr %i.i, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.47.0..sroa_idx, align 8
  %.val43 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val44 = load ptr, ptr %i.ay, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !256
  store ptr @47, ptr %i.c, align 8
  %.sroa.5124.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 1, ptr %.sroa.5124.0..sroa_idx, align 8
  %.sroa.7125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.i, ptr %.sroa.7125.0..sroa_idx, align 8
  %.sroa.8126.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 1, ptr %.sroa.8126.0..sroa_idx, align 8
  %.sroa.10127.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store ptr null, ptr %.sroa.10127.0..sroa_idx, align 8
  %i.az = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val43, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val44, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.c), !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !256
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

bb.d:                                             ; preds = %bb.a
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val42 = load ptr, ptr %i.ba, align 8
  %.val41 = load ptr, ptr %1, align 8
  %i.bb = getelementptr inbounds nuw i8, ptr %.val42, i64 24
  %i.bc = load ptr, ptr %i.bb, align 8, !invariant.load !7, !noalias !259, !nonnull !7
  %i.bd = tail call noundef zeroext i1 %i.bc(ptr noundef nonnull align 1 %.val41, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @48, i64 noundef 22), !noalias !259, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

bb.e:                                             ; preds = %bb.a
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val40 = load ptr, ptr %i.be, align 8
  %.val39 = load ptr, ptr %1, align 8
  %i.bf = getelementptr inbounds nuw i8, ptr %.val40, i64 24
  %i.bg = load ptr, ptr %i.bf, align 8, !invariant.load !7, !noalias !262, !nonnull !7
  %i.bh = tail call noundef zeroext i1 %i.bg(ptr noundef nonnull align 1 %.val39, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @49, i64 noundef 15), !noalias !262, !inline_history !58
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.bi = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bi, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.h, ptr %i.g, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h39abea5e69baa2c5E", ptr %.sroa.43.0..sroa_idx, align 8
  %.val37 = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val38 = load ptr, ptr %i.bj, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !265
  store ptr @51, ptr %i.b, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %.sroa.5136.0..sroa_idx, align 8
  %.sroa.7137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.g, ptr %.sroa.7137.0..sroa_idx, align 8
  %.sroa.8138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %.sroa.8138.0..sroa_idx, align 8
  %.sroa.10139.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.10139.0..sroa_idx, align 8
  %i.bk = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val37, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val38, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !265
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67: ; preds = %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87, %bb.e, %bb.d, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72, %bb.c, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit
  %.sroa.0.0.in = phi i1 [ %i.ad, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit ], [ %i.ah, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit57 ], [ %i.al, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit62 ], [ %i.bq, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92 ], [ %i.av, %bb.c ], [ %i.az, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit72 ], [ %i.bd, %bb.d ], [ %i.bh, %bb.e ], [ %i.bk, %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit87 ]
  ret i1 %.sroa.0.0.in

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit92: ; preds = %bb.b
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.l, i64 %i.an
  %i.bm = load i32, ptr %i.bl, align 4, !noundef !7
  store i32 %i.bm, ptr %i.m, align 4
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  store ptr %i.o, ptr %i.k, align 8
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.427.0..sroa_idx, align 8
  %i.bn = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.m, ptr %i.bn, align 8
  %.sroa.431.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr @"_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h1d34aa19ad65fef9E", ptr %.sroa.431.0..sroa_idx, align 8
  %i.bo = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr %i.n, ptr %i.bo, align 8
  %.sroa.435.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx, align 8
  %.val = load ptr, ptr %1, align 8, !nonnull !7, !noundef !7
  %i.bp = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val36 = load ptr, ptr %i.bp, align 8, !nonnull !7, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !268
  store ptr @44, ptr %i.a, align 8
  %.sroa.5106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 3, ptr %.sroa.5106.0..sroa_idx, align 8
  %.sroa.7107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.k, ptr %.sroa.7107.0..sroa_idx, align 8
  %.sroa.8108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 3, ptr %.sroa.8108.0..sroa_idx, align 8
  %.sroa.10109.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10109.0..sroa_idx, align 8
  %i.bq = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val36, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !268
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit67

bb.f:                                             ; preds = %bb.b
  tail call void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.an, i64 noundef 5, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @40) #28
  unreachable
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$uuid..fmt..Braced$u20$as$u20$core..fmt..LowerHex$GT$3fmt17h541ce43ba9965122E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [38 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext false), !noalias !7
  store i8 123, ptr %i.a, align 1, !alias.scope !271, !noalias !274
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 125, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !271, !noalias !274
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$uuid..fmt..Braced$u20$as$u20$core..fmt..UpperHex$GT$3fmt17hd7ed8d67c52fd469E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [38 x i8], align 1                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(36) %i.b, i8 0, i64 36, i1 false)
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %.sroa.4.0..sroa_idx.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, i1 noundef zeroext true), !noalias !7
  store i8 123, ptr %i.a, align 1, !alias.scope !276, !noalias !279
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 37
  store i8 125, ptr %.sroa.5.0..sroa_idx.i, align 1, !alias.scope !276, !noalias !279
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 38)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$uuid..fmt..Simple$u20$as$u20$core..fmt..LowerHex$GT$3fmt17he7d7b8e08074eb57E"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call fastcc ptr @_ZN4uuid3fmt13encode_simple17hdab76873392a6cebE(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 1 %i.a, i1 noundef zeroext false)
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN57_$LT$uuid..fmt..Simple$u20$as$u20$core..fmt..UpperHex$GT$3fmt17h6bc3415dd4f4edbdE"(ptr noalias noundef readonly align 1 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 1                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = call fastcc ptr @_ZN4uuid3fmt13encode_simple17hdab76873392a6cebE(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef nonnull align 1 %i.a, i1 noundef zeroext true)
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef 32)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.c
}

; Function Attrs: nonlazybind uwtable
define noundef i16 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u1617h7f5af8551b669c38E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [2 x i8], align 2                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i16 0, ptr %i.d, align 2
  %i.e = load atomic ptr, ptr @_ZN9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN17h0540fd16b3f266fbE monotonic, align 8, !noalias !281 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.b, label %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i", !prof !8

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef nonnull ptr @_ZN9getrandom8backends27linux_android_with_fallback4init17h788c862a68ad1cd4E(), !noalias !281 ; 2 uses
  store atomic ptr %i.g, ptr @_ZN9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN17h0540fd16b3f266fbE monotonic, align 8, !noalias !281
  br label %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i"

"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i": ; preds = %bb.b, %bb.a
  %.sroa.0.0.i.i.i = phi ptr [ %i.g, %bb.b ], [ %i.e, %bb.a ] ; 2 uses
  %i.h = icmp eq ptr %.sroa.0.0.i.i.i, inttoptr (i64 -1 to ptr)
  br i1 %i.h, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i", %bb.f
  %.sroa.0.042.i.i.i = phi ptr [ %.sroa.0.1.i.i.i, %bb.f ], [ %i.d, %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i" ] ; 3 uses
  %.sroa.5.041.i.i.i = phi i64 [ %.sroa.5.1.i.i.i, %bb.f ], [ 2, %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i" ] ; 4 uses
  %i.i = call noundef i64 %.sroa.0.0.i.i.i(ptr noundef nonnull align 1 %.sroa.0.042.i.i.i, i64 noundef range(i64 1, 0) %.sroa.5.041.i.i.i, i32 noundef 0) #27, !noalias !286, !inline_history !289 ; 5 uses
  %i.j = icmp sgt i64 %i.i, 0
  br i1 %i.j, label %bb.g, label %bb.c

bb.c:                                             ; preds = %.preheader.i.i
  %i.k = icmp eq i64 %i.i, -1
  br i1 %i.k, label %bb.d, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread

bb.d:                                             ; preds = %bb.c
  %i.l = call noundef i32 @_ZN9getrandom8backends8use_file5utils9get_errno9get_errno17h698397144bad8d62E(), !noalias !286 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.l, 4
  br i1 %.not.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.m = call noundef i32 @_ZN9getrandom5error5Error10from_errno17hf4b4f1ca7ac401b4E(i32 noundef %i.l), !noalias !286
  br label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread

bb.f:                                             ; preds = %bb.h, %bb.d
  %.sroa.5.1.i.i.i = phi i64 [ %i.p, %bb.h ], [ %.sroa.5.041.i.i.i, %bb.d ] ; 2 uses
  %.sroa.0.1.i.i.i = phi ptr [ %i.o, %bb.h ], [ %.sroa.0.042.i.i.i, %bb.d ]
  %i.n = icmp eq i64 %.sroa.5.1.i.i.i, 0
  br i1 %i.n, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread9, label %.preheader.i.i

bb.g:                                             ; preds = %.preheader.i.i
  %.not39.i.i.i = icmp ugt i64 %i.i, %.sroa.5.041.i.i.i
  br i1 %.not39.i.i.i, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.0.042.i.i.i, i64 %i.i
  %i.p = sub nuw nsw i64 %.sroa.5.041.i.i.i, %i.i
  br label %bb.f

_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit:      ; preds = %"_ZN9getrandom8backends27linux_android_with_fallback10fill_inner4lazy16LazyPtr$LT$T$GT$15try_unsync_init17haf05f2ce66f8f3e1E.exit.i.i"
  %i.q = call noundef i32 @_ZN9getrandom8backends27linux_android_with_fallback17use_file_fallback17hd4fde6409425fab5E(ptr noalias noundef nonnull align 1 %i.d, i64 noundef range(i64 2, 17) 2) ; 2 uses
  %.not = icmp eq i32 %i.q, 0
  br i1 %.not, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread9, label %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread, !prof !290

_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread: ; preds = %bb.c, %bb.g, %bb.e, %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit
  %.sroa.0.0.i.i8 = phi i32 [ %i.q, %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit ], [ %i.m, %bb.e ], [ 65538, %bb.g ], [ 65538, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i32 %.sroa.0.0.i.i8, ptr %i.c, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.c, ptr %i.a, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr @"_ZN62_$LT$getrandom..error..Error$u20$as$u20$core..fmt..Display$GT$3fmt17hc6b6d3de1a5ce8d5E", ptr %.sroa.45.0..sroa_idx, align 8
  store ptr @53, ptr %i.b, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %i.s, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.a, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 1, ptr %i.u, align 8
  call void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @55) #28
  unreachable

_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit.thread9: ; preds = %bb.f, %_ZN9getrandom4fill17had1e1c30c5b93a1eE.exit
  %.sroa.02.0.copyload = load i16, ptr %i.d, align 2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i16 %.sroa.02.0.copyload
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"() unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [48 x i8], align 8                ; 7 uses
  %i.c = alloca [4 x i8], align 4                 ; 3 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i64 0, ptr %i.d, align 8
  %i.e = load atomic ptr, ptr @_ZN9getrandom8backends27linux_android_with_fallback10fill_inner12GETRANDOM_FN17h0540fd16b3f266fbE monotonic, align 8, !noalias !291 ; 2 uses
end_hunk_2
begin_hunk_3_@"_ZN64_$LT$uuid..fmt..Braced$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hf3e486df717e7f97E":bb.a
  store i64 %2, ptr %.sroa.4.0..sroa_idx, align 8
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !noundef !7
  %i.e = icmp eq i8 %i.d, 123
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.g = load i8, ptr %i.f, align 1, !noundef !7
  %i.h = icmp eq i8 %i.g, 125
  br i1 %i.h, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef 36)
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !123, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.k, 5
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.67.0.copyload = phi i8 [ %i.k, %bb.e ], [ 3, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.78.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.78.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.6.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.67.0.copyload, ptr %.sroa.6.0..sroa_idx1, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4uuid6parser12parse_simple17h45621b81a65dd21aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.d, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.6.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN64_$LT$uuid..non_nil..NonNilUuid$u20$as$u20$core..fmt..Display$GT$3fmt17hfc2b147d37564960E"(ptr noalias noundef readonly align 16 captures(none) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [36 x i8], align 1                ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = load i128, ptr %0, align 16, !range !337, !noundef !7
  %i.d = tail call i128 @llvm.bswap.i128(i128 %i.c)
  store i128 %i.d, ptr %i.b, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !347
  call fastcc void @_ZN4uuid3fmt17format_hyphenated17h0b521468b17592b0E(ptr noalias noundef align 1 captures(address) dereferenceable(36) %i.a, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(16) %i.b, i1 noundef zeroext false), !noalias !357
  %i.e = call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef 36), !noalias !358
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !347
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0 = alloca [16 x i8], align 8            ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noundef !7 ; 2 uses
  %.not = icmp eq i8 %i.d, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx, i64 7, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  %.sroa.6.0..sroa_idx1 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1, align 8
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0, i64 16, i1 false)
  store i32 9, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite, inaccessiblemem: readwrite) uwtable
define void @"_ZN77_$LT$uuid..Uuid$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17h6712e9ea7099e066E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #7 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !359)
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull readonly align 1 dereferenceable(16) %1, i64 16, i1 false), !alias.scope !362
  br label %"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E.exit"

bb.c:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %2, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !364, !noalias !359
  br label %"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E.exit"

"_ZN4uuid7builder28_$LT$impl$u20$uuid..Uuid$GT$10from_slice17h3f9bca5b1b112434E.exit": ; preds = %bb.b, %bb.c
  %.sink.i = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !364, !noalias !359
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN77_$LT$uuid..Uuid$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h25fd6f23233b1210E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !365)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !368)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !371
  call void @_ZN4uuid6parser9try_parse17hf9a366a3feb31e3bE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noundef !7 ; 2 uses
  %.not.i.i = icmp eq i8 %i.d, 5
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx.i.i, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  %.sroa.6.0..sroa_idx1.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1.i.i, align 8, !noalias !373
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hbf592e3a3add744cE.exit"

bb.c:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  store i32 9, ptr %0, align 8, !alias.scope !375, !noalias !376
  br label %"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hbf592e3a3add744cE.exit"

"_ZN4uuid6parser67_$LT$impl$u20$core..str..traits..FromStr$u20$for$u20$uuid..Uuid$GT$8from_str17hbf592e3a3add744cE.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !371
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN81_$LT$uuid..fmt..Urn$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17heab54ad1ce833946E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !377
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !377
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !377
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i32 [ %.sroa.512.4.copyload14, %bb.b ], [ undef, %bb.a ]
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink32 = phi i32 [ %.sroa.9.sroa.0.0.copyload23, %bb.b ], [ undef, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink32, ptr %4, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN81_$LT$uuid..fmt..Urn$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17hbc149b883d139bdcE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN61_$LT$uuid..fmt..Urn$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h8cb0412f0bbd765dE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN84_$LT$uuid..fmt..Braced$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17h4458b316861f495dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !381
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !381
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !381
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i32 [ %.sroa.512.4.copyload14, %bb.b ], [ undef, %bb.a ]
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink32 = phi i32 [ %.sroa.9.sroa.0.0.copyload23, %bb.b ], [ undef, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink32, ptr %4, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$uuid..fmt..Braced$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h9c0fc4e502389007E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !385)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !388)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !390
  %i.c = icmp eq i64 %2, 38
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.d, %bb.c, %bb.a
  store ptr %1, ptr %i.b, align 8, !noalias !390
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 %2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !390
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = load i8, ptr %1, align 1, !alias.scope !388, !noalias !385, !noundef !7
  %i.e = icmp eq i8 %i.d, 123
  br i1 %i.e, label %bb.d, label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 37
  %i.g = load i8, ptr %i.f, align 1, !alias.scope !388, !noalias !385, !noundef !7
  %i.h = icmp eq i8 %i.g, 125
  br i1 %i.h, label %bb.e, label %bb.b

bb.e:                                             ; preds = %bb.d
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 1
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.i, i64 noundef 36), !noalias !385
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.k = load i8, ptr %i.j, align 8, !range !123, !noalias !390, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.k, 5
  br i1 %.not.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b
  %.sroa.67.0.copyload.i = phi i8 [ %i.k, %bb.e ], [ 3, %bb.b ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !390
  %.sroa.78.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.78.0..sroa_idx.i, i64 7, i1 false), !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !390
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !390
  %.sroa.6.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %.sroa.67.0.copyload.i, ptr %.sroa.6.0..sroa_idx1.i, align 8, !noalias !390
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN64_$LT$uuid..fmt..Braced$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hf3e486df717e7f97E.exit"

bb.g:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !390
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !390
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.l, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !388
  store i32 9, ptr %0, align 8, !alias.scope !385, !noalias !388
  br label %"_ZN64_$LT$uuid..fmt..Braced$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hf3e486df717e7f97E.exit"

"_ZN64_$LT$uuid..fmt..Braced$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hf3e486df717e7f97E.exit": ; preds = %bb.f, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17h64372733fe0b0f47E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !391
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !391
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !391
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i32 [ %.sroa.512.4.copyload14, %bb.b ], [ undef, %bb.a ]
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink32 = phi i32 [ %.sroa.9.sroa.0.0.copyload23, %bb.b ], [ undef, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink32, ptr %4, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN84_$LT$uuid..fmt..Simple$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h11d862d10015ce0cE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !395)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !398
  call fastcc void @_ZN4uuid6parser12parse_simple17h45621b81a65dd21aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i1 noundef zeroext false), !noalias !395
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noalias !398, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.d, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !398
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx.i, i64 7, i1 false), !noalias !398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !398
  %.sroa.6.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1.i, align 8, !noalias !398
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !398
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !400
  store i32 9, ptr %0, align 8, !alias.scope !395, !noalias !400
  br label %"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E.exit"

"_ZN64_$LT$uuid..fmt..Simple$u20$as$u20$core..str..traits..FromStr$GT$8from_str17hb463747637c80ac6E.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nounwind nonlazybind uwtable
define void @"_ZN86_$LT$uuid..Uuid$u20$as$u20$core..convert..TryFrom$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$8try_from17h29bb5036987d7ea6E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 4), (8, 16)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !7 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !401)
  %i.e = icmp eq i64 %i.d, 16
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(16) %i.b, i64 16, i1 false), !alias.scope !404
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %.sroa.54.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.d, ptr %.sroa.54.0..sroa_idx.i, align 8, !alias.scope !406, !noalias !401
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sink.i = phi i32 [ 9, %bb.b ], [ 1, %bb.c ]
  store i32 %.sink.i, ptr %0, align 8, !alias.scope !406, !noalias !401
  %.val = load i64, ptr %1, align 8               ; 2 uses
  %i.g = icmp eq i64 %.val, 0
  br i1 %i.g, label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4": ; preds = %bb.d
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #27
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5"

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h2b0151d682dab0c1E.exit5": ; preds = %bb.d, %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i4.i4"
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$10from_slice17hfa5f0d35067a27beE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 20)) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #5 {
bb.a:
  %i.a = icmp eq i64 %2, 16
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.512.4.copyload14 = load i32, ptr %1, align 1, !alias.scope !407
  %.sroa.815.4..sroa_idx17 = getelementptr inbounds nuw i8, ptr %1, i64 4
  %.sroa.815.4.copyload18 = load i64, ptr %.sroa.815.4..sroa_idx17, align 1, !alias.scope !407
  %.sroa.9.4..sroa_idx19 = getelementptr inbounds nuw i8, ptr %1, i64 12
  %.sroa.9.sroa.0.0.copyload23 = load i32, ptr %.sroa.9.4..sroa_idx19, align 1, !alias.scope !407
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink34 = phi i32 [ %.sroa.512.4.copyload14, %bb.b ], [ undef, %bb.a ]
  %.sink42 = phi i64 [ %.sroa.815.4.copyload18, %bb.b ], [ %2, %bb.a ]
  %.sink32 = phi i32 [ %.sroa.9.sroa.0.0.copyload23, %bb.b ], [ undef, %bb.a ]
  %.sink = phi i32 [ 9, %bb.b ], [ 1, %bb.a ]
  %3 = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.sink34, ptr %3, align 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink42, ptr %i.b, align 8
  %4 = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink32, ptr %4, align 8
  store i32 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN88_$LT$uuid..fmt..Hyphenated$u20$as$u20$uuid..external..serde_support..UuidDeserialize$GT$8from_str17h5284e054fc4169d3E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %.sroa.0.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !411)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !414
  call fastcc void @_ZN4uuid6parser16parse_hyphenated17hfde26580af7bac2aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2), !noalias !411
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i8, ptr %i.c, align 8, !range !123, !noalias !414, !noundef !7 ; 2 uses
  %.not.i = icmp eq i8 %i.d, 5
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false), !noalias !414
  br i1 %.not.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.65.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 17
  %.sroa.7.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.a, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7.0..sroa_idx3.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.65.0..sroa_idx.i, i64 7, i1 false), !noalias !414
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !414
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !414
  %.sroa.6.0..sroa_idx1.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i8 %i.d, ptr %.sroa.6.0..sroa_idx1.i, align 8, !noalias !414
  call fastcc void @_ZN4uuid5error11InvalidUuid8into_err17h24911e7c71e594f4E(ptr noalias noundef align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(address) dereferenceable(24) %i.a)
  br label %"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit"

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !414
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.e, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.0.i, i64 16, i1 false), !noalias !416
  store i32 9, ptr %0, align 8, !alias.scope !411, !noalias !416
  br label %"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit"

"_ZN68_$LT$uuid..fmt..Hyphenated$u20$as$u20$core..str..traits..FromStr$GT$8from_str17h989e830c12f116cbE.exit": ; preds = %bb.b, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..Timestamp$u20$as$u20$core..convert..TryFrom$LT$std..time..SystemTime$GT$$GT$8try_from17habc1e6bd1281a32bE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) initializes((0, 8), (16, 32)) %0, i64 noundef %1, i32 noundef range(i32 0, 1000000000) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [16 x i8], align 8                ; 3 uses
  store i64 %1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i32 %2, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_ZN3std4time10SystemTime14duration_since17h85cfc48171ee6db2E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.b, i64 noundef 0, i32 noundef 0)
  %i.d = load i64, ptr %i.a, align 8, !range !30, !noundef !7
  %i.e = trunc nuw i64 %i.d to i1
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 8, ptr %i.f, align 8
  %.sroa.350.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 ptrtoint (ptr @64 to i64), ptr %.sroa.350.0..sroa_idx, align 16
  %.sroa.451.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i32 54, ptr %.sroa.451.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx52 = getelementptr inbounds nuw i8, ptr %0, i64 28
  store i32 0, ptr %.sroa.5.0..sroa_idx52, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.h = load i64, ptr %i.g, align 8, !noundef !7
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.j = load i32, ptr %i.i, align 8, !range !32, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i128 0, ptr %i.k, align 16
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.h, ptr %.sroa.425.0..sroa_idx, align 16
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %i.j, ptr %.sroa.526.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 0, ptr %.sroa.627.0..sroa_idx, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %storemerge = phi i64 [ 0, %bb.c ], [ 1, %bb.b ]
  store i64 %storemerge, ptr %0, align 16
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef i64 @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$17generate_sequence17had6d3c362c976013E"(ptr nofree noundef nonnull align 16 captures(none) %0, i64 noundef %1, i32 noundef %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 16 %0, i64 noundef %1, i32 noundef %2)
  %i.b = load i64, ptr %i.a, align 8, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i64 %i.b
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN98_$LT$uuid..timestamp..context..v7_support..ContextV7$u20$as$u20$uuid..timestamp..ClockSequence$GT$27generate_timestamp_sequence17ha397ddc3ca9b63edE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr nofree noundef nonnull align 16 captures(none) %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.b = load i128, ptr %i.a, align 16, !noundef !7 ; 2 uses
  %i.c = icmp eq i128 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = zext i64 %2 to i128
  %i.e = mul nuw nsw i128 %i.d, 1000000000
  %i.f = zext i32 %3 to i128
  %i.g = add nuw nsw i128 %i.e, %i.f
  %i.h = tail call i128 @llvm.uadd.sat.i128(i128 %i.g, i128 %i.b) ; 2 uses
  %i.i = udiv i128 %i.h, 1000000000               ; 2 uses
  %i.j = trunc i128 %i.i to i64
  %i.k = mul i128 %i.i, 1000000000
  %.decomposed = sub i128 %i.h, %i.k
  %i.l = trunc nuw nsw i128 %.decomposed to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.08.0 = phi i32 [ %i.l, %bb.b ], [ %3, %bb.a ] ; 4 uses
  %.sroa.07.0 = phi i64 [ %i.j, %bb.b ], [ %2, %bb.a ] ; 3 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %.sroa.035.0.copyload = load i64, ptr %i.m, align 16 ; 2 uses
  %.sroa.536.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %.sroa.536.0.copyload = load i64, ptr %.sroa.536.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %.sroa.737.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 68 ; 2 uses
  %.sroa.737.0.copyload = load i32, ptr %.sroa.737.0..sroa_idx, align 4
  %i.n = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %.sroa.07.0, i64 1000) ; 2 uses
  %i.o = extractvalue { i64, i1 } %i.n, 1
  %i.p = extractvalue { i64, i1 } %i.n, 0
  %i.q = udiv i32 %.sroa.08.0, 1000000
  %i.r = zext nneg i32 %i.q to i64
  %i.s = tail call i64 @llvm.uadd.sat.i64(i64 %i.p, i64 %i.r)
  %i.t = select i1 %i.o, i64 -1, i64 %i.s, !prof !8 ; 3 uses
  %i.u = icmp ugt i64 %i.t, %.sroa.035.0.copyload
  br i1 %i.u, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.sroa.6.0.copyload = load i32, ptr %.sroa.6.0..sroa_idx, align 16
  %.sroa.0.0.i.i = tail call noundef i32 @llvm.umax.i32(i32 %.sroa.08.0, i32 %.sroa.6.0.copyload) ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.w = load i64, ptr %i.v, align 8, !noundef !7 ; 2 uses
  %i.x = load i64, ptr %1, align 16, !noundef !7
  %i.y = icmp eq i64 %i.x, 0                      ; 2 uses
  br i1 %i.y, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  tail call void @llvm.experimental.noalias.scope.decl(metadata !417)
  %i.z = tail call noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"(), !noalias !417
  %i.aa = and i64 %i.z, 2199023255551             ; 2 uses
  %i.ab = load i64, ptr %1, align 16, !alias.scope !417, !noundef !7
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ae = load i64, ptr %i.ad, align 8, !alias.scope !417, !noundef !7 ; 2 uses
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split

bb.g:                                             ; preds = %bb.f
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !417
  unreachable

bb.h:                                             ; preds = %bb.d
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !7 ; 2 uses
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.k, label %bb.j

bb.i:                                             ; preds = %bb.d, %bb.j
  %.sroa.06.0 = phi i64 [ %i.av, %bb.j ], [ %i.w, %bb.d ]
  %i.aj = add i64 %.sroa.06.0, 1                  ; 2 uses
  %i.ak = icmp ugt i64 %i.aj, 4398046511103
  br i1 %i.ak, label %bb.l, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit

bb.j:                                             ; preds = %bb.h
  %i.al = urem i32 %.sroa.0.0.i.i, 1000000
  %i.am = zext nneg i32 %i.al to i64
  %i.an = udiv i64 %i.am, %i.ah
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ap = load i64, ptr %i.ao, align 16, !noundef !7
  %i.aq = and i64 %i.ap, %i.w
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.as = load i64, ptr %i.ar, align 8, !noundef !7
  %i.at = and i64 %i.as, 63
  %i.au = shl i64 %i.an, %i.at
  %i.av = or i64 %i.au, %i.aq
  br label %bb.i

bb.k:                                             ; preds = %bb.h
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28
  unreachable

bb.l:                                             ; preds = %bb.i
  %i.aw = zext i64 %.sroa.536.0.copyload to i128
  %i.ax = mul nuw nsw i128 %i.aw, 1000000000
  %i.ay = zext i32 %.sroa.0.0.i.i to i128
  %i.az = add nuw nsw i128 %i.ax, 1000000
  %i.ba = add nuw nsw i128 %i.az, %i.ay
  %.frozen = freeze i128 %i.ba                    ; 2 uses
  %i.bb = udiv i128 %.frozen, 1000000000          ; 2 uses
  %i.bc = trunc i128 %i.bb to i64                 ; 3 uses
  %i.bd = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.bc, i64 1000) ; 2 uses
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  %i.bf = extractvalue { i64, i1 } %i.bd, 0
  %i.bg = mul i128 %i.bb, 1000000000
  %.decomposed67 = sub i128 %.frozen, %i.bg
  %i.bh = trunc nuw nsw i128 %.decomposed67 to i32 ; 3 uses
  %i.bi = udiv i32 %i.bh, 1000000
  %i.bj = zext nneg i32 %i.bi to i64
  %i.bk = tail call i64 @llvm.uadd.sat.i64(i64 %i.bf, i64 %i.bj)
  %i.bl = select i1 %i.be, i64 -1, i64 %i.bk, !prof !8 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !420)
  %i.bm = tail call noundef i64 @"_ZN57_$LT$uuid..rng..imp..RngImp$u20$as$u20$uuid..rng..Rng$GT$3u6417ha40d7f74ca0a8a51E"(), !noalias !420
  %i.bn = and i64 %i.bm, 2199023255551            ; 2 uses
  br i1 %i.y, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bp = load i64, ptr %i.bo, align 8, !alias.scope !420, !noundef !7 ; 2 uses
  %i.bq = icmp eq i64 %i.bp, 0
  br i1 %i.bq, label %bb.n, label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split

bb.n:                                             ; preds = %bb.m
  tail call void @_ZN4core9panicking11panic_const23panic_const_div_by_zero17hd4705242238fd5f4E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @28) #28, !noalias !420
  unreachable

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split: ; preds = %bb.m, %bb.f
  %.sink = phi i32 [ %.sroa.08.0, %bb.f ], [ %i.bh, %bb.m ] ; 2 uses
  %.sink65 = phi i64 [ %i.ae, %bb.f ], [ %i.bp, %bb.m ]
  %.sink63 = phi i64 [ %i.aa, %bb.f ], [ %i.bn, %bb.m ]
  %.sroa.5.0.ph.a = phi i64 [ %i.t, %bb.f ], [ %i.bl, %bb.m ]
  %.sroa.0.044.ph = phi i64 [ %.sroa.07.0, %bb.f ], [ %i.bc, %bb.m ]
  %i.br = urem i32 %.sink, 1000000
  %i.bs = zext nneg i32 %i.br to i64
  %i.bt = udiv i64 %i.bs, %.sink65
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bv = load i64, ptr %i.bu, align 16, !noundef !7
  %i.bw = and i64 %i.bv, %.sink63
  %i.bx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.by = load i64, ptr %i.bx, align 8, !noundef !7
  %i.bz = and i64 %i.by, 63
  %i.ca = shl i64 %i.bt, %i.bz
  %i.cb = or i64 %i.ca, %i.bw
  br label %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit

_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit: ; preds = %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split, %bb.l, %bb.e, %bb.i
  %.sroa.0.sroa.0.0 = phi i64 [ %.sroa.035.0.copyload, %bb.i ], [ %i.bl, %bb.l ], [ %i.t, %bb.e ], [ %.sroa.5.0.ph.a, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.12.0 = phi i32 [ %.sroa.737.0.copyload, %bb.i ], [ undef, %bb.l ], [ undef, %bb.e ], [ undef, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ]
  %.sroa.7.0 = phi i32 [ %.sroa.0.0.i.i, %bb.i ], [ %i.bh, %bb.l ], [ %.sroa.08.0, %bb.e ], [ %.sink, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.0.044 = phi i64 [ %.sroa.536.0.copyload, %bb.i ], [ %i.bc, %bb.l ], [ %.sroa.07.0, %bb.e ], [ %.sroa.0.044.ph, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  %.sroa.0.0 = phi i64 [ %i.aj, %bb.i ], [ %i.bn, %bb.l ], [ %i.aa, %bb.e ], [ %i.cb, %_ZN4uuid9timestamp7context10v7_support7Counter6reseed17h453455b850523202E.exit.sink.split ] ; 2 uses
  store i64 %.sroa.0.sroa.0.0, ptr %i.m, align 16
  store i64 %.sroa.0.044, ptr %.sroa.536.0..sroa_idx, align 8
  store i32 %.sroa.7.0, ptr %.sroa.6.0..sroa_idx, align 16
  store i32 %.sroa.12.0, ptr %.sroa.737.0..sroa_idx, align 4
  %i.cc = getelementptr inbounds nuw i8, ptr %1, i64 72
  store i64 %.sroa.0.0, ptr %i.cc, align 8
  store i64 %.sroa.0.0, ptr %0, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.044, ptr %i.cd, align 8
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

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{!"rustc version 1.91.1 (ed61e7d7e 2025-11-07)"}
!3 = !{!4}
!4 = distinct !{!4, !5, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!5 = distinct !{!5, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!6 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!7 = !{}
!8 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!9 = !{!10, !12}
!10 = distinct !{!10, !11, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E: argument 0"}
!11 = distinct !{!11, !"_ZN3std4sync6poison5mutex14Mutex$LT$T$GT$4lock17h5e5b9ea4e2473a33E"}
!12 = distinct !{!12, !13, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E: argument 0"}
!13 = distinct !{!13, !"_ZN4uuid9timestamp7context11std_support101_$LT$impl$u20$uuid..timestamp..ClockSequence$u20$for$u20$std..sync..poison..mutex..Mutex$LT$C$GT$$GT$27generate_timestamp_sequence17hccb54dd7f35757d7E"}
!14 = !{!12}
!15 = !{i64 8}
!16 = !{i64 1}
!17 = !{!18, !20}
end_hunk_3
