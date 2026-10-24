Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.14?download=true
inline.NumInlined: 6502
inline.NumDeleted: 2826
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN4anki6search9sqlwriter9SqlWriter14write_template17h600629193312a3aaE:bb.a
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull @386, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @386, i64 69))
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit"
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !3403, !noundef !10 ; 3 uses
  %i.ar = load i64, ptr %i.ao, align 8, !range !14, !alias.scope !3403, !noundef !10
  %i.as = icmp eq i64 %i.aq, %i.ar
  br i1 %i.as, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h35895b0db1271ff3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao)
          to label %bb.s unwind label %bb.q, !noalias !3404

bb.q:                                             ; preds = %bb.p
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #33
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.au = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.s:                                             ; preds = %bb.p, %bb.o
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !alias.scope !3403, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.aq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ax, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false)
  %i.ay = add i64 %i.aq, 1
  store i64 %i.ay, ptr %i.ap, align 8, !alias.scope !3403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.d

bb.t:                                             ; preds = %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit"
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.i) #33
          to label %common.resume unwind label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.j
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search9sqlwriter9SqlWriter17write_node_to_sql17h930a4347b3148ba3E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 8               ; 6 uses
  %i.b = alloca [112 x i8], align 8               ; 6 uses
  %i.c = alloca [112 x i8], align 8               ; 6 uses
  %i.d = load i64, ptr %2, align 8, !range !3415, !noundef !10 ; 2 uses
  %i.e = add nsw i64 %i.d, 9223372036854775782
  %i.f = icmp ugt i64 %i.d, -9223372036854775783
  %i.g = select i1 %i.f, i64 %i.e, i64 4
  switch i64 %i.g, label %bb.b [
    i64 0, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit.thread"
    i64 1, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit12.thread"
    i64 2, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit17.thread"
    i64 3, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit22.thread"
    i64 4, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit.thread": ; preds = %bb.a
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 @332, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @332, i64 5)), !noalias !3416
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit12.thread": ; preds = %bb.a
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 @351, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @351, i64 4)), !noalias !3417
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit17.thread": ; preds = %bb.a
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 @407, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @407, i64 4)), !noalias !3418
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !10, !noundef !10
  call fastcc void @_ZN4anki6search9sqlwriter9SqlWriter17write_node_to_sql17h930a4347b3148ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.c, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.i)
  %i.j = load i64, ptr %i.c, align 8, !range !48, !noundef !10
  %.not3 = icmp eq i64 %i.j, -9223372036854775773
  br i1 %.not3, label %bb.e, label %bb.d

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit22.thread": ; preds = %bb.a
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 @352, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @352, i64 1)), !noalias !3419
  %i.k = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.n = load i64, ptr %i.m, align 8, !noundef !10 ; 2 uses
  %.idx = mul nuw nsw i64 %i.n, 72
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx
  %i.p = icmp eq i64 %i.n, 0
  br i1 %i.p, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit27.thread", label %.lr.ph

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN4anki6search9sqlwriter9SqlWriter24write_search_node_to_sql17h760548c4b40e9e7cE(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.a, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %2)
  %i.q = load i64, ptr %i.a, align 8, !range !48, !noundef !10
  %.not = icmp eq i64 %i.q, -9223372036854775773
  br i1 %.not, label %bb.j, label %bb.i

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7": ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit27.thread", %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit12.thread", %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit.thread", %bb.j, %bb.e
  store i64 -9223372036854775773, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit17.thread"
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.c, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.e:                                             ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit17.thread"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"

bb.f:                                             ; preds = %bb.i, %bb.g, %bb.d, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"
  ret void

.lr.ph:                                           ; preds = %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit22.thread", %bb.h
  %.sroa.0.033 = phi ptr [ %i.s, %bb.h ], [ %i.l, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit22.thread" ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call fastcc void @_ZN4anki6search9sqlwriter9SqlWriter17write_node_to_sql17h930a4347b3148ba3E(ptr noalias noundef align 8 captures(address) dereferenceable(112) %i.b, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %.sroa.0.033)
  %i.r = load i64, ptr %i.b, align 8, !range !48, !noundef !10
  %.not2 = icmp eq i64 %i.r, -9223372036854775773
  br i1 %.not2, label %bb.h, label %bb.g

"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit27.thread": ; preds = %bb.h, %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit22.thread"
  tail call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 @299, ptr noundef nonnull readonly getelementptr inbounds nuw (i8, ptr @299, i64 1)), !noalias !3420
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"

