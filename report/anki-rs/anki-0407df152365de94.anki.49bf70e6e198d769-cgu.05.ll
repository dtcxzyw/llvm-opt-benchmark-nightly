Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.05?download=true
inline.NumInlined: 5793
inline.NumDeleted: 2830
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 7
loop-unroll.NumUnrolled: 16
begin_hunk_0_@_ZN13fluent_bundle5types11FluentValue5write17haf498ca6dec7259cE:bb.a
    i64 3, label %bb.i
    i64 4, label %bb.i
  ]

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.q = load ptr, ptr %i.p, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.s = load i64, ptr %i.r, align 8, !noundef !10
  %i.t = getelementptr inbounds nuw i8, ptr %i.q, i64 %i.s
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 %i.q, ptr noundef nonnull readonly %i.t)
          to label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit" unwind label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.c

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #52
          to label %common.resume unwind label %bb.j

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit": ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.g

bb.g:                                             ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit"
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

common.resume:                                    ; preds = %bb.u, %bb.q, %bb.f, %bb.o, %bb.s, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.ar, %bb.q ], [ %i.v, %bb.g ], [ %i.at, %bb.s ], [ %i.u, %bb.f ], [ %i.ao, %bb.o ], [ %i.aw, %bb.u ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit"
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.i

bb.i:                                             ; preds = %bb.c, %bb.c, %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit16", %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit", %bb.n, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit"
  ret i1 false

bb.j:                                             ; preds = %bb.s, %bb.o, %bb.f
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.k:                                             ; preds = %bb.c
  unreachable

bb.l:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_ZN13fluent_bundle5types6number12FluentNumber9as_string17hf5166d38cf141cc9E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0)
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !nonnull !10 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.ab = load i64, ptr %i.aa, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.z, i64 %i.ab
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 %i.z, ptr noundef nonnull readonly %i.ac)
          to label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit12" unwind label %bb.o

bb.m:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ad = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !10, !noundef !10
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !10, !align !13, !noundef !10
  call void @"_ZN13fluent_bundle10concurrent111_$LT$impl$u20$fluent_bundle..memoizer..MemoizerKind$u20$for$u20$intl_memoizer..concurrent..IntlLangMemoizer$GT$15stringify_value17h5a2f5f0dede86711E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull align 8 %i.ad, ptr noundef nonnull align 1 %i.af, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(80) %i.ah)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !10 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.al = load i64, ptr %i.ak, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %i.aj, i64 %i.al
  invoke void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 %i.aj, ptr noundef nonnull readonly %i.am)
          to label %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit13" unwind label %bb.s

bb.n:                                             ; preds = %bb.c
  %.sroa.01.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.01.0 = load ptr, ptr %.sroa.01.0.in, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %.sroa.3.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0 = load i64, ptr %.sroa.3.0.in, align 8, !noundef !10
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.01.0, i64 %.sroa.3.0
  call void @"_ZN132_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$alloc..vec..spec_extend..SpecExtend$LT$$RF$T$C$core..slice..iter..Iter$LT$T$GT$$GT$$GT$11spec_extend17h705086954de2a2beE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull readonly align 1 %.sroa.01.0, ptr noundef nonnull readonly %i.an)
  br label %bb.i

bb.o:                                             ; preds = %bb.l
  %i.ao = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #52
          to label %common.resume unwind label %bb.j

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit12": ; preds = %bb.l
  %i.ap = load i64, ptr %i.b, align 8, !range !24, !alias.scope !1293, !noundef !10
  %i.aq = icmp eq i64 %i.ap, -9223372036854775808
  br i1 %i.aq, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit", label %bb.p

bb.p:                                             ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit12"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i" unwind label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.ar = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.as = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i": ; preds = %bb.p
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit": ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit12", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.s:                                             ; preds = %bb.m
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE"(ptr noalias noundef align 8 dereferenceable(24) %i.a) #52
          to label %common.resume unwind label %bb.j

"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit13": ; preds = %bb.m
  %i.au = load i64, ptr %i.a, align 8, !range !24, !alias.scope !1294, !noundef !10
  %i.av = icmp eq i64 %i.au, -9223372036854775808
  br i1 %i.av, label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit16", label %bb.t

bb.t:                                             ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit13"
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i15" unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i15": ; preds = %bb.t
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
  br label %"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit16"

"_ZN4core3ptr50drop_in_place$LT$alloc..borrow..Cow$LT$str$GT$$GT$17h4174dd460f5ed00dE.exit16": ; preds = %"_ZN58_$LT$alloc..string..String$u20$as$u20$core..fmt..Write$GT$9write_str17he5071c20dec667b2E.exit13", %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit.i15"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_ZN13fluent_bundle5types11FluentValue7matches17h158f84ab63cc2f44E(ptr noalias noundef readonly align 8 captures(none) dereferenceable(120) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(120) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(88) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = load i64, ptr %0, align 8, !range !30, !noundef !10 ; 4 uses
  %i.e = icmp ne i64 %i.d, 3
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i64 %i.d, -2
  %i.g = icmp samesign ugt i64 %i.d, 1
  %i.h = select i1 %i.g, i64 %i.f, i64 1
  switch i64 %i.h, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit" [
    i64 0, label %bb.b
    i64 1, label %bb.c
  ]

bb.b:                                             ; preds = %bb.a
  %i.i = load i64, ptr %1, align 8, !range !30, !noundef !10 ; 3 uses
  %i.j = icmp ne i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.j)
  %i.k = add nsw i64 %i.i, -2
  %i.l = icmp samesign ugt i64 %i.i, 1
  %i.m = select i1 %i.l, i64 %i.k, i64 1
  switch i64 %i.m, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit" [
    i64 0, label %bb.d
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.a
  %i.n = load i64, ptr %1, align 8, !range !30, !noundef !10 ; 3 uses
  %i.o = icmp ne i64 %i.n, 3
  tail call void @llvm.assume(i1 %i.o)
  %i.p = icmp samesign ult i64 %i.n, 2
  br i1 %i.p, label %bb.m, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.d:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1309)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %.sroa.3.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.3.0.i = load i64, ptr %.sroa.3.0.in.i, align 8, !alias.scope !1309, !noundef !10 ; 2 uses
  %.sroa.32.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.32.0.i = load i64, ptr %.sroa.32.0.in.i, align 8, !alias.scope !1310, !noundef !10
  %.not.i.i = icmp eq i64 %.sroa.3.0.i, %.sroa.32.0.i
  br i1 %.not.i.i, label %bb.e, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.e:                                             ; preds = %bb.d
  %.sroa.0.0.in.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.0.0.i = load ptr, ptr %.sroa.0.0.in.i, align 8, !alias.scope !1309, !nonnull !10, !noundef !10
  %.sroa.01.0.in.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.01.0.i = load ptr, ptr %.sroa.01.0.in.i, align 8, !alias.scope !1310, !nonnull !10, !noundef !10
  %bcmp.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.sroa.0.0.i, ptr nonnull readonly align 1 %.sroa.01.0.i, i64 %.sroa.3.0.i), !alias.scope !1311, !noalias !1312
  %i.q = icmp eq i32 %bcmp.i.i, 0
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.f:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8
  %.sroa.03.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.03.0 = load ptr, ptr %.sroa.03.0.in, align 8, !nonnull !10, !noundef !10 ; 10 uses
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.8.0 = load i64, ptr %.sroa.8.0.in, align 8, !noundef !10
  switch i64 %.sroa.8.0, label %.thread40 [
    i64 4, label %bb.g
    i64 3, label %bb.j
    i64 5, label %bb.l
  ]

"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit": ; preds = %bb.ak, %bb.aj, %bb.ai, %.split13.i, %bb.ag, %bb.af, %.split12.i, %bb.ad, %bb.ac, %.split11.i, %bb.aa, %bb.z, %.split.i, %bb.x, %bb.w, %bb.u, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i", %bb.t, %bb.s, %bb.r, %bb.p, %bb.o, %bb.n, %bb.e, %bb.d, %bb.m, %bb.a, %bb.b, %bb.c, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha4c1f700e7f86f4eE.exit", %.thread40
  %.sroa.0.0.shrunk = phi i1 [ false, %bb.a ], [ false, %bb.m ], [ false, %.thread40 ], [ %i.ag, %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha4c1f700e7f86f4eE.exit" ], [ false, %bb.d ], [ false, %bb.c ], [ false, %bb.b ], [ %i.q, %bb.e ], [ %i.fb, %bb.ak ], [ false, %bb.o ], [ %9, %bb.aj ], [ false, %bb.af ], [ false, %bb.ac ], [ false, %bb.z ], [ false, %bb.w ], [ false, %bb.r ], [ false, %bb.n ], [ false, %bb.ag ], [ false, %bb.ad ], [ false, %bb.aa ], [ false, %bb.x ], [ false, %bb.u ], [ false, %bb.s ], [ false, %bb.p ], [ false, %bb.ai ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i" ], [ false, %.split13.i ], [ false, %.split.i ], [ false, %.split11.i ], [ false, %.split12.i ], [ false, %bb.t ]
  ret i1 %.sroa.0.0.shrunk

