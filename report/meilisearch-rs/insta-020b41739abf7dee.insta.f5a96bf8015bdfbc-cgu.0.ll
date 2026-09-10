Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@"_ZN4core3fmt3num50_$LT$impl$u20$core..fmt..Debug$u20$for$u20$u32$GT$3fmt17hb83082f1ca683b9aE":bb.a
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i32, ptr %i.a, align 8, !noundef !17 ; 2 uses
  %i.c = and i32 %i.b, 33554432
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = and i32 %i.b, 67108864
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$usize$GT$3fmt17h50805a32588de60dE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.i = tail call noundef zeroext i1 @"_ZN4core3fmt3num55_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$usize$GT$3fmt17h34bfbea6236dacd0E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.h, %bb.d ], [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write10write_char17hb60bb710daa13a20E(ptr noalias nofree noundef align 8 captures(none) dereferenceable(16) %0, i32 noundef range(i32 0, 1114112) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i32 0, ptr %i.a, align 4
  %i.b = icmp samesign ult i32 %1, 128
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp samesign ult i32 %1, 2048
  %i.d = trunc i32 %1 to i8
  %i.e = and i8 %i.d, 63
  %i.f = or disjoint i8 %i.e, -128                ; 3 uses
  %i.g = lshr i32 %1, 6
  %i.h = trunc i32 %i.g to i8                     ; 2 uses
  %i.i = and i8 %i.h, 63
  %i.j = or disjoint i8 %i.i, -128                ; 2 uses
  %i.k = lshr i32 %1, 12
  %i.l = trunc i32 %i.k to i8                     ; 2 uses
  %i.m = and i8 %i.l, 63
  %i.n = or disjoint i8 %i.m, -128
  %i.o = lshr i32 %1, 18
  %i.p = trunc nuw nsw i32 %i.o to i8
  %i.q = or disjoint i8 %i.p, -16
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.r = trunc nuw nsw i32 %1 to i8
  store i8 %i.r, ptr %i.a, align 4, !alias.scope !1270
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.d:                                             ; preds = %bb.b
  %i.s = or disjoint i8 %i.h, -64
  store i8 %i.s, ptr %i.a, align 4, !alias.scope !1270
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.f, ptr %i.t, align 1, !alias.scope !1270
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.e:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %1, 65536
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.v = or disjoint i8 %i.l, -32
  store i8 %i.v, ptr %i.a, align 4, !alias.scope !1270
  %i.w = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.j, ptr %i.w, align 1, !alias.scope !1270
  %i.x = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.f, ptr %i.x, align 2, !alias.scope !1270
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

bb.g:                                             ; preds = %bb.e
  store i8 %i.q, ptr %i.a, align 4, !alias.scope !1270
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 1
  store i8 %i.n, ptr %i.y, align 1, !alias.scope !1270
  %i.z = getelementptr inbounds nuw i8, ptr %i.a, i64 2
  store i8 %i.j, ptr %i.z, align 2, !alias.scope !1270
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 3
  store i8 %i.f, ptr %i.aa, align 1, !alias.scope !1270
  br label %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit

_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit: ; preds = %bb.c, %bb.d, %bb.f, %bb.g
  %.sroa.0.05.i = phi i64 [ 1, %bb.c ], [ 2, %bb.d ], [ 3, %bb.f ], [ 4, %bb.g ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1271)
  %i.ab = load ptr, ptr %0, align 8, !alias.scope !1271, !noalias !1272, !nonnull !17, !align !31, !noundef !17
  %i.ac = call fastcc noundef ptr @_ZN3std2io5Write9write_all17h2f13c504446c8b50E(ptr noalias noundef nonnull align 1 %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, i64 noundef %.sroa.0.05.i), !noalias !1271 ; 3 uses
  %.not.i = icmp ne ptr %i.ac, null               ; 2 uses
  br i1 %.not.i, label %bb.h, label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha69563f1e02b9b9cE.exit"

bb.h:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !1273, !noalias !1272, !noundef !17
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9e0a60ff5ff11a4dE.exit.i", label %bb.i