bb.g:                                             ; preds = %.lr.ph
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.b, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.h:                                             ; preds = %.lr.ph
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.0.033, i64 72 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.t = icmp eq ptr %i.s, %i.o
  br i1 %i.t, label %"_ZN75_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write..write_fmt..SpecWriteFmt$GT$14spec_write_fmt17h581477a850e5c31aE.exit27.thread", label %.lr.ph

bb.i:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.a, i64 112, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.j:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17h872ac318ef655da1E.exit7"
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN4anki6search9sqlwriter9SqlWriter17write_unqualified17h9e2eb089003952bfE(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3, i1 noundef zeroext %4, i1 noundef zeroext %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [0 x i8], align 1                 ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [48 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 11 uses
  %i.e = alloca [48 x i8], align 8                ; 8 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [8 x i8], align 8                 ; 9 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [112 x i8], align 8               ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 17 uses
  %i.k = alloca [48 x i8], align 8                ; 8 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [48 x i8], align 8                ; 8 uses
  %i.n = alloca [48 x i8], align 8                ; 9 uses
  %i.o = alloca [48 x i8], align 8                ; 9 uses
  %i.p = alloca [16 x i8], align 8                ; 5 uses
  %i.q = alloca [48 x i8], align 8                ; 8 uses
  %i.r = alloca [56 x i8], align 8                ; 10 uses
  %i.s = alloca [24 x i8], align 8                ; 8 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [24 x i8], align 8                ; 4 uses
  %i.w = alloca [24 x i8], align 8                ; 8 uses
  %i.x = alloca [24 x i8], align 8                ; 9 uses
  %.sroa.15 = alloca [80 x i8], align 8           ; 6 uses
  %i.y = alloca [16 x i8], align 8                ; 5 uses
  %i.z = alloca [48 x i8], align 8                ; 8 uses
  %i.aa = alloca [112 x i8], align 8              ; 7 uses
  %.sroa.728 = alloca [24 x i8], align 8          ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 10 uses
  %i.ac = alloca [16 x i8], align 8               ; 6 uses
  %i.ad = alloca [24 x i8], align 8               ; 9 uses
  %i.ae = alloca [16 x i8], align 8               ; 5 uses
  %i.af = alloca [24 x i8], align 8               ; 4 uses
  %i.ag = alloca [16 x i8], align 8               ; 5 uses
  %i.ah = alloca [24 x i8], align 8               ; 2 uses
  %i.ai = alloca [24 x i8], align 8               ; 7 uses
  %i.aj = alloca [1 x i8], align 1                ; 5 uses
  %i.ak = alloca [24 x i8], align 8               ; 21 uses
  %i.al = alloca [24 x i8], align 8               ; 21 uses
  %i.am = alloca [8 x i8], align 8                ; 7 uses
  %i.an = alloca [16 x i8], align 8               ; 5 uses
  %i.ao = alloca [24 x i8], align 8               ; 3 uses
  %i.ap = alloca [24 x i8], align 8               ; 15 uses
  %i.aq = alloca [24 x i8], align 8               ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @_ZN4anki4text6to_sql17h59ca6dfbbef19edbE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %2, i64 noundef %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  br i1 %4, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull align 8 dereferenceable(24) %i.aq, i64 24, i1 false)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  %i.as = load ptr, ptr %i.ar, align 8, !nonnull !10
  %i.at = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.au = load i64, ptr %i.at, align 8
  invoke void @_ZN4anki4text17without_combining17h68bf7337c8519b5aE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ap, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.as, i64 noundef %i.au)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.050.0 = phi i8 [ 1, %bb.c ], [ 0, %bb.b ] ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  store ptr %i.ap, ptr %i.an, align 8
  %.sroa.458.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  store ptr @"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h29872b8389ba5952E", ptr %.sroa.458.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3527
  store ptr @409, ptr %i.m, align 8, !noalias !3528
  %.sroa.4.0..sroa_idx239 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx239, align 8, !noalias !3528
  %.sroa.5.0..sroa_idx240 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store ptr %i.an, ptr %.sroa.5.0..sroa_idx240, align 8, !noalias !3528
  %.sroa.6241.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store i64 1, ptr %.sroa.6241.0..sroa_idx, align 8, !noalias !3528
  %.sroa.7.0..sroa_idx242 = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx242, align 8, !noalias !3528
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.m)
          to label %bb.g unwind label %bb.f