bb.g:                                             ; preds = %bb.f
  %i.r = load i32, ptr %.sroa.03.0, align 1
  %i.s = icmp ne i32 %i.r, 1869768058
  %i.t = zext i1 %i.s to i32
  %i.u = icmp eq i32 %i.t, 0
  br i1 %i.u, label %bb.h, label %.critedge34

bb.h:                                             ; preds = %bb.l, %.critedge34, %.critedge, %bb.k, %bb.j, %bb.g
  %.sroa.01.0 = phi i8 [ 4, %.critedge34 ], [ 3, %.critedge ], [ 2, %bb.k ], [ 1, %bb.j ], [ 0, %bb.g ], [ 5, %bb.l ]
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.w = load i8, ptr %i.v, align 8, !range !21, !noundef !10
  %3 = trunc nuw i8 %i.w to i1
  %.sroa.02.0 = xor i1 %3, true
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.x = getelementptr inbounds nuw i8, ptr %2, i64 56
  %i.y = load ptr, ptr %i.x, align 8, !nonnull !10, !align !13, !noundef !10
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 48
  call void @"_ZN13fluent_bundle10concurrent111_$LT$impl$u20$fluent_bundle..memoizer..MemoizerKind$u20$for$u20$intl_memoizer..concurrent..IntlLangMemoizer$GT$23with_try_get_threadsafe17h1fb321dbe35cf7b4E"(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull align 8 %i.z, i1 noundef zeroext %.sroa.02.0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, i8 noundef %.sroa.01.0)
  call void @llvm.experimental.noalias.scope.decl(metadata !1313)
  %i.aa = load ptr, ptr %i.b, align 8, !alias.scope !1313, !noundef !10 ; 2 uses
  %.not.i = icmp eq ptr %i.aa, null
  br i1 %.not.i, label %"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha4c1f700e7f86f4eE.exit", label %bb.i, !prof !11

bb.i:                                             ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1313
  %i.ab = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !1313, !noundef !10
  store ptr %i.aa, ptr %i.a, align 8, !noalias !1313
  %i.ad = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.ac, ptr %i.ad, align 8, !noalias !1313
  call void @_ZN4core6result13unwrap_failed17h8e46864fd8bf13c6E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @293, i64 noundef 43, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @296, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @24) #50, !noalias !1313
  unreachable

"_ZN4core6result19Result$LT$T$C$E$GT$6unwrap17ha4c1f700e7f86f4eE.exit": ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.af = load i8, ptr %i.ae, align 8, !range !21, !alias.scope !1313, !noundef !10
  %i.ag = trunc nuw i8 %i.af to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.j:                                             ; preds = %bb.f
  %i.ah = load i16, ptr %.sroa.03.0, align 1
  %i.ai = xor i16 %i.ah, 28271
  %i.aj = getelementptr i8, ptr %.sroa.03.0, i64 2
  %i.ak = load i8, ptr %i.aj, align 1
  %i.al = zext i8 %i.ak to i16
  %i.am = xor i16 %i.al, 101
  %i.an = or i16 %i.ai, %i.am
  %i.ao = icmp ne i16 %i.an, 0
  %i.ap = zext i1 %i.ao to i32
  %i.aq = icmp eq i32 %i.ap, 0
  br i1 %i.aq, label %bb.h, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.ar = load i16, ptr %.sroa.03.0, align 1
  %i.as = xor i16 %i.ar, 30580
  %i.at = getelementptr i8, ptr %.sroa.03.0, i64 2
  %i.au = load i8, ptr %i.at, align 1
  %i.av = zext i8 %i.au to i16
  %i.aw = xor i16 %i.av, 111
  %i.ax = or i16 %i.as, %i.aw
  %i.ay = icmp ne i16 %i.ax, 0
  %i.az = zext i1 %i.ay to i32
  %i.ba = icmp eq i32 %i.az, 0
  br i1 %i.ba, label %bb.h, label %.critedge

.critedge:                                        ; preds = %bb.k
  %i.bb = load i16, ptr %.sroa.03.0, align 1
  %i.bc = xor i16 %i.bb, 25958
  %i.bd = getelementptr i8, ptr %.sroa.03.0, i64 2
  %i.be = load i8, ptr %i.bd, align 1
  %i.bf = zext i8 %i.be to i16
  %i.bg = xor i16 %i.bf, 119
  %i.bh = or i16 %i.bc, %i.bg
  %i.bi = icmp ne i16 %i.bh, 0
  %i.bj = zext i1 %i.bi to i32
  %i.bk = icmp eq i32 %i.bj, 0
  br i1 %i.bk, label %bb.h, label %.thread40

.critedge34:                                      ; preds = %bb.g
  %i.bl = load i32, ptr %.sroa.03.0, align 1
  %i.bm = icmp ne i32 %i.bl, 2037277037
  %i.bn = zext i1 %i.bm to i32
  %i.bo = icmp eq i32 %i.bn, 0
  br i1 %i.bo, label %bb.h, label %.thread40

bb.l:                                             ; preds = %bb.f
  %i.bp = load i32, ptr %.sroa.03.0, align 1
  %i.bq = xor i32 %i.bp, 1701344367
  %i.br = getelementptr i8, ptr %.sroa.03.0, i64 4
  %i.bs = load i8, ptr %i.br, align 1
  %i.bt = zext i8 %i.bs to i32
  %i.bu = xor i32 %i.bt, 114
  %i.bv = or i32 %i.bq, %i.bu
  %i.bw = icmp ne i32 %i.bv, 0
  %i.bx = zext i1 %i.bw to i32
  %i.by = icmp eq i32 %i.bx, 0
  br i1 %i.by, label %bb.h, label %.thread40

.thread40:                                        ; preds = %bb.f, %.critedge34, %.critedge, %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.m:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ca = load double, ptr %i.bz, align 8, !noundef !10
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.cc = load double, ptr %i.cb, align 8, !noundef !10
  %i.cd = fcmp oeq double %i.ca, %i.cc
  br i1 %i.cd, label %bb.n, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.n:                                             ; preds = %bb.m
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1314)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1315)
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 105
  %i.cf = load i8, ptr %i.ce, align 1, !range !21, !alias.scope !1314, !noundef !10
  %i.cg = getelementptr inbounds nuw i8, ptr %1, i64 105
  %i.ch = load i8, ptr %i.cg, align 1, !range !21, !alias.scope !1315, !noundef !10
  %i.ci = icmp eq i8 %i.cf, %i.ch
  br i1 %i.ci, label %bb.o, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.o:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.ck = load i8, ptr %i.cj, align 8, !range !21, !alias.scope !1314, !noundef !10
  %i.cl = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.cm = load i8, ptr %i.cl, align 8, !range !21, !alias.scope !1315, !noundef !10
  %i.cn = icmp eq i8 %i.ck, %i.cm
  br i1 %i.cn, label %bb.p, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.p:                                             ; preds = %bb.o
  %i.co = getelementptr inbounds nuw i8, ptr %0, i64 106
  %i.cp = load i8, ptr %i.co, align 2, !range !27, !alias.scope !1314, !noundef !10
  %i.cq = getelementptr inbounds nuw i8, ptr %1, i64 106
  %i.cr = load i8, ptr %i.cq, align 2, !range !27, !alias.scope !1315, !noundef !10
  %i.cs = icmp eq i8 %i.cp, %i.cr
  br i1 %i.cs, label %bb.q, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.q:                                             ; preds = %bb.p
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.cu = load i64, ptr %i.ct, align 8, !range !24, !alias.scope !1314, !noundef !10
  %.not.i36 = icmp eq i64 %i.cu, -9223372036854775808
  %i.cv = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.cw = load i64, ptr %i.cv, align 8, !range !24, !alias.scope !1315, !noundef !10
  %i.cx = icmp eq i64 %i.cw, -9223372036854775808 ; 2 uses
  br i1 %.not.i36, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  br i1 %i.cx, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit", label %bb.t

bb.s:                                             ; preds = %bb.q
  br i1 %i.cx, label %bb.u, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.t:                                             ; preds = %bb.r
  %i.cy = getelementptr inbounds nuw i8, ptr %0, i64 96
  %.val7.i = load i64, ptr %i.cy, align 8, !alias.scope !1314, !noundef !10 ; 2 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.val9.i = load i64, ptr %i.cz, align 8, !alias.scope !1315, !noundef !10
  %.not.i.i.i = icmp eq i64 %.val7.i, %.val9.i
  br i1 %.not.i.i.i, label %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i", label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i": ; preds = %bb.t
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val8.i = load ptr, ptr %i.da, align 8, !alias.scope !1315, !nonnull !10, !noundef !10
  %i.db = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.val.i = load ptr, ptr %i.db, align 8, !alias.scope !1314, !nonnull !10, !noundef !10
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val.i, ptr nonnull readonly align 1 %.val8.i, i64 %.val7.i), !alias.scope !1316, !noalias !1317
  %i.dc = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.dc, label %bb.u, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.u:                                             ; preds = %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h71450a353be57606E.exit.i", %bb.s
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 107
  %i.de = load i8, ptr %i.dd, align 1, !range !27, !alias.scope !1314, !noundef !10
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 107
  %i.dg = load i8, ptr %i.df, align 1, !range !27, !alias.scope !1315, !noundef !10
  %i.dh = icmp eq i8 %i.de, %i.dg
  br i1 %i.dh, label %bb.v, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.v:                                             ; preds = %bb.u
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.dj = trunc nuw i64 %i.d to i1
  %4 = trunc nuw i64 %i.n to i1                   ; 2 uses
  br i1 %i.dj, label %bb.w, label %bb.x

