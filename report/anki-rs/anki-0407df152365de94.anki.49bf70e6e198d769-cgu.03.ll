Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26clear_searched_cards_table17h8dddfaec4d2fb866E":bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26get_all_cards_due_in_range17h63144d47bf78d0afE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [64 x i8], align 8                ; 10 uses
  %i.d = alloca [64 x i8], align 8                ; 9 uses
  %i.e = alloca [64 x i8], align 8                ; 9 uses
  %i.f = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.24.i.i.i = alloca [28 x i8], align 4     ; 9 uses
  %i.g = alloca [64 x i8], align 8                ; 9 uses
  %i.h = alloca [88 x i8], align 8                ; 9 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  %i.j = alloca [24 x i8], align 8                ; 10 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [112 x i8], align 8               ; 4 uses
  %i.o = alloca [64 x i8], align 8                ; 6 uses
  %i.p = alloca [64 x i8], align 8                ; 4 uses
  %i.q = alloca [24 x i8], align 8                ; 6 uses
  %i.r = alloca [24 x i8], align 8                ; 6 uses
  %i.s = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.69 = alloca [64 x i8], align 8           ; 5 uses
  %i.t = alloca [72 x i8], align 8                ; 8 uses
  %i.u = alloca [104 x i8], align 8               ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.s, ptr noundef nonnull align 8 %i.v, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @319, i64 noundef 65)
  %i.w = load ptr, ptr %i.s, align 8, !noundef !20 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  %i.y = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, ptr noundef nonnull align 8 dereferenceable(64) %i.y, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  br i1 %i.x, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.p, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  br label %bb.al

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.69, i64 64, i1 false)
  store ptr %i.w, ptr %i.t, align 8
  %i.z = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !20 ; 2 uses
  %.not = icmp eq ptr %i.z, null
  br i1 %.not, label %bb.e, label %bb.d, !prof !333

bb.d:                                             ; preds = %bb.c
  %.sroa.443.0.insert.ext = zext i32 %3 to i64
  %.sroa.443.0.insert.shift = shl nuw i64 %.sroa.443.0.insert.ext, 32
  %.sroa.042.0.insert.ext = zext i32 %2 to i64    ; 2 uses
  %.sroa.042.0.insert.insert = or disjoint i64 %.sroa.443.0.insert.shift, %.sroa.042.0.insert.ext
  call void @llvm.experimental.noalias.scope.decl(metadata !1676)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1679
  %i.aa = getelementptr inbounds nuw i8, ptr %i.t, i64 64
  %.val19.i = load ptr, ptr %i.aa, align 8, !alias.scope !1676, !noalias !1681, !noundef !20
  invoke fastcc void @"_ZN67_$LT$$u5b$T$u3b$$u20$2$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h50465a72ac6986daE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.m, i64 %.sroa.042.0.insert.insert, ptr nonnull %i.z, ptr %.val19.i)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.d
  %i.ab = load i64, ptr %i.m, align 8, !range !804, !noalias !1679, !noundef !20 ; 2 uses
  %.not.i = icmp eq i64 %i.ab, -9223372036854775783
  br i1 %.not.i, label %bb.i, label %bb.h

bb.e:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #33
          to label %bb.g unwind label %bb.f

.body.thread:                                     ; preds = %bb.am, %.body.i.i, %.body, %bb.f
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.f ], [ %eh.lpad-body12.i.i, %.body.i.i ], [ %i.ai, %.body ], [ %i.cm, %bb.am ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.t) #31
          to label %bb.ap unwind label %bb.an

bb.f:                                             ; preds = %bb.d, %bb.h, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.g:                                             ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %.noexc
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %.sroa.415.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.415.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.0..sroa_idx.i, i64 40, i1 false)
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.ad = load <2 x ptr>, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !1679
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1679
  store i64 %i.ab, ptr %i.o, align 8
  store <2 x ptr> %i.ad, ptr %.sroa.2.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.n, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.o)
          to label %bb.ao unwind label %bb.f

bb.i:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !1679
  store i64 1, ptr %i.u, align 8
  %.sroa.029.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8 ; 2 uses
  store ptr %.sroa.4.0..sroa_idx, ptr %.sroa.029.sroa.4.0..sroa_idx, align 8
  %.sroa.029.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store ptr null, ptr %.sroa.029.sroa.5.0..sroa_idx, align 8
  %.sroa.430.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  store i64 2, ptr %.sroa.430.0..sroa_idx, align 8
  %.sroa.632.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  store i64 2, ptr %.sroa.632.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i64 0, ptr %i.q, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store i64 0, ptr %i.af, align 8
  %i.ag = sub i32 %3, %2
  %i.ah = zext i32 %i.ag to i64
  invoke void @"_ZN62_$LT$T$u20$as$u20$alloc..vec..spec_from_elem..SpecFromElem$GT$9from_elem17h3e3d5d60f25e74b8E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.q, i64 noundef %i.ah)
          to label %bb.j unwind label %bb.am

.body:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h7e3e4a9fe4a488e9E.exit.i
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1682
  store ptr %.sroa.4.0..sroa_idx, ptr %i.k, align 8, !noalias !1687
  %i.aj = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 6 uses
  store ptr null, ptr %i.aj, align 8, !noalias !1687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.r, i64 24, i1 false), !noalias !1692
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 36
  %i.ak = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.641.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.23.16..sroa.641.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.24.16..sroa.641.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 36
  %i.al = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.650.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.23.16..sroa.650.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.24.16..sroa.650.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 36
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.659.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.23.16..sroa.659.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.24.16..sroa.659.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 36
  %i.an = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.668.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 12
  %.sroa.17.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.23.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.24.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 36
  %i.ao = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 2 uses
  %.sroa.3.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 60
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  br label %bb.k