.body210:                                         ; preds = %bb.dj, %bb.cw, %bb.e, %.body
  %.sroa.050.1 = phi i8 [ %.sroa.050.0, %.body ], [ %.sroa.050.0, %bb.cw ], [ %.sroa.050.2, %bb.e ], [ %.sroa.050.0, %bb.dj ]
  %.pn137 = phi { ptr, i32 } [ %.pn135, %.body ], [ %i.jn, %bb.cw ], [ %i.aw, %bb.e ], [ %i.ke, %bb.dj ] ; 2 uses
  %i.av = trunc nuw i8 %.sroa.050.1 to i1
  br i1 %i.av, label %bb.do, label %common.resume

bb.e:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i230", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i209", %bb.c
  %.sroa.050.2 = phi i8 [ %.sroa.050.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i230" ], [ %.sroa.050.0, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i209" ], [ 1, %bb.c ]
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %.body210

.body:                                            ; preds = %bb.dg, %bb.ct, %bb.i, %bb.f, %.body199, %bb.o
  %.pn135 = phi { ptr, i32 } [ %i.bk, %bb.o ], [ %.pn133, %.body199 ], [ %i.jj, %bb.ct ], [ %i.bd, %bb.i ], [ %i.ax, %bb.f ], [ %i.ka, %bb.dg ]
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ap) #33
          to label %.body210 unwind label %bb.bb

bb.f:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i224", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i203", %bb.l, %bb.d
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.g:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !3527
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an)
  %i.ay = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.ba = load i64, ptr %i.az, align 8, !alias.scope !3529, !noundef !10 ; 4 uses
  %i.bb = load i64, ptr %i.ay, align 8, !range !14, !alias.scope !3529, !noundef !10
  %i.bc = icmp eq i64 %i.ba, %i.bb
  br i1 %i.bc, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h35895b0db1271ff3E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay)
          to label %bb.k unwind label %bb.i, !noalias !3530

bb.i:                                             ; preds = %bb.h
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao) #33
          to label %.body unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34
  unreachable

bb.k:                                             ; preds = %bb.h, %bb.g
  %i.bf = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !alias.scope !3529, !nonnull !10, !noundef !10
  %i.bh = getelementptr inbounds nuw [24 x i8], ptr %i.bg, i64 %i.ba
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bh, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %i.bi = add nsw i64 %i.ba, 1                    ; 2 uses
  store i64 %i.bi, ptr %i.az, align 8, !alias.scope !3529
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am)
  store i64 %i.bi, ptr %i.am, align 8
  %i.bj = icmp slt i64 %i.ba, 384307168202282325
  call void @llvm.assume(i1 %i.bj)
  %brmerge = or i1 %4, %5
  br i1 %brmerge, label %bb.l, label %.thread

.thread:                                          ; preds = %bb.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 -9223372036854775808, ptr %i.al, align 8
  %.sroa.516.0..sroa_idx278 = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr @410, ptr %.sroa.516.0..sroa_idx278, align 8
  %.sroa.721.0..sroa_idx279 = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 6, ptr %.sroa.721.0..sroa_idx279, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 -9223372036854775808, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx280 = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr @345, ptr %.sroa.5.0..sroa_idx280, align 8
  %.sroa.7.0..sroa_idx281 = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 6, ptr %.sroa.7.0..sroa_idx281, align 8
  br label %bb.p

bb.l:                                             ; preds = %bb.k
  %spec.select = select i1 %4, i8 3, i8 2
  %spec.select.mux = select i1 %5, i8 %spec.select, i8 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  store i8 %spec.select.mux, ptr %i.aj, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ag)
  store ptr %i.aj, ptr %i.ag, align 8
  %.sroa.464.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E", ptr %.sroa.464.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3531
  store ptr @413, ptr %i.l, align 8, !noalias !3532
  %.sroa.4244.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 2, ptr %.sroa.4244.0..sroa_idx, align 8, !noalias !3532
  %.sroa.5245.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.ag, ptr %.sroa.5245.0..sroa_idx, align 8, !noalias !3532
  %.sroa.6246.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %.sroa.6246.0..sroa_idx, align 8, !noalias !3532
  %.sroa.7247.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %.sroa.7247.0..sroa_idx, align 8, !noalias !3532
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ah, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.n unwind label %bb.f