bb.w:                                             ; preds = %bb.v
  br i1 %4, label %.split.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.x:                                             ; preds = %bb.v
  br i1 %4, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit", label %bb.y

.split.i:                                         ; preds = %bb.w
  %i.dk = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dl = load i64, ptr %i.di, align 8, !alias.scope !1314, !noundef !10
  %i.dm = load i64, ptr %i.dk, align 8, !alias.scope !1315, !noundef !10
  %i.dn = icmp eq i64 %i.dl, %i.dm
  br i1 %i.dn, label %bb.y, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.y:                                             ; preds = %.split.i, %bb.x
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.dp = load i64, ptr %i.do, align 8, !range !12, !alias.scope !1314, !noundef !10
  %i.dq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.dr = trunc nuw i64 %i.dp to i1
  %i.ds = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dt = load i64, ptr %i.ds, align 8, !range !12, !alias.scope !1315, !noundef !10
  %5 = trunc nuw i64 %i.dt to i1                  ; 2 uses
  br i1 %i.dr, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  br i1 %5, label %.split11.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.aa:                                            ; preds = %bb.y
  br i1 %5, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit", label %bb.ab

.split11.i:                                       ; preds = %bb.z
  %i.du = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dv = load i64, ptr %i.dq, align 8, !alias.scope !1314, !noundef !10
  %i.dw = load i64, ptr %i.du, align 8, !alias.scope !1315, !noundef !10
  %i.dx = icmp eq i64 %i.dv, %i.dw
  br i1 %i.dx, label %bb.ab, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ab:                                            ; preds = %.split11.i, %bb.aa
  %i.dy = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dz = load i64, ptr %i.dy, align 8, !range !12, !alias.scope !1314, !noundef !10
  %i.ea = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.eb = trunc nuw i64 %i.dz to i1
  %i.ec = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ed = load i64, ptr %i.ec, align 8, !range !12, !alias.scope !1315, !noundef !10
  %6 = trunc nuw i64 %i.ed to i1                  ; 2 uses
  br i1 %i.eb, label %bb.ac, label %bb.ad

bb.ac:                                            ; preds = %bb.ab
  br i1 %6, label %.split12.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ad:                                            ; preds = %bb.ab
  br i1 %6, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit", label %bb.ae

.split12.i:                                       ; preds = %bb.ac
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load i64, ptr %i.ea, align 8, !alias.scope !1314, !noundef !10
  %i.eg = load i64, ptr %i.ee, align 8, !alias.scope !1315, !noundef !10
  %i.eh = icmp eq i64 %i.ef, %i.eg
  br i1 %i.eh, label %bb.ae, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ae:                                            ; preds = %.split12.i, %bb.ad
  %i.ei = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ej = load i64, ptr %i.ei, align 8, !range !12, !alias.scope !1314, !noundef !10
  %i.ek = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.el = trunc nuw i64 %i.ej to i1
  %i.em = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.en = load i64, ptr %i.em, align 8, !range !12, !alias.scope !1315, !noundef !10
  %7 = trunc nuw i64 %i.en to i1                  ; 2 uses
  br i1 %i.el, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %bb.ae
  br i1 %7, label %.split13.i, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ag:                                            ; preds = %bb.ae
  br i1 %7, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit", label %bb.ah

.split13.i:                                       ; preds = %bb.af
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ep = load i64, ptr %i.ek, align 8, !alias.scope !1314, !noundef !10
  %i.eq = load i64, ptr %i.eo, align 8, !alias.scope !1315, !noundef !10
  %i.er = icmp eq i64 %i.ep, %i.eq
  br i1 %i.er, label %bb.ah, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ah:                                            ; preds = %.split13.i, %bb.ag
  %i.es = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.et = load i64, ptr %i.es, align 8, !range !12, !alias.scope !1314, !noundef !10
  %i.eu = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.ev = trunc nuw i64 %i.et to i1
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ex = load i64, ptr %i.ew, align 8, !range !12, !alias.scope !1315, !noundef !10
  %8 = trunc nuw i64 %i.ex to i1                  ; 2 uses
  br i1 %i.ev, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br i1 %8, label %bb.ak, label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.aj:                                            ; preds = %bb.ah
  %9 = xor i1 %8, true
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"

bb.ak:                                            ; preds = %bb.ai
  %i.ey = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ez = load i64, ptr %i.eu, align 8, !alias.scope !1314, !noundef !10
  %i.fa = load i64, ptr %i.ey, align 8, !alias.scope !1315, !noundef !10
  %i.fb = icmp eq i64 %i.ez, %i.fa
  br label %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17h94df59a763a3b75fE.exit"
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN13fluent_bundle6bundle25FluentBundle$LT$R$C$M$GT$14format_pattern17h4540b102fb9e3368E"(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %3, ptr noalias noundef align 8 dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 2 uses
  %i.b = alloca [88 x i8], align 8                ; 15 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  store ptr %3, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 5 uses
  store i64 -9223372036854775808, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 81
  store i8 0, ptr %i.f, align 1
  store i64 0, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 0, ptr %.sroa.42.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  store ptr %4, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store i8 0, ptr %i.h, align 8
  invoke void @"_ZN13fluent_bundle8resolver7pattern110_$LT$impl$u20$fluent_bundle..resolver..ResolveValue$u20$for$u20$fluent_syntax..ast..Pattern$LT$$RF$str$GT$$GT$7resolve17h26330deaea8f4ba3E"(ptr noalias noundef nonnull sret([120 x i8]) align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %2, ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr151drop_in_place$LT$fluent_bundle..resolver..scope..Scope$LT$fluent_bundle..resource..FluentResource$C$intl_memoizer..concurrent..IntlLangMemoizer$GT$$GT$17ha9d9830e555e74ceE"(ptr noalias noundef align 8 dereferenceable(88) %i.b) #52
          to label %common.resume unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  invoke void @_ZN13fluent_bundle5types11FluentValue11into_string17h839522893a9fd4c0E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(120) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %i.b)
          to label %bb.d unwind label %bb.b

bb.d:                                             ; preds = %bb.c
  %i.j = load i64, ptr %i.e, align 8, !range !24, !alias.scope !1322, !noundef !10
  %i.k = icmp eq i64 %i.j, -9223372036854775808
  br i1 %i.k, label %"_ZN4core3ptr151drop_in_place$LT$fluent_bundle..resolver..scope..Scope$LT$fluent_bundle..resource..FluentResource$C$intl_memoizer..concurrent..IntlLangMemoizer$GT$$GT$17ha9d9830e555e74ceE.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd60b0cfa620e8588E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr52drop_in_place$LT$fluent_bundle..args..FluentArgs$GT$17hc4c90ad7427144d2E.exit.i.i" unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebae5d0f6db4a15E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr52drop_in_place$LT$fluent_bundle..args..FluentArgs$GT$17hc4c90ad7427144d2E.exit.i.i": ; preds = %bb.e
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h0ebae5d0f6db4a15E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %"_ZN4core3ptr151drop_in_place$LT$fluent_bundle..resolver..scope..Scope$LT$fluent_bundle..resource..FluentResource$C$intl_memoizer..concurrent..IntlLangMemoizer$GT$$GT$17ha9d9830e555e74ceE.exit" unwind label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$fluent_bundle..args..FluentArgs$GT$17hc4c90ad7427144d2E.exit.i.i"
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.n, %bb.h ], [ %i.l, %bb.f ]
  invoke void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd897178219d8ab70E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
          to label %common.resume unwind label %bb.i