bb.i:                                             ; preds = %bb.h
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.ad)
          to label %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9e0a60ff5ff11a4dE.exit.i" unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ag = landingpad { ptr, i32 }
          cleanup
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1271, !noalias !1272
  resume { ptr, i32 } %i.ag

"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9e0a60ff5ff11a4dE.exit.i": ; preds = %bb.i, %bb.h
  store ptr %i.ac, ptr %i.ad, align 8, !alias.scope !1271, !noalias !1272
  br label %"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha69563f1e02b9b9cE.exit"

"_ZN81_$LT$std..io..default_write_fmt..Adapter$LT$T$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17ha69563f1e02b9b9cE.exit": ; preds = %_ZN4core4char7methods15encode_utf8_raw17h92cd9da0e8182a2cE.exit, %"_ZN4core3ptr81drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$std..io..error..Error$GT$$GT$17h9e0a60ff5ff11a4dE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %.not.i
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h10587ae06e825755E(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h4d8c86e674c0f703E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1278
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !1279
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @66, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !1280, !inline_history !1277
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1278
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @_ZN4core3fmt5Write9write_fmt17h140a2a09ef63d594E(ptr noalias noundef align 8 dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 {
"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h108f1966201aa414E.exit":
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1284
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !noalias !1285
  %i.b = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @83, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !1286, !inline_history !2
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1284
  ret i1 %i.b
}

; Function Attrs: inlinehint nofree norecurse nosync nounwind nonlazybind memory(argmem: readwrite) uwtable
define internal fastcc void @"_ZN4core3num21_$LT$impl$u20$i64$GT$16from_ascii_radix17h9bd37d44ea71734dE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2, i32 noundef range(i32 8, 17) %3) unnamed_addr #11 {
bb.a:
  switch i64 %2, label %thread-pre-split [
    i64 0, label %bb.b
    i64 1, label %bb.d
  ]

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.a, align 1
  br label %bb.c

bb.c:                                             ; preds = %bb.u, %bb.w, %bb.x, %.split.us, %.split128.us, %bb.p, %bb.o, %bb.m, %.loopexit, %bb.e, %bb.b
  %.sink = phi i8 [ 1, %bb.u ], [ 1, %bb.w ], [ 1, %bb.x ], [ 1, %.split.us ], [ 1, %.split128.us ], [ 1, %bb.p ], [ 1, %bb.o ], [ 1, %bb.m ], [ 0, %.loopexit ], [ 1, %bb.e ], [ 1, %bb.b ]
  store i8 %.sink, ptr %0, align 8
  ret void

bb.d:                                             ; preds = %bb.a
  %i.b = load i8, ptr %1, align 1, !noundef !17   ; 2 uses
  switch i8 %i.b, label %bb.f [
    i8 43, label %bb.e
    i8 45, label %bb.e
  ]

bb.e:                                             ; preds = %bb.d, %bb.d
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.c, align 1
  br label %bb.c

thread-pre-split:                                 ; preds = %bb.a
  %.pr = load i8, ptr %1, align 1
  br label %bb.f

bb.f:                                             ; preds = %thread-pre-split, %bb.d
  %i.d = phi i8 [ %.pr, %thread-pre-split ], [ %i.b, %bb.d ]
  switch i8 %i.d, label %bb.r [
    i8 43, label %bb.g
    i8 45, label %bb.h
  ]

bb.g:                                             ; preds = %bb.f
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 2 uses
  %i.f = add i64 %2, -1                           ; 3 uses
  %i.g = icmp ult i64 %2, 17
  br i1 %i.g, label %.preheader, label %.preheader101

bb.h:                                             ; preds = %bb.f
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 1 ; 3 uses
  %i.i = add i64 %2, -1                           ; 5 uses
  %i.j = icmp ult i64 %2, 17
  br i1 %i.j, label %.preheader103, label %.preheader105

.preheader105:                                    ; preds = %bb.h
  %i.k = zext nneg i32 %3 to i64
  %i.l = icmp samesign ugt i32 %3, 10
  %.not193 = icmp eq i64 %i.i, 0
  br i1 %.not193, label %.loopexit, label %.lr.ph197

.preheader103:                                    ; preds = %bb.h
  %.not89115 = icmp eq i64 %i.i, 0
  br i1 %.not89115, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader103
  %i.m = icmp samesign ugt i32 %3, 10
  %i.n = zext nneg i32 %3 to i64                  ; 2 uses
  br i1 %i.m, label %.lr.ph.split, label %.lr.ph.split.us

.lr.ph.split.us:                                  ; preds = %.lr.ph, %bb.i
  %.sroa.01.3118.us = phi ptr [ %i.u, %bb.i ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.27.3117.us = phi i64 [ %i.t, %bb.i ], [ %i.i, %.lr.ph ]
  %.sroa.031.4116.us = phi i64 [ %i.w, %bb.i ], [ 0, %.lr.ph ]
  %i.o = load i8, ptr %.sroa.01.3118.us, align 1, !noundef !17
  %i.p = zext i8 %i.o to i32
  %i.q = add nsw i32 %i.p, -48                    ; 2 uses
  %i.r = icmp ult i32 %i.q, %3
  br i1 %i.r, label %bb.i, label %.split.us

bb.i:                                             ; preds = %.lr.ph.split.us
  %i.s = mul i64 %.sroa.031.4116.us, %i.n
  %i.t = add nsw i64 %.sroa.27.3117.us, -1        ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.01.3118.us, i64 1
  %i.v = zext nneg i32 %i.q to i64
  %i.w = sub i64 %i.s, %i.v                       ; 2 uses
  %.not89.us = icmp eq i64 %i.t, 0
  br i1 %.not89.us, label %.loopexit, label %.lr.ph.split.us

bb.j:                                             ; preds = %bb.v
  %i.x = extractvalue { i64, i1 } %i.ck, 0        ; 2 uses
  %.not90 = icmp eq i64 %i.bw, 0
  br i1 %.not90, label %.loopexit, label %.lr.ph202

bb.k:                                             ; preds = %bb.n
  %i.y = extractvalue { i64, i1 } %i.ap, 0        ; 2 uses
  %.not = icmp eq i64 %i.ab, 0
  br i1 %.not, label %.loopexit, label %.lr.ph197

.loopexit:                                        ; preds = %bb.k, %bb.i, %bb.q, %bb.j, %bb.s, %bb.y, %.preheader105, %.preheader101, %.preheader103, %.preheader
  %.sroa.031.3 = phi i64 [ %i.w, %bb.i ], [ %i.da, %bb.y ], [ %i.bf, %bb.q ], [ 0, %.preheader ], [ %i.x, %bb.j ], [ 0, %.preheader103 ], [ %i.bu, %bb.s ], [ 0, %.preheader101 ], [ 0, %.preheader105 ], [ %i.y, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.031.3, ptr %i.z, align 8
  br label %bb.c

.lr.ph197:                                        ; preds = %.preheader105, %bb.k
  %.sroa.01.2196 = phi ptr [ %i.aa, %bb.k ], [ %i.h, %.preheader105 ] ; 2 uses
  %.sroa.27.2195 = phi i64 [ %i.ab, %bb.k ], [ %i.i, %.preheader105 ]
  %.sroa.031.2194 = phi i64 [ %i.y, %bb.k ], [ 0, %.preheader105 ]
  %i.aa = getelementptr inbounds nuw i8, ptr %.sroa.01.2196, i64 1
  %i.ab = add i64 %.sroa.27.2195, -1              ; 2 uses
  %i.ac = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.2194, i64 %i.k) ; 2 uses
  %i.ad = extractvalue { i64, i1 } %i.ac, 0
  %i.ae = load i8, ptr %.sroa.01.2196, align 1, !noundef !17 ; 2 uses
  %i.af = zext i8 %i.ae to i32                    ; 2 uses
  %i.ag = icmp ugt i8 %i.ae, 57
  %or.cond1.i = and i1 %i.l, %i.ag
  %i.ah = add nsw i32 %i.af, -65
  %i.ai = and i32 %i.ah, -33
  %i.aj = add nuw nsw i32 %i.ai, 10
  %i.ak = add nsw i32 %i.af, -48
  %.sroa.02.0.i = select i1 %or.cond1.i, i32 %i.aj, i32 %i.ak ; 2 uses
  %i.al = icmp ult i32 %.sroa.02.0.i, %3
  br i1 %i.al, label %bb.l, label %bb.m

bb.l:                                             ; preds = %.lr.ph197
  %i.am = extractvalue { i64, i1 } %i.ac, 1
  br i1 %i.am, label %bb.o, label %bb.n

bb.m:                                             ; preds = %.lr.ph197
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.an, align 1
  br label %bb.c

bb.n:                                             ; preds = %bb.l
  %i.ao = zext nneg i32 %.sroa.02.0.i to i64
  %i.ap = tail call { i64, i1 } @llvm.ssub.with.overflow.i64(i64 %i.ad, i64 %i.ao) ; 2 uses
  %i.aq = extractvalue { i64, i1 } %i.ap, 1
  br i1 %i.aq, label %bb.p, label %bb.k

bb.o:                                             ; preds = %bb.l
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.ar, align 1
  br label %bb.c

bb.p:                                             ; preds = %bb.n
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 3, ptr %i.as, align 1
  br label %bb.c

.lr.ph.split:                                     ; preds = %.lr.ph, %bb.q
  %.sroa.01.3118 = phi ptr [ %i.bd, %bb.q ], [ %i.h, %.lr.ph ] ; 2 uses
  %.sroa.27.3117 = phi i64 [ %i.bc, %bb.q ], [ %i.i, %.lr.ph ]
  %.sroa.031.4116 = phi i64 [ %i.bf, %bb.q ], [ 0, %.lr.ph ]
  %i.at = load i8, ptr %.sroa.01.3118, align 1, !noundef !17 ; 2 uses
  %i.au = zext i8 %i.at to i32                    ; 2 uses
  %i.av = icmp ugt i8 %i.at, 57
  %i.aw = add nsw i32 %i.au, -65
  %i.ax = and i32 %i.aw, -33
  %i.ay = add nuw nsw i32 %i.ax, 10
  %i.az = add nsw i32 %i.au, -48
  %spec.select = select i1 %i.av, i32 %i.ay, i32 %i.az ; 2 uses
  %i.ba = icmp ult i32 %spec.select, %3
  br i1 %i.ba, label %bb.q, label %.split.us

bb.q:                                             ; preds = %.lr.ph.split
  %i.bb = mul i64 %.sroa.031.4116, %i.n
  %i.bc = add nsw i64 %.sroa.27.3117, -1          ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %.sroa.01.3118, i64 1
  %i.be = zext nneg i32 %spec.select to i64
  %i.bf = sub i64 %i.bb, %i.be                    ; 2 uses
  %.not89 = icmp eq i64 %i.bc, 0
  br i1 %.not89, label %.loopexit, label %.lr.ph.split

.split.us:                                        ; preds = %.lr.ph.split.us, %.lr.ph.split
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.bg, align 1
  br label %bb.c

bb.r:                                             ; preds = %bb.f
  %i.bh = icmp ult i64 %2, 16
  br i1 %i.bh, label %.lr.ph123, label %.preheader101

.preheader101:                                    ; preds = %bb.g, %bb.r
  %.sroa.27.0.ph = phi i64 [ %2, %bb.r ], [ %i.f, %bb.g ] ; 2 uses
  %.sroa.01.0.ph = phi ptr [ %1, %bb.r ], [ %i.e, %bb.g ]
  %i.bi = zext nneg i32 %3 to i64
  %i.bj = icmp samesign ugt i32 %3, 10
  %.not90198 = icmp eq i64 %.sroa.27.0.ph, 0
  br i1 %.not90198, label %.loopexit, label %.lr.ph202

.preheader:                                       ; preds = %bb.g
  %.not91119 = icmp eq i64 %i.f, 0
  br i1 %.not91119, label %.loopexit, label %.lr.ph123

.lr.ph123:                                        ; preds = %bb.r, %.preheader
  %.sroa.01.1.ph160 = phi ptr [ %i.e, %.preheader ], [ %1, %bb.r ] ; 2 uses
  %.sroa.27.1.ph159 = phi i64 [ %i.f, %.preheader ], [ %2, %bb.r ] ; 2 uses
  %i.bk = icmp samesign ugt i32 %3, 10
  %i.bl = zext nneg i32 %3 to i64                 ; 2 uses
  br i1 %i.bk, label %.lr.ph123.split, label %.lr.ph123.split.us

.lr.ph123.split.us:                               ; preds = %.lr.ph123, %bb.s
  %.sroa.01.1122.us = phi ptr [ %i.bs, %bb.s ], [ %.sroa.01.1.ph160, %.lr.ph123 ] ; 2 uses
  %.sroa.27.1121.us = phi i64 [ %i.br, %bb.s ], [ %.sroa.27.1.ph159, %.lr.ph123 ]
  %.sroa.031.1120.us = phi i64 [ %i.bu, %bb.s ], [ 0, %.lr.ph123 ]
  %i.bm = load i8, ptr %.sroa.01.1122.us, align 1, !noundef !17
  %i.bn = zext i8 %i.bm to i32
  %i.bo = add nsw i32 %i.bn, -48                  ; 2 uses
  %i.bp = icmp ult i32 %i.bo, %3
  br i1 %i.bp, label %bb.s, label %.split128.us

bb.s:                                             ; preds = %.lr.ph123.split.us
  %i.bq = mul i64 %.sroa.031.1120.us, %i.bl
  %i.br = add nsw i64 %.sroa.27.1121.us, -1       ; 2 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.01.1122.us, i64 1
  %i.bt = zext nneg i32 %i.bo to i64
  %i.bu = add i64 %i.bq, %i.bt                    ; 2 uses
  %.not91.us = icmp eq i64 %i.br, 0
  br i1 %.not91.us, label %.loopexit, label %.lr.ph123.split.us

.lr.ph202:                                        ; preds = %.preheader101, %bb.j
  %.sroa.01.0201 = phi ptr [ %i.bv, %bb.j ], [ %.sroa.01.0.ph, %.preheader101 ] ; 2 uses
  %.sroa.27.0200 = phi i64 [ %i.bw, %bb.j ], [ %.sroa.27.0.ph, %.preheader101 ]
  %.sroa.031.0199 = phi i64 [ %i.x, %bb.j ], [ 0, %.preheader101 ]
  %i.bv = getelementptr inbounds nuw i8, ptr %.sroa.01.0201, i64 1
  %i.bw = add i64 %.sroa.27.0200, -1              ; 2 uses
  %i.bx = tail call { i64, i1 } @llvm.smul.with.overflow.i64(i64 %.sroa.031.0199, i64 %i.bi) ; 2 uses
  %i.by = extractvalue { i64, i1 } %i.bx, 0
  %i.bz = load i8, ptr %.sroa.01.0201, align 1, !noundef !17 ; 2 uses
  %i.ca = zext i8 %i.bz to i32                    ; 2 uses
  %i.cb = icmp ugt i8 %i.bz, 57
  %or.cond1.i95 = and i1 %i.bj, %i.cb
  %i.cc = add nsw i32 %i.ca, -65
  %i.cd = and i32 %i.cc, -33
  %i.ce = add nuw nsw i32 %i.cd, 10
  %i.cf = add nsw i32 %i.ca, -48
  %.sroa.02.0.i96 = select i1 %or.cond1.i95, i32 %i.ce, i32 %i.cf ; 2 uses
  %i.cg = icmp ult i32 %.sroa.02.0.i96, %3
  br i1 %i.cg, label %bb.t, label %bb.u

bb.t:                                             ; preds = %.lr.ph202
  %i.ch = extractvalue { i64, i1 } %i.bx, 1
  br i1 %i.ch, label %bb.w, label %bb.v

bb.u:                                             ; preds = %.lr.ph202
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.ci, align 1
  br label %bb.c

bb.v:                                             ; preds = %bb.t
  %i.cj = zext nneg i32 %.sroa.02.0.i96 to i64
  %i.ck = tail call { i64, i1 } @llvm.sadd.with.overflow.i64(i64 %i.by, i64 %i.cj) ; 2 uses
  %i.cl = extractvalue { i64, i1 } %i.ck, 1
  br i1 %i.cl, label %bb.x, label %bb.j

bb.w:                                             ; preds = %bb.t
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cm, align 1
  br label %bb.c

bb.x:                                             ; preds = %bb.v
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 2, ptr %i.cn, align 1
  br label %bb.c

.lr.ph123.split:                                  ; preds = %.lr.ph123, %bb.y
  %.sroa.01.1122 = phi ptr [ %i.cy, %bb.y ], [ %.sroa.01.1.ph160, %.lr.ph123 ] ; 2 uses
  %.sroa.27.1121 = phi i64 [ %i.cx, %bb.y ], [ %.sroa.27.1.ph159, %.lr.ph123 ]
  %.sroa.031.1120 = phi i64 [ %i.da, %bb.y ], [ 0, %.lr.ph123 ]
  %i.co = load i8, ptr %.sroa.01.1122, align 1, !noundef !17 ; 2 uses
  %i.cp = zext i8 %i.co to i32                    ; 2 uses
  %i.cq = icmp ugt i8 %i.co, 57
  %i.cr = add nsw i32 %i.cp, -65
  %i.cs = and i32 %i.cr, -33
  %i.ct = add nuw nsw i32 %i.cs, 10
  %i.cu = add nsw i32 %i.cp, -48
  %spec.select130 = select i1 %i.cq, i32 %i.ct, i32 %i.cu ; 2 uses
  %i.cv = icmp ult i32 %spec.select130, %3
  br i1 %i.cv, label %bb.y, label %.split128.us

bb.y:                                             ; preds = %.lr.ph123.split
  %i.cw = mul i64 %.sroa.031.1120, %i.bl
  %i.cx = add nsw i64 %.sroa.27.1121, -1          ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %.sroa.01.1122, i64 1
  %i.cz = zext nneg i32 %spec.select130 to i64
  %i.da = add i64 %i.cw, %i.cz                    ; 2 uses
  %.not91 = icmp eq i64 %i.cx, 0
  br i1 %.not91, label %.loopexit, label %.lr.ph123.split

.split128.us:                                     ; preds = %.lr.ph123.split.us, %.lr.ph123.split
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 1, ptr %i.db, align 1
  br label %bb.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN4core3ops8function6FnOnce40call_once$u7b$$u7b$vtable.shim$u7d$$u7d$17h1e28035bb7490fa4E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 16 captures(none) dereferenceable(64) %0, ptr nofree readnone captures(none) %1, ptr noalias nofree noundef readonly align 16 captures(none) dead_on_return dereferenceable(64) %2, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %3, i64 noundef %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [80 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.a, ptr noundef nonnull align 16 dereferenceable(64) %2, i64 64, i1 false), !noalias !1291
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store ptr %3, ptr %i.b, align 16, !noalias !1292
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store i64 %4, ptr %i.c, align 8, !noalias !1292
  call void @"_ZN5insta9redaction17dynamic_redaction28_$u7b$$u7b$closure$u7d$$u7d$17h1cd1b975dfefc2d2E"(ptr noalias noundef nonnull sret([64 x i8]) align 16 captures(address) dereferenceable(64) %0, ptr noalias nonnull readonly align 1 captures(address, read_provenance) poison, ptr noalias noundef nonnull readonly align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) %3, i64 noundef %4), !noalias !1293
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
end_hunk_0