bb.m:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3533
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ae)
  %.sroa.02.0.copyload4 = load i64, ptr %i.af, align 8
  %.sroa.5.0..sroa_idx7 = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %.sroa.5.0.copyload8 = load ptr, ptr %.sroa.5.0..sroa_idx7, align 8
  %.sroa.7.0..sroa_idx11 = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %.sroa.7.0.copyload12 = load i64, ptr %.sroa.7.0..sroa_idx11, align 8
  %.sroa.013.0.copyload15 = load i64, ptr %i.ai, align 8
  %.sroa.516.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.ai, i64 8
  %.sroa.516.0.copyload20 = load ptr, ptr %.sroa.516.0..sroa_idx19, align 8
  %.sroa.721.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %.sroa.721.0.copyload25 = load i64, ptr %.sroa.721.0..sroa_idx24, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.al)
  store i64 %.sroa.013.0.copyload15, ptr %i.al, align 8
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  store ptr %.sroa.516.0.copyload20, ptr %.sroa.516.0..sroa_idx, align 8
  %.sroa.721.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  store i64 %.sroa.721.0.copyload25, ptr %.sroa.721.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ak)
  store i64 %.sroa.02.0.copyload4, ptr %i.ak, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %.sroa.5.0.copyload8, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  store i64 %.sroa.7.0.copyload12, ptr %.sroa.7.0..sroa_idx, align 8
  br i1 %5, label %bb.ba, label %bb.p

bb.n:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ag)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ai, ptr noundef nonnull align 8 dereferenceable(24) %i.ah, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ae)
  store ptr %i.aj, ptr %i.ae, align 8
  %.sroa.468.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  store ptr @"_ZN4core3fmt3num3imp51_$LT$impl$u20$core..fmt..Display$u20$for$u20$u8$GT$3fmt17h71af0f1b11b0c758E", ptr %.sroa.468.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3533
  store ptr @348, ptr %i.k, align 8, !noalias !3534
  %.sroa.4250.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 2, ptr %.sroa.4250.0..sroa_idx, align 8, !noalias !3534
  %.sroa.5251.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr %i.ae, ptr %.sroa.5251.0..sroa_idx, align 8, !noalias !3534
  %.sroa.6252.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 1, ptr %.sroa.6252.0..sroa_idx, align 8, !noalias !3534
  %.sroa.7253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr null, ptr %.sroa.7253.0..sroa_idx, align 8, !noalias !3534
  invoke void @_ZN5alloc3fmt6format12format_inner17h63377ca24b2638feE(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.af, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.k)
          to label %bb.m unwind label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.bk = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.ai) #33
          to label %.body unwind label %bb.bb

bb.p:                                             ; preds = %.thread, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit", %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.15)
  %i.bl = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !10, !align !13, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3535
  store i64 0, ptr %i.j, align 8, !noalias !3535
  %i.bm = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.bm, align 8, !noalias !3535
  %i.bn = getelementptr inbounds nuw i8, ptr %i.j, i64 16 ; 4 uses
  store i64 0, ptr %i.bn, align 8, !noalias !3535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !3535
  invoke void @"_ZN4anki8notetype46_$LT$impl$u20$anki..collection..Collection$GT$17get_all_notetypes17hbbec09dd08b1c0d9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(728) %.val)
          to label %bb.r unwind label %bb.q, !noalias !3535