bb.k:                                             ; preds = %"_ZN4core4iter8adapters7flatten11flatten_one28_$u7b$$u7b$closure$u7d$$u7d$17he17e2e32fa9c5f1fE.exit.i.i", %bb.j
  call void @llvm.experimental.noalias.scope.decl(metadata !1693)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1696
  invoke fastcc void @"_ZN94_$LT$rusqlite..row..Rows$u20$as$u20$fallible_streaming_iterator..FallibleStreamingIterator$GT$7advance17hd4cf90d0ff1f2d2dE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.noexc.i.i unwind label %bb.ai, !noalias !1687

.noexc.i.i:                                       ; preds = %bb.k
  %i.au = load i64, ptr %i.g, align 8, !range !804, !noalias !1696, !noundef !20 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.au, -9223372036854775783
  br i1 %.not.i.i.i, label %bb.m, label %bb.l

bb.l:                                             ; preds = %.noexc.i.i
  %.sroa.2.0.copyload.i.i.i = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !1696
  %i.av = load <2 x i64>, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !noalias !1696
  %.sroa.3.sroa.3.0.copyload.i.i.i = load i32, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, align 8, !noalias !1696
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i.i.i, i64 28, i1 false), !noalias !1696
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1696
  %i.aw = ptrtoint ptr %.sroa.2.0.copyload.i.i.i to i64
  br label %bb.w

bb.m:                                             ; preds = %.noexc.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1696
  %i.ax = load ptr, ptr %i.aj, align 8, !alias.scope !1693, !noalias !1698, !align !33, !noundef !20
  %.not35.i.i.i = icmp eq ptr %i.ax, null
  br i1 %.not35.i.i.i, label %_ZN4core4iter6traits8iterator8Iterator4fold17h7e3e4a9fe4a488e9E.exit.i, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1699
  invoke void @_ZN8rusqlite3row3Row3get17h8eb974404153621aE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @321)
          to label %.noexc2.i.i unwind label %bb.ai, !noalias !1687

.noexc2.i.i:                                      ; preds = %bb.n
  %i.ay = load i64, ptr %i.f, align 8, !range !804, !noalias !1699, !noundef !20 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %i.ay, -9223372036854775783
  %i.az = load i64, ptr %i.ak, align 8, !noalias !1699 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.p, label %bb.o

bb.o:                                             ; preds = %.noexc2.i.i
  %i.ba = load <2 x i64>, ptr %.sroa.641.0..sroa_idx.i.i.i.i, align 8, !noalias !1703
  %.sroa.23.16.copyload42.i.i.i = load i32, ptr %.sroa.23.16..sroa.641.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.16..sroa.641.0..sroa_idx.i.sroa_idx.i.i.i, i64 28, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1699
  br label %bb.w

bb.p:                                             ; preds = %.noexc2.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1699
  invoke void @_ZN8rusqlite3row3Row3get17hd0cd719f46165df8E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @322)
          to label %.noexc3.i.i unwind label %bb.ai, !noalias !1687

.noexc3.i.i:                                      ; preds = %bb.p
  %i.bb = load i64, ptr %i.e, align 8, !range !804, !noalias !1699, !noundef !20 ; 2 uses
  %.not72.i.i.i.i = icmp eq i64 %i.bb, -9223372036854775783
  %i.bc = load i64, ptr %i.al, align 8, !noalias !1699 ; 2 uses
  br i1 %.not72.i.i.i.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %.noexc3.i.i
  %i.bd = load <2 x i64>, ptr %.sroa.650.0..sroa_idx.i.i.i.i, align 8, !noalias !1703
  %.sroa.23.16.copyload43.i.i.i = load i32, ptr %.sroa.23.16..sroa.650.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.16..sroa.650.0..sroa_idx.i.sroa_idx.i.i.i, i64 28, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1699
  br label %bb.w

bb.r:                                             ; preds = %.noexc3.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1699
  invoke void @_ZN8rusqlite3row3Row3get17h2a7ccd0c933faff7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @323)
          to label %.noexc4.i.i unwind label %bb.ai, !noalias !1687

.noexc4.i.i:                                      ; preds = %bb.r
  %i.be = load i64, ptr %i.d, align 8, !range !804, !noalias !1699, !noundef !20 ; 2 uses
  %.not73.i.i.i.i = icmp eq i64 %i.be, -9223372036854775783
  %i.bf = load i64, ptr %i.am, align 8, !noalias !1699 ; 2 uses
  br i1 %.not73.i.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc4.i.i
  %i.bg = load <2 x i64>, ptr %.sroa.659.0..sroa_idx.i.i.i.i, align 8, !noalias !1703
  %.sroa.23.16.copyload44.i.i.i = load i32, ptr %.sroa.23.16..sroa.659.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.16..sroa.659.0..sroa_idx.i.sroa_idx.i.i.i, i64 28, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1699
  br label %bb.w

bb.t:                                             ; preds = %.noexc4.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1699
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1699
  invoke void @_ZN8rusqlite3row3Row3get17h877800aa1026d908E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @324)
          to label %.noexc5.i.i unwind label %bb.ai, !noalias !1687

.noexc5.i.i:                                      ; preds = %bb.t
  %i.bh = load i64, ptr %i.c, align 8, !range !804, !noalias !1699, !noundef !20 ; 2 uses
  %.not74.i.i.i.i = icmp eq i64 %i.bh, -9223372036854775783
  %i.bi = load i32, ptr %i.an, align 8, !noalias !1699 ; 2 uses
  br i1 %.not74.i.i.i.i, label %bb.v, label %bb.u