bb.i:                                             ; preds = %.body.i
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %.body.i
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body.i, %.body.i ], [ %i.i, %bb.b ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr151drop_in_place$LT$fluent_bundle..resolver..scope..Scope$LT$fluent_bundle..resource..FluentResource$C$intl_memoizer..concurrent..IntlLangMemoizer$GT$$GT$17ha9d9830e555e74ceE.exit": ; preds = %bb.d, %"_ZN4core3ptr52drop_in_place$LT$fluent_bundle..args..FluentArgs$GT$17hc4c90ad7427144d2E.exit.i.i"
  call void @"_ZN69_$LT$smallvec..SmallVec$LT$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd897178219d8ab70E"(ptr noalias noundef nonnull align 8 dereferenceable(88) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.j:                                             ; preds = %bb.b
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN13password_hash6output6Output9init_with17h9284eadea38395e5E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (8, 10), (16, 24)) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 5 uses
  %i.b = icmp ult i64 %1, 10
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 64
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.51.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %.sroa.55.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
  %.sroa.012.0.copyload = load ptr, ptr %2, align 8, !nonnull !10, !noundef !10
  %.sroa.4.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx13, align 8, !nonnull !10, !noundef !10
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.614.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.614.0.copyload = load ptr, ptr %.sroa.614.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8, !nonnull !10, !noundef !10
  %i.f = load i8, ptr %.sroa.012.0.copyload, align 1, !range !21, !noalias !1328, !noundef !10
  %i.g = trunc nuw i8 %i.f to i1
  %_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E._ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E.i = select i1 %i.g, ptr @_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E, ptr @_ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E
  %i.h = load i32, ptr %.sroa.8.0.copyload, align 4, !noalias !1328, !noundef !10
  call void %_ZN6pbkdf211pbkdf2_hmac17h9d894558a09d1096E._ZN6pbkdf211pbkdf2_hmac17h8275aa93cde47570E.i(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.4.0.copyload, i64 noundef %.sroa.5.0.copyload, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.614.0.copyload, i64 noundef %.sroa.7.0.copyload, i32 noundef %i.h, ptr noalias noundef nonnull align 1 %i.a, i64 noundef range(i64 10, 65) %1), !noalias !1329, !callees !31, !inline_history !1327
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(64) %.sroa.47.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.i = trunc nuw nsw i64 %1 to i8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 1
  store i8 0, ptr %i.j, align 1
  %.sroa.58.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 66
  store i8 %i.i, ptr %.sroa.58.0..sroa_idx, align 2
  store i8 0, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN13password_hash6output6Output9init_with17hb463aa785592a348E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) initializes((0, 1), (8, 10), (16, 24)) %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 1                ; 5 uses
  %i.b = icmp ult i64 %1, 10
  br i1 %i.b, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = icmp ugt i64 %1, 64
  br i1 %i.c, label %bb.d, label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.d, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 -1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.51.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 10, ptr %.sroa.51.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 3, ptr %i.e, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 9
  store i8 1, ptr %.sroa.43.0..sroa_idx, align 1
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 64, ptr %.sroa.55.0..sroa_idx, align 8
  store i8 1, ptr %0, align 8
  br label %bb.f

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(64) %i.a, i8 0, i64 64, i1 false)
end_hunk_0
begin_hunk_1_@_ZN4anki5media12MediaManager8transact17h09cb8d5a1d923b0fE:bb.a
bb.al:                                            ; preds = %bb.ak
  %.pr29.i = load i64, ptr %i.n, align 8, !noalias !3555
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3565
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3555
  %.not5.i = icmp eq i64 %.pr29.i, -9223372036854775773
  br i1 %.not5.i, label %bb.ao, label %bb.am

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.n, i64 112, i1 false), !noalias !3557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3555
  %i.br = load i64, ptr %i.p, align 8, !range !36, !alias.scope !3566, !noalias !3555, !noundef !10
  %i.bs = icmp eq i64 %i.br, -9223372036854775773
  br i1 %i.bs, label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anki..error..AnkiError$GT$$GT$17h681c8450b9aaaf0aE.exit16.i", label %bb.an

bb.an:                                            ; preds = %bb.am
  call fastcc void @"_ZN4core3ptr43drop_in_place$LT$anki..error..AnkiError$GT$17h49e25de86dfbbe0cE"(ptr noalias noundef nonnull align 8 dereferenceable(112) %i.p), !noalias !3555
  br label %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anki..error..AnkiError$GT$$GT$17h681c8450b9aaaf0aE.exit16.i"

"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anki..error..AnkiError$GT$$GT$17h681c8450b9aaaf0aE.exit16.i": ; preds = %bb.an, %bb.am
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !3555
  br label %_ZN4anki4sync5media8database6client13MediaDatabase8transact17h65b53a2cde0bd905E.exit

bb.ao:                                            ; preds = %bb.al, %.thread30.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !3555
  br label %bb.aj

bb.ap:                                            ; preds = %bb.ac
  %i.bt = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !3555
  unreachable

_ZN4anki4sync5media8database6client13MediaDatabase8transact17h65b53a2cde0bd905E.exit: ; preds = %bb.d, %bb.aj, %"_ZN4core3ptr82drop_in_place$LT$core..result..Result$LT$$LP$$RP$$C$anki..error..AnkiError$GT$$GT$17h681c8450b9aaaf0aE.exit16.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.aq

bb.aq:                                            ; preds = %_ZN4anki4sync5media8database6client13MediaDatabase8transact17h65b53a2cde0bd905E.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki5media12MediaManager8transact17h1772ac338423eccdE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %i.d = alloca [64 x i8], align 8                ; 6 uses
  %i.e = alloca [56 x i8], align 8                ; 12 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 10 uses
  %i.h = alloca [40 x i8], align 8                ; 6 uses
  %i.i = alloca [20 x i8], align 1                ; 5 uses
  %i.j = alloca [112 x i8], align 8               ; 11 uses
  %i.k = alloca [112 x i8], align 8               ; 6 uses
  %i.l = alloca [112 x i8], align 8               ; 6 uses
  %i.m = alloca [56 x i8], align 8                ; 9 uses
  %.sroa.8.i.i = alloca [104 x i8], align 8       ; 9 uses
  %i.n = alloca [112 x i8], align 8               ; 6 uses
  %i.o = alloca [112 x i8], align 8               ; 8 uses
  %i.p = alloca [16 x i8], align 8                ; 8 uses
  %i.q = alloca [64 x i8], align 8                ; 5 uses
  %i.r = alloca [64 x i8], align 8                ; 6 uses
  %i.s = alloca [112 x i8], align 8               ; 6 uses
  %i.t = alloca [112 x i8], align 8               ; 6 uses
  %i.u = alloca [112 x i8], align 8               ; 28 uses
  %i.v = alloca [112 x i8], align 8               ; 6 uses
  %i.w = tail call { i64, ptr } @_ZN4anki5media5files12mtime_as_i6417h6027d0c13e62b777E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1) ; 2 uses
  %i.x = extractvalue { i64, ptr } %i.w, 0
  %i.y = extractvalue { i64, ptr } %i.w, 1        ; 2 uses
  %i.z = trunc nuw i64 %i.x to i1
  br i1 %i.z, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store i64 -9223372036854775805, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.4.sroa.0.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 0, ptr %.sroa.4.sroa.0.sroa.0.sroa.5.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 -9223372036854775795, ptr %.sroa.4.sroa.0.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.y, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx, align 8
  br label %bb.bf

bb.c:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %i.y to i64
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 6 uses
  %.sroa.4.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx24, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %.sroa.9.0.copyload = load ptr, ptr %.sroa.9.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !3622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !3622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !3623
  call void @_ZN8rusqlite10Connection13execute_batch17hd50685de3313c7bfE(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.r, ptr noundef nonnull align 8 %i.ab, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @181, i64 noundef 15), !noalias !3623
  %i.ac = load i64, ptr %i.r, align 8, !range !41, !noalias !3623, !noundef !10
  %.not.i.i = icmp eq i64 %i.ac, -9223372036854775783
  br i1 %.not.i.i, label %_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.thread.i, label %_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.i

_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.thread.i: ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3622
  br label %bb.e

_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.i: ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.q, ptr noundef nonnull align 8 dereferenceable(64) %i.r, i64 64, i1 false), !noalias !3623
  call void @"_ZN4anki5error2db102_$LT$impl$u20$core..convert..From$LT$rusqlite..error..Error$GT$$u20$for$u20$anki..error..AnkiError$GT$4from17h203840764575bdf0E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.q), !noalias !3622
  %.pr.i = load i64, ptr %i.v, align 8, !noalias !3622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !3623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !3622
  %.not.i = icmp eq i64 %.pr.i, -9223372036854775773
  br i1 %.not.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %i.v, i64 112, i1 false), !noalias !3624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3622
  br label %_ZN4anki4sync5media8database6client13MediaDatabase8transact17ha789cf99a01d866bE.exit