"_ZN4core3ptr108drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17h0c16808952a99deeE.exit.i": ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit54.i", %bb.q
  %.pn42.pn.i = phi { ptr, i32 } [ %i.bo, %bb.q ], [ %.pn42.i, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit54.i" ]
  invoke fastcc void @"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$anki..search..sqlwriter..UnqualifiedSearchContext$GT$$GT$17h39f919767254b551E"(ptr noalias noundef align 8 dereferenceable(24) %i.j) #33
          to label %.body148 unwind label %bb.az, !noalias !3535

bb.q:                                             ; preds = %._crit_edge.i, %bb.p
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17h0c16808952a99deeE.exit.i"

bb.r:                                             ; preds = %bb.p
  %i.bp = load i64, ptr %i.i, align 8, !range !48, !noalias !3535, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %i.bp, -9223372036854775773
  %i.bq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.020.0.copyload.i = load i64, ptr %i.bq, align 8, !noalias !3535 ; 3 uses
  %.sroa.521.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.521.0.copyload.i = load ptr, ptr %.sroa.521.0..sroa_idx.i, align 8, !noalias !3535 ; 5 uses
  %.sroa.622.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.622.0.copyload.i = load i64, ptr %.sroa.622.0..sroa_idx.i, align 8, !noalias !3535 ; 4 uses
  br i1 %.not.i, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.832.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %.sroa.15, ptr noundef nonnull align 8 dereferenceable(80) %.sroa.832.0..sroa_idx.i, i64 80, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3535
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hc6367714e9ef8ac8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$anki..search..sqlwriter..UnqualifiedSearchContext$GT$$GT$17h39f919767254b551E.exit.i" unwind label %bb.t, !noalias !3535

bb.t:                                             ; preds = %bb.s
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca4f19020572761aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %.body148 unwind label %bb.u, !noalias !3535

bb.u:                                             ; preds = %bb.t
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #34, !noalias !3535
  unreachable

"_ZN4core3ptr93drop_in_place$LT$alloc..vec..Vec$LT$anki..search..sqlwriter..UnqualifiedSearchContext$GT$$GT$17h39f919767254b551E.exit.i": ; preds = %bb.s
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hca4f19020572761aE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.j)
          to label %bb.bq unwind label %bb.bc

bb.v:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !3535
  %i.bt = icmp ult i64 %.sroa.622.0.copyload.i, 1152921504606846976
  call void @llvm.assume(i1 %i.bt)
  %.idx46.i = shl nuw nsw i64 %.sroa.622.0.copyload.i, 3
  %i.bu = getelementptr inbounds nuw i8, ptr %.sroa.521.0.copyload.i, i64 %.idx46.i
  %i.bv = icmp sgt i64 %.sroa.020.0.copyload.i, -1
  call void @llvm.assume(i1 %i.bv)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3535
  store ptr %.sroa.521.0.copyload.i, ptr %i.h, align 8, !noalias !3535
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 3 uses
  store ptr %.sroa.521.0.copyload.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !3535
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %.sroa.020.0.copyload.i, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !3535
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24 ; 2 uses
  store ptr %i.bu, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !3535
  %i.bw = icmp eq i64 %.sroa.622.0.copyload.i, 0
  br i1 %i.bw, label %._crit_edge.i, label %.lr.ph45.i

.lr.ph45.i:                                       ; preds = %bb.v
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.ca = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.cb = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.cc = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  br label %bb.x

"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit54.i": ; preds = %bb.ax, %.body.i, %bb.w
  %.pn42.i = phi { ptr, i32 } [ %i.cd, %bb.w ], [ %eh.lpad-body.i, %bb.ax ], [ %eh.lpad-body.i, %.body.i ]
  invoke void @"_ZN86_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h52b8ab4f8a5385e1E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %"_ZN4core3ptr108drop_in_place$LT$alloc..vec..into_iter..IntoIter$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$$GT$17h0c16808952a99deeE.exit.i" unwind label %bb.az, !noalias !3535

bb.w:                                             ; preds = %bb.av
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit54.i"