bb.u:                                             ; preds = %.noexc5.i.i
  %.sroa.10.sroa.10.4.copyload.i.i.i = load i32, ptr %.sroa.668.0..sroa_idx.i.i.i.i, align 4, !noalias !1703
  %.sroa.10.sroa.0.4.insert.ext.i.i.i = zext i32 %.sroa.10.sroa.10.4.copyload.i.i.i to i64
  %.sroa.10.sroa.0.4.insert.shift.i.i.i = shl nuw i64 %.sroa.10.sroa.0.4.insert.ext.i.i.i, 32
  %i.bj = load <2 x i64>, ptr %.sroa.17.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1703
  %.sroa.23.12.copyload.i.i.i = load i32, ptr %.sroa.23.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i, align 8, !noalias !1703
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.12..sroa.668.0..sroa_idx.i.sroa_idx.i.i.i, i64 28, i1 false), !noalias !1703
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1699
  %i.bk = zext i32 %i.bi to i64
  %.sroa.10.sroa.0.0.insert.insert.i.i.i = or disjoint i64 %.sroa.10.sroa.0.4.insert.shift.i.i.i, %i.bk
  br label %bb.w

bb.v:                                             ; preds = %.noexc5.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1699
  %i.bl = insertelement <2 x i64> poison, i64 %i.bc, i64 0
  %i.bm = insertelement <2 x i64> %i.bl, i64 %i.bf, i64 1
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u, %bb.s, %bb.q, %bb.o, %bb.l
  %.sroa.10.sroa.10.0.i.i.i = phi i64 [ %i.aw, %bb.l ], [ %i.az, %bb.v ], [ %i.az, %bb.o ], [ %i.bc, %bb.q ], [ %.sroa.10.sroa.0.0.insert.insert.i.i.i, %bb.u ], [ %i.bf, %bb.s ]
  %.sroa.23.0.i.i.i = phi i32 [ %.sroa.3.sroa.3.0.copyload.i.i.i, %bb.l ], [ %i.bi, %bb.v ], [ %.sroa.23.16.copyload42.i.i.i, %bb.o ], [ %.sroa.23.16.copyload43.i.i.i, %bb.q ], [ %.sroa.23.12.copyload.i.i.i, %bb.u ], [ %.sroa.23.16.copyload44.i.i.i, %bb.s ]
  %.sroa.0.0.i.i.i = phi i64 [ %i.au, %bb.l ], [ -9223372036854775783, %bb.v ], [ %i.ay, %bb.o ], [ %i.bb, %bb.q ], [ %i.bh, %bb.u ], [ %i.be, %bb.s ]
  %i.bn = phi <2 x i64> [ %i.av, %bb.l ], [ %i.bm, %bb.v ], [ %i.ba, %bb.o ], [ %i.bd, %bb.q ], [ %i.bj, %bb.u ], [ %i.bg, %bb.s ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(28) %.sroa.6.0..sroa_idx.i.i, ptr noundef nonnull align 4 dereferenceable(28) %.sroa.24.i.i.i, i64 28, i1 false), !noalias !1687
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1687
  store i64 %.sroa.0.0.i.i.i, ptr %i.ao, align 8, !noalias !1687
  store i64 %.sroa.10.sroa.10.0.i.i.i, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !1687
  store <2 x i64> %i.bn, ptr %.sroa.3.0..sroa_idx.i.i, align 8, !noalias !1687
  store i32 %.sroa.23.0.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !1687
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ao, i64 64, i1 false), !noalias !1712
  %i.bo = load i64, ptr %i.a, align 8, !range !804, !noalias !1704, !noundef !20
  %.not.i.i6.i.i = icmp eq i64 %i.bo, -9223372036854775783
  br i1 %.not.i.i6.i.i, label %bb.x, label %"_ZN4core3ptr150drop_in_place$LT$core..result..Result$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$C$i32$RP$$C$rusqlite..error..Error$GT$$GT$17h5f6946aaf33ebd9dE.exit.i.i.i.i"

"_ZN4core3ptr150drop_in_place$LT$core..result..Result$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$C$i32$RP$$C$rusqlite..error..Error$GT$$GT$17h5f6946aaf33ebd9dE.exit.i.i.i.i": ; preds = %bb.w
  invoke void @"_ZN4core3ptr43drop_in_place$LT$rusqlite..error..Error$GT$17h4381fbcb23ea4c35E"(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.a)
          to label %bb.ae unwind label %bb.ag, !noalias !1713

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1704
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1713
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(32) %.sroa.2.0..sroa_idx.i.i, i64 32, i1 false), !noalias !1714
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1687
  call void @llvm.experimental.noalias.scope.decl(metadata !1715)
  call void @llvm.experimental.noalias.scope.decl(metadata !1718)
  %i.bp = load i32, ptr %i.aq, align 8, !alias.scope !1718, !noalias !1720, !noundef !20
  %i.bq = sext i32 %i.bp to i64
  %i.br = sub nsw i64 %i.bq, %.sroa.042.0.insert.ext ; 3 uses
  %i.bs = load i64, ptr %i.ar, align 8, !alias.scope !1715, !noalias !1722, !noundef !20 ; 2 uses
  %i.bt = icmp ult i64 %i.br, %i.bs
  br i1 %i.bt, label %bb.y, label %bb.aa