bb.e:                                             ; preds = %_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.i, %_ZN4anki4sync5media8database6client13MediaDatabase5begin17h62a513f8e4dd75bcE.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !3622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !3622
  call void @llvm.experimental.noalias.scope.decl(metadata !3625)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !3626
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 24
  %i.ae = load ptr, ptr %i.ad, align 8, !alias.scope !3627, !noalias !3628, !nonnull !10, !noundef !10 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 32
  %i.ag = load i64, ptr %i.af, align 8, !alias.scope !3627, !noalias !3628, !noundef !10
  %i.ah = add i64 %i.ag, 1
  call void @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$3new17h08ebef187f390ed7E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(40) %i.h, ptr noundef nonnull %i.ae, ptr noundef nonnull %i.ae, i64 noundef %i.ah), !noalias !3628
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 48
  %i.aj = load i64, ptr %i.ai, align 8, !alias.scope !3627, !noalias !3628, !noundef !10
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store i64 %i.aj, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i, align 8, !noalias !3628
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !3629, !noalias !3628, !nonnull !10, !noundef !10 ; 2 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %i.an = load i64, ptr %i.am, align 8, !alias.scope !3629, !noalias !3628, !noundef !10
  %i.ao = getelementptr inbounds nuw [64 x i8], ptr %i.al, i64 %i.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !3628
  store ptr %i.al, ptr %i.m, align 8, !noalias !3628
  %.sroa.2.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 2 uses
  store ptr %i.ao, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !noalias !3628
  %.sroa.3.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false), !noalias !3628
  %i.ap = getelementptr inbounds nuw i8, ptr %i.m, i64 48 ; 3 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 8
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.5.0.copyload, i64 16
  %i.as = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 16
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.6.0.copyload, i64 24
  %i.av = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 33
  %i.aw = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.ax = getelementptr inbounds nuw i8, ptr %i.e, i64 53
  %.sroa.46.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 3 uses
  %.sroa.46.sroa.0.sroa.0.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %.sroa.46.sroa.0.sroa.0.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.46.sroa.0.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  br label %bb.f

bb.f:                                             ; preds = %bb.ai, %bb.e
  %i.ay = load ptr, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !3630, !noalias !3628, !noundef !10
  %.not.i.i.i.i = icmp eq ptr %i.ay, null
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !3631, !noalias !3628
  br label %bb.h

bb.h:                                             ; preds = %"_ZN110_$LT$std..collections..hash..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7f38f0e49e64e67E.exit.i.i.i.i.i.i.i.i", %bb.g
  %i.az = phi i64 [ %i.bd, %"_ZN110_$LT$std..collections..hash..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7f38f0e49e64e67E.exit.i.i.i.i.i.i.i.i" ], [ %.pre.i.i.i.i.i.i.i.i, %bb.g ]
  %i.ba = icmp eq i64 %i.az, 0
  br i1 %i.ba, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.bb = call noundef ptr @"_ZN9hashbrown3raw21RawIterRange$LT$T$GT$9next_impl17he1a5e308848fb8bbE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %.sroa.3.0..sroa_idx.i.i.i), !noalias !3628 ; 3 uses
  %i.bc = load i64, ptr %i.ap, align 8, !alias.scope !3631, !noalias !3628, !noundef !10
  %i.bd = add i64 %i.bc, -1                       ; 2 uses
  store i64 %i.bd, ptr %i.ap, align 8, !alias.scope !3631, !noalias !3628
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.bb, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %"_ZN110_$LT$std..collections..hash..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7f38f0e49e64e67E.exit.i.i.i.i.i.i.i.i"

"_ZN110_$LT$std..collections..hash..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7f38f0e49e64e67E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.i
  %i.be = getelementptr inbounds i8, ptr %i.bb, i64 -72
  %i.bf = load i8, ptr %i.be, align 8, !range !21, !alias.scope !3632, !noalias !3628, !noundef !10
  %3 = trunc nuw i8 %i.bf to i1
  br i1 %3, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h7d55a6d695e9caecE.exit.i.i.i, label %bb.h

bb.j:                                             ; preds = %bb.i, %bb.h
  store ptr null, ptr %.sroa.3.0..sroa_idx.i.i.i, align 8, !alias.scope !3630, !noalias !3628
  br label %bb.k

_ZN4core4iter8adapters5chain17and_then_or_clear17h7d55a6d695e9caecE.exit.i.i.i: ; preds = %"_ZN110_$LT$std..collections..hash..map..ValuesMut$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha7f38f0e49e64e67E.exit.i.i.i.i.i.i.i.i"
  %i.bg = getelementptr inbounds i8, ptr %i.bb, i64 -64
  br label %bb.m

bb.k:                                             ; preds = %bb.j, %bb.f
  %i.bh = load ptr, ptr %i.m, align 8, !alias.scope !3633, !noalias !3628, !noundef !10 ; 4 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.bh, null
  %i.bi = load ptr, ptr %.sroa.2.0..sroa_idx.i.i.i, align 8, !alias.scope !3633, !noalias !3628, !nonnull !10
  %i.bj = icmp eq ptr %i.bh, %i.bi
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %i.bj
  br i1 %or.cond.i.i.i.i.i, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  store ptr %i.bk, ptr %i.m, align 8, !alias.scope !3634, !noalias !3628
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %_ZN4core4iter8adapters5chain17and_then_or_clear17h7d55a6d695e9caecE.exit.i.i.i
  %.sroa.0.0.i10.ph.i.i.i = phi ptr [ %i.bh, %bb.l ], [ %i.bg, %_ZN4core4iter8adapters5chain17and_then_or_clear17h7d55a6d695e9caecE.exit.i.i.i ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !3628
  call void @"_ZN4anki8progress20Incrementor$LT$F$GT$9increment17h0470f61151832bf9E"(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %.sroa.4.0.copyload), !noalias !3628
  %i.bl = load i64, ptr %i.l, align 8, !range !36, !noalias !3628, !noundef !10 ; 2 uses
  %.not6.i.i.i = icmp eq i64 %i.bl, -9223372036854775773
  br i1 %.not6.i.i.i, label %bb.o, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx.i.i, i64 104, i1 false), !noalias !3626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3628
  br label %"_ZN4anki5media12MediaManager8transact28_$u7b$$u7b$closure$u7d$$u7d$17h2e444275779f1defE.exit.thread19.i"

bb.o:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !3628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !3628
  %i.bm = load ptr, ptr %i.aq, align 8, !noalias !3628, !nonnull !10, !noundef !10
  %i.bn = load i64, ptr %i.ar, align 8, !noalias !3628, !noundef !10
  %i.bo = load i32, ptr %.sroa.8.0.copyload, align 4, !noalias !3628, !noundef !10 ; 2 uses
  switch i32 %i.bo, label %bb.q [
    i32 0, label %bb.p
    i32 1, label %bb.r
    i32 2, label %bb.r
    i32 3, label %bb.p
  ]

bb.p:                                             ; preds = %bb.o, %bb.o
  %i.bp = add nsw i32 %i.bo, -3
  %i.bq = icmp ult i32 %i.bp, -2
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.sroa.04.0.i.i.i = phi i1 [ %i.bq, %bb.p ], [ true, %bb.o ]
  br label %bb.r

bb.r:                                             ; preds = %bb.q, %bb.o, %bb.o
  %i.br = phi i1 [ %.sroa.04.0.i.i.i, %bb.q ], [ false, %bb.o ], [ false, %bb.o ]
  call void @_ZN4anki13import_export7package5media14SafeMediaEntry24copy_and_ensure_sha1_set17h82ddae564779e80cE(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.k, ptr noalias noundef nonnull align 8 dereferenceable(64) %.sroa.0.0.i10.ph.i.i.i, ptr noalias noundef nonnull align 8 dereferenceable(16) %.sroa.7.0.copyload, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bm, i64 noundef %i.bn, ptr noalias noundef nonnull align 8 dereferenceable(65560) %.sroa.9.0.copyload, i1 noundef zeroext %i.br), !noalias !3628
  %i.bs = load i64, ptr %i.k, align 8, !range !36, !noalias !3628, !noundef !10 ; 2 uses
  %.not7.i.i.i = icmp eq i64 %i.bs, -9223372036854775773
  br i1 %.not7.i.i.i, label %bb.t, label %bb.s

bb.s:                                             ; preds = %bb.r
  %.sroa.8.0..sroa_idx61.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.0..sroa_idx61.i.i, i64 104, i1 false), !noalias !3626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3628
  br label %"_ZN4anki5media12MediaManager8transact28_$u7b$$u7b$closure$u7d$$u7d$17h2e444275779f1defE.exit.thread19.i"

bb.t:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !3628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  %i.bt = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10.ph.i.i.i, i64 36
  %.sroa.02.0.copyload.i.i.i = load i8, ptr %i.bt, align 4, !noalias !3628
  %i.bu = trunc nuw i8 %.sroa.02.0.copyload.i.i.i to i1
  br i1 %i.bu, label %bb.u, label %bb.ah, !prof !11

bb.u:                                             ; preds = %bb.t
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i10.ph.i.i.i, i64 37
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %i.i, ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i, i64 20, i1 false), !noalias !3628
  call void @llvm.experimental.noalias.scope.decl(metadata !3635)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !3636
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17he0bc0e0b0b5c0846E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.0.0.i10.ph.i.i.i), !noalias !3637
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !3636
  %i.bv = load ptr, ptr %i.as, align 8, !noalias !3636, !nonnull !10, !noundef !10
  %i.bw = load i64, ptr %i.at, align 8, !noalias !3636, !noundef !10
  invoke void @_ZN3std4path4Path4join17h8c81efceb1fc5784E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bv, i64 noundef %i.bw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g)
          to label %bb.w unwind label %bb.v, !noalias !3637