bb.x:                                             ; preds = %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit.i", %.lr.ph45.i
  %i.ce = phi ptr [ %.sroa.521.0.copyload.i, %.lr.ph45.i ], [ %i.gq, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit.i" ] ; 2 uses
  %.sroa.04.044.i = phi i1 [ false, %.lr.ph45.i ], [ %.sroa.04.6.i, %"_ZN4core3ptr69drop_in_place$LT$alloc..sync..Arc$LT$anki..notetype..Notetype$GT$$GT$17h98ed44d9ed364bd8E.exit.i" ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3536)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !3536, !noalias !3535
  %i.cg = load ptr, ptr %i.ce, align 8, !noalias !3537, !nonnull !10, !noundef !10 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3535
  store ptr %i.cg, ptr %i.g, align 8, !noalias !3535
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3535
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cg, i64 208
  %i.ci = load ptr, ptr %i.ch, align 8, !noalias !3535, !nonnull !10, !noundef !10 ; 6 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 216
  %i.ck = load i64, ptr %i.cj, align 8, !noalias !3535, !noundef !10 ; 3 uses
  %.idx.i = mul nuw nsw i64 %i.ck, 144
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ci, i64 %.idx.i ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !3538
  store i64 0, ptr %i.d, align 8, !noalias !3538
  store ptr inttoptr (i64 4 to ptr), ptr %i.bx, align 8, !noalias !3538
  store i64 0, ptr %i.by, align 8, !noalias !3538
  %i.cm = icmp eq i64 %i.ck, 0
  br i1 %i.cm, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i", label %.lr.ph.i.i.i.preheader.i

.lr.ph.i.i.i.preheader.i:                         ; preds = %bb.x
  %i.cn = getelementptr inbounds nuw i8, ptr %i.ci, i64 144 ; 2 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.ci, i64 136
  %i.cp = load i32, ptr %i.co, align 8, !range !11, !alias.scope !3539, !noalias !3540, !noundef !10
  %i.cq = trunc nuw i32 %i.cp to i1
  %i.cr = getelementptr inbounds nuw i8, ptr %i.ci, i64 140
  %i.cs = load i32, ptr %i.cr, align 4, !alias.scope !3539, !noalias !3540
  %.sroa.01.0.i.i.i.i.i30.i = select i1 %i.cq, i32 %i.cs, i32 0 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.ci, i64 104
  %i.cu = load i8, ptr %i.ct, align 8, !range !28, !alias.scope !3539, !noalias !3540, !noundef !10
  %i.cv = trunc nuw i8 %i.cu to i1
  br i1 %i.cv, label %.lr.ph.i, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i"

.lr.ph.i:                                         ; preds = %.lr.ph.i.i.i.preheader.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cg, i64 164
  %i.cx = load i32, ptr %i.cw, align 4, !noalias !3541, !noundef !10 ; 2 uses
  %i.cy = icmp eq i32 %.sroa.01.0.i.i.i.i.i30.i, %i.cx
  %i.cz = zext i1 %i.cy to i8                     ; 2 uses
  %i.da = icmp eq i64 %i.ck, 1
  br i1 %i.da, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i, %bb.y
  %i.db = phi i8 [ %i.dp, %bb.y ], [ %i.cz, %.lr.ph.i ] ; 2 uses
  %i.dc = phi ptr [ %i.dd, %bb.y ], [ %i.cn, %.lr.ph.i ] ; 4 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %i.dc, i64 144 ; 3 uses
  %i.de = getelementptr inbounds nuw i8, ptr %i.dc, i64 136
  %i.df = load i32, ptr %i.de, align 8, !range !11, !alias.scope !3542, !noalias !3540, !noundef !10
  %i.dg = trunc nuw i32 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dc, i64 140
  %i.di = load i32, ptr %i.dh, align 4, !alias.scope !3542, !noalias !3540
  %.sroa.01.0.i.i.i.i.i.i = select i1 %i.dg, i32 %i.di, i32 0 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dc, i64 104
  %i.dk = load i8, ptr %i.dj, align 8, !range !28, !alias.scope !3542, !noalias !3540, !noundef !10
  %i.dl = trunc nuw i8 %i.dk to i1
  br i1 %i.dl, label %bb.y, label %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i"

"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i": ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.preheader.i
  %.sroa.04.1.lcssa.i = phi i1 [ %.sroa.04.044.i, %.lr.ph.i.i.i.preheader.i ], [ true, %.lr.ph.i.i.i.i ]
  %.sroa.0.0.lcssa.i = phi i8 [ 0, %.lr.ph.i.i.i.preheader.i ], [ %i.db, %.lr.ph.i.i.i.i ]
  %.lcssa.i = phi ptr [ %i.cn, %.lr.ph.i.i.i.preheader.i ], [ %i.dd, %.lr.ph.i.i.i.i ]
  %.sroa.01.0.i.i.i.i.i.lcssa.i = phi i32 [ %.sroa.01.0.i.i.i.i.i30.i, %.lr.ph.i.i.i.preheader.i ], [ %.sroa.01.0.i.i.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.dm = insertvalue { i32, i32 } { i32 1, i32 poison }, i32 %.sroa.01.0.i.i.i.i.i.lcssa.i, 1
  br label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i"

bb.y:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dn = icmp eq i32 %.sroa.01.0.i.i.i.i.i.i, %i.cx
  %i.do = zext i1 %i.dn to i8
  %i.dp = or i8 %i.db, %i.do                      ; 2 uses
  %i.dq = icmp eq ptr %i.dd, %i.cl
  br i1 %i.dq, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i", label %.lr.ph.i.i.i.i

"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i": ; preds = %bb.y, %.lr.ph.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i", %bb.x
  %.sroa.04.2.i = phi i1 [ %.sroa.04.044.i, %bb.x ], [ %.sroa.04.1.lcssa.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i" ], [ true, %.lr.ph.i ], [ true, %bb.y ] ; 2 uses
  %.sroa.0.1.i = phi i8 [ 0, %bb.x ], [ %.sroa.0.0.lcssa.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i" ], [ %i.cz, %.lr.ph.i ], [ %i.dp, %bb.y ] ; 2 uses
  %.sroa.0.0.i45.i = phi ptr [ %i.ci, %bb.x ], [ %.lcssa.i, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i" ], [ %i.cl, %.lr.ph.i ], [ %i.cl, %bb.y ]
  %.merged.i.i.i.i = phi { i32, i32 } [ { i32 0, i32 undef }, %bb.x ], [ %i.dm, %"_ZN4core3ops8function5impls79_$LT$impl$u20$core..ops..function..FnMut$LT$A$GT$$u20$for$u20$$RF$mut$u20$F$GT$8call_mut17hd782d9113d50d4f6E.exit.thread.i.i.i.i" ], [ { i32 0, i32 undef }, %.lr.ph.i ], [ { i32 0, i32 undef }, %bb.y ] ; 2 uses
  %i.dr = extractvalue { i32, i32 } %.merged.i.i.i.i, 0
  %.not.i.i = icmp eq i32 %i.dr, 1
  br i1 %.not.i.i, label %bb.z, label %bb.am

bb.z:                                             ; preds = %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit.i.i"
  %i.ds = extractvalue { i32, i32 } %.merged.i.i.i.i, 1
  br label %.outer

.outer:                                           ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i", %bb.z
  %.sroa.04.3.i.ph = phi i1 [ %.sroa.04.5.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i" ], [ %.sroa.04.2.i, %bb.z ]
  %.sroa.0.2.i.ph = phi i8 [ %.sroa.0.4.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i" ], [ %.sroa.0.1.i, %bb.z ]
  %.ph = phi i64 [ %i.fl, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i" ], [ 0, %bb.z ] ; 6 uses
  %.sroa.035.0.i.i.ph = phi ptr [ %.sroa.035.1.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i" ], [ %.sroa.0.0.i45.i, %bb.z ]
  %.sroa.05.0.i.i.ph = phi i32 [ %i.fe, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hc770826f0dc33457E.exit24.i.i" ], [ %i.ds, %bb.z ] ; 3 uses
  %i.dt = load ptr, ptr %i.g, align 8, !nonnull !10
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 164
  br label %bb.aa

bb.aa:                                            ; preds = %.outer, %bb.af
  %.sroa.04.3.i = phi i1 [ %.sroa.04.5.i, %bb.af ], [ %.sroa.04.3.i.ph, %.outer ] ; 2 uses
  %.sroa.0.2.i = phi i8 [ %.sroa.0.4.i, %bb.af ], [ %.sroa.0.2.i.ph, %.outer ] ; 3 uses
  %.sroa.035.0.i.i = phi ptr [ %.sroa.035.1.i.i, %bb.af ], [ %.sroa.035.0.i.i.ph, %.outer ] ; 6 uses
  %.sroa.07.0.i.i = phi i32 [ %i.fe, %bb.af ], [ %.sroa.05.0.i.i.ph, %.outer ]
  %i.dv = icmp eq ptr %.sroa.035.0.i.i, %i.cl
  br i1 %i.dv, label %"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c23ef7413a4fb9eE.exit22.i.i", label %.lr.ph.i.i17.i.preheader.i

end_hunk_0