bb.y:                                             ; preds = %bb.x
  %i.bu = load ptr, ptr %i.as, align 8, !alias.scope !1715, !noalias !1722, !nonnull !20, !noundef !20
  %i.bv = load i64, ptr %i.at, align 8, !alias.scope !1718, !noalias !1720, !noundef !20
  %i.bw = load <2 x i64>, ptr %i.ap, align 8, !alias.scope !1718, !noalias !1720
  %i.bx = getelementptr inbounds nuw [24 x i8], ptr %i.bu, i64 %i.br ; 4 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 16 ; 2 uses
  %i.bz = load i64, ptr %i.by, align 8, !alias.scope !1723, !noalias !1726, !noundef !20 ; 3 uses
  %i.ca = load i64, ptr %i.bx, align 8, !range !21, !alias.scope !1723, !noalias !1726, !noundef !20
  %i.cb = icmp eq i64 %i.bz, %i.ca
  br i1 %i.cb, label %bb.z, label %bb.af

bb.z:                                             ; preds = %bb.y
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17ha4dff1cafdef3370E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bx)
          to label %bb.af unwind label %.loopexit.i.i, !noalias !1728

bb.aa:                                            ; preds = %bb.x
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %i.br, i64 noundef %i.bs, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @320) #33
          to label %bb.ac unwind label %.loopexit.split-lp.i.i, !noalias !1728

.loopexit.i.i:                                    ; preds = %bb.z
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

.loopexit.split-lp.i.i:                           ; preds = %bb.aa
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ab

bb.ab:                                            ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$$GT$17h5d94b96d6d8d2f01E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b) #31
          to label %.body.i.i unwind label %bb.ad, !noalias !1722

bb.ac:                                            ; preds = %bb.aa
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.cc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !1722
  unreachable

bb.ae:                                            ; preds = %"_ZN4core3ptr150drop_in_place$LT$core..result..Result$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$C$i32$RP$$C$rusqlite..error..Error$GT$$GT$17h5f6946aaf33ebd9dE.exit.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1704
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1687
  br label %"_ZN4core4iter8adapters7flatten11flatten_one28_$u7b$$u7b$closure$u7d$$u7d$17he17e2e32fa9c5f1fE.exit.i.i"

bb.af:                                            ; preds = %bb.z, %bb.y
  %i.cd = getelementptr inbounds nuw i8, ptr %i.bx, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !alias.scope !1723, !noalias !1726, !nonnull !20, !noundef !20
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.ce, i64 %i.bz ; 2 uses
  store <2 x i64> %i.bw, ptr %i.cf, align 8, !noalias !1728
  %.sroa.5.0..sroa_idx.i3.i.i.i = getelementptr inbounds nuw i8, ptr %i.cf, i64 16
  store i64 %i.bv, ptr %.sroa.5.0..sroa_idx.i3.i.i.i, align 8, !noalias !1728
  %i.cg = add i64 %i.bz, 1
  store i64 %i.cg, ptr %i.by, align 8, !alias.scope !1723, !noalias !1726
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1713
  br label %"_ZN4core4iter8adapters7flatten11flatten_one28_$u7b$$u7b$closure$u7d$$u7d$17he17e2e32fa9c5f1fE.exit.i.i"

bb.ag:                                            ; preds = %"_ZN4core3ptr150drop_in_place$LT$core..result..Result$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$C$i32$RP$$C$rusqlite..error..Error$GT$$GT$17h5f6946aaf33ebd9dE.exit.i.i.i.i"
  %i.ch = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$$GT$17h5d94b96d6d8d2f01E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #31
          to label %.body.i.i unwind label %bb.ah, !noalias !1729

bb.ah:                                            ; preds = %bb.ag
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !1729
  unreachable

"_ZN4core4iter8adapters7flatten11flatten_one28_$u7b$$u7b$closure$u7d$$u7d$17he17e2e32fa9c5f1fE.exit.i.i": ; preds = %bb.af, %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1687
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.j, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !1687
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.k

bb.ai:                                            ; preds = %bb.t, %bb.r, %bb.p, %bb.n, %bb.k
  %i.cj = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr137drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$$LP$anki..card..CardId$C$anki..notes..NoteId$C$anki..decks..DeckId$RP$$GT$$GT$$GT$17h5d94b96d6d8d2f01E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #31
          to label %.body.i.i unwind label %bb.aj, !noalias !1687

bb.aj:                                            ; preds = %.body.i.i, %bb.ai
  %i.ck = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !1687
  unreachable

.body.i.i:                                        ; preds = %bb.ai, %bb.ag, %bb.ab
  %eh.lpad-body12.i.i = phi { ptr, i32 } [ %i.cj, %bb.ai ], [ %i.ch, %bb.ag ], [ %lpad.phi.i.i, %bb.ab ]
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %.body.thread unwind label %bb.aj, !noalias !1687

_ZN4core4iter6traits8iterator8Iterator4fold17h7e3e4a9fe4a488e9E.exit.i: ; preds = %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1730
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !1687
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.k)
          to label %bb.ak unwind label %.body

bb.ak:                                            ; preds = %_ZN4core4iter6traits8iterator8Iterator4fold17h7e3e4a9fe4a488e9E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !1682
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false), !noalias !1731
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  %i.cl = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cl, ptr noundef nonnull align 8 dereferenceable(24) %i.r, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  store i64 -9223372036854775773, ptr %0, align 8
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.t)
  br label %bb.al

bb.al:                                            ; preds = %bb.b, %bb.ao, %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.69)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  ret void

bb.am:                                            ; preds = %bb.i
  %i.cm = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.029.sroa.4.0..sroa_idx)
          to label %.body.thread unwind label %bb.an

bb.an:                                            ; preds = %bb.am, %.body.thread
  %i.cn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.ao:                                            ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.t)
  br label %bb.al