bb.v:                                             ; preds = %bb.w, %bb.u
  %i.bx = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g) #52
          to label %common.resume.i unwind label %bb.ag, !noalias !3637

bb.w:                                             ; preds = %bb.u
  %i.by = invoke { i64, ptr } @_ZN4anki5media5files12mtime_as_i6417h45d1ea4ed6d04904E(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f)
          to label %bb.x unwind label %bb.v, !noalias !3637 ; 2 uses

bb.x:                                             ; preds = %bb.w
  %i.bz = extractvalue { i64, ptr } %i.by, 0
  %i.ca = extractvalue { i64, ptr } %i.by, 1      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !3636
  %i.cb = trunc nuw i64 %i.bz to i1
  br i1 %i.cb, label %bb.y, label %bb.ab

bb.y:                                             ; preds = %bb.x
  store i64 0, ptr %.sroa.46.0..sroa_idx.i.i.i.i, align 8, !alias.scope !3635, !noalias !3628
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.46.sroa.0.sroa.0.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3635, !noalias !3628
  store i64 0, ptr %.sroa.46.sroa.0.sroa.0.sroa.5.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3635, !noalias !3628
  store i64 -9223372036854775795, ptr %.sroa.46.sroa.0.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3635, !noalias !3628
  store ptr %i.ca, ptr %.sroa.46.sroa.4.0..sroa.46.0..sroa_idx.sroa_idx.i.i.i.i, align 8, !alias.scope !3635, !noalias !3628
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..apkg..import..Context$GT$10copy_media28_$u7b$$u7b$closure$u7d$$u7d$17hbb5e64b54e83965fE.exit.i.i" unwind label %bb.z, !noalias !3637

bb.z:                                             ; preds = %bb.y
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g)
          to label %common.resume.i unwind label %bb.aa, !noalias !3637

bb.aa:                                            ; preds = %bb.z
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !3637
  unreachable

common.resume.i:                                  ; preds = %bb.ar, %bb.aq, %bb.ae, %bb.ac, %bb.z, %bb.v
  %common.resume.op.i = phi { ptr, i32 } [ %i.bx, %bb.v ], [ %i.cg, %bb.ae ], [ %i.cc, %bb.z ], [ %i.cf, %bb.ac ], [ %.pn.i, %bb.aq ], [ %.pn.i, %bb.ar ]
  resume { ptr, i32 } %common.resume.op.i

bb.ab:                                            ; preds = %bb.x
  %i.ce = ptrtoint ptr %i.ca to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !3636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !3636
  store i8 1, ptr %i.av, align 8, !noalias !3636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(20) %.sroa.4.0..sroa_idx.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(20) %i.i, i64 20, i1 false), !noalias !3638
  store i64 %i.ce, ptr %i.aw, align 8, !noalias !3636
  store i8 1, ptr %i.ax, align 1, !noalias !3636
  invoke void @_ZN4anki4sync5media8database6client13MediaDatabase9set_entry17h1152d9f1105c7527E(ptr noalias noundef nonnull sret([112 x i8]) align 8 captures(address) dereferenceable(112) %i.j, ptr noundef nonnull align 8 %i.au, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.e)
          to label %bb.ad unwind label %bb.ac, !noalias !3639

bb.ac:                                            ; preds = %bb.ab
  %i.cf = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$anki..sync..media..database..client..MediaEntry$GT$17h9699a2eb64dfa2e8E"(ptr noalias noundef align 8 dereferenceable(56) %i.e) #52
          to label %common.resume.i unwind label %bb.ag, !noalias !3637

bb.ad:                                            ; preds = %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3636
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %_ZN4anki5media12MediaManager9add_entry17h202a1d7c10f9ed7cE.exit.i.i.i unwind label %bb.ae, !noalias !3637

bb.ae:                                            ; preds = %bb.ad
  %i.cg = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e)
          to label %common.resume.i unwind label %bb.af, !noalias !3637

bb.af:                                            ; preds = %bb.ae
  %i.ch = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !3637
  unreachable

bb.ag:                                            ; preds = %bb.ac, %bb.v
  %i.ci = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51, !noalias !3637
  unreachable

_ZN4anki5media12MediaManager9add_entry17h202a1d7c10f9ed7cE.exit.i.i.i: ; preds = %bb.ad
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.e), !noalias !3637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !3636
  %.pre.i.i.i = load i64, ptr %i.j, align 8, !noalias !3640 ; 2 uses
  %i.cj = icmp eq i64 %.pre.i.i.i, -9223372036854775773
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br i1 %i.cj, label %bb.ai, label %"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..apkg..import..Context$GT$10copy_media28_$u7b$$u7b$closure$u7d$$u7d$17hbb5e64b54e83965fE.exit.thread74.i.i"

"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..apkg..import..Context$GT$10copy_media28_$u7b$$u7b$closure$u7d$$u7d$17hbb5e64b54e83965fE.exit.thread74.i.i": ; preds = %_ZN4anki5media12MediaManager9add_entry17h202a1d7c10f9ed7cE.exit.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.46.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !3626
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3628
  br label %"_ZN4anki5media12MediaManager8transact28_$u7b$$u7b$closure$u7d$$u7d$17h2e444275779f1defE.exit.thread19.i"

bb.ah:                                            ; preds = %bb.t
  call void @_ZN4core6option13unwrap_failed17h02f41afc018838f2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @50) #50, !noalias !3628
  unreachable

bb.ai:                                            ; preds = %_ZN4anki5media12MediaManager9add_entry17h202a1d7c10f9ed7cE.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !3628
  br label %bb.f

"_ZN4anki13import_export7package4apkg6import5media69_$LT$impl$u20$anki..import_export..package..apkg..import..Context$GT$10copy_media28_$u7b$$u7b$closure$u7d$$u7d$17hbb5e64b54e83965fE.exit.i.i": ; preds = %bb.y
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.g), !noalias !3637
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !3636
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.8.i.i, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.46.0..sroa_idx.i.i.i.i, i64 104, i1 false), !noalias !3626
end_hunk_1
begin_hunk_2_@"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18write_body_and_end17h721840cc02c1c3adE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr %i.k, ptr %i.h, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr @"_ZN68_$LT$hyper..proto..h1..conn..Writing$u20$as$u20$core..fmt..Debug$GT$3fmt17h5c8e8c698a071afaE", ptr %.sroa.47.0..sroa_idx, align 8
  store ptr @433, ptr %i.i, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 1, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr null, ptr %i.aq, align 8
  %i.ar = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %i.h, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 1, ptr %i.as, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @448) #50
          to label %bb.o unwind label %bb.p

bb.i:                                             ; preds = %.noexc13, %.noexc12, %.noexc11, %.noexc10, %.noexc
  %.sroa.0.0.i = phi i8 [ %i.aa, %.noexc10 ], [ 0, %.noexc11 ], [ %i.ad, %.noexc12 ], [ %i.ah, %.noexc13 ], [ 0, %.noexc ]
  %i.at = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %. = select i1 %i.at, i64 -9223372036854775803, i64 -9223372036854775802 ; 2 uses
  %i.au = load i64, ptr %i.k, align 8, !range !54, !alias.scope !7936, !noundef !10 ; 4 uses
  %i.av = icmp ne i64 %i.au, -9223372036854775804
  call void @llvm.assume(i1 %i.av)
  %i.aw = icmp ult i64 %i.au, -9223372036854775805
  br i1 %i.aw, label %bb.j, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit"

bb.j:                                             ; preds = %bb.i
  %i.ax = call i64 @llvm.umax.i64(i64 %i.au, i64 -9223372036854775808)
  %i.ay = and i64 %i.ax, 9223372036854775807
  %i.az = icmp ne i64 %i.ay, 0
  %i.ba = icmp eq i64 %i.au, -9223372036854775808
  %or.cond.i.i.i = or i1 %i.ba, %i.az
  br i1 %or.cond.i.i.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h7749e95d960ff0c9E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i" unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.bb = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h72c80b8a3c7bb176E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %.thread unwind label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i": ; preds = %bb.k
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h72c80b8a3c7bb176E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.k)
          to label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit" unwind label %bb.n

bb.n:                                             ; preds = %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i"
  %i.bd = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.thread:                                          ; preds = %bb.n, %bb.l
  %eh.lpad-body15 = phi { ptr, i32 } [ %i.bd, %bb.n ], [ %i.bb, %bb.l ]
  store i64 %., ptr %i.k, align 8
  br label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit"

"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Writing$GT$17h6e5198c414679bceE.exit": ; preds = %bb.j, %bb.i, %"_ZN4core3ptr76drop_in_place$LT$alloc..vec..Vec$LT$http..header..value..HeaderValue$GT$$GT$17hc3860b50130f3af5E.exit.i.i.i.i"
  store i64 %., ptr %i.k, align 8
  ret void

bb.o:                                             ; preds = %bb.h
  unreachable

"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit": ; preds = %bb.f, %bb.p, %.thread
  %.pn20 = phi { ptr, i32 } [ %eh.lpad-body15, %.thread ], [ %lpad.thr_comm.split-lp, %bb.p ], [ %lpad.thr_comm.split-lp.i, %bb.f ]
  resume { ptr, i32 } %.pn20