bb.ap:                                            ; preds = %.body.thread
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$26setup_searched_cards_table17h6866b749c4463df8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN8rusqlite10Connection13execute_batch17hd50685de3313c7bfE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @325, i64 noundef 104)
  %i.c = load i64, ptr %i.b, align 8, !range !804, !noundef !20
  %.not = icmp eq i64 %i.c, -9223372036854775783
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull align 8 dereferenceable(64) %i.b, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage4card54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$30all_cards_at_or_above_position17h5b5ebe352136cb87E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, i32 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_0
begin_hunk_1_@_ZN4anki7storage6revlog19row_to_revlog_entry17h35604c58cbb79545E:bb.a
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 36
  store i32 %i.ak, ptr %.sroa.15.0..sroa_idx, align 4
  %.sroa.16.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i32 %.sroa.0.05.i, ptr %.sroa.16.0..sroa_idx, align 8
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 44
  store i8 %i.ab, ptr %.sroa.17.0..sroa_idx, align 4
  %.sroa.18.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 45
  store i8 %.sroa.0.05.i114, ptr %.sroa.18.0..sroa_idx, align 1
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.p

bb.p:                                             ; preds = %bb.d, %bb.h, %bb.l, %bb.n, %bb.j, %bb.f, %bb.b, %"_ZN4core6result19Result$LT$T$C$E$GT$17unwrap_or_default17h34369164b7b347daE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage6revlog54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$13studied_today17h23081b855d36147dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 8 uses
  %i.b = alloca [64 x i8], align 8                ; 9 uses
  %.sroa.16.i = alloca [44 x i8], align 4         ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 8 uses
  %i.d = alloca [64 x i8], align 8                ; 16 uses
  %.sroa.11.i = alloca [40 x i8], align 8         ; 2 uses
  %i.e = alloca [112 x i8], align 8               ; 4 uses
  %i.f = alloca [64 x i8], align 8                ; 5 uses
  %i.g = alloca [112 x i8], align 8               ; 4 uses
  %i.h = alloca [64 x i8], align 8                ; 7 uses
  %i.i = alloca [64 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.617 = alloca [64 x i8], align 8          ; 5 uses
  %i.l = alloca [72 x i8], align 8                ; 8 uses
  %i.m = alloca [16 x i8], align 8                ; 7 uses
  %i.n = mul i64 %2, 1000
  %i.o = add i64 %i.n, -86400000
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.617)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.k, ptr noundef nonnull align 8 %i.p, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @518, i64 noundef 108)
  %i.q = load ptr, ptr %i.k, align 8, !noundef !20 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  %i.s = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.617, ptr noundef nonnull align 8 dereferenceable(64) %i.s, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br i1 %i.r, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.617, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.ab

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.617, i64 64, i1 false)
  store ptr %i.q, ptr %i.l, align 8
  %i.t = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !20
  %.not = icmp eq ptr %i.t, null
  br i1 %.not, label %bb.k, label %bb.d, !prof !333

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  store i64 %i.o, ptr %i.j, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  store i64 4, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 2 uses
  store i64 5, ptr %i.v, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3859)
  call void @llvm.experimental.noalias.scope.decl(metadata !3862)
  call void @llvm.experimental.noalias.scope.decl(metadata !3865)
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %i.x = load ptr, ptr %i.w, align 8, !alias.scope !3868, !noalias !3869, !noundef !20
  %i.y = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.x) #34, !noalias !3876 ; 4 uses
  %i.z = sext i32 %i.y to i64                     ; 2 uses
  %i.aa = icmp eq i32 %i.y, 0
  br i1 %i.aa, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i", label %bb.e

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i": ; preds = %bb.j, %bb.h, %bb.f, %bb.d
  %.lcssa.i.i.i = phi i64 [ 3, %bb.j ], [ 1, %bb.d ], [ 2, %bb.f ], [ 3, %bb.h ] ; 2 uses
  %.not13.i.i.i = icmp eq i64 %.lcssa.i.i.i, %i.z
  br i1 %.not13.i.i.i, label %bb.o, label %bb.n

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3876
  invoke fastcc void @_ZN8rusqlite9statement9Statement14bind_parameter17h7872a3662e9a25b6E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr nonnull readonly align 8 dereferenceable(24) %i.j, i64 noundef 1)
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.e
  %i.ab = load i64, ptr %i.d, align 8, !noalias !3877 ; 2 uses
  %.not12.i.i.i = icmp eq i64 %i.ab, -9223372036854775783
  br i1 %.not12.i.i.i, label %bb.f, label %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i"

bb.f:                                             ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3876
  %i.ac = icmp eq i32 %i.y, 1
  br i1 %i.ac, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i", label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3876
  invoke fastcc void @_ZN8rusqlite9statement9Statement14bind_parameter17h7872a3662e9a25b6E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr nonnull readonly %i.u, i64 noundef 2)
          to label %.noexc38 unwind label %bb.l

.noexc38:                                         ; preds = %bb.g
  %i.ad = load i64, ptr %i.d, align 8, !noalias !3877 ; 2 uses
  %.not12.1.i.i.i = icmp eq i64 %i.ad, -9223372036854775783
  br i1 %.not12.1.i.i.i, label %bb.h, label %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i"

bb.h:                                             ; preds = %.noexc38
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3876
  %i.ae = icmp ult i32 %i.y, 3
  br i1 %i.ae, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3876
  invoke fastcc void @_ZN8rusqlite9statement9Statement14bind_parameter17h7872a3662e9a25b6E(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr nonnull readonly %i.v, i64 noundef 3)
          to label %.noexc39 unwind label %bb.l

.noexc39:                                         ; preds = %bb.i
  %i.af = load i64, ptr %i.d, align 8, !noalias !3877 ; 2 uses
  %.not12.2.i.i.i = icmp eq i64 %i.af, -9223372036854775783
  br i1 %.not12.2.i.i.i, label %bb.j, label %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i"

bb.j:                                             ; preds = %.noexc39
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3876
  br label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i"

"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i": ; preds = %.noexc39, %.noexc38, %.noexc
  %.sroa.0.0.copyload.i = phi i64 [ %i.ab, %.noexc ], [ %i.ad, %.noexc38 ], [ %i.af, %.noexc39 ]
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3877
  %.sroa.915.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.915.0.copyload.i = load i64, ptr %.sroa.915.0..sroa_idx.i, align 8, !noalias !3877
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.0..sroa_idx.i, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !3876
  br label %bb.n

bb.k:                                             ; preds = %bb.c
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @165) #33
          to label %bb.m unwind label %bb.l

"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit": ; preds = %bb.v, %bb.l
  %.pn = phi { ptr, i32 } [ %i.ag, %bb.l ], [ %i.av, %bb.v ]
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.l) #31
          to label %bb.ae unwind label %bb.ac

bb.l:                                             ; preds = %bb.z, %bb.i, %bb.g, %bb.e, %bb.n, %bb.k
  %i.ag = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit"

bb.m:                                             ; preds = %bb.w, %bb.k
  unreachable

bb.n:                                             ; preds = %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i"
  %.sroa.0.027.i = phi i64 [ %.sroa.0.0.copyload.i, %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i" ], [ -9223372036854775786, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i" ]
  %.sroa.7.026.i = phi i64 [ %.sroa.7.0.copyload.i, %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i" ], [ %.lcssa.i.i.i, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i" ]
  %.sroa.915.025.i = phi i64 [ %.sroa.915.0.copyload.i, %"_ZN67_$LT$$u5b$T$u3b$$u20$3$u5d$$u20$as$u20$rusqlite..params..Params$GT$9__bind_in17h7175ed0db5ea6c6bE.exit.i" ], [ %i.z, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i" ]
  %i.ah = inttoptr i64 %.sroa.7.026.i to ptr
  %i.ai = inttoptr i64 %.sroa.915.025.i to ptr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store i64 %.sroa.0.027.i, ptr %i.h, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.ah, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr %i.ai, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.421.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.421.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.11.i, i64 40, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.h)
          to label %bb.ad unwind label %bb.l

bb.o:                                             ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h0784a5ebc1669554E.exit.thread.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store ptr %.sroa.4.0..sroa_idx, ptr %i.m, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  store ptr null, ptr %i.aj, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3878)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !3881
  invoke fastcc void @"_ZN94_$LT$rusqlite..row..Rows$u20$as$u20$fallible_streaming_iterator..FallibleStreamingIterator$GT$7advance17hd4cf90d0ff1f2d2dE"(ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %.noexc40 unwind label %bb.v

.noexc40:                                         ; preds = %bb.o
  %i.ak = load i64, ptr %i.c, align 8, !range !804, !noalias !3881, !noundef !20 ; 2 uses
  %.not.i = icmp eq i64 %i.ak, -9223372036854775783
  br i1 %.not.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %.noexc40
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.2.0.copyload.i = load ptr, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !3881
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.3.sroa.0.0.copyload.i = load i32, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !3881
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3881
  %i.al = ptrtoint ptr %.sroa.2.0.copyload.i to i64
  br label %bb.x

bb.q:                                             ; preds = %.noexc40
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !3881
  %i.am = load ptr, ptr %i.aj, align 8, !alias.scope !3878, !noalias !3883, !align !33, !noundef !20
  %.not28.i = icmp eq ptr %i.am, null
  br i1 %.not28.i, label %bb.w, label %bb.r

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3884
  invoke void @_ZN8rusqlite3row3Row3get17ha546bcb55eeda252E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @520)
          to label %.noexc41 unwind label %bb.v

.noexc41:                                         ; preds = %bb.r
  %i.an = load i64, ptr %i.b, align 8, !range !804, !noalias !3884, !noundef !20 ; 2 uses
  %.not.i.i = icmp eq i64 %i.an, -9223372036854775783
  %i.ao = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ap = load i32, ptr %i.ao, align 8, !noalias !3884 ; 2 uses
  br i1 %.not.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %.noexc41
  %.sroa.619.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  %.sroa.8.sroa.8.4.copyload.i = load i32, ptr %.sroa.619.0..sroa_idx.i.i, align 4, !noalias !3888
  %.sroa.8.sroa.0.4.insert.ext.i = zext i32 %.sroa.8.sroa.8.4.copyload.i to i64
  %.sroa.8.sroa.0.4.insert.shift.i = shl nuw i64 %.sroa.8.sroa.0.4.insert.ext.i, 32
  %.sroa.13.12..sroa.619.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.13.12.copyload.i = load i32, ptr %.sroa.13.12..sroa.619.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !3888
  %.sroa.16.12..sroa.619.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.12..sroa.619.0..sroa_idx.i.sroa_idx.i, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3884
  %i.aq = zext i32 %i.ap to i64
  %.sroa.8.sroa.0.0.insert.insert.i = or disjoint i64 %.sroa.8.sroa.0.4.insert.shift.i, %i.aq
  br label %bb.x

bb.t:                                             ; preds = %.noexc41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3884
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3884
  invoke void @_ZN8rusqlite3row3Row3get17h2a2e10a260a3a1e6E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.aj, i64 noundef 1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @521)
          to label %.noexc42 unwind label %bb.v