bb.p:                                             ; preds = %bb.h
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !7937)
  call void @llvm.experimental.noalias.scope.decl(metadata !7938)
  %i.be = load ptr, ptr %1, align 8, !alias.scope !7939, !nonnull !10, !align !13, !noundef !10
  %i.bf = getelementptr inbounds nuw i8, ptr %i.be, i64 32
  %i.bg = load ptr, ptr %i.bf, align 8, !noalias !7939, !nonnull !10, !noundef !10
  %i.bh = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bj = load ptr, ptr %i.bi, align 8, !alias.scope !7939, !noundef !10
  %i.bk = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !alias.scope !7939, !noundef !10
  invoke void %i.bg(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.bh, ptr noundef %i.bj, i64 noundef %i.bl)
          to label %"_ZN4core3ptr40drop_in_place$LT$bytes..bytes..Bytes$GT$17h59728a6e19de4e8eE.exit" unwind label %bb.q, !inline_history !5

bb.q:                                             ; preds = %bb.p
  %i.bm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$20poll_read_keep_alive17hd18a3cb1c13e3ebdE"(ptr noalias noundef align 8 dereferenceable(608) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 352
  %i.b = load i64, ptr %i.a, align 8, !range !34, !noundef !10
  switch i64 %i.b, label %bb.o [
    i64 4, label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"
    i64 0, label %bb.b
  ]

"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit": ; preds = %bb.v, %bb.u, %bb.t, %bb.p, %bb.o, %bb.l, %bb.k, %bb.i, %bb.h, %bb.d, %bb.a
  %.sroa.4.0 = phi ptr [ undef, %bb.a ], [ undef, %bb.d ], [ %i.q, %bb.h ], [ null, %bb.k ], [ %i.u, %bb.l ], [ %i.r, %bb.i ], [ null, %bb.u ], [ %i.aj, %bb.v ], [ undef, %bb.o ], [ %i.ah, %bb.t ], [ undef, %bb.p ]
  %.sroa.0.0 = phi i64 [ 1, %bb.a ], [ 1, %bb.d ], [ 0, %bb.h ], [ 0, %bb.k ], [ 0, %bb.l ], [ 0, %bb.i ], [ 0, %bb.u ], [ 0, %bb.v ], [ 1, %bb.o ], [ 0, %bb.t ], [ 1, %bb.p ]
  %i.c = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.d = insertvalue { i64, ptr } %i.c, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.d

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 456
  %i.f = load i64, ptr %i.e, align 8, !range !54, !noundef !10 ; 2 uses
  %i.g = icmp ne i64 %i.f, -9223372036854775804
  tail call void @llvm.assume(i1 %i.g)
  %.not = icmp eq i64 %i.f, -9223372036854775805
  br i1 %.not, label %bb.c, label %bb.o

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7945)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !7945, !noundef !10
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.k = tail call { i64, ptr } @"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$17poll_read_from_io17haebb0d014dad9e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.l = extractvalue { i64, ptr } %i.k, 0
  %i.m = extractvalue { i64, ptr } %i.k, 1        ; 4 uses
  switch i64 %i.l, label %bb.e [
    i64 2, label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"
    i64 0, label %bb.j
  ]

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 224
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.m) ]
  invoke void @_ZN5hyper5proto2h14conn5State5close17hff05d71fb30e1ec2E(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.n)
          to label %bb.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.m) #52
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

common.resume:                                    ; preds = %bb.r, %bb.f, %bb.m
  %common.resume.op = phi { ptr, i32 } [ %i.v, %bb.m ], [ %i.o, %bb.f ], [ %i.af, %bb.r ]
  resume { ptr, i32 } %common.resume.op

bb.h:                                             ; preds = %bb.c
  %i.q = tail call noundef nonnull align 8 ptr @_ZN5hyper5error5Error22new_unexpected_message17h606757111ba0ad6dE(), !noalias !7946
  br label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"

bb.i:                                             ; preds = %bb.e
  %i.r = tail call noundef nonnull align 8 ptr @_ZN5hyper5error5Error6new_io17h810ef30f4006f5aaE(ptr noundef nonnull %i.m)
  br label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"

bb.j:                                             ; preds = %bb.d
  %i.s = icmp eq ptr %i.m, null
  br i1 %i.s, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 224
  invoke void @_ZN5hyper5proto2h14conn5State10close_read17hfbe5d7f8877e0cc6E(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.t)
          to label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit" unwind label %bb.m

bb.l:                                             ; preds = %bb.j
  %i.u = tail call noundef nonnull align 8 ptr @_ZN5hyper5error5Error22new_unexpected_message17h606757111ba0ad6dE()
  br label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"

bb.m:                                             ; preds = %bb.k
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr109drop_in_place$LT$core..task..poll..Poll$LT$core..result..Result$LT$$LP$$RP$$C$hyper..error..Error$GT$$GT$$GT$17h4554f4c004cada02E"(i64 0, ptr null) #52
          to label %common.resume unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.o:                                             ; preds = %bb.a, %bb.b
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 584
  %i.z = load i8, ptr %i.y, align 8, !range !21, !alias.scope !7947, !noundef !10
  %2 = trunc nuw i8 %i.z to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7947
  %3 = icmp ne i64 %i.ab, 0
  %or.cond.not.i = select i1 %2, i1 true, i1 %3
  br i1 %or.cond.not.i, label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit", label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ac = tail call { i64, ptr } @"_ZN5hyper5proto2h12io21Buffered$LT$T$C$B$GT$17poll_read_from_io17haebb0d014dad9e3dE"(ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1) ; 2 uses
  %i.ad = extractvalue { i64, ptr } %i.ac, 0
  %i.ae = extractvalue { i64, ptr } %i.ac, 1      ; 4 uses
  switch i64 %i.ad, label %bb.q [
    i64 2, label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"
    i64 0, label %bb.u
  ]

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ae) ]
  invoke void @_ZN5hyper5proto2h14conn5State5close17hff05d71fb30e1ec2E(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.x)
          to label %bb.t unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.af = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h4aee05bfb97e0e2dE"(ptr nonnull %i.ae) #52
          to label %common.resume unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.ag = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #51
  unreachable

bb.t:                                             ; preds = %bb.q
  %i.ah = tail call noundef nonnull align 8 ptr @_ZN5hyper5error5Error6new_io17h810ef30f4006f5aaE(ptr noundef nonnull %i.ae)
  br label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"

bb.u:                                             ; preds = %bb.p
  %i.ai = icmp eq ptr %i.ae, null
  br i1 %i.ai, label %bb.v, label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"

bb.v:                                             ; preds = %bb.u
  tail call void @_ZN5hyper5proto2h14conn5State10close_read17hfbe5d7f8877e0cc6E(ptr noalias noundef nonnull align 8 dereferenceable(384) %i.x)
  %i.aj = tail call noundef nonnull align 8 ptr @_ZN5hyper5error5Error14new_incomplete17h39419e4352c87ad9E()
  br label %"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$18require_empty_read17hce41a5a9d3d8b02dE.exit"
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$24poll_drain_or_close_read17h754a18c6ab5341a2E"(ptr noalias noundef align 8 dereferenceable(608) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 3 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.15 = alloca [7 x i8], align 1            ; 3 uses
  %i.c = alloca [96 x i8], align 8                ; 10 uses
  %.sroa.5.sroa.11 = alloca [24 x i8], align 8    ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 352 ; 5 uses
  %i.f = load i64, ptr %i.e, align 8, !range !34, !noundef !10
  %i.g = icmp eq i64 %i.f, 1
  br i1 %i.g, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.sroa.11)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 360 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7976)
  %i.i = load i64, ptr %i.h, align 8, !range !34, !alias.scope !7977, !noundef !10 ; 5 uses
  %i.j = icmp ne i64 %i.i, 3
  tail call void @llvm.assume(i1 %i.j)
  %i.k = icmp samesign ult i64 %i.i, 2
  br i1 %i.k, label %bb.c, label %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.m = load i8, ptr %i.l, align 8, !range !57, !alias.scope !7977, !noundef !10 ; 4 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.o = load <2 x i64>, ptr %i.n, align 8, !alias.scope !7977 ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !7977, !noundef !10
  %.not.i = icmp eq ptr %i.q, null
  br i1 %.not.i, label %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit", label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @"_ZN65_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..clone..Clone$GT$5clone17h11acd26b1a3e7636E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.p)
  %.sroa.0.0.copyload.i = load ptr, ptr %i.a, align 8
  %.pre.pre = load i64, ptr %i.e, align 8, !range !34, !alias.scope !7978
  br label %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit"