.noexc42:                                         ; preds = %bb.t
  %i.ar = load i64, ptr %i.a, align 8, !range !804, !noalias !3884, !noundef !20 ; 2 uses
  %.not32.i.i = icmp eq i64 %i.ar, -9223372036854775783
  %i.as = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.at = load double, ptr %i.as, align 8, !noalias !3884 ; 2 uses
  br i1 %.not32.i.i, label %bb.y, label %bb.u

bb.u:                                             ; preds = %.noexc42
  %.sroa.628.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.13.16.copyload29.i = load i32, ptr %.sroa.628.0..sroa_idx.i.i, align 8, !noalias !3888
  %.sroa.16.16..sroa.628.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.i, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.16..sroa.628.0..sroa_idx.i.sroa_idx.i, i64 44, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3884
  %i.au = bitcast double %i.at to i64
  br label %bb.x

bb.v:                                             ; preds = %bb.t, %bb.r, %bb.o, %bb.x, %bb.w
  %i.av = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit" unwind label %bb.ac

bb.w:                                             ; preds = %bb.q
  invoke void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @519) #33
          to label %bb.m unwind label %bb.v

bb.x:                                             ; preds = %bb.p, %bb.u, %bb.s
  %.sroa.8.sroa.0.0.i.ph = phi i64 [ %.sroa.8.sroa.0.0.insert.insert.i, %bb.s ], [ %i.au, %bb.u ], [ %i.al, %bb.p ]
  %.sroa.13.0.i.ph = phi i32 [ %.sroa.13.12.copyload.i, %bb.s ], [ %.sroa.13.16.copyload29.i, %bb.u ], [ %.sroa.3.sroa.0.0.copyload.i, %bb.p ]
  %.sroa.0.0.i.ph = phi i64 [ %i.an, %bb.s ], [ %i.ar, %bb.u ], [ %i.ak, %bb.p ]
  store i64 %.sroa.0.0.i.ph, ptr %i.f, align 8
  %.sroa.7.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i64 %.sroa.8.sroa.0.0.i.ph, ptr %.sroa.7.0..sroa_idx2, align 8
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i32 %.sroa.13.0.i.ph, ptr %.sroa.8.0..sroa_idx4, align 8
  %.sroa.9.0..sroa_idx6 = getelementptr inbounds nuw i8, ptr %i.f, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(44) %.sroa.9.0..sroa_idx6, ptr noundef nonnull align 4 dereferenceable(44) %.sroa.16.i, i64 44, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.e, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.f)
          to label %bb.aa unwind label %bb.v

bb.y:                                             ; preds = %.noexc42
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3884
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.at, ptr %i.aw, align 8
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %i.ap, ptr %i.ax, align 8
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.z

bb.z:                                             ; preds = %bb.aa, %bb.y
  invoke fastcc void @"_ZN4core3ptr40drop_in_place$LT$rusqlite..row..Rows$GT$17hfbbfaf05921f0ad1E"(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.m)
          to label %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit45" unwind label %bb.l

bb.aa:                                            ; preds = %bb.x
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.e, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.z

"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit45": ; preds = %bb.z
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.l)
  br label %bb.ab

bb.ab:                                            ; preds = %bb.b, %bb.ad, %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit45"
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.617)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  ret void

bb.ac:                                            ; preds = %bb.v, %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit"
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

bb.ad:                                            ; preds = %bb.n
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.g, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call fastcc void @"_ZN4core3ptr53drop_in_place$LT$rusqlite..cache..CachedStatement$GT$17h2276c7a4a6ff9881E"(ptr noalias noundef align 8 dereferenceable(72) %i.l)
  br label %bb.ab

bb.ae:                                            ; preds = %"_ZN4core3ptr174drop_in_place$LT$rusqlite..row..MappedRows$LT$anki..storage..revlog..$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$..studied_today..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$17h5619e5b660316373E.exit"
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN4anki7storage6revlog54_$LT$impl$u20$anki..storage..sqlite..SqliteStorage$GT$16add_revlog_entry17h094c094f3509ca19E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(40) %2, i1 noundef zeroext %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 44 uses
  %i.b = alloca [8 x i8], align 8                 ; 41 uses
  %i.c = alloca [112 x i8], align 8               ; 4 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %.sroa.10 = alloca [40 x i8], align 8           ; 2 uses
  %i.e = alloca [64 x i8], align 8                ; 4 uses
  %i.f = alloca [1 x i8], align 1                 ; 5 uses
  %i.g = alloca [160 x i8], align 8               ; 24 uses
  %i.h = alloca [72 x i8], align 8                ; 5 uses
  %.sroa.67 = alloca [64 x i8], align 8           ; 6 uses
  %i.i = alloca [72 x i8], align 8                ; 9 uses
  %i.j = alloca [64 x i8], align 8                ; 10 uses
  %i.k = alloca [1 x i8], align 1                 ; 2 uses
  %i.l = zext i1 %3 to i8
  store i8 %i.l, ptr %i.k, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.67)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @_ZN8rusqlite5cache14StatementCache3get17h24c80f6f37a9f3a2E(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noundef nonnull align 8 %i.m, ptr noundef nonnull align 8 %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @522, i64 noundef 399)
  %i.n = load ptr, ptr %i.h, align 8, !noundef !20 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  %i.p = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, ptr noundef nonnull align 8 dereferenceable(64) %i.p, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br i1 %i.o, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.z

bb.c:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 13 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.67, i64 64, i1 false)
  store ptr %i.n, ptr %i.i, align 8
  %i.q = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noundef !20
  %.not = icmp eq ptr %i.q, null
  br i1 %.not, label %bb.o, label %.lr.ph.i, !prof !333

.lr.ph.i:                                         ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %2, i64 36
  %i.u = getelementptr inbounds nuw i8, ptr %2, i64 20
  %i.v = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.w = getelementptr inbounds nuw i8, ptr %2, i64 28
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 37
  %i.z = load i8, ptr %i.y, align 1, !range !52, !noundef !20
  store i8 %i.z, ptr %i.f, align 1
  store ptr %i.k, ptr %i.g, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @224, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 2 uses
  store ptr %2, ptr %i.ab, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr @523, ptr %i.ac, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 32 ; 2 uses
  store ptr %i.r, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr @261, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  store ptr %i.s, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @169, ptr %i.ag, align 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 64 ; 2 uses
  store ptr %i.t, ptr %i.ah, align 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store ptr @257, ptr %i.ai, align 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.g, i64 80 ; 2 uses
  store ptr %i.u, ptr %i.aj, align 8
  %i.ak = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store ptr @259, ptr %i.ak, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.g, i64 96 ; 2 uses
  store ptr %i.v, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store ptr @259, ptr %i.am, align 8
  %i.an = getelementptr inbounds nuw i8, ptr %i.g, i64 112 ; 2 uses
  store ptr %i.w, ptr %i.an, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 120
  store ptr @260, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.g, i64 128 ; 2 uses
  store ptr %i.x, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  store ptr @260, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 2 uses
  store ptr %i.f, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.g, i64 152
  store ptr @257, ptr %i.as, align 8
  call void @llvm.experimental.noalias.scope.decl(metadata !3889)
  %i.at = getelementptr inbounds nuw i8, ptr %i.i, i64 64 ; 2 uses
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !3889, !noalias !3892, !noundef !20
  %i.av = call noundef i32 @sqlite3_bind_parameter_count(ptr noundef %i.au) #34, !noalias !3895 ; 11 uses
  %i.aw = sext i32 %i.av to i64                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3895
  store ptr %i.g, ptr %i.b, align 8, !noalias !3895
  %exitcond.not = icmp eq i32 %i.av, 0
  br i1 %exitcond.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.d

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i": ; preds = %.lr.ph.i, %.lr.ph.i.1, %.lr.ph.i.2, %.lr.ph.i.3, %.lr.ph.i.4, %.lr.ph.i.5, %.lr.ph.i.6, %.lr.ph.i.7, %.lr.ph.i.8, %.lr.ph.i.9, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit"
  %i.ax = phi i64 [ 10, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i.loopexit" ], [ 1, %.lr.ph.i ], [ 2, %.lr.ph.i.1 ], [ 3, %.lr.ph.i.2 ], [ 4, %.lr.ph.i.3 ], [ 5, %.lr.ph.i.4 ], [ 6, %.lr.ph.i.5 ], [ 7, %.lr.ph.i.6 ], [ 8, %.lr.ph.i.7 ], [ 9, %.lr.ph.i.8 ], [ 10, %.lr.ph.i.9 ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3895
  %.not13.i = icmp eq i64 %i.ax, %i.aw
  br i1 %.not13.i, label %_ZN8rusqlite9statement9Statement15bind_parameters17h1d4c92658edb0c43E.exit, label %bb.r

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3895
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 1)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.d
  %i.ay = load i64, ptr %i.a, align 8, !range !804, !noalias !3895, !noundef !20 ; 2 uses
  %.not12.i = icmp eq i64 %i.ay, -9223372036854775783
  br i1 %.not12.i, label %.lr.ph.i.1, label %bb.e

bb.e:                                             ; preds = %.noexc.9, %.noexc.8, %.noexc.7, %.noexc.6, %.noexc.5, %.noexc.4, %.noexc.3, %.noexc.2, %.noexc.1, %.noexc
  %.lcssa52 = phi i64 [ %i.ay, %.noexc ], [ %i.az, %.noexc.1 ], [ %i.ba, %.noexc.2 ], [ %i.bb, %.noexc.3 ], [ %i.bc, %.noexc.4 ], [ %i.bd, %.noexc.5 ], [ %i.be, %.noexc.6 ], [ %i.bf, %.noexc.7 ], [ %i.bg, %.noexc.8 ], [ %i.bh, %.noexc.9 ]
  %.sroa.827.0..sroa_idx28 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.827.0.copyload29 = load i64, ptr %.sroa.827.0..sroa_idx28, align 8, !noalias !3896
  %.sroa.9.0..sroa_idx30 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.0.copyload31 = load i64, ptr %.sroa.9.0..sroa_idx30, align 8, !noalias !3896
  %.sroa.10.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.10.0..sroa_idx32, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3895
  br label %bb.r

.lr.ph.i.1:                                       ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3895
  store ptr %i.ab, ptr %i.b, align 8, !noalias !3895
  %exitcond.1.not = icmp eq i32 %i.av, 1
  br i1 %exitcond.1.not, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h3c60cd93ece0249eE.exit.thread.i", label %bb.f

bb.f:                                             ; preds = %.lr.ph.i.1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3895
  invoke void @_ZN8rusqlite9statement9Statement14bind_parameter17h7961f4d8e5b60af7E(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %.sroa.4.0..sroa_idx, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b, i64 noundef 2)
          to label %.noexc.1 unwind label %.loopexit

.noexc.1:                                         ; preds = %bb.f
  %i.az = load i64, ptr %i.a, align 8, !range !804, !noalias !3895, !noundef !20 ; 2 uses
  %.not12.i.1 = icmp eq i64 %i.az, -9223372036854775783
  br i1 %.not12.i.1, label %.lr.ph.i.2, label %bb.e

.lr.ph.i.2:                                       ; preds = %.noexc.1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3895
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3895
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3895
  store ptr %i.ad, ptr %i.b, align 8, !noalias !3895
  %exitcond.2.not = icmp eq i32 %i.av, 2
end_hunk_1