"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread": ; preds = %bb.b
  %.sroa.6.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %0, i64 368
  %.sroa.6.0.copyload10 = load i64, ptr %.sroa.6.0..sroa_idx9, align 8, !alias.scope !7979
  %.sroa.7.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %0, i64 376
  %.sroa.7.0.copyload14 = load i64, ptr %.sroa.7.0..sroa_idx13, align 8, !alias.scope !7979
  %.sroa.8.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %0, i64 384
  %.sroa.8.0.copyload18 = load i64, ptr %.sroa.8.0..sroa_idx17, align 8, !alias.scope !7979
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %0, i64 392
  %i.r = load <2 x i64>, ptr %.sroa.9.0..sroa_idx21, align 8, !alias.scope !7979
  %.sroa.11.0..sroa_idx29 = getelementptr inbounds nuw i8, ptr %0, i64 408
  %.sroa.11.0.copyload30 = load ptr, ptr %.sroa.11.0..sroa_idx29, align 8, !alias.scope !7979
  %.sroa.12.0..sroa_idx32 = getelementptr inbounds nuw i8, ptr %0, i64 416
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.12.0..sroa_idx32, i64 24, i1 false)
  %.sroa.13.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %0, i64 440
  %.sroa.13.0.copyload36 = load i64, ptr %.sroa.13.0..sroa_idx35, align 8, !alias.scope !7979
  %.sroa.14.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %0, i64 448
  %.sroa.14.0.copyload40 = load i8, ptr %.sroa.14.0..sroa_idx39, align 8, !alias.scope !7979
  %.sroa.15.0..sroa_idx42 = getelementptr inbounds nuw i8, ptr %0, i64 449
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.15.0..sroa_idx42, i64 7, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  br label %bb.e

"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit": ; preds = %bb.c, %bb.d
  %.pre = phi i64 [ %.pre.pre, %bb.d ], [ 1, %bb.c ]
  %.sroa.0.0.i = phi ptr [ %.sroa.0.0.copyload.i, %bb.d ], [ null, %bb.c ] ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 440
  %i.t = load i64, ptr %i.s, align 8, !alias.scope !7977, !noundef !10 ; 4 uses
  %i.u = trunc nuw i64 %i.i to i1
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 368
  %i.w = load i64, ptr %i.v, align 8, !alias.scope !7977
  %.sroa.54.0.i = select i1 %i.u, i64 %i.w, i64 undef ; 4 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 376
  %i.y = load i64, ptr %i.x, align 8, !range !12, !alias.scope !7977, !noundef !10 ; 5 uses
  %i.z = trunc nuw i64 %i.y to i1
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 384
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !7977
  %.sroa.56.0.i = select i1 %i.z, i64 %i.ab, i64 undef ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.11, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  switch i64 %.pre, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit" [
    i64 1, label %bb.e
    i64 2, label %bb.f
  ]

"_ZN4core3ptr54drop_in_place$LT$hyper..proto..h1..decode..Decoder$GT$17h7097f3ce2ff179ffE.exit.sink.split.i": ; preds = %bb.f, %bb.e
  %.sroa.6.0102 = phi i64 [ %.sroa.6.0103, %bb.e ], [ %.sroa.54.0.i, %bb.f ] ; 2 uses
  %.sroa.7.099 = phi i64 [ %.sroa.7.0100, %bb.e ], [ %i.y, %bb.f ] ; 2 uses
  %.sroa.8.096 = phi i64 [ %.sroa.8.097, %bb.e ], [ %.sroa.56.0.i, %bb.f ] ; 2 uses
  %.sroa.11.087 = phi ptr [ %.sroa.11.088, %bb.e ], [ %.sroa.0.0.i, %bb.f ] ; 2 uses
  %.sroa.13.084 = phi i64 [ %.sroa.13.085, %bb.e ], [ %i.t, %bb.f ] ; 2 uses
  %.sroa.14.081 = phi i8 [ %.sroa.14.082, %bb.e ], [ %i.m, %bb.f ] ; 2 uses
  %.sink.i = phi ptr [ %i.ah, %bb.e ], [ %i.an, %bb.f ]
  %i.ac = phi <2 x i64> [ %i.ad, %bb.e ], [ %i.o, %bb.f ] ; 3 uses
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hfc735800a8665824E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %.sink.i)
          to label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit" unwind label %bb.n

bb.e:                                             ; preds = %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread", %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit"
  %.sroa.6.0103 = phi i64 [ %.sroa.6.0.copyload10, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %.sroa.54.0.i, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %.sroa.7.0100 = phi i64 [ %.sroa.7.0.copyload14, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %i.y, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %.sroa.8.097 = phi i64 [ %.sroa.8.0.copyload18, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %.sroa.56.0.i, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %.sroa.11.088 = phi ptr [ %.sroa.11.0.copyload30, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %.sroa.0.0.i, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %.sroa.13.085 = phi i64 [ %.sroa.13.0.copyload36, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %i.t, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %.sroa.14.082 = phi i8 [ %.sroa.14.0.copyload40, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %i.m, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %i.ad = phi <2 x i64> [ %i.r, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit.thread" ], [ %i.o, %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit" ] ; 2 uses
  %i.ae = load i64, ptr %i.h, align 8, !range !34, !alias.scope !7980, !noundef !10 ; 2 uses
  %i.af = icmp ne i64 %i.ae, 3
  call void @llvm.assume(i1 %i.af)
  %i.ag = icmp samesign ugt i64 %i.ae, 1
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ai = load ptr, ptr %i.ah, align 8, !alias.scope !7978
  %i.aj = icmp eq ptr %i.ai, null
  %or.cond.i = select i1 %i.ag, i1 true, i1 %i.aj
  br i1 %or.cond.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit", label %"_ZN4core3ptr54drop_in_place$LT$hyper..proto..h1..decode..Decoder$GT$17h7097f3ce2ff179ffE.exit.sink.split.i"

bb.f:                                             ; preds = %"_ZN69_$LT$hyper..proto..h1..decode..Kind$u20$as$u20$core..clone..Clone$GT$5clone17hfb868286b587b3d0E.exit"
  %i.ak = load i64, ptr %i.h, align 8, !range !34, !alias.scope !7981, !noundef !10 ; 2 uses
  %i.al = icmp ne i64 %i.ak, 3
  call void @llvm.assume(i1 %i.al)
  %i.am = icmp samesign ugt i64 %i.ak, 1
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.ao = load ptr, ptr %i.an, align 8, !alias.scope !7978
  %i.ap = icmp eq ptr %i.ao, null
  %or.cond6.i = select i1 %i.am, i1 true, i1 %i.ap
  br i1 %or.cond6.i, label %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit", label %"_ZN4core3ptr54drop_in_place$LT$hyper..proto..h1..decode..Decoder$GT$17h7097f3ce2ff179ffE.exit.sink.split.i"

bb.g:                                             ; preds = %"_ZN4core3ptr52drop_in_place$LT$hyper..proto..h1..conn..Reading$GT$17ha8d1ddc3836f2c47E.exit", %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @"_ZN5hyper5proto2h14conn21Conn$LT$I$C$B$C$T$GT$14poll_read_body17hb5a6f6f084e037f2E"(ptr noalias noundef nonnull sret([96 x i8]) align 8 captures(address) dereferenceable(96) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(608) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  call void @llvm.experimental.noalias.scope.decl(metadata !7982)
  %i.aq = load i64, ptr %i.c, align 8, !range !30, !alias.scope !7982, !noundef !10 ; 4 uses
  %.not.i4 = icmp eq i64 %i.aq, 6
  br i1 %.not.i4, label %"_ZN4core3ptr181drop_in_place$LT$core..task..poll..Poll$LT$core..option..Option$LT$core..result..Result$LT$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$C$std..io..error..Error$GT$$GT$$GT$$GT$17h0ee2c6e18115f666E.exit", label %bb.h

bb.h:                                             ; preds = %bb.g
  call void @llvm.experimental.noalias.scope.decl(metadata !7983)
  %i.ar = icmp eq i64 %i.aq, 5
  br i1 %i.ar, label %"_ZN4core3ptr181drop_in_place$LT$core..task..poll..Poll$LT$core..option..Option$LT$core..result..Result$LT$http_body..frame..Frame$LT$bytes..bytes..Bytes$GT$$C$std..io..error..Error$GT$$GT$$GT$$GT$17h0ee2c6e18115f666E.exit", label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.experimental.noalias.scope.decl(metadata !7984)
  %.not.i.i.i = icmp eq i64 %i.aq, 4
  br i1 %.not.i.i.i, label %bb.m, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !7985)
  call void @llvm.experimental.noalias.scope.decl(metadata !7986)
  %i.as = icmp eq i64 %i.aq, 3
  br i1 %i.as, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.experimental.noalias.scope.decl(metadata !7987)
  call void @llvm.experimental.noalias.scope.decl(metadata !7988)
  %i.au = load ptr, ptr %i.at, align 8, !alias.scope !7989, !nonnull !10, !align !13, !noundef !10
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 32
  %i.aw = load ptr, ptr %i.av, align 8, !noalias !7989, !nonnull !10, !noundef !10
  %i.ax = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ay = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !7989, !noundef !10
  %i.ba = getelementptr inbounds nuw i8, ptr %i.c, i64 24
end_hunk_2
