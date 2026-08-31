Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/lindera_dictionary-259f0a99cb209a5b.lindera_dictionary.948ad8c3b843b31e-cgu.0?download=true
inline.NumInlined: 4519
inline.NumDeleted: 2001
loop-unroll.NumCompletelyUnrolled: 17
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 41
begin_hunk_0_@_ZN18lindera_dictionary10dictionary18unknown_dictionary17UnknownDictionary4load17h4b1400551000445aE:bb.a
  br label %.sink.split.i

"_ZN18lindera_dictionary10dictionary18unknown_dictionary1_127_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionary$GT$11deserialize17h1f2ee7adf467fdc0E.exit.i": ; preds = %bb.an
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.sroa.722.i.i.i.i, i64 16, i1 false), !noalias !1981
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !1981
  %.sroa.429.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 %.sroa.912.8.copyload13.i.i.i.i.i.i, ptr %.sroa.429.0..sroa_idx.i.i.i.i, align 8, !alias.scope !1982, !noalias !1981
  %.pr.pre.i = load i64, ptr %i.h, align 8, !noalias !1900 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.722.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i.i.i)
  %i.da = icmp eq i64 %.pr.pre.i, -9223372036854775808
  br i1 %i.da, label %bb.at, label %bb.au

.sink.split.i:                                    ; preds = %bb.as, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h5576a29eab8d2ab7E.exit.i.i.i.i.i", %bb.ak, %_ZN10serde_core2de9SeqAccess12next_element17hb74b1c01e1413820E.exit.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1915
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.722.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.7.i.i.i.i)
  br label %bb.at

bb.at:                                            ; preds = %"_ZN18lindera_dictionary10dictionary18unknown_dictionary1_127_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionary$GT$11deserialize17h1f2ee7adf467fdc0E.exit.i", %.sink.split.i
  %i.db = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %i.db, i64 32, i1 false), !noalias !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %i.dc = call fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h8dfe463becce19c6E"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(32) %.sroa.5)
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.dc, ptr %i.dd, align 8
  %i.de = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 3, ptr %i.de, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.av

bb.au:                                            ; preds = %"_ZN18lindera_dictionary10dictionary18unknown_dictionary1_127_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionary$GT$11deserialize17h1f2ee7adf467fdc0E.exit.i"
  %.sroa.512.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.512.0..sroa_idx.i, i64 32, i1 false), !noalias !1900
  %.sroa.613.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  %.sroa.613.0.copyload.i = load i64, ptr %.sroa.613.0..sroa_idx.i, align 8, !noalias !1900
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !1900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6.i, i64 32, i1 false), !noalias !1897
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1900
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.6, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6)
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.56.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(32) %.sroa.5, i64 32, i1 false)
  store i64 %.pr.pre.i, ptr %0, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.613.0.copyload.i, ptr %.sroa.6.0..sroa_idx, align 8
  br label %bb.av

bb.av:                                            ; preds = %bb.au, %bb.at
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_ZN18lindera_dictionary10dictionary18unknown_dictionary9parse_unk17h28e043b3653d2519E(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias noundef nonnull readonly align 8 captures(none) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %3, i64 noundef %4, i64 noundef %5) unnamed_addr #2 personality ptr @rust_eh_personality {
.lr.ph:
  %i.a = alloca [0 x i8], align 1
  %i.b = alloca [48 x i8], align 8                ; 8 uses
  %i.c = alloca [32 x i8], align 8                ; 7 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [8 x i8], align 8                 ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 24 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [128 x i8], align 8               ; 19 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [8 x i8], align 8                 ; 5 uses
  %i.l = alloca [24 x i8], align 8                ; 9 uses
  %i.m = alloca [24 x i8], align 8                ; 12 uses
  %i.n = alloca [24 x i8], align 8                ; 6 uses
  %i.o = alloca [72 x i8], align 8                ; 17 uses
  %i.p = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 4 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 5 uses
  store i64 0, ptr %i.r, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %4, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %3, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i64 %4, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store i64 %4, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store i32 10, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 10, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.425.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.425.0..sroa_idx, align 8
  %.sroa.526.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.526.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  %i.t = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %i.w = getelementptr inbounds nuw i8, ptr %i.g, i64 48 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %i.y = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.not.i131 = icmp eq i64 %5, 2
  %i.aa = icmp ugt i64 %5, 2
  %.not54.i = icmp eq i64 %5, 3
  %.sroa.6.0..sroa_idx951 = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %.sroa.7.0..sroa_idx952 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.12.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 52
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  %.sroa.16954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  %.sroa.17.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 65
  br label %bb.a

.body:                                            ; preds = %.loopexit191, %.loopexit.split-lp.loopexit.split-lp, %.loopexit.split-lp.loopexit, %.body56, %bb.bu, %.body81, %bb.ag, %bb.ah, %.body.i.i.i.i.i
  %.pn = phi { ptr, i32 } [ %eh.lpad-body57, %.body56 ], [ %lpad.phi.i.i.i.i, %bb.ag ], [ %eh.lpad-body.i.i.i.i.i.i.i.i.i.i, %.body.i.i.i.i.i ], [ %eh.lpad-body82, %bb.bu ], [ %lpad.phi.i.i.i.i, %bb.ah ], [ %eh.lpad-body82, %.body81 ], [ %lpad.loopexit, %.loopexit191 ], [ %lpad.loopexit193, %.loopexit.split-lp.loopexit ], [ %lpad.loopexit.split-lp194, %.loopexit.split-lp.loopexit.split-lp ]
  call fastcc void @"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE"(ptr noalias noundef align 8 dereferenceable(24) %i.p) #48
  resume { ptr, i32 } %.pn

.loopexit191:                                     ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit:                      ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit193 = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.loopexit.split-lp:             ; preds = %.invoke
  %lpad.loopexit.split-lp194 = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.a:                                             ; preds = %.lr.ph, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83"
  %i.ab = phi i64 [ 0, %.lr.ph ], [ %i.oh, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83" ]
  %i.ac = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.of, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83" ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2246)
  %.val.i = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2246, !nonnull !6, !align !44, !noundef !6 ; 3 uses
  %.val1.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !2246, !noundef !6 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2249)
  %i.ad = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !2252, !noalias !2253, !noundef !6 ; 8 uses
  %.promoted.i.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !2252, !noalias !2253 ; 2 uses
  %i.ae = icmp ult i64 %i.ad, %.promoted.i.i
  br i1 %i.ae, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %.not.i.i = icmp ugt i64 %i.ad, %.val1.i
  %i.af = load i8, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !2252, !noalias !2253 ; 2 uses
  %i.ag = zext nneg i8 %i.af to i64               ; 4 uses
  %i.ah = icmp ult i8 %i.af, 5
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.ai = getelementptr i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.ag
  %i.aj = getelementptr i8, ptr %i.ai, i64 -1
  tail call void @llvm.assume(i1 %i.ah)
  %.pre.i.i = load i8, ptr %i.aj, align 1, !alias.scope !2252, !noalias !2253 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %bb.d, %.lr.ph.split.i.i
  %i.ak = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.i ], [ %i.ax, %bb.d ] ; 4 uses
  %i.al = sub nuw i64 %i.ad, %i.ak                ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ak ; 2 uses
  %i.an = icmp ult i64 %i.al, 16
  br i1 %i.an, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.b
  %.not.i.i.i = icmp eq i64 %i.ad, %i.ak
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.c
  %.sroa.01.05.i.i.i = phi i64 [ %i.ar, %bb.c ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.am, i64 %.sroa.01.05.i.i.i
  %i.ap = load i8, ptr %i.ao, align 1, !alias.scope !2255, !noalias !2258, !noundef !6
  %i.aq = icmp eq i8 %i.ap, %.pre.i.i
  br i1 %i.aq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i.i.i
  %i.ar = add nuw i64 %.sroa.01.05.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.ar, %i.al
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.b
  %i.as = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.am, i64 noundef %i.al)
          to label %.noexc unwind label %.loopexit.split-lp.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.at = extractvalue { i64, i64 } %i.as, 0
  %i.au = extractvalue { i64, i64 } %i.as, 1
  %i.av = trunc nuw i64 %i.at to i1
  br i1 %i.av, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i = phi i64 [ %i.au, %.noexc ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %i.aw = add i64 %i.ak, 1
  %i.ax = add i64 %i.aw, %.sroa.4.0.i27.i.i       ; 9 uses
  %.not20.i.i = icmp ult i64 %i.ax, %i.ag
  %.not21.i.i = icmp ugt i64 %i.ax, %.val1.i
  %or.cond.i.i = or i1 %.not20.i.i, %.not21.i.i
  br i1 %or.cond.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.e, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.ay = icmp ult i64 %i.ad, %i.ax
  br i1 %i.ay, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %bb.b

bb.e:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.az = sub nuw i64 %i.ax, %i.ag
  %i.ba = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.az
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.ba, ptr nonnull %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.ag), !noalias !2253
  %i.bb = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bb, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.d

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.e
  store i64 %i.ax, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.bc = load i64, ptr %i.o, align 8, !alias.scope !2246, !noundef !6 ; 2 uses
  %i.bd = sub nuw i64 %i.ax, %i.bc
  store i64 %i.ax, ptr %i.o, align 8, !alias.scope !2246
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split": ; preds = %bb.d, %.preheader.i.i.i, %.noexc, %bb.c
  %.sink831 = phi i64 [ %i.ad, %bb.c ], [ %i.ad, %.preheader.i.i.i ], [ %i.ad, %.noexc ], [ %i.ax, %bb.d ]
  store i64 %.sink831, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", %.lr.ph.i.i, %bb.a
  store i8 1, ptr %.sroa.526.0..sroa_idx, align 1, !alias.scope !2259
  %i.be = load i8, ptr %.sroa.425.0..sroa_idx, align 8, !range !1150, !alias.scope !2259, !noundef !6
  %i.bf = trunc nuw i8 %i.be to i1
  %.pre.i2.i = load i64, ptr %i.o, align 8, !alias.scope !2259 ; 3 uses
  %.pre2.i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2259 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.bf, i1 true, i1 %.not.i3.i
  %i.bg = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %._crit_edge

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.sroa.4.1.i = phi i64 [ %i.bd, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ %i.bg, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ] ; 4 uses
  %.pn175 = phi i64 [ %i.bc, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ %.pre.i2.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.pn175 ; 4 uses
  %i.bh = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.bi = insertvalue { ptr, i64 } %i.bh, i64 %.sroa.4.1.i, 1 ; 3 uses
  %.not.i.i.i50 = icmp eq i64 %.sroa.4.1.i, 0
  %.pre.i.i51 = add i64 %.sroa.4.1.i, -1          ; 3 uses
  br i1 %.not.i.i.i50, label %.lr.ph.split.i.i.i.i.i.i.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i": ; preds = %select.unfold
  %i.bj = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i.i51
  %rhsc.i = load i8, ptr %i.bj, align 1, !alias.scope !2262
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.bk = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.bk, label %bb.f, label %.lr.ph.split.i.i.i.i.i.i.i

bb.f:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i"
  %i.bl = insertvalue { ptr, i64 } %i.bi, i64 %.pre.i.i51, 1
  %.not.i.i10.i = icmp eq i64 %.pre.i.i51, 0
  %.pre.i11.i = add i64 %.sroa.4.1.i, -2          ; 2 uses
  br i1 %.not.i.i10.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i": ; preds = %bb.f
  %i.bm = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i11.i
  %rhsc4.i = load i8, ptr %i.bm, align 1, !alias.scope !2262
  %rhsc4.fr.i = freeze i8 %rhsc4.i
  %i.bn = icmp eq i8 %rhsc4.fr.i, 13
  %spec.select.i15.i = select i1 %i.bn, ptr %.sroa.0.1.i, ptr null
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i", %bb.f
  %i.bo = phi ptr [ %spec.select.i15.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i" ], [ null, %bb.f ] ; 2 uses
  %i.bp = insertvalue { ptr, i64 } poison, ptr %i.bo, 0
  %i.bq = insertvalue { ptr, i64 } %i.bp, i64 %.pre.i11.i, 1
  %.not9.i = icmp eq ptr %i.bo, null
  %..i = select i1 %.not9.i, { ptr, i64 } %i.bl, { ptr, i64 } %i.bq
  br label %.lr.ph.split.i.i.i.i.i.i.i

._crit_edge:                                      ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83"
  %i.br = phi i64 [ %i.oh, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83" ], [ %i.ab, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ] ; 3 uses
  %i.bs = phi ptr [ %i.of, %"_ZN4core3ptr51drop_in_place$LT$alloc..vec..Vec$LT$$RF$str$GT$$GT$17h818ca1b63095d917E.exit83" ], [ %i.ac, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2265)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2268)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2270
  %i.bt = icmp eq i64 %2, 0
  br i1 %i.bt, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfd1bcb0bb08acca6E.exit.i.i.thread.i.i.i.i.i", label %bb.g

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17hfd1bcb0bb08acca6E.exit.i.i.thread.i.i.i.i.i": ; preds = %._crit_edge
  store i64 0, ptr %i.m, align 8, !noalias !2270
  %i.bu = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.bu, align 8, !noalias !2270
  %i.bv = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  br label %.loopexit

bb.g:                                             ; preds = %._crit_edge
  %.idx.i = mul nuw nsw i64 %2, 24                ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !2284
  %i.bw = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.idx.i, i64 noundef range(i64 1, 9) 8) #47, !noalias !2284 ; 8 uses
  %i.bx = icmp eq ptr %i.bw, null
  br i1 %i.bx, label %.invoke, label %bb.h

bb.h:                                             ; preds = %bb.g
  store i64 %2, ptr %i.m, align 8, !noalias !2270
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.bw, ptr %i.by, align 8, !noalias !2270
  %i.bz = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2289)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2292)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %i.br, 40
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.cb = icmp eq i64 %i.br, 0
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16 ; 2 uses
  br i1 %i.cb, label %.split.us.i.i.i.i.i.i.i.i.i.i.preheader, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.preheader.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i.preheader:          ; preds = %bb.h
  %xtraiter = and i64 %2, 3                       ; 3 uses
  %i.cc = icmp ult i64 %2, 4
  br i1 %i.cc, label %.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader, label %.split.us.i.i.i.i.i.i.i.i.i.i.preheader.new

.split.us.i.i.i.i.i.i.i.i.i.i.preheader.new:      ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %2, -4
  br label %.split.us.i.i.i.i.i.i.i.i.i.i

.split.us.i.i.i.i.i.i.i.i.i.i:                    ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i.i.i.i.i.preheader.new
  %i.cd = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %i.cl, %.split.us.i.i.i.i.i.i.i.i.i.i ] ; 5 uses
  %niter = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.split.us.i.i.i.i.i.i.i.i.i.i ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  %i.ce = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cd ; 3 uses
  store i64 0, ptr %i.ce, align 8, !noalias !2298
  %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2298
  %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2298
  %i.cf = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cd ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 24
  store i64 0, ptr %i.cg, align 8, !noalias !2298
  %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 32
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !2298
  %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.cf, i64 40
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !2298
  %i.ch = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cd ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 48
  store i64 0, ptr %i.ci, align 8, !noalias !2298
  %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 56
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !2298
  %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ch, i64 64
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !2298
  %i.cj = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cd ; 3 uses
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 72
  store i64 0, ptr %i.ck, align 8, !noalias !2298
  %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cj, i64 80
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !2298
  %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.cj, i64 88
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !2298
  %i.cl = add nuw i64 %i.cd, 4                    ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.loopexit.thread.unr-lcssa, label %.split.us.i.i.i.i.i.i.i.i.i.i

.loopexit.thread.unr-lcssa:                       ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.loopexit.thread, label %.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader

.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader:     ; preds = %.loopexit.thread.unr-lcssa, %.split.us.i.i.i.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.cl, %.loopexit.thread.unr-lcssa ]
  %lcmp.mod949 = icmp ne i64 %xtraiter, 0
  tail call void @llvm.assume(i1 %lcmp.mod949)
  br label %.split.us.i.i.i.i.i.i.i.i.i.i.epil

.split.us.i.i.i.i.i.i.i.i.i.i.epil:               ; preds = %.split.us.i.i.i.i.i.i.i.i.i.i.epil, %.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader
  %i.cm = phi i64 [ %i.co, %.split.us.i.i.i.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.split.us.i.i.i.i.i.i.i.i.i.i.epil ], [ 0, %.split.us.i.i.i.i.i.i.i.i.i.i.epil.preheader ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2295)
  %i.cn = getelementptr inbounds nuw [24 x i8], ptr %i.bw, i64 %i.cm ; 3 uses
  store i64 0, ptr %i.cn, align 8, !noalias !2298
  %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cn, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %.sroa.4.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !2298
  %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.cn, i64 16
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.us.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !2298
  %i.co = add nuw i64 %i.cm, 1
end_hunk_0
begin_hunk_1_@_ZN18lindera_dictionary10dictionary18unknown_dictionary9parse_unk17h28e043b3653d2519E:.lr.ph
  br i1 %i.eo, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 4, i64 %i.el, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.noexc55 unwind label %bb.w

.noexc55:                                         ; preds = %bb.q
  unreachable

bb.r:                                             ; preds = %bb.p
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.ep = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.532.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.eq = getelementptr inbounds nuw i8, ptr %i.i, i64 80
  %.sroa.449.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 88
  %.sroa.550.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 96
  %.sroa.651.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 104
  %.sroa.752.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 112
  %.sroa.462.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.563.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.er = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.524.0..sroa_idx25.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.es = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  %i.et = getelementptr inbounds nuw i8, ptr %i.i, i64 76
  br label %bb.s

bb.s:                                             ; preds = %bb.v, %bb.r
  %.val20.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fl, %bb.v ], [ 0, %bb.r ] ; 3 uses
  %i.eu = getelementptr inbounds nuw [40 x i8], ptr %i.ej, i64 %.val20.i.i.i.i.i.i.i.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2397)
  call void @llvm.experimental.noalias.scope.decl(metadata !2400)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !2403
  store ptr %i.eu, ptr %i.k, align 8, !noalias !2415
  %i.ev = getelementptr inbounds nuw i8, ptr %i.eu, i64 24
  %i.ew = load i32, ptr %i.ev, align 8, !alias.scope !2417, !noalias !2418, !noundef !6 ; 4 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.eu, i64 28
  %i.ey = load i32, ptr %i.ex, align 4, !alias.scope !2417, !noalias !2418, !noundef !6 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ew, %i.ey
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.v, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.ez = load atomic i64, ptr @_ZN3log20MAX_LOG_LEVEL_FILTER17h390a9bab74993d26E monotonic, align 8, !noalias !2415 ; 2 uses
  %i.fa = icmp ult i64 %i.ez, 6
  call void @llvm.assume(i1 %i.fa)
  %i.fb = icmp samesign ugt i64 %i.ez, 1
  br i1 %i.fb, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2415
  store ptr %i.k, ptr %i.j, align 8, !noalias !2415
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17hdabb85a577546e90E", ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2415
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2419
  store i64 2, ptr %i.ep, align 8, !noalias !2419
  store ptr @95, ptr %.sroa.431.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 50, ptr %.sroa.532.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store ptr @93, ptr %i.eq, align 8, !noalias !2419
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store ptr %i.j, ptr %.sroa.550.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 0, ptr %i.i, align 8, !noalias !2419
  store ptr @95, ptr %.sroa.462.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 50, ptr %.sroa.563.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 0, ptr %i.er, align 8, !noalias !2419
  store ptr @94, ptr %.sroa.524.0..sroa_idx25.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i64 131, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2419
  store i32 1, ptr %i.es, align 8, !noalias !2419
  store i32 102, ptr %i.et, align 4, !noalias !2419
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.i)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i54 unwind label %.body.i.i.i.i.i53, !noalias !2426

.noexc.i.i.i.i.i.i.i.i.i.i54:                     ; preds = %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2419
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2415
  %.pre.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.k, align 8, !noalias !2415 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i, i64 24
  %.pre6.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !2418
  %.phi.trans.insert7.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i.i.i.i.i.i.i.i.i, i64 28
  %.pre8.i.i.i.i.i.i.i.i.i.i.i.i = load i32, ptr %.phi.trans.insert7.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !2418
  br label %bb.v

bb.v:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i54, %bb.t, %bb.s
  %i.fc = phi i32 [ %i.ey, %bb.t ], [ %.pre8.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i54 ], [ %i.ew, %bb.s ]
  %i.fd = phi i32 [ %i.ew, %bb.t ], [ %.pre6.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i54 ], [ %i.ew, %bb.s ]
  %i.fe = phi ptr [ %i.eu, %bb.t ], [ %.pre.i.i.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i.i.i54 ], [ %i.eu, %bb.s ]
  %i.ff = trunc i32 %i.fd to i16
  %i.fg = trunc i32 %i.fc to i16
  %i.fh = getelementptr inbounds nuw i8, ptr %i.fe, i64 32
  %i.fi = load i32, ptr %i.fh, align 8, !noalias !2418, !noundef !6
  %i.fj = trunc i32 %i.fi to i16
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2403
  %i.fk = getelementptr inbounds nuw [16 x i8], ptr %i.en, i64 %.val20.i.i.i.i.i.i.i.i.i.i ; 5 uses
  store i32 -1, ptr %i.fk, align 4, !noalias !2427
  %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 4
  store i8 1, ptr %.sroa.44.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !2427
  %.sroa.66.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 8
  store i16 %i.fj, ptr %.sroa.66.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !2427
  %.sroa.77.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 10
  store i16 %i.ff, ptr %.sroa.77.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 2, !noalias !2427
  %.sroa.88.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.fk, i64 12
  store i16 %i.fg, ptr %.sroa.88.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 4, !noalias !2427
  %i.fl = add nuw i64 %.val20.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.fm = icmp eq i64 %i.fl, %i.ei
  br i1 %i.fm, label %_ZN18lindera_dictionary10dictionary18unknown_dictionary16make_costs_array17h94ea19eec9d6942cE.exit, label %bb.s

.body.i.i.i.i.i53:                                ; preds = %bb.u
  %i.fn = landingpad { ptr, i32 }
          cleanup
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.en, i64 noundef %i.el, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !2432
  br label %.body56

bb.w:                                             ; preds = %bb.q
  %i.fo = landingpad { ptr, i32 }
          cleanup
  br label %.body56

.body56:                                          ; preds = %.body.i.i.i.i.i53, %bb.w
  %eh.lpad-body57 = phi { ptr, i32 } [ %i.fo, %bb.w ], [ %i.fn, %.body.i.i.i.i.i53 ]
  call fastcc void @"_ZN4core3ptr70drop_in_place$LT$alloc..vec..Vec$LT$alloc..vec..Vec$LT$u32$GT$$GT$$GT$17h21d473d2a66ac637E"(ptr noalias noundef align 8 dereferenceable(24) %i.n) #48
  br label %.body

_ZN18lindera_dictionary10dictionary18unknown_dictionary16make_costs_array17h94ea19eec9d6942cE.exit: ; preds = %bb.v, %.loopexit.thread, %.loopexit
  %i.fp = phi i1 [ true, %.loopexit ], [ true, %.loopexit.thread ], [ false, %bb.v ]
  %i.fq = phi ptr [ %i.ej, %.loopexit ], [ %i.bs, %.loopexit.thread ], [ %i.ej, %bb.v ] ; 2 uses
  %i.fr = phi i64 [ 0, %.loopexit ], [ 0, %.loopexit.thread ], [ %i.ei, %bb.v ] ; 3 uses
  %.sroa.10.0.i12.i.i.i.i.i = phi ptr [ inttoptr (i64 4 to ptr), %.loopexit ], [ inttoptr (i64 4 to ptr), %.loopexit.thread ], [ %i.en, %bb.v ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.fr, ptr %.sroa.4106.0..sroa_idx, align 8
  %.sroa.5107.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i12.i.i.i.i.i, ptr %.sroa.5107.0..sroa_idx, align 8
  %.sroa.6108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %i.fr, ptr %.sroa.6108.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.experimental.noalias.scope.decl(metadata !2433)
  call void @llvm.experimental.noalias.scope.decl(metadata !2436)
  br i1 %i.fp, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i", label %.lr.ph.i.i.i60

.lr.ph.i.i.i60:                                   ; preds = %_ZN18lindera_dictionary10dictionary18unknown_dictionary16make_costs_array17h94ea19eec9d6942cE.exit, %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i"
  %.sroa.0.011.i.i.i = phi i64 [ %i.ft, %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i" ], [ 0, %_ZN18lindera_dictionary10dictionary18unknown_dictionary16make_costs_array17h94ea19eec9d6942cE.exit ] ; 2 uses
  %i.fs = getelementptr inbounds nuw [40 x i8], ptr %i.fq, i64 %.sroa.0.011.i.i.i ; 2 uses
  %i.ft = add nuw i64 %.sroa.0.011.i.i.i, 1       ; 2 uses
  %.val8.i.i.i = load i64, ptr %i.fs, align 8, !alias.scope !2439, !noalias !2433 ; 2 uses
  %i.fu = icmp eq i64 %.val8.i.i.i, 0
  br i1 %i.fu, label %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i", label %bb.x

bb.x:                                             ; preds = %.lr.ph.i.i.i60
  %i.fv = getelementptr i8, ptr %i.fs, i64 8
  %.val9.i.i.i = load ptr, ptr %i.fv, align 8, !alias.scope !2436, !noalias !2433, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i, i64 noundef %.val8.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !2442
  br label %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i"

"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i": ; preds = %bb.x, %.lr.ph.i.i.i60
  %i.fw = icmp eq i64 %i.ft, %i.fr
  br i1 %i.fw, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i", label %.lr.ph.i.i.i60

"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i": ; preds = %"_ZN4core3ptr95drop_in_place$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$17hb8acf59578a2d0c9E.exit.i.i.i", %_ZN18lindera_dictionary10dictionary18unknown_dictionary16make_costs_array17h94ea19eec9d6942cE.exit
  %.val2.i = load i64, ptr %i.p, align 8, !range !165, !alias.scope !2433, !noundef !6 ; 2 uses
  %i.fx = icmp eq i64 %.val2.i, 0
  br i1 %i.fx, label %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93", label %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93.sink.split"

"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93.sink.split": ; preds = %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91"
  %.val2.i.sink = phi i64 [ %.val2.i92, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91" ], [ %.val2.i, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i" ]
  %.sink = phi ptr [ %.val.i84, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91" ], [ %i.fq, %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i" ]
  %i.fy = mul nuw i64 %.val2.i.sink, 40
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sink, i64 noundef %i.fy, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !6
  br label %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93"

"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93": ; preds = %"_ZN4core3ptr118drop_in_place$LT$alloc..vec..Vec$LT$lindera_dictionary..dictionary..unknown_dictionary..UnknownDictionaryEntry$GT$$GT$17h02bef2b229eae5efE.exit93.sink.split", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i", %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hf55354b115a191b5E.exit.i91"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  ret void

.lr.ph.split.i.i.i.i.i.i.i:                       ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i", %select.unfold
  %.merged.i = phi { ptr, i64 } [ %..i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i" ], [ %i.bi, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i" ], [ %i.bi, %select.unfold ] ; 2 uses
  %i.fz = extractvalue { ptr, i64 } %.merged.i, 0 ; 5 uses
  %i.ga = extractvalue { ptr, i64 } %.merged.i, 1 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2445
  br label %bb.y

bb.y:                                             ; preds = %bb.aa, %.lr.ph.split.i.i.i.i.i.i.i
  %i.gb = phi i64 [ 0, %.lr.ph.split.i.i.i.i.i.i.i ], [ %i.go, %bb.aa ] ; 6 uses
  %i.gc = sub nuw i64 %i.ga, %i.gb                ; 3 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gb ; 2 uses
  %i.ge = icmp ult i64 %i.gc, 16
  br i1 %i.ge, label %.preheader.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.y
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.ga, %i.gb
  br i1 %.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.z
  %.sroa.01.05.i.i.i.i.i.i.i.i = phi i64 [ %i.gi, %bb.z ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.gd, i64 %.sroa.01.05.i.i.i.i.i.i.i.i
  %i.gg = load i8, ptr %i.gf, align 1, !alias.scope !2458, !noalias !2461, !noundef !6
  %i.gh = icmp eq i8 %i.gg, 44
  br i1 %i.gh, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %bb.z

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.gi = add nuw i64 %.sroa.01.05.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.gi, %i.gc
  br i1 %exitcond.not.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i: ; preds = %bb.y
  %i.gj = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 44, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.gd, i64 noundef %i.gc)
          to label %.noexc62 unwind label %.loopexit191 ; 2 uses

.noexc62:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i
  %i.gk = extractvalue { i64, i64 } %i.gj, 0
  %i.gl = extractvalue { i64, i64 } %i.gj, 1
  %i.gm = trunc nuw i64 %i.gk to i1
  br i1 %i.gm, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.noexc62
  %.sroa.4.0.i27.i.i.i.i.i.i.i = phi i64 [ %i.gl, %.noexc62 ], [ %.sroa.01.05.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.gn = add i64 %i.gb, 1
  %i.go = add i64 %i.gn, %.sroa.4.0.i27.i.i.i.i.i.i.i ; 5 uses
  %.not21.i.i.i.i.i.i.i = icmp ugt i64 %i.go, %i.ga
  %i.gp = add i64 %i.gb, %.sroa.4.0.i27.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.not = icmp ult i64 %i.gp, %i.ga
  br i1 %or.cond.i.i.i.i.i.i.i.not, label %bb.ab, label %bb.aa

bb.aa:                                            ; preds = %bb.ab, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  br i1 %.not21.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i, label %bb.y

bb.ab:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i
  %i.gq = add i64 %i.gb, %.sroa.4.0.i27.i.i.i.i.i.i.i ; 2 uses
  %i.gr = getelementptr inbounds nuw i8, ptr %i.fz, i64 %i.gq
  %lhsc = load i8, ptr %i.gr, align 1
  %i.gs = icmp eq i8 %lhsc, 44
  br i1 %i.gs, label %select.unfold.i.i.i.i, label %bb.aa

select.unfold.i.i.i.i:                            ; preds = %bb.z, %.noexc62, %.preheader.i.i.i.i.i.i.i.i, %bb.aa, %bb.ab
  %.sroa.17.0 = phi i8 [ 0, %bb.ab ], [ 1, %bb.aa ], [ 1, %.preheader.i.i.i.i.i.i.i.i ], [ 1, %.noexc62 ], [ 1, %bb.z ] ; 2 uses
  %.sroa.9.0 = phi i64 [ %i.go, %bb.ab ], [ %i.ga, %bb.z ], [ %i.ga, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ga, %.noexc62 ], [ %i.go, %bb.aa ]
  %.sroa.0.0 = phi i64 [ %i.go, %bb.ab ], [ 0, %bb.aa ], [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 0, %.noexc62 ], [ 0, %bb.z ]
  %.sroa.4.1.i.i.i.i.i.i = phi i64 [ %i.gq, %bb.ab ], [ %i.ga, %bb.aa ], [ %i.ga, %.preheader.i.i.i.i.i.i.i.i ], [ %i.ga, %.noexc62 ], [ %i.ga, %bb.z ] ; 2 uses
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !2469
  %i.gt = tail call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #47, !noalias !2469 ; 9 uses
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i"

.invoke:                                          ; preds = %select.unfold.i.i.i.i, %bb.g
  %i.gv = phi i64 [ %.idx.i, %bb.g ], [ 64, %select.unfold.i.i.i.i ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef 8, i64 %i.gv, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @315) #46
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i": ; preds = %select.unfold.i.i.i.i
  store ptr %i.fz, ptr %i.gt, align 8, !noalias !2445
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gt, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i.i, ptr %i.gw, align 8, !noalias !2445
  store i64 4, ptr %i.h, align 8, !noalias !2445
  store ptr %i.gt, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2445
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !noalias !2445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2445
  store i64 %.sroa.0.0, ptr %i.g, align 8, !noalias !2474
  store i64 %i.ga, ptr %.sroa.6.0..sroa_idx951, align 8, !noalias !2474
  store ptr %i.fz, ptr %.sroa.7.0..sroa_idx952, align 8, !noalias !2474
  store i64 %i.ga, ptr %.sroa.8.0..sroa_idx, align 8, !noalias !2474
  store i64 %.sroa.9.0, ptr %.sroa.9.0..sroa_idx, align 8, !noalias !2474
  store i64 %i.ga, ptr %.sroa.11.0..sroa_idx, align 8, !noalias !2474
  store i32 44, ptr %.sroa.12.0..sroa_idx, align 8, !noalias !2474
  store i32 44, ptr %.sroa.14.0..sroa_idx, align 4, !noalias !2474
  store i8 1, ptr %.sroa.15.0..sroa_idx, align 8, !noalias !2474
  store i8 1, ptr %.sroa.16954.0..sroa_idx, align 8, !noalias !2474
  store i8 %.sroa.17.0, ptr %.sroa.17.0..sroa_idx, align 1, !noalias !2474
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2475)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2478)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2480)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2483)
  %.promoted8.i.i.i.i.i.i = load i64, ptr %i.g, align 8, !alias.scope !2485, !noalias !2486 ; 4 uses
  %i.gx = trunc nuw i8 %.sroa.17.0 to i1
  br i1 %i.gx, label %.loopexit190, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i"
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.t, align 8, !alias.scope !2487, !noalias !2486, !nonnull !6, !align !44, !noundef !6 ; 4 uses
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.u, align 8, !alias.scope !2487, !noalias !2486, !noundef !6 ; 2 uses
  %i.gy = load i64, ptr %i.v, align 8, !alias.scope !2492, !noalias !2495, !noundef !6 ; 8 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.gy, %.val1.i.i.i.i.i.i.i.i
  %i.gz = load i8, ptr %i.x, align 8, !alias.scope !2485, !noalias !2486 ; 2 uses
  %i.ha = zext nneg i8 %i.gz to i64               ; 4 uses
  %i.hb = icmp ult i8 %i.gz, 5
  %i.hc = getelementptr i8, ptr %i.w, i64 %i.ha
  %i.hd = getelementptr i8, ptr %i.hc, i64 -1
  %i.he = load i8, ptr %i.y, align 8, !range !1150, !alias.scope !2485, !noalias !2486
  %i.hf = trunc nuw i8 %i.he to i1                ; 2 uses
  %.pre2.i.i.i.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !2485, !noalias !2486 ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i.i.i, label %.lr.ph.split.i.i.i.preheader.i.i.i

.lr.ph.split.i.i.i.preheader.i.i.i:               ; preds = %.lr.ph.i.i.i.i.i.i
  %.promoted14.i.i.i.i.i.i = load i64, ptr %i.z, align 8, !alias.scope !2492, !noalias !2495
  br label %.lr.ph.split.i.i.i.i.i.i

.lr.ph.split.us.i.i.i.i.i.i:                      ; preds = %.lr.ph.i.i.i.i.i.i
  %.not.i3.i.i.us.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i.i, %.promoted8.i.i.i.i.i.i
  %or.cond.not.i.i.i.us.i.i.i.i.i.i = select i1 %i.hf, i1 true, i1 %.not.i3.i.i.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  br i1 %or.cond.not.i.i.i.us.i.i.i.i.i.i, label %.thread127, label %.loopexit190

.lr.ph.split.i.i.i.i.i.i:                         ; preds = %.noexc13.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i
  %i.hg = phi ptr [ %i.ii, %.noexc13.i.i.i.i ], [ %i.gt, %.lr.ph.split.i.i.i.preheader.i.i.i ]
  %i.hh = phi i64 [ %i.il, %.noexc13.i.i.i.i ], [ 1, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 6 uses
  %i.hi = phi i64 [ %i.id, %.noexc13.i.i.i.i ], [ %.promoted14.i.i.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 3 uses
  %.pre.i2.i.i1011.i.i.i.i.i.i = phi i64 [ %.pre.i2.i.i9.i.i.i.i.i.i, %.noexc13.i.i.i.i ], [ %.promoted8.i.i.i.i.i.i, %.lr.ph.split.i.i.i.preheader.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2498)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2499)
  %i.hj = icmp ult i64 %i.gy, %i.hi
  br i1 %i.hj, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %.lr.ph.split.i.i.i.i.i.i
  tail call void @llvm.assume(i1 %i.hb)
  %.pre.i.i.i.i.i.i.i.i.i = load i8, ptr %i.hd, align 1, !alias.scope !2492, !noalias !2495 ; 2 uses
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ae, %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.hk = phi i64 [ %i.hi, %.lr.ph.i.i.i.i.i.i.i.i.i ], [ %i.hx, %bb.ae ] ; 4 uses
  %i.hl = sub nuw i64 %i.gy, %i.hk                ; 3 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.hk ; 2 uses
  %i.hn = icmp ult i64 %i.hl, 16
  br i1 %i.hn, label %.preheader.i.i.i.i.i.i.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %bb.ac
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gy, %i.hk
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.ad
  %.sroa.01.05.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hr, %bb.ad ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hm, i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i
  %i.hp = load i8, ptr %i.ho, align 1, !alias.scope !2500, !noalias !2503, !noundef !6
  %i.hq = icmp eq i8 %i.hp, %.pre.i.i.i.i.i.i.i.i.i
  br i1 %i.hq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i, label %bb.ad

bb.ad:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.hr = add nuw i64 %.sroa.01.05.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hr, %i.hl
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.ac
  %i.hs = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.hm, i64 noundef %i.hl)
          to label %.noexc12.i.i.i.i unwind label %.loopexit.i.i.i.i, !noalias !2445 ; 2 uses

.noexc12.i.i.i.i:                                 ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i
  %i.ht = extractvalue { i64, i64 } %i.hs, 0
  %i.hu = extractvalue { i64, i64 } %i.hs, 1
  %i.hv = trunc nuw i64 %i.ht to i1
  br i1 %i.hv, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i, %.noexc12.i.i.i.i
  %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hu, %.noexc12.i.i.i.i ], [ %.sroa.01.05.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.hw = add i64 %i.hk, 1
  %i.hx = add i64 %i.hw, %.sroa.4.0.i27.i.i.i.i.i.i.i.i.i ; 8 uses
  %.not20.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.hx, %i.ha
  %.not21.i.i.i.i.i.i.i.i.i = icmp ugt i64 %i.hx, %.val1.i.i.i.i.i.i.i.i
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %.not20.i.i.i.i.i.i.i.i.i, %.not21.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %bb.af, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i
  %i.hy = icmp ult i64 %i.gy, %i.hx
  br i1 %i.hy, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i", label %bb.ac

bb.af:                                            ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i.i.i.i.i.i.i
  %i.hz = sub nuw i64 %i.hx, %i.ha                ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %i.hz
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ia, ptr nonnull %i.w, i64 %i.ha), !noalias !2495
  %i.ib = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ib, label %select.unfold.i.i.i.i.i.i, label %bb.ae

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.ae, %.noexc12.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.i.i, %bb.ad, %.lr.ph.split.i.i.i.i.i.i
  %i.ic = phi i64 [ %i.hi, %.lr.ph.split.i.i.i.i.i.i ], [ %i.gy, %bb.ad ], [ %i.gy, %.noexc12.i.i.i.i ], [ %i.gy, %.preheader.i.i.i.i.i.i.i.i.i.i ], [ %i.hx, %bb.ae ]
  store i8 1, ptr %i.s, align 1, !alias.scope !2504, !noalias !2486
  %.not.i3.i.i.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i.i.i.i, %.pre.i2.i.i1011.i.i.i.i.i.i
  %or.cond.not.i.i.i.i.i.i.i.i.i = select i1 %i.hf, i1 true, i1 %.not.i3.i.i.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i.i.i.i, label %select.unfold.i.i.i.i.i.i, label %.loopexit190

select.unfold.i.i.i.i.i.i:                        ; preds = %bb.af, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i"
  %i.id = phi i64 [ %i.ic, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i" ], [ %i.hx, %bb.af ]
  %.pre.i2.i.i9.i.i.i.i.i.i = phi i64 [ %.pre.i2.i.i1011.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i" ], [ %i.hx, %bb.af ]
  %i.ie = phi i1 [ true, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i" ], [ false, %bb.af ]
  %.pn.i.i.i.i.i.i = phi i64 [ %.pre2.i.i.i.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i" ], [ %i.hz, %bb.af ]
  %.sroa.4.1.i.i.i.i.i.i.i.i = sub nuw i64 %.pn.i.i.i.i.i.i, %.pre.i2.i.i1011.i.i.i.i.i.i
  %.sroa.0.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.pre.i2.i.i1011.i.i.i.i.i.i
  %i.if = icmp samesign ult i64 %i.hh, 576460752303423488
  tail call void @llvm.assume(i1 %i.if)
  %i.ig = load i64, ptr %i.h, align 8, !range !165, !alias.scope !2507, !noalias !2508, !noundef !6
  %i.ih = icmp eq i64 %i.hh, %i.ig
  br i1 %i.ih, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i", label %.noexc13.i.i.i.i

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i": ; preds = %select.unfold.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h, i64 noundef %i.hh, i64 noundef range(i64 1, 0) 1, i64 noundef 8, i64 noundef 16)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc13_crit_edge.i.i.i.i" unwind label %.loopexit.split-lp.i.i.i.i, !noalias !2445

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc13_crit_edge.i.i.i.i": ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i"
  %.pre.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2507, !noalias !2508
  br label %.noexc13.i.i.i.i

.noexc13.i.i.i.i:                                 ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc13_crit_edge.i.i.i.i", %select.unfold.i.i.i.i.i.i
  %i.ii = phi ptr [ %.pre.i.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i..noexc13_crit_edge.i.i.i.i" ], [ %i.hg, %select.unfold.i.i.i.i.i.i ] ; 2 uses
  %i.ij = getelementptr inbounds nuw [16 x i8], ptr %i.ii, i64 %i.hh ; 2 uses
  store ptr %.sroa.0.1.i.i.i.i.i.i.i.i, ptr %i.ij, align 8, !noalias !2509
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ij, i64 8
  store i64 %.sroa.4.1.i.i.i.i.i.i.i.i, ptr %i.ik, align 8, !noalias !2509
  %i.il = add nuw nsw i64 %i.hh, 1                ; 3 uses
  store i64 %i.il, ptr %.sroa.64.0..sroa_idx.i.i.i.i, align 8, !alias.scope !2507, !noalias !2508
  br i1 %i.ie, label %.loopexit190, label %.lr.ph.split.i.i.i.i.i.i

.loopexit.i.i.i.i:                                ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i.i.i.i.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

.loopexit.split-lp.i.i.i.i:                       ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha866cc4dd2fd5359E.exit.i.i.i.i.i.i"
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.ag:                                            ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ] ; 2 uses
  %.val.i.i.i.i = load i64, ptr %i.h, align 8, !noalias !2445 ; 2 uses
  %i.im = icmp eq i64 %.val.i.i.i.i, 0
  br i1 %i.im, label %.body, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %.val9.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2445, !nonnull !6, !noundef !6
  %i.in = shl nuw i64 %.val.i.i.i.i, 4
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val9.i.i.i.i, i64 noundef %i.in, i64 noundef range(i64 1, -9223372036854775807) 8) #47, !noalias !2445
  br label %.body

.loopexit190:                                     ; preds = %.noexc13.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i", %.lr.ph.split.us.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i"
  %.sroa.13.0.copyload = phi i64 [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i" ], [ 1, %.lr.ph.split.us.i.i.i.i.i.i ], [ %i.il, %.noexc13.i.i.i.i ], [ %i.hh, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.i.i.i.i.i.i" ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2445
  %.sroa.0.0.copyload = load i64, ptr %i.h, align 8, !noalias !2510 ; 3 uses
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !2510 ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2445
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2511)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %5, ptr %i.f, align 8, !noalias !2514
  %.not.i = icmp eq i64 %.sroa.13.0.copyload, %5
  br i1 %.not.i, label %bb.ai, label %bb.aj, !prof !7

.thread127:                                       ; preds = %.lr.ph.split.us.i.i.i.i.i.i
  %.sroa.0.1.i.i.us.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i.i.i, i64 %.promoted8.i.i.i.i.i.i ; 2 uses
  %i.io = sub nuw i64 %.pre2.i.i.i.i.i.i.i.i.i, %.promoted8.i.i.i.i.i.i ; 2 uses
  %i.ip = getelementptr inbounds nuw i8, ptr %i.gt, i64 16
  store ptr %.sroa.0.1.i.i.us.i.i.i.i.i.i, ptr %i.ip, align 8, !noalias !2509
  %i.iq = getelementptr inbounds nuw i8, ptr %i.gt, i64 24
  store i64 %i.io, ptr %i.iq, align 8, !noalias !2509
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2445
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2445
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %5, ptr %i.f, align 8, !noalias !2516
  br i1 %.not.i131, label %.thread152, label %bb.aj, !prof !7

bb.ai:                                            ; preds = %.loopexit190
  switch i64 %5, label %..thread152_crit_edge [
    i64 0, label %.invoke834.loopexit
    i64 1, label %.invoke834
  ]

..thread152_crit_edge:                            ; preds = %bb.ai
  %.pre = load ptr, ptr %.sroa.8.0.copyload, align 8, !alias.scope !2511, !noalias !2519
  %.in.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 8
  %.pre474 = load i64, ptr %.in.phi.trans.insert, align 8, !alias.scope !2511, !noalias !2519
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 16
  %.pre475 = load ptr, ptr %.phi.trans.insert, align 8, !alias.scope !2511, !noalias !2519
  %.phi.trans.insert476 = getelementptr inbounds nuw i8, ptr %.sroa.8.0.copyload, i64 24
  %.pre477 = load i64, ptr %.phi.trans.insert476, align 8, !alias.scope !2511, !noalias !2519
  br label %.thread152

bb.aj:                                            ; preds = %.thread127, %.loopexit190
  %.sroa.8.0.copyload140 = phi ptr [ %i.gt, %.thread127 ], [ %.sroa.8.0.copyload, %.loopexit190 ] ; 3 uses
  %.sroa.0.0.copyload135 = phi i64 [ 4, %.thread127 ], [ %.sroa.0.0.copyload, %.loopexit190 ] ; 3 uses
  %.sroa.13.0.copyload132 = phi i64 [ 2, %.thread127 ], [ %.sroa.13.0.copyload, %.loopexit190 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2514
  store i64 %.sroa.13.0.copyload132, ptr %i.d, align 8, !noalias !2514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2514
  store ptr %i.f, ptr %i.c, align 8, !noalias !2514
  %.sroa.435.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.435.0..sroa_idx.i, align 8, !noalias !2514
  %i.ir = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.d, ptr %i.ir, align 8, !noalias !2514
  %.sroa.439.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store ptr @"_ZN4core3fmt3num3imp54_$LT$impl$u20$core..fmt..Display$u20$for$u20$usize$GT$3fmt17h47414302a1568dceE", ptr %.sroa.439.0..sroa_idx.i, align 8, !noalias !2514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2520
  store ptr @104, ptr %i.b, align 8, !noalias !2528
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 2, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !2528
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !2528
  %.sroa.6.0..sroa_idx87.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store i64 2, ptr %.sroa.6.0..sroa_idx87.i, align 8, !noalias !2528
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr null, ptr %.sroa.7.0..sroa_idx.i, align 8, !noalias !2528
  invoke void @_ZN5alloc3fmt6format12format_inner17hce37e7516f243f46E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.b)
          to label %.noexc68 unwind label %bb.bt

.noexc68:                                         ; preds = %bb.aj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2520
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2514
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2514
  %i.is = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error31_$LT$impl$u20$anyhow..Error$GT$3msg17hba822881bcddadacE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.bv unwind label %bb.bt

.thread152:                                       ; preds = %..thread152_crit_edge, %.thread127
  %i.it = phi i64 [ %.pre477, %..thread152_crit_edge ], [ %i.io, %.thread127 ] ; 6 uses
  %i.iu = phi ptr [ %.pre475, %..thread152_crit_edge ], [ %.sroa.0.1.i.i.us.i.i.i.i.i.i, %.thread127 ] ; 6 uses
  %i.iv = phi i64 [ %.pre474, %..thread152_crit_edge ], [ %.sroa.4.1.i.i.i.i.i.i, %.thread127 ] ; 8 uses
  %i.iw = phi ptr [ %.pre, %..thread152_crit_edge ], [ %i.fz, %.thread127 ]
  %.sroa.8.0.copyload141149159 = phi ptr [ %.sroa.8.0.copyload, %..thread152_crit_edge ], [ %i.gt, %.thread127 ] ; 11 uses
  %.sroa.0.0.copyload136150158 = phi i64 [ %.sroa.0.0.copyload, %..thread152_crit_edge ], [ 4, %.thread127 ] ; 8 uses
  switch i64 %i.it, label %bb.al [
    i64 0, label %.thread133.i.invoke
    i64 1, label %bb.ak
  ]

bb.ak:                                            ; preds = %.thread152
  %i.ix = load i8, ptr %i.iu, align 1, !alias.scope !2529, !noalias !2514, !noundef !6
  switch i8 %i.ix, label %.lr.ph.i.i66.preheader [
    i8 43, label %.thread133.i.invoke
    i8 45, label %.thread133.i.invoke
  ]

.lr.ph.i.i66.preheader:                           ; preds = %bb.ao, %bb.am, %bb.ak
  %.sroa.03.182.i.i.ph = phi ptr [ %i.iy, %bb.am ], [ %i.iu, %bb.ao ], [ %i.iu, %bb.ak ]
  %.sroa.16.181.i.i.ph = phi i64 [ %i.iz, %bb.am ], [ %i.it, %bb.ao ], [ 1, %bb.ak ]
  br label %.lr.ph.i.i66

bb.al:                                            ; preds = %.thread152
  %.pr.i.i = load i8, ptr %i.iu, align 1, !alias.scope !2529, !noalias !2514
  %cond.i.i = icmp eq i8 %.pr.i.i, 43
  br i1 %cond.i.i, label %bb.am, label %bb.ao

bb.am:                                            ; preds = %bb.al
end_hunk_1
begin_hunk_2_@_ZN18lindera_dictionary18dictionary_builder20character_definition26CharacterDefinitionBuilder5build17h0d32ae2e7a24da1aE:bb.a
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 8 ; 2 uses
  %i.bh = load ptr, ptr %i.bg, align 8, !nonnull !6, !noundef !6
  %i.bi = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bj = load i64, ptr %i.bi, align 8, !noundef !6
  %.sroa.557.0.in = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.557.0 = load i64, ptr %.sroa.557.0.in, align 8, !noundef !6
  %.sroa.056.0.in = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.056.0 = load ptr, ptr %.sroa.056.0.in, align 8, !nonnull !6, !noundef !6
  invoke void @_ZN18lindera_dictionary4util23read_file_with_encoding17h07545d359f4bbb85E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ax, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bh, i64 noundef %i.bj, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.056.0, i64 noundef %.sroa.557.0)
          to label %bb.g unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ay)
  store ptr %i.az, ptr %i.ay, align 8
  %.sroa.455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ay, i64 8
  store ptr @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5095f6ece0ab423E", ptr %.sroa.455.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq), !noalias !5017
  %i.bk = getelementptr inbounds nuw i8, ptr %i.aq, i64 48
  store i64 4, ptr %i.bk, align 8, !noalias !5017
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 56
  store ptr @211, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !5017
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 64
  store i64 60, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !5017
  %i.bl = getelementptr inbounds nuw i8, ptr %i.aq, i64 80
  store ptr @125, ptr %i.bl, align 8, !noalias !5017
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !5017
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 96
  store ptr %i.ay, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !5017
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !5017
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !5017
  store i64 0, ptr %i.aq, align 8, !noalias !5017
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr @211, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !5017
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  store i64 60, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !5017
  %i.bm = getelementptr inbounds nuw i8, ptr %i.aq, i64 24
  store i64 0, ptr %i.bm, align 8, !noalias !5017
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 32
  store ptr @192, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !5017
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aq, i64 40
  store i64 141, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !5017
  %i.bn = getelementptr inbounds nuw i8, ptr %i.aq, i64 72
  store i32 1, ptr %i.bn, align 8, !noalias !5017
  %i.bo = getelementptr inbounds nuw i8, ptr %i.aq, i64 76
  store i32 202, ptr %i.bo, align 4, !noalias !5017
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.aq)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !5017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.bp = load i64, ptr %i.ax, align 8, !range !225, !noundef !6 ; 7 uses
  %i.bq = icmp eq i64 %i.bp, -9223372036854775808
  %i.br = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %i.bs = load ptr, ptr %i.br, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.ax, i64 16 ; 2 uses
  br i1 %i.bq, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  %i.bu = load i8, ptr %i.bt, align 8, !range !3106, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bv = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.bs, ptr %i.bv, align 8
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 %i.bu, ptr %i.bw, align 8
  store i64 -9223372036854775808, ptr %0, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit193"

bb.i:                                             ; preds = %bb.g
  %.sroa.660.0.copyload = load i64, ptr %i.bt, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  call void @llvm.experimental.noalias.scope.decl(metadata !5024)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !5027
  store i64 0, ptr %i.ap, align 8, !noalias !5027
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 8 ; 2 uses
  store i64 %.sroa.660.0.copyload, ptr %.sroa.2.0..sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 16 ; 2 uses
  store ptr %i.bs, ptr %.sroa.3.0..sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 24 ; 2 uses
  store i64 %.sroa.660.0.copyload, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 40 ; 2 uses
  store i64 %.sroa.660.0.copyload, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 48 ; 3 uses
  store i32 10, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 52
  store i32 10, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx.i, align 4, !noalias !5027
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %.sroa.447.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.447.0..sroa_idx.i, align 8, !noalias !5027
  %.sroa.548.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ap, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.548.0..sroa_idx.i, align 1, !noalias !5027
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 16 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.ah, i64 8
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.592.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.592.sroa.4.0..sroa.592.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 24
  %.sroa.592.sroa.5.0..sroa.592.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 32
  %.sroa.592.sroa.6.0..sroa.592.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 40
  %.sroa.592.sroa.7.0..sroa.592.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 48
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 56
  %.sroa.7.0..sroa_idx.i101.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 57
  %.sroa.4.0..sroa_idx.i.i.i.i.i103.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i.i.i.i104.i = getelementptr inbounds nuw i8, ptr %i.z, i64 16 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.y, i64 57 ; 2 uses
  %i.cc = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %i.cd = getelementptr inbounds nuw i8, ptr %i.y, i64 32 ; 5 uses
  %i.ce = getelementptr inbounds nuw i8, ptr %i.y, i64 40
  %i.cf = getelementptr inbounds nuw i8, ptr %i.y, i64 48 ; 3 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.y, i64 56
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  %.sroa.4102.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 104
  %.sroa.5103.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 112
  %.sroa.6104.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 120
  %.sroa.7105.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 121
  %.sroa.4.0..sroa_idx.i.i.i.i63.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 4 uses
  %.sroa.64.0..sroa_idx.i.i.i.i64.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.v, i64 121 ; 3 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.v, i64 72 ; 2 uses
  %i.cj = getelementptr inbounds nuw i8, ptr %i.v, i64 80
  %i.ck = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.cm = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.v, i64 56 ; 6 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.v, i64 88
  %i.cp = getelementptr inbounds nuw i8, ptr %i.v, i64 96
  %i.cq = getelementptr inbounds nuw i8, ptr %i.v, i64 40 ; 11 uses
  %i.cr = getelementptr inbounds nuw i8, ptr %i.v, i64 32 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %i.v, i64 24 ; 2 uses
  %i.ct = getelementptr inbounds nuw i8, ptr %i.v, i64 104 ; 4 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.v, i64 120
  %i.cv = getelementptr inbounds nuw i8, ptr %i.v, i64 112 ; 2 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.af, i64 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.cz = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.db = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.sroa.435.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %.sroa.4108.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.5109.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %.sroa.6110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %.sroa.7111.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  br label %bb.j

bb.j:                                             ; preds = %.backedge.i, %bb.i
  call void @llvm.experimental.noalias.scope.decl(metadata !5029)
  %.val.i.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !5029, !noalias !5027, !nonnull !6, !align !44, !noundef !6 ; 3 uses
  %.val1.i.i = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5029, !noalias !5027, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !5032)
  %i.dc = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5035, !noalias !5036, !noundef !6 ; 8 uses
  %.promoted.i.i.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5035, !noalias !5036 ; 2 uses
  %i.dd = icmp ult i64 %i.dc, %.promoted.i.i.i
  br i1 %i.dd, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.j
  %.not.i.i.i = icmp ugt i64 %i.dc, %.val1.i.i
  %i.de = load i8, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !alias.scope !5035, !noalias !5036 ; 2 uses
  %i.df = zext nneg i8 %i.de to i64               ; 4 uses
  %i.dg = icmp ult i8 %i.de, 5
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i", label %.lr.ph.split.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %i.dh = getelementptr i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 %i.df
  %i.di = getelementptr i8, ptr %i.dh, i64 -1
  call void @llvm.assume(i1 %i.dg)
  %.pre.i.i.i = load i8, ptr %i.di, align 1, !alias.scope !5035, !noalias !5036 ; 2 uses
  br label %bb.k

bb.k:                                             ; preds = %bb.m, %.lr.ph.split.i.i.i
  %i.dj = phi i64 [ %.promoted.i.i.i, %.lr.ph.split.i.i.i ], [ %i.dw, %bb.m ] ; 4 uses
  %i.dk = sub nuw i64 %i.dc, %i.dj                ; 3 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dj ; 2 uses
  %i.dm = icmp ult i64 %i.dk, 16
  br i1 %i.dm, label %.preheader.i.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i

.preheader.i.i.i.i:                               ; preds = %bb.k
  %.not.i.i.i.i = icmp eq i64 %i.dc, %i.dj
  br i1 %.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split", label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.preheader.i.i.i.i, %bb.l
  %.sroa.01.05.i.i.i.i = phi i64 [ %i.dq, %bb.l ], [ 0, %.preheader.i.i.i.i ] ; 3 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 %.sroa.01.05.i.i.i.i
  %i.do = load i8, ptr %i.dn, align 1, !alias.scope !5038, !noalias !5041, !noundef !6
  %i.dp = icmp eq i8 %i.do, %.pre.i.i.i
  br i1 %i.dp, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %bb.l

bb.l:                                             ; preds = %.lr.ph.i.i.i.i
  %i.dq = add nuw i64 %.sroa.01.05.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.dq, %i.dk
  br i1 %exitcond.not.i.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split", label %.lr.ph.i.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i: ; preds = %bb.k
  %i.dr = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.dl, i64 noundef %i.dk)
          to label %.noexc unwind label %.loopexit.split-lp309.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i.i
  %i.ds = extractvalue { i64, i64 } %i.dr, 0
  %i.dt = extractvalue { i64, i64 } %i.dr, 1
  %i.du = trunc nuw i64 %i.ds to i1
  br i1 %i.du, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i: ; preds = %.lr.ph.i.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i.i = phi i64 [ %i.dt, %.noexc ], [ %.sroa.01.05.i.i.i.i, %.lr.ph.i.i.i.i ]
  %i.dv = add i64 %i.dj, 1
  %i.dw = add i64 %i.dv, %.sroa.4.0.i27.i.i.i     ; 9 uses
  %.not20.i.i.i = icmp ult i64 %i.dw, %i.df
  %.not21.i.i.i = icmp ugt i64 %i.dw, %.val1.i.i
  %or.cond.i.i.i = or i1 %.not20.i.i.i, %.not21.i.i.i
  br i1 %or.cond.i.i.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.n, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.dx = icmp ult i64 %i.dc, %i.dw
  br i1 %i.dx, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split", label %bb.k

bb.n:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i.i
  %i.dy = sub nuw i64 %i.dw, %i.df
  %i.dz = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %i.dy
  %bcmp.i.i.i = call i32 @bcmp(ptr nonnull %i.dz, ptr nonnull %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx.i, i64 %i.df), !noalias !5042
  %i.ea = icmp eq i32 %bcmp.i.i.i, 0
  br i1 %i.ea, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i", label %bb.m

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i": ; preds = %bb.n
  store i64 %i.dw, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  %i.eb = load i64, ptr %i.ap, align 8, !alias.scope !5029, !noalias !5027, !noundef !6 ; 2 uses
  %i.ec = sub nuw i64 %i.dw, %i.eb
  store i64 %i.dw, ptr %i.ap, align 8, !alias.scope !5029, !noalias !5027
  br label %select.unfold.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split": ; preds = %bb.m, %.preheader.i.i.i.i, %.noexc, %bb.l
  %.sink1813 = phi i64 [ %i.dc, %bb.l ], [ %i.dc, %.preheader.i.i.i.i ], [ %i.dc, %.noexc ], [ %i.dw, %bb.m ]
  store i64 %.sink1813, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx.i, align 8, !noalias !5027
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i.sink.split", %.lr.ph.i.i.i, %bb.j
  store i8 1, ptr %.sroa.548.0..sroa_idx.i, align 1, !alias.scope !5043, !noalias !5027
  %i.ed = load i8, ptr %.sroa.447.0..sroa_idx.i, align 8, !range !1150, !alias.scope !5043, !noalias !5027, !noundef !6
  %i.ee = trunc nuw i8 %i.ed to i1
  %.pre.i2.i.i = load i64, ptr %i.ap, align 8, !alias.scope !5043, !noalias !5027 ; 3 uses
  %.pre2.i.i.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !5043, !noalias !5027 ; 2 uses
  %.not.i3.i.i = icmp ne i64 %.pre2.i.i.i, %.pre.i2.i.i
  %or.cond.not.i.i.i = select i1 %i.ee, i1 true, i1 %.not.i3.i.i
  %i.ef = sub nuw i64 %.pre2.i.i.i, %.pre.i2.i.i
  br i1 %or.cond.not.i.i.i, label %select.unfold.i, label %bb.ep

select.unfold.i:                                  ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i"
  %.sroa.4.1.i.i = phi i64 [ %i.ec, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ], [ %i.ef, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i" ] ; 4 uses
  %.pn.i = phi i64 [ %i.eb, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i.i" ], [ %.pre.i2.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.i" ]
  %.sroa.0.1.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 %.pn.i ; 4 uses
  %i.eg = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i.i, 0
  %i.eh = insertvalue { ptr, i64 } %i.eg, i64 %.sroa.4.1.i.i, 1 ; 3 uses
  %.not.i.i.i63.i = icmp eq i64 %.sroa.4.1.i.i, 0
  %.pre.i.i64.i = add i64 %.sroa.4.1.i.i, -1      ; 3 uses
  br i1 %.not.i.i.i63.i, label %.lr.ph.split.i.i71.i, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i.i": ; preds = %select.unfold.i
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.pre.i.i64.i
  %rhsc.i.i = load i8, ptr %i.ei, align 1, !alias.scope !5046
  %rhsc.fr.i.i = freeze i8 %rhsc.i.i
  %i.ej = icmp eq i8 %rhsc.fr.i.i, 10
  br i1 %i.ej, label %bb.o, label %.lr.ph.split.i.i71.i

bb.o:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i.i"
  %i.ek = insertvalue { ptr, i64 } %i.eh, i64 %.pre.i.i64.i, 1
  %.not.i.i10.i.i = icmp eq i64 %.pre.i.i64.i, 0
  %.pre.i11.i.i = add i64 %.sroa.4.1.i.i, -2      ; 2 uses
  br i1 %.not.i.i10.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i.i": ; preds = %bb.o
  %i.el = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i, i64 %.pre.i11.i.i
  %rhsc4.i.i = load i8, ptr %i.el, align 1, !alias.scope !5046
  %rhsc4.fr.i.i = freeze i8 %rhsc4.i.i
  %i.em = icmp eq i8 %rhsc4.fr.i.i, 13
  %spec.select.i15.i.i = select i1 %i.em, ptr %.sroa.0.1.i.i, ptr null
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i.i", %bb.o
  %i.en = phi ptr [ %spec.select.i15.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i.i" ], [ null, %bb.o ] ; 2 uses
  %i.eo = insertvalue { ptr, i64 } poison, ptr %i.en, 0
  %i.ep = insertvalue { ptr, i64 } %i.eo, i64 %.pre.i11.i.i, 1
  %.not9.i.i = icmp eq ptr %i.en, null
  %..i.i = select i1 %.not9.i.i, { ptr, i64 } %i.ek, { ptr, i64 } %i.ep
  br label %.lr.ph.split.i.i71.i

.lr.ph.split.i.i71.i:                             ; preds = %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i", %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i.i", %select.unfold.i
  %.merged.i.i = phi { ptr, i64 } [ %..i.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i.i" ], [ %i.eh, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i.i" ], [ %i.eh, %select.unfold.i ] ; 2 uses
  %i.eq = extractvalue { ptr, i64 } %.merged.i.i, 0 ; 4 uses
  %i.er = extractvalue { ptr, i64 } %.merged.i.i, 1 ; 9 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %.lr.ph.split.i.i71.i
  %i.es = phi i64 [ 0, %.lr.ph.split.i.i71.i ], [ %i.ff, %.backedge.backedge ] ; 5 uses
  %i.et = sub nuw i64 %i.er, %i.es                ; 3 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.es ; 2 uses
  %i.ev = icmp ult i64 %i.et, 16
  br i1 %i.ev, label %.preheader.i.i.i92.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i73.i

.preheader.i.i.i92.i:                             ; preds = %.backedge
  %.not.i.i.i93.i = icmp eq i64 %i.er, %i.es
  br i1 %.not.i.i.i93.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.i", label %.lr.ph.i.i.i94.i

.lr.ph.i.i.i94.i:                                 ; preds = %.preheader.i.i.i92.i, %bb.p
  %.sroa.01.05.i.i.i95.i = phi i64 [ %i.ez, %bb.p ], [ 0, %.preheader.i.i.i92.i ] ; 3 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.eu, i64 %.sroa.01.05.i.i.i95.i
  %i.ex = load i8, ptr %i.ew, align 1, !alias.scope !5049, !noalias !5052, !noundef !6
  %i.ey = icmp eq i8 %i.ex, 35
  br i1 %i.ey, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i85.i, label %bb.p

bb.p:                                             ; preds = %.lr.ph.i.i.i94.i
  %i.ez = add nuw i64 %.sroa.01.05.i.i.i95.i, 1   ; 2 uses
  %exitcond.not.i.i.i96.i = icmp eq i64 %i.ez, %i.et
  br i1 %exitcond.not.i.i.i96.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i", label %.lr.ph.i.i.i94.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i73.i: ; preds = %.backedge
  %i.fa = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef 35, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eu, i64 noundef %i.et)
          to label %.noexc86 unwind label %.loopexit308 ; 2 uses

.noexc86:                                         ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i73.i
  %i.fb = extractvalue { i64, i64 } %i.fa, 0
  %i.fc = extractvalue { i64, i64 } %i.fa, 1
  %i.fd = trunc nuw i64 %i.fb to i1
  br i1 %i.fd, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i85.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i85.i: ; preds = %.lr.ph.i.i.i94.i, %.noexc86
  %.sroa.4.0.i27.i.i86.i = phi i64 [ %i.fc, %.noexc86 ], [ %.sroa.01.05.i.i.i95.i, %.lr.ph.i.i.i94.i ] ; 2 uses
  %i.fe = add i64 %i.es, 1
  %i.ff = add i64 %i.fe, %.sroa.4.0.i27.i.i86.i   ; 2 uses
  %.not21.i.i88.i = icmp ugt i64 %i.ff, %i.er     ; 2 uses
  %i.fg = add i64 %.sroa.4.0.i27.i.i86.i, %i.es   ; 3 uses
  %or.cond.i.i89.not.i = icmp ult i64 %i.fg, %i.er
  br i1 %or.cond.i.i89.not.i, label %bb.r, label %bb.q

bb.q:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i85.i
  br i1 %.not21.i.i88.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i", label %.backedge.backedge

.backedge.backedge:                               ; preds = %bb.q, %bb.r
  br label %.backedge

bb.r:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i85.i
  %i.fh = getelementptr inbounds nuw i8, ptr %i.eq, i64 %i.fg
  %lhsc.i = load i8, ptr %i.fh, align 1
  %i.fi = icmp eq i8 %lhsc.i, 35                  ; 2 uses
  %brmerge.i = or i1 %.not21.i.i88.i, %i.fi
  br i1 %brmerge.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i.loopexit313.split.loop.exit615", label %.backedge.backedge

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.i": ; preds = %.preheader.i.i.i92.i
  %.not60.i = icmp eq ptr %i.eq, null
  br i1 %.not60.i, label %bb.s, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i", !prof !5058

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i.loopexit313.split.loop.exit615": ; preds = %bb.r
  %.mux.i.le = select i1 %i.fi, i64 %i.fg, i64 %i.er
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i": ; preds = %.noexc86, %bb.q, %bb.p, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i.loopexit313.split.loop.exit615", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.i"
  %.sroa.4.1.i83165.i = phi i64 [ %i.er, %bb.p ], [ %i.er, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.i" ], [ %.mux.i.le, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i.loopexit313.split.loop.exit615" ], [ %i.er, %bb.q ], [ %i.er, %.noexc86 ]
  %i.fj = call fastcc { ptr, i64 } @"_ZN4core3str21_$LT$impl$u20$str$GT$12trim_matches17hea74a311e3f859b4E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.eq, i64 noundef %.sroa.4.1.i83165.i) ; 2 uses
  %i.fk = extractvalue { ptr, i64 } %i.fj, 0      ; 7 uses
  %i.fl = extractvalue { ptr, i64 } %i.fj, 1      ; 7 uses
  switch i64 %i.fl, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i" [
    i64 0, label %.backedge.i
    i64 1, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i"
  ]

bb.s:                                             ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.i"
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !5027
  store ptr @213, ptr %i.ao, align 8, !noalias !5027
  %i.fm = getelementptr inbounds nuw i8, ptr %i.ao, i64 8
  store i64 1, ptr %i.fm, align 8, !noalias !5027
  %i.fn = getelementptr inbounds nuw i8, ptr %i.ao, i64 32
  store ptr null, ptr %i.fn, align 8, !noalias !5027
  %i.fo = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.fo, align 8, !noalias !5027
  %i.fp = getelementptr inbounds nuw i8, ptr %i.ao, i64 24
  store i64 0, ptr %i.fp, align 8, !noalias !5027
  %i.fq = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.ao)
          to label %.noexc87 unwind label %.loopexit.split-lp309.loopexit.split-lp

.noexc87:                                         ; preds = %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !5027
  br label %bb.eo

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  %i.fr = load i16, ptr %i.fk, align 1
  %i.fs = icmp ne i16 30768, %i.fr
  %i.ft = zext i1 %i.fs to i32
  %i.fu = icmp eq i32 %i.ft, 0
  br i1 %i.fu, label %bb.bn, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.i", %"_ZN4core3str4iter22SplitInternal$LT$P$GT$4next17h0583ab8b2c96f1b7E.exit.thread.i"
  call void @llvm.experimental.noalias.scope.decl(metadata !5059)
  call void @llvm.experimental.noalias.scope.decl(metadata !5062)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.am), !noalias !5027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !5027
  store ptr %i.fk, ptr %i.an, align 8, !noalias !5064
  store i64 %i.fl, ptr %i.bx, align 8, !noalias !5064
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj), !noalias !5065
  br label %bb.t

bb.t:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i"
  %.val921.i.i.i.i.i.i = phi i1 [ %.val9.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ]
  %i.fv = phi i64 [ %.val.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fl, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ] ; 5 uses
  %i.fw = phi ptr [ %.sroa.01.0.copyload.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fk, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ] ; 6 uses
  %i.fx = phi i1 [ %i.gh, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i ], [ false, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$11starts_with17h18f4b5c82bbedd29E.exit.thread.i" ]
  br i1 %i.fx, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.thread.i.i, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.fv
  %i.fz = icmp samesign eq i64 %i.fv, 0
  br i1 %i.fz, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.u, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gc, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.u ] ; 3 uses
  %i.ga = phi ptr [ %i.gb, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.fw, %bb.u ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.ga, align 1, !alias.scope !5062, !noalias !5078, !noundef !6
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 9, label %bb.v
    i8 10, label %bb.v
    i8 12, label %bb.v
    i8 13, label %bb.v
    i8 32, label %bb.v
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gb = getelementptr inbounds nuw i8, ptr %i.ga, i64 1 ; 2 uses
  %i.gc = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gd = icmp eq ptr %i.gb, %i.fy
  br i1 %i.gd, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.v:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ge = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.gf = sub nuw i64 %i.fv, %i.ge
  %i.gg = getelementptr inbounds nuw i8, ptr %i.fw, i64 %i.ge
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i:                ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.v, %bb.u
  %.val9.i.i.i.i.i.i = phi i1 [ %.val921.i.i.i.i.i.i, %bb.v ], [ true, %bb.u ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.val.i.i.i.i.i.i = phi i64 [ %i.gf, %bb.v ], [ 0, %bb.u ], [ %i.fv, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.sroa.01.0.copyload.i.i.i.i.i.i = phi ptr [ %i.gg, %bb.v ], [ %i.fw, %bb.u ], [ %i.fw, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.gh = phi i1 [ false, %bb.v ], [ true, %bb.u ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ]
  %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.v ], [ 0, %bb.u ], [ %i.fv, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.t, label %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i"

"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i": ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !5093
  %i.gi = call noundef align 8 dereferenceable_or_null(64) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 64, i64 noundef range(i64 1, 9) 8) #47, !noalias !5093 ; 5 uses
  %i.gj = icmp eq ptr %i.gi, null
  br i1 %i.gj, label %.invoke, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i"

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i": ; preds = %"_ZN96_$LT$core..str..iter..SplitAsciiWhitespace$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6c721889622d8f7fE.exit.i.i.i.i.i.i"
  store ptr %i.fw, ptr %i.gi, align 8, !noalias !5098
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  store i64 %.sroa.5.1.i.ph.i.i.i.i.i.i.i.i.i.i.i, ptr %i.gk, align 8, !noalias !5098
  store i64 4, ptr %i.aj, align 8, !noalias !5065
  store ptr %i.gi, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5065
  store i64 1, ptr %.sroa.64.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !5065
  call void @llvm.experimental.noalias.scope.decl(metadata !5099)
  call void @llvm.experimental.noalias.scope.decl(metadata !5102)
  br label %bb.w

bb.w:                                             ; preds = %.noexc.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i"
  %i.gl = phi ptr [ %i.hk, %.noexc.i.i.i.i.i.i ], [ %i.gi, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ]
  %.sroa.16.0.copyload.i.i = phi i64 [ %i.hn, %.noexc.i.i.i.i.i.i ], [ 1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 8 uses
  %i.gm = phi i64 [ %i.hc, %.noexc.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i = phi ptr [ %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i ], [ %.sroa.01.0.copyload.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  %i.gn = phi i1 [ %i.hd, %.noexc.i.i.i.i.i.i ], [ %.val9.i.i.i.i.i.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i" ] ; 2 uses
  br label %bb.x

bb.x:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %bb.w
  %i.go = phi i64 [ %i.hc, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %bb.w ] ; 2 uses
  %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i = phi ptr [ %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i, %bb.w ] ; 2 uses
  %i.gp = phi i1 [ %i.hd, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.w ]
  %i.gq = phi i64 [ %i.he, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gm, %bb.w ] ; 5 uses
  %i.gr = phi ptr [ %i.hf, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.promoted18.i.i.i.i.i10.i.i.i.i.i.i.i.i, %bb.w ] ; 6 uses
  %i.gs = phi i1 [ %i.hg, %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.gn, %bb.w ]
  br i1 %i.gs, label %_ZN4core4iter6traits8iterator8Iterator7collect17ha133e3a8dcc1dcbcE.exit.i.i, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gq
  %i.gu = icmp samesign eq i64 %i.gq, 0
  br i1 %i.gu, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:             ; preds = %bb.y, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i"
  %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gx, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ 0, %bb.y ] ; 3 uses
  %i.gv = phi ptr [ %i.gw, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ], [ %i.gr, %bb.y ] ; 2 uses
  %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i8, ptr %i.gv, align 1, !alias.scope !5062, !noalias !5105, !noundef !6
  switch i8 %.val.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" [
    i8 9, label %bb.z
    i8 10, label %bb.z
    i8 12, label %bb.z
    i8 13, label %bb.z
    i8 32, label %bb.z
  ]

"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = getelementptr inbounds nuw i8, ptr %i.gv, i64 1 ; 2 uses
  %i.gx = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %i.gy = icmp eq ptr %i.gw, %i.gt
  br i1 %i.gy, label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

bb.z:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gz = add nuw i64 %.sroa.02.012.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ha = sub nuw i64 %i.gq, %i.gz                ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %i.gr, i64 %i.gz ; 2 uses
  br label %.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i.i.i.i.i.i.i:            ; preds = %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i", %bb.z, %bb.y
  %i.hc = phi i64 [ %i.ha, %bb.z ], [ %i.go, %bb.y ], [ %i.go, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %.promoted18.i.i.i.i.i8.i.i.i.i.i.i.i.i = phi ptr [ %i.hb, %bb.z ], [ %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i, %bb.y ], [ %.promoted18.i.i.i.i.i9.i.i.i.i.i.i.i.i, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.hd = phi i1 [ %i.gp, %bb.z ], [ true, %bb.y ], [ true, %"_ZN96_$LT$core..slice..iter..Split$LT$T$C$P$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next28_$u7b$$u7b$closure$u7d$$u7d$17hae6ac19d40f0c9aeE.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a
  call void @llvm.assume(i1 %i.u)
  %i.v = icmp samesign ugt i64 %i.t, 3
  br i1 %i.v, label %bb.e, label %bb.d

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312": ; preds = %bb.cu, %.thread431, %bb.c
  %.pn214 = phi { ptr, i32 } [ %i.y, %bb.c ], [ %.pn212, %.thread431 ], [ %.pn212, %bb.cu ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6677)
  %.val.i = load i64, ptr %i.s, align 8, !alias.scope !6677 ; 2 uses
  %i.w = icmp eq i64 %.val.i, 0
  br i1 %i.w, label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit", label %bb.b

bb.b:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"
  %i.x = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %.val1.i = load ptr, ptr %i.x, align 8, !alias.scope !6677, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !6677
  br label %"_ZN4core3ptr39drop_in_place$LT$std..path..PathBuf$GT$17hb9309341f9b26f65E.exit"

bb.c:                                             ; preds = %bb.e, %bb.d
  %i.y = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit312"

bb.d:                                             ; preds = %bb.f, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.z = getelementptr inbounds nuw i8, ptr %i.s, i64 8 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !nonnull !6, !noundef !6
  %i.ab = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.ac = load i64, ptr %i.ab, align 8, !noundef !6
  %.sroa.0109.0.in = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.0109.0 = load ptr, ptr %.sroa.0109.0.in, align 8, !nonnull !6, !noundef !6
  %.sroa.5110.0.in = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5110.0 = load i64, ptr %.sroa.5110.0.in, align 8, !noundef !6
  invoke void @_ZN18lindera_dictionary4util23read_file_with_encoding17h07545d359f4bbb85E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.aa, i64 noundef %i.ac, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.0109.0, i64 noundef %.sroa.5110.0)
          to label %bb.g unwind label %bb.c

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %i.s, ptr %i.r, align 8
  %.sroa.4108.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr @"_ZN55_$LT$std..path..PathBuf$u20$as$u20$core..fmt..Debug$GT$3fmt17hb5095f6ece0ab423E", ptr %.sroa.4108.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !6680
  %i.ad = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store i64 4, ptr %i.ad, align 8, !noalias !6680
  %.sroa.431.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr @218, ptr %.sroa.431.0..sroa_idx.i.i, align 8, !noalias !6680
  %.sroa.532.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store i64 62, ptr %.sroa.532.0..sroa_idx.i.i, align 8, !noalias !6680
  %i.ae = getelementptr inbounds nuw i8, ptr %i.g, i64 80
  store ptr @125, ptr %i.ae, align 8, !noalias !6680
  %.sroa.449.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 88
  store i64 1, ptr %.sroa.449.0..sroa_idx.i.i, align 8, !noalias !6680
  %.sroa.550.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 96
  store ptr %i.r, ptr %.sroa.550.0..sroa_idx.i.i, align 8, !noalias !6680
  %.sroa.651.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 104
  store i64 1, ptr %.sroa.651.0..sroa_idx.i.i, align 8, !noalias !6680
  %.sroa.752.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 112
  store ptr null, ptr %.sroa.752.0..sroa_idx.i.i, align 8, !noalias !6680
  store i64 0, ptr %i.g, align 8, !noalias !6680
  %.sroa.462.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr @218, ptr %.sroa.462.0..sroa_idx.i.i, align 8, !noalias !6680
  %.sroa.563.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store i64 62, ptr %.sroa.563.0..sroa_idx.i.i, align 8, !noalias !6680
  %i.af = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 0, ptr %i.af, align 8, !noalias !6680
  %.sroa.524.0..sroa_idx25.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store ptr @217, ptr %.sroa.524.0..sroa_idx25.i.i, align 8, !noalias !6680
  %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store i64 143, ptr %.sroa.524.sroa.5.0..sroa.524.0..sroa_idx25.sroa_idx.i.i, align 8, !noalias !6680
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  store i32 1, ptr %i.ag, align 8, !noalias !6680
  %i.ah = getelementptr inbounds nuw i8, ptr %i.g, i64 76
  store i32 29, ptr %i.ah, align 4, !noalias !6680
  invoke void @"_ZN61_$LT$log..__private_api..GlobalLogger$u20$as$u20$log..Log$GT$3log17h07563ec464464c22E"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(128) %i.g)
          to label %bb.f unwind label %bb.c

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !6680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  br label %bb.d

bb.g:                                             ; preds = %bb.d
  %i.ai = load i64, ptr %i.q, align 8, !range !225, !noundef !6 ; 7 uses
  %i.aj = icmp eq i64 %i.ai, -9223372036854775808
  %i.ak = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !6, !noundef !6 ; 5 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.q, i64 16 ; 2 uses
  br i1 %i.aj, label %bb.h, label %.lr.ph

bb.h:                                             ; preds = %bb.g
  %i.an = load i8, ptr %i.am, align 8, !range !3106, !noundef !6
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit302"

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body298

.loopexit.split-lp:                               ; preds = %bb.bl, %.loopexit622
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body298

.lr.ph:                                           ; preds = %bb.g
  %.sroa.5113.0.copyload = load i64, ptr %i.am, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  store i64 0, ptr %i.p, align 8
  %i.ao = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 3 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 4 uses
  store i64 0, ptr %i.ap, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  store i64 0, ptr %i.o, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 16 ; 2 uses
  store ptr %i.al, ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 32 ; 4 uses
  store i64 0, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 40 ; 2 uses
  store i64 %.sroa.5113.0.copyload, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 3 uses
  store i32 10, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 52
  store i32 10, ptr %.sroa.3.sroa.6.0..sroa.3.0..sroa_idx.sroa_idx, align 4
  %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 56 ; 2 uses
  store i8 1, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %.sroa.4134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 64 ; 2 uses
  store i8 0, ptr %.sroa.4134.0..sroa_idx, align 8
  %.sroa.5135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 65 ; 3 uses
  store i8 0, ptr %.sroa.5135.0..sroa_idx, align 1
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.4339.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.5.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.5.sroa.4.0..sroa.5.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.sroa.5.sroa.5.0..sroa.5.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %.sroa.5.sroa.6.0..sroa.5.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %.sroa.5.sroa.7.0..sroa.5.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 56
  %.sroa.6.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 64
  %.sroa.7340.0..sroa.4.0..sroa_idx.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.d, i64 65
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.b, i64 65 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.at = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 5 uses
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 3 uses
  %i.aw = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %.phi.trans.insert.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"
  %.sroa.4347.0.copyload764 = phi ptr [ inttoptr (i64 8 to ptr), %.lr.ph ], [ %i.ow, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" ] ; 2 uses
  %i.ax = phi i64 [ 0, %.lr.ph ], [ %i.oy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" ] ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6687)
  %.val.i240 = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !6687, !nonnull !6, !align !44, !noundef !6 ; 3 uses
  %.val1.i241 = load i64, ptr %.sroa.3.sroa.2.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !6687, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6690)
  %i.ay = load i64, ptr %.sroa.3.sroa.4.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !6693, !noalias !6694, !noundef !6 ; 8 uses
  %.promoted.i.i = load i64, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !6693, !noalias !6694 ; 2 uses
  %i.az = icmp ult i64 %i.ay, %.promoted.i.i
  br i1 %i.az, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.i
  %.not.i.i = icmp ugt i64 %i.ay, %.val1.i241
  %i.ba = load i8, ptr %.sroa.3.sroa.7.0..sroa.3.0..sroa_idx.sroa_idx, align 8, !alias.scope !6693, !noalias !6694 ; 2 uses
  %i.bb = zext nneg i8 %i.ba to i64               ; 4 uses
  %i.bc = icmp ult i8 %i.ba, 5
  br i1 %.not.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", label %.lr.ph.split.i.i

.lr.ph.split.i.i:                                 ; preds = %.lr.ph.i.i
  %i.bd = getelementptr i8, ptr %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.bb
  %i.be = getelementptr i8, ptr %i.bd, i64 -1
  call void @llvm.assume(i1 %i.bc)
  %.pre.i.i = load i8, ptr %i.be, align 1, !alias.scope !6693, !noalias !6694 ; 2 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.l, %.lr.ph.split.i.i
  %i.bf = phi i64 [ %.promoted.i.i, %.lr.ph.split.i.i ], [ %i.bs, %bb.l ] ; 4 uses
  %i.bg = sub nuw i64 %i.ay, %i.bf                ; 3 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.val.i240, i64 %i.bf ; 2 uses
  %i.bi = icmp ult i64 %i.bg, 16
  br i1 %i.bi, label %.preheader.i.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i

.preheader.i.i.i:                                 ; preds = %bb.j
  %.not.i.i.i = icmp eq i64 %i.ay, %i.bf
  br i1 %.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %.preheader.i.i.i, %bb.k
  %.sroa.01.05.i.i.i = phi i64 [ %i.bm, %bb.k ], [ 0, %.preheader.i.i.i ] ; 3 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 %.sroa.01.05.i.i.i
  %i.bk = load i8, ptr %i.bj, align 1, !alias.scope !6696, !noalias !6699, !noundef !6
  %i.bl = icmp eq i8 %i.bk, %.pre.i.i
  br i1 %i.bl, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %bb.k

bb.k:                                             ; preds = %.lr.ph.i.i.i
  %i.bm = add nuw i64 %.sroa.01.05.i.i.i, 1       ; 2 uses
  %exitcond.not.i.i.i = icmp eq i64 %i.bm, %i.bg
  br i1 %exitcond.not.i.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %.lr.ph.i.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i: ; preds = %bb.j
  %i.bn = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %.pre.i.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.bh, i64 noundef %i.bg)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i.i
  %i.bo = extractvalue { i64, i64 } %i.bn, 0
  %i.bp = extractvalue { i64, i64 } %i.bn, 1
  %i.bq = trunc nuw i64 %i.bo to i1
  br i1 %i.bq, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split"

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i: ; preds = %.lr.ph.i.i.i, %.noexc
  %.sroa.4.0.i27.i.i = phi i64 [ %i.bp, %.noexc ], [ %.sroa.01.05.i.i.i, %.lr.ph.i.i.i ]
  %i.br = add i64 %i.bf, 1
  %i.bs = add i64 %i.br, %.sroa.4.0.i27.i.i       ; 9 uses
  %.not20.i.i = icmp ult i64 %i.bs, %i.bb
  %.not21.i.i = icmp ugt i64 %i.bs, %.val1.i241
  %or.cond.i.i = or i1 %.not20.i.i, %.not21.i.i
  br i1 %or.cond.i.i, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.m, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.bt = icmp ult i64 %i.ay, %i.bs
  br i1 %i.bt, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", label %bb.j

bb.m:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i.i
  %i.bu = sub nuw i64 %i.bs, %i.bb
  %i.bv = getelementptr inbounds nuw i8, ptr %.val.i240, i64 %i.bu
  %bcmp.i.i = call i32 @bcmp(ptr nonnull %i.bv, ptr nonnull %.sroa.3.sroa.5.0..sroa.3.0..sroa_idx.sroa_idx, i64 %i.bb), !noalias !6694
  %i.bw = icmp eq i32 %bcmp.i.i, 0
  br i1 %i.bw, label %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i", label %bb.l

"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i": ; preds = %bb.m
  store i64 %i.bs, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  %i.bx = load i64, ptr %i.o, align 8, !alias.scope !6687, !noundef !6 ; 2 uses
  %i.by = sub nuw i64 %i.bs, %i.bx
  store i64 %i.bs, ptr %i.o, align 8, !alias.scope !6687
  br label %select.unfold

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split": ; preds = %bb.l, %.preheader.i.i.i, %.noexc, %bb.k
  %.sink = phi i64 [ %i.ay, %bb.k ], [ %i.ay, %.preheader.i.i.i ], [ %i.ay, %.noexc ], [ %i.bs, %bb.l ]
  store i64 %.sink, ptr %.sroa.3.sroa.3.0..sroa.3.0..sroa_idx.sroa_idx, align 8
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i"

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i": ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i.sink.split", %.lr.ph.i.i, %bb.i
  store i8 1, ptr %.sroa.5135.0..sroa_idx, align 1, !alias.scope !6700
  %i.bz = load i8, ptr %.sroa.4134.0..sroa_idx, align 8, !range !1150, !alias.scope !6700, !noundef !6
  %i.ca = trunc nuw i8 %i.bz to i1
  %.pre.i2.i = load i64, ptr %i.o, align 8, !alias.scope !6700 ; 3 uses
  %.pre2.i.i = load i64, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !6700 ; 2 uses
  %.not.i3.i = icmp ne i64 %.pre2.i.i, %.pre.i2.i
  %or.cond.not.i.i = select i1 %i.ca, i1 true, i1 %.not.i3.i
  %i.cb = sub nuw i64 %.pre2.i.i, %.pre.i2.i
  br i1 %or.cond.not.i.i, label %select.unfold, label %.thread441

select.unfold:                                    ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i"
  %.sroa.4.1.i = phi i64 [ %i.by, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ %i.cb, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ] ; 4 uses
  %.pn614 = phi i64 [ %i.bx, %"_ZN81_$LT$core..str..pattern..CharSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h8927af93fe787fa7E.exit.i" ], [ %.pre.i2.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ]
  %.sroa.0.1.i = getelementptr inbounds nuw i8, ptr %.val.i240, i64 %.pn614 ; 4 uses
  %i.cc = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1.i, 0
  %i.cd = insertvalue { ptr, i64 } %i.cc, i64 %.sroa.4.1.i, 1 ; 3 uses
  %.not.i.i.i242 = icmp eq i64 %.sroa.4.1.i, 0
  %.pre.i.i243 = add i64 %.sroa.4.1.i, -1         ; 3 uses
  br i1 %.not.i.i.i242, label %bb.o, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i": ; preds = %select.unfold
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i.i243
  %rhsc.i = load i8, ptr %i.ce, align 1, !alias.scope !6703
  %rhsc.fr.i = freeze i8 %rhsc.i
  %i.cf = icmp eq i8 %rhsc.fr.i, 10
  br i1 %i.cf, label %bb.n, label %bb.o

bb.n:                                             ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i"
  %i.cg = insertvalue { ptr, i64 } %i.cd, i64 %.pre.i.i243, 1
  %.not.i.i10.i = icmp eq i64 %.pre.i.i243, 0
  %.pre.i11.i = add i64 %.sroa.4.1.i, -2          ; 2 uses
  br i1 %.not.i.i10.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i", label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i"

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i": ; preds = %bb.n
  %i.ch = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i, i64 %.pre.i11.i
  %rhsc4.i = load i8, ptr %i.ch, align 1, !alias.scope !6703
  %rhsc4.fr.i = freeze i8 %rhsc4.i
  %i.ci = icmp eq i8 %rhsc4.fr.i, 13
  %spec.select.i15.i = select i1 %i.ci, ptr %.sroa.0.1.i, ptr null
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i", %bb.n
  %i.cj = phi ptr [ %spec.select.i15.i, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i12.i" ], [ null, %bb.n ] ; 2 uses
  %i.ck = insertvalue { ptr, i64 } poison, ptr %i.cj, 0
  %i.cl = insertvalue { ptr, i64 } %i.ck, i64 %.pre.i11.i, 1
  %.not9.i = icmp eq ptr %i.cj, null
  %..i = select i1 %.not9.i, { ptr, i64 } %i.cg, { ptr, i64 } %i.cl
  br label %bb.o

bb.o:                                             ; preds = %select.unfold, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i", %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i"
  %.merged.i = phi { ptr, i64 } [ %..i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15strip_suffix_of17h5b8e9f9c7232e407E.exit16.i" ], [ %i.cd, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$9ends_with17h1912cacc8c1c0ff0E.exit.i.i" ], [ %i.cd, %select.unfold ] ; 2 uses
  %i.cm = extractvalue { ptr, i64 } %.merged.i, 0 ; 4 uses
  %.not189.not = icmp eq ptr %i.cm, null
  br i1 %.not189.not, label %.thread441, label %bb.bj

.thread441:                                       ; preds = %bb.o, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i", %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"
  %.sroa.5348.0.copyload768 = phi i64 [ %i.oy, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" ], [ %i.ax, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ], [ %i.ax, %bb.o ] ; 3 uses
  %.sroa.4347.0.copyload766 = phi ptr [ %i.ow, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" ], [ %.sroa.4347.0.copyload764, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h17c433ea5c23113bE.exit.i" ], [ %.sroa.4347.0.copyload764, %bb.o ] ; 9 uses
  %.sroa.0346.0.copyload.pre = load i64, ptr %i.p, align 8 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.cn = icmp ult i64 %.sroa.5348.0.copyload768, 384307168202282326
  call void @llvm.assume(i1 %i.cn)
  %.idx = mul nuw nsw i64 %.sroa.5348.0.copyload768, 24
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.4347.0.copyload766, i64 %.idx ; 3 uses
  store ptr %.sroa.4347.0.copyload766, ptr %i.n, align 8, !alias.scope !6706, !noalias !6709
  %i.cp = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store i64 %.sroa.0346.0.copyload.pre, ptr %i.cp, align 8, !alias.scope !6706, !noalias !6709
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 8 ; 2 uses
  store ptr %.sroa.4347.0.copyload766, ptr %i.cq, align 8, !alias.scope !6706, !noalias !6709
  %i.cr = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store ptr %i.co, ptr %i.cr, align 8, !alias.scope !6706, !noalias !6709
  call void @llvm.experimental.noalias.scope.decl(metadata !6711)
  %i.cs = icmp eq i64 %.sroa.5348.0.copyload768, 0
  br i1 %i.cs, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit.thread", label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit"

bb.p:                                             ; preds = %bb.s, %.thread505
  br i1 %.sroa.0101.2, label %bb.bi, label %.thread431

.thread447:                                       ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit.thread"
  %i.ct = landingpad { ptr, i32 }
          cleanup
  br label %bb.bi

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit": ; preds = %.thread441
  %i.cu = getelementptr inbounds nuw i8, ptr %.sroa.4347.0.copyload766, i64 24 ; 2 uses
  store ptr %i.cu, ptr %i.cq, align 8, !alias.scope !6711, !noalias !6714
  %.sroa.0354.0.copyload = load i64, ptr %.sroa.4347.0.copyload766, align 8, !noalias !6711 ; 7 uses
  %.sroa.5355.0..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4347.0.copyload766, i64 8
  %.sroa.5355.0.copyload = load ptr, ptr %.sroa.5355.0..sroa_idx, align 8, !noalias !6711 ; 6 uses
  %.not190 = icmp eq i64 %.sroa.0354.0.copyload, -9223372036854775808
  br i1 %.not190, label %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit.thread", label %bb.q, !prof !2532

"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit.thread": ; preds = %.thread441, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit"
  %i.cv = phi ptr [ %.sroa.4347.0.copyload766, %.thread441 ], [ %i.cu, %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit" ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  store ptr @220, ptr %i.h, align 8
  %i.cw = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 1, ptr %i.cw, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  store ptr null, ptr %i.cx, align 8
  %i.cy = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.cy, align 8
  %i.cz = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store i64 0, ptr %i.cz, align 8
  %i.da = invoke fastcc noundef nonnull ptr @_ZN6anyhow9__private10format_err17h7fa6d8de0a0b5309E(ptr noalias noundef readonly align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.bf unwind label %.thread447 ; 2 uses

bb.q:                                             ; preds = %"_ZN103_$LT$alloc..vec..into_iter..IntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17ha6e2fa718ac023ebE.exit"
  %i.db = getelementptr i8, ptr %.sroa.4347.0.copyload766, i64 16
  %.sroa.6356.0.copyload = load i64, ptr %i.db, align 8, !noalias !6711 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5355.0.copyload) ]
  %.not191 = icmp eq i64 %.sroa.6356.0.copyload, 0
  br i1 %.not191, label %.invoke, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.dc = load i32, ptr %.sroa.5355.0.copyload, align 4, !noundef !6 ; 2 uses
  %.not192 = icmp eq i64 %.sroa.6356.0.copyload, 1
  br i1 %.not192, label %.invoke, label %bb.u

.thread505:                                       ; preds = %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit", %bb.w, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h31c932976613bd83E.exit284", %bb.t
  %.sroa.0101.2 = phi i1 [ false, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h31c932976613bd83E.exit284" ], [ false, %bb.w ], [ true, %bb.t ], [ false, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit" ]
  %.pn205.pn.pn = phi { ptr, i32 } [ %.pn205.pn504, %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h31c932976613bd83E.exit284" ], [ %lpad.thr_comm.split-lp, %bb.w ], [ %i.df, %bb.t ], [ %.pn, %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit" ] ; 2 uses
  %i.dd = icmp eq i64 %.sroa.0354.0.copyload, 0
  br i1 %i.dd, label %bb.p, label %bb.s

bb.s:                                             ; preds = %.thread505
  %i.de = shl nuw i64 %.sroa.0354.0.copyload, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5355.0.copyload, i64 noundef %i.de, i64 noundef range(i64 1, -9223372036854775807) 4) #47
  br label %bb.p

bb.t:                                             ; preds = %.invoke, %bb.v
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %.thread505

bb.u:                                             ; preds = %bb.r
  %i.dg = getelementptr inbounds nuw i8, ptr %.sroa.5355.0.copyload, i64 4
  %i.dh = load i32, ptr %i.dg, align 4, !noundef !6 ; 3 uses
  %i.di = mul i32 %i.dh, %i.dc                    ; 4 uses
  %i.dj = zext i32 %i.di to i64                   ; 2 uses
  %i.dk = add nuw nsw i64 %i.dj, 2                ; 3 uses
  %i.dl = shl nuw nsw i64 %i.dk, 1                ; 7 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !6716
  %i.dm = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dl, i64 noundef range(i64 1, 9) 2) #47, !noalias !6716 ; 15 uses
  %i.dn = icmp eq ptr %i.dm, null
  br i1 %i.dn, label %bb.v, label %iter.check

iter.check:                                       ; preds = %bb.u
  %i.do = add nuw nsw i64 %i.dj, 1                ; 5 uses
  %min.iters.check = icmp ult i32 %i.di, 3
  br i1 %min.iters.check, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h144895554a2285d7E.exit.i.i.preheader", label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
end_hunk_3
begin_hunk_4_@_ZN18lindera_dictionary18dictionary_builder22connection_cost_matrix27ConnectionCostMatrixBuilder5build17hf06875aade560198E:bb.a

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef %i.je, i64 noundef range(i64 1, 0) 1, i64 noundef 4, i64 noundef 4)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.ci, !noalias !6833

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %.pre1.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !range !165, !alias.scope !6853, !noalias !6854
  %.pre.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !6853, !noalias !6854
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i": ; preds = %.noexc.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i
  %i.ji = phi ptr [ %.pre.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i ], [ %i.jd, %.lr.ph.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.jj = phi i64 [ %.pre1.i.i.i.i.i.i.i.i.i.i, %.noexc.i.i.i.i.i.i.i.i ], [ %i.je, %.lr.ph.i.i.i.i.i.i.i.i.i.i ]
  %i.jk = getelementptr inbounds nuw [4 x i8], ptr %i.ji, i64 %i.jf
  store i32 %.pn.i.i.i.i.i.i.i.i.i.i, ptr %i.jk, align 4, !noalias !6857
  %i.jl = add nuw nsw i64 %i.jf, 1                ; 3 uses
  store i64 %i.jl, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !alias.scope !6853, !noalias !6854
  call void @llvm.experimental.noalias.scope.decl(metadata !6858)
  call void @llvm.experimental.noalias.scope.decl(metadata !6861), !noalias !6852
  %i.jm = load ptr, ptr %i.b, align 8, !alias.scope !6864, !noalias !6852, !nonnull !6, !align !44, !noundef !6
  call void @llvm.experimental.noalias.scope.decl(metadata !6865), !noalias !6852
  call void @llvm.experimental.noalias.scope.decl(metadata !6868)
  call void @llvm.experimental.noalias.scope.decl(metadata !6871), !noalias !6874
  call void @llvm.experimental.noalias.scope.decl(metadata !6875), !noalias !6874
  %.promoted.i.i.i = load i8, ptr %i.ar, align 1, !alias.scope !6878, !noalias !6874
  %.promoted18.i.i.i = load i64, ptr %i.aq, align 8, !alias.scope !6883, !noalias !6874
  %.val.i.i.i.i.i = load ptr, ptr %i.as, align 8, !alias.scope !6883, !noalias !6874, !nonnull !6, !align !44
  %i.jn = load ptr, ptr %i.au, align 8, !alias.scope !6883, !noalias !6874, !nonnull !6 ; 5 uses
  %i.jo = load i8, ptr %i.aw, align 8, !range !1150, !alias.scope !6883, !noalias !6874
  %i.jp = trunc nuw i8 %i.jo to i1
  %.pre2.i.i.i.i.i.i = load i64, ptr %.phi.trans.insert.i.i.i.i.i.i, align 8, !alias.scope !6883, !noalias !6874 ; 2 uses
  %.promoted21.i.i.i = load ptr, ptr %i.at, align 8, !alias.scope !6883, !noalias !6874
  %.promoted22.i.i.i = load i64, ptr %i.av, align 8, !alias.scope !6883, !noalias !6874
  br label %bb.bm

bb.bm:                                            ; preds = %select.unfold.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i"
  %.lcssa1725.i.i.i = phi i64 [ %.lcssa1723.i.i.i, %select.unfold.i.i.i ], [ %.promoted22.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 2 uses
  %i.jq = phi ptr [ %i.mc, %select.unfold.i.i.i ], [ %.promoted21.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 3 uses
  %.pre.i.i.i20.i.i.i = phi i64 [ %.pre.i.i.i19.i.i.i, %select.unfold.i.i.i ], [ %.promoted18.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ] ; 4 uses
  %i.jr = phi i8 [ %i.md, %select.unfold.i.i.i ], [ %.promoted.i.i.i, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h7748aef6cbfeeecdE.exit.i.i.i.i.i.i.i.i.i.i" ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6884), !noalias !6874
  call void @llvm.experimental.noalias.scope.decl(metadata !6885), !noalias !6874
  %i.js = trunc nuw i8 %i.jr to i1
  br i1 %i.js, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i", label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  call void @llvm.experimental.noalias.scope.decl(metadata !6886), !noalias !6874
  call void @llvm.experimental.noalias.scope.decl(metadata !6889), !noalias !6874
  %i.jt = icmp eq ptr %i.jq, %i.jn
  br i1 %i.jt, label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %bb.bn, %bb.bw
  %i.ju = phi i64 [ %i.lj, %bb.bw ], [ %.lcssa1725.i.i.i, %bb.bn ] ; 2 uses
  %i.jv = phi ptr [ %i.lf, %bb.bw ], [ %i.jq, %bb.bn ] ; 6 uses
  %i.jw = ptrtoint ptr %i.jv to i64
  call void @llvm.experimental.noalias.scope.decl(metadata !6892), !noalias !6874
  call void @llvm.experimental.noalias.scope.decl(metadata !6895), !noalias !6874
  call void @llvm.experimental.noalias.scope.decl(metadata !6898), !noalias !6874
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jv, i64 1 ; 4 uses
  store ptr %i.jx, ptr %i.at, align 8, !alias.scope !6901, !noalias !6904
  %i.jy = load i8, ptr %i.jv, align 1, !noalias !6908, !noundef !6 ; 5 uses
  %i.jz = icmp sgt i8 %i.jy, -1
  br i1 %i.jz, label %bb.bo, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i": ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.ka = and i8 %i.jy, 31
  %i.kb = zext nneg i8 %i.ka to i32               ; 3 uses
  %i.kc = icmp ne ptr %i.jx, %i.jn
  call void @llvm.assume(i1 %i.kc), !noalias !6874
  %i.kd = getelementptr inbounds nuw i8, ptr %i.jv, i64 2 ; 4 uses
  store ptr %i.kd, ptr %i.at, align 8, !alias.scope !6909, !noalias !6904
  %i.ke = load i8, ptr %i.jx, align 1, !noalias !6908, !noundef !6
  %i.kf = shl nuw nsw i32 %i.kb, 6
  %i.kg = and i8 %i.ke, 63
  %i.kh = zext nneg i8 %i.kg to i32               ; 2 uses
  %i.ki = or disjoint i32 %i.kf, %i.kh
  %i.kj = icmp samesign ugt i8 %i.jy, -33
  br i1 %i.kj, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", label %bb.bp

bb.bo:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i
  %i.kk = zext nneg i8 %i.jy to i32
  br label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.kl = icmp ne ptr %i.kd, %i.jn
  call void @llvm.assume(i1 %i.kl), !noalias !6874
  %i.km = getelementptr inbounds nuw i8, ptr %i.jv, i64 3 ; 4 uses
  store ptr %i.km, ptr %i.at, align 8, !alias.scope !6912, !noalias !6904
  %i.kn = load i8, ptr %i.kd, align 1, !noalias !6908, !noundef !6
  %i.ko = shl nuw nsw i32 %i.kh, 6
  %i.kp = and i8 %i.kn, 63
  %i.kq = zext nneg i8 %i.kp to i32
  %i.kr = or disjoint i32 %i.ko, %i.kq            ; 2 uses
  %i.ks = shl nuw nsw i32 %i.kb, 12
  %i.kt = or disjoint i32 %i.kr, %i.ks
  %i.ku = icmp samesign ugt i8 %i.jy, -17
  br i1 %i.ku, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", label %bb.bp

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i": ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i"
  %i.kv = icmp ne ptr %i.km, %i.jn
  call void @llvm.assume(i1 %i.kv), !noalias !6874
  %i.kw = getelementptr inbounds nuw i8, ptr %i.jv, i64 4 ; 2 uses
  store ptr %i.kw, ptr %i.at, align 8, !alias.scope !6915, !noalias !6904
  %i.kx = load i8, ptr %i.km, align 1, !noalias !6908, !noundef !6
  %i.ky = shl nuw nsw i32 %i.kb, 18
  %i.kz = and i32 %i.ky, 1835008
  %i.la = shl nuw nsw i32 %i.kr, 6
  %i.lb = and i8 %i.kx, 63
  %i.lc = zext nneg i8 %i.lb to i32
  %i.ld = or disjoint i32 %i.la, %i.lc
  %i.le = or disjoint i32 %i.ld, %i.kz
  br label %bb.bp

bb.bp:                                            ; preds = %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i", %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i", %bb.bo, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i"
  %i.lf = phi ptr [ %i.km, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.kw, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.kd, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.jx, %bb.bo ] ; 5 uses
  %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i = phi i32 [ %i.kt, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit14.i.i.i.i.i.i.i.i.i.i" ], [ %i.le, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit16.i.i.i.i.i.i.i.i.i.i" ], [ %i.ki, %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h27ff15cafac50ccaE.exit12.i.i.i.i.i.i.i.i.i.i" ], [ %i.kk, %bb.bo ] ; 8 uses
  %i.lg = icmp samesign ult i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 1114112
  call void @llvm.assume(i1 %i.lg), !noalias !6874
  %i.lh = ptrtoint ptr %i.lf to i64
  %i.li = sub i64 %i.lh, %i.jw
  %i.lj = add i64 %i.li, %i.ju                    ; 7 uses
  switch i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, label %bb.bq [
    i32 32, label %bb.bx
    i32 13, label %bb.bx
    i32 12, label %bb.bx
    i32 11, label %bb.bx
    i32 10, label %bb.bx
    i32 9, label %bb.bx
  ]

bb.bq:                                            ; preds = %bb.bp
  %i.lk = icmp samesign ugt i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 127
  br i1 %i.lk, label %bb.br, label %bb.bw

bb.br:                                            ; preds = %bb.bq
  %i.ll = lshr i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 8
  switch i32 %i.ll, label %bb.bw [
    i32 0, label %bb.bu
    i32 22, label %bb.bs
    i32 32, label %bb.bv
    i32 48, label %bb.bt
  ]

bb.bs:                                            ; preds = %bb.br
  %i.lm = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 5760
  %i.ln = zext i1 %i.lm to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bt:                                            ; preds = %bb.br
  %i.lo = icmp eq i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 12288
  %i.lp = zext i1 %i.lo to i8
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bu:                                            ; preds = %bb.br
  %i.lq = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lr = zext nneg i32 %i.lq to i64
  %i.ls = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lr
  %i.lt = load i8, ptr %i.ls, align 1, !noalias !6918, !noundef !6
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

bb.bv:                                            ; preds = %bb.br
  %i.lu = and i32 %.sroa.4.0.i.ph.i.i.i.i.i.i.i.i.i, 255
  %i.lv = zext nneg i32 %i.lu to i64
  %i.lw = getelementptr inbounds nuw i8, ptr @_ZN4core7unicode12unicode_data11white_space14WHITESPACE_MAP17h4cf41e25fd3a5318E, i64 %i.lv
  %i.lx = load i8, ptr %i.lw, align 1, !noalias !6918, !noundef !6
  %i.ly = lshr i8 %i.lx, 1
  br label %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i"

"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.bv, %bb.bu, %bb.bt, %bb.bs
  %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i = phi i8 [ %i.lp, %bb.bt ], [ %i.lt, %bb.bu ], [ %i.ln, %bb.bs ], [ %i.ly, %bb.bv ]
  %i.lz = trunc i8 %.sroa.0.0.i.i.i.i.i.i.i.i.i.i.i.i to i1
  br i1 %i.lz, label %bb.bx, label %bb.bw

bb.bw:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.br, %bb.bq
  %i.ma = icmp eq ptr %i.lf, %i.jn
  br i1 %i.ma, label %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.i

"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i": ; preds = %bb.bw
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6919, !noalias !6904
  br label %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i"

bb.bx:                                            ; preds = %"_ZN53_$LT$F$u20$as$u20$core..str..pattern..MultiCharEq$GT$7matches17h06910994891be35cE.exit.i.i.i.i.i.i.i.i", %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp, %bb.bp
  store i64 %i.lj, ptr %i.av, align 8, !alias.scope !6919, !noalias !6904
  store i64 %i.lj, ptr %i.aq, align 8, !alias.scope !6878, !noalias !6874
  br label %select.unfold.i.i.i

"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i": ; preds = %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i", %bb.bn
  %.lcssa1724.i.i.i = phi i64 [ %i.lj, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %.lcssa1725.i.i.i, %bb.bn ]
  %i.mb = phi ptr [ %i.lf, %"._ZN97_$LT$core..str..pattern..MultiCharEqSearcher$LT$C$GT$$u20$as$u20$core..str..pattern..Searcher$GT$4next17h427e7d7cbc44a783E.exit.loopexit_crit_edge.i.i.i.i.i.i.i" ], [ %i.jq, %bb.bn ]
  store i8 1, ptr %i.ar, align 1, !alias.scope !6920, !noalias !6874
  %.not.i.i.i.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.pre.i.i.i20.i.i.i
  %or.cond.not.i.i.i.i.i.i = select i1 %i.jp, i1 true, i1 %.not.i.i.i.i.i.i
  br i1 %or.cond.not.i.i.i.i.i.i, label %select.unfold.i.i.i, label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

select.unfold.i.i.i:                              ; preds = %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %bb.bx
  %.lcssa1723.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.lcssa1724.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.mc = phi ptr [ %i.lf, %bb.bx ], [ %i.mb, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pre.i.i.i19.i.i.i = phi i64 [ %i.lj, %bb.bx ], [ %.pre.i.i.i20.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %i.md = phi i8 [ 0, %bb.bx ], [ 1, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.pn28.i.i.i = phi i64 [ %i.ju, %bb.bx ], [ %.pre2.i.i.i.i.i.i, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i" ]
  %.sroa.4.1.i.i.i.i.i = sub nuw i64 %.pn28.i.i.i, %.pre.i.i.i20.i.i.i ; 9 uses
  %.not.i.i.i.i316 = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i316, label %bb.bm, label %bb.by

bb.by:                                            ; preds = %select.unfold.i.i.i
  %.sroa.0.1.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.pre.i.i.i20.i.i.i ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6923), !noalias !6852
  %cond = icmp eq i64 %.sroa.4.1.i.i.i.i.i, 1
  %i.me = load i8, ptr %.sroa.0.1.i.i.i.i.i, align 1, !alias.scope !6926, !noalias !6933 ; 2 uses
  br i1 %cond, label %bb.bz, label %thread-pre-split.i.i.i.i.i.i.i.i

bb.bz:                                            ; preds = %bb.by
  switch i8 %i.me, label %bb.cf [
    i8 43, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
    i8 45, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  ]

thread-pre-split.i.i.i.i.i.i.i.i:                 ; preds = %bb.by
  switch i8 %i.me, label %bb.cf [
    i8 43, label %bb.ca
    i8 45, label %bb.cb
  ]

bb.ca:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mf = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mg = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 3 uses
  %i.mh = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  br i1 %i.mh, label %.preheader.i.i.i.i.i.i.i.i, label %.preheader102.i.i.i.i.i.i.i.i

bb.cb:                                            ; preds = %thread-pre-split.i.i.i.i.i.i.i.i
  %i.mi = getelementptr inbounds nuw i8, ptr %.sroa.0.1.i.i.i.i.i, i64 1 ; 2 uses
  %i.mj = add i64 %.sroa.4.1.i.i.i.i.i, -1        ; 3 uses
  %i.mk = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 9
  %.not91118.i.i.i.i.i.i.i.i = icmp eq i64 %i.mj, 0 ; 2 uses
  br i1 %i.mk, label %.preheader105.i.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.i.preheader

.preheader108.i.i.i.i.i.i.i.i.preheader:          ; preds = %bb.cb
  br i1 %.not91118.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph937

.preheader105.i.i.i.i.i.i.i.i:                    ; preds = %bb.cb
  br i1 %.not91118.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.a

bb.cc:                                            ; preds = %bb.cg
  %i.ml = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, i64 1
  %i.mm = add i64 %.sroa.27.0.i.i.i.i.i.i.i.i940, -1 ; 2 uses
  %i.mn = extractvalue { i32, i1 } %i.np, 0       ; 2 uses
  %.not92.i.i.i.i.i.i.i.i = icmp eq i64 %i.mm, 0
  br i1 %.not92.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.preheader108.i.i.i.i.i.i.i.i:                    ; preds = %bb.cd
  %i.mo = getelementptr inbounds nuw i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, i64 1
  %i.mp = add i64 %.sroa.27.2.i.i.i.i.i.i.i.i935, -1 ; 2 uses
  %i.mq = extractvalue { i32, i1 } %i.na, 0       ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.mp, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph937

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %.preheader108.i.i.i.i.i.i.i.i, %bb.ce, %bb.cc, %bb.ch, %.preheader108.i.i.i.i.i.i.i.i.preheader, %.preheader102.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i, %.preheader105.i.i.i.i.i.i.i.i
  %.sroa.033.3.i.i.i.i.i.i.i.i = phi i32 [ %8, %bb.ce ], [ %i.ny, %bb.ch ], [ %i.mn, %bb.cc ], [ 0, %.preheader.i.i.i.i.i.i.i.i ], [ 0, %.preheader105.i.i.i.i.i.i.i.i ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.i.preheader ], [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ]
  %i.mr = zext i32 %.sroa.033.3.i.i.i.i.i.i.i.i to i64
  %i.ms = shl nuw i64 %i.mr, 32
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph937:                                        ; preds = %.preheader108.i.i.i.i.i.i.i.i.preheader, %.preheader108.i.i.i.i.i.i.i.i
  %.sroa.03.2.i.i.i.i.i.i.i.i936 = phi ptr [ %i.mo, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mi, %.preheader108.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.2.i.i.i.i.i.i.i.i935 = phi i64 [ %i.mp, %.preheader108.i.i.i.i.i.i.i.i ], [ %i.mj, %.preheader108.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.2.i.i.i.i.i.i.i.i934 = phi i32 [ %i.mq, %.preheader108.i.i.i.i.i.i.i.i ], [ 0, %.preheader108.i.i.i.i.i.i.i.i.preheader ]
  %i.mt = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.2.i.i.i.i.i.i.i.i934, i32 10) ; 2 uses
  %i.mu = extractvalue { i32, i1 } %i.mt, 1
  %i.mv = load i8, ptr %.sroa.03.2.i.i.i.i.i.i.i.i936, align 1, !alias.scope !6926, !noalias !6933, !noundef !6
  %i.mw = zext i8 %i.mv to i32
  %i.mx = add nsw i32 %i.mw, -48                  ; 2 uses
  %i.my = icmp ugt i32 %i.mx, 9                   ; 2 uses
  %brmerge.i.i.i.i.i.i.i.i = select i1 %i.my, i1 true, i1 %i.mu
  br i1 %brmerge.i.i.i.i.i.i.i.i, label %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, label %bb.cd

bb.cd:                                            ; preds = %.lr.ph937
  %i.mz = extractvalue { i32, i1 } %i.mt, 0
  %i.na = call { i32, i1 } @llvm.ssub.with.overflow.i32(i32 %i.mz, i32 %i.mx) ; 2 uses
  %i.nb = extractvalue { i32, i1 } %i.na, 1
  br i1 %i.nb, label %.loopexit101.i.i.i.i.i.i.i.i, label %.preheader108.i.i.i.i.i.i.i.i

.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph942
  %.mux97.le.i.i.i.i.i.i.i.i = select i1 %i.nn, i64 256, i64 512
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i:  ; preds = %.lr.ph937
  %.mux.le.i.i.i.i.i.i.i.i = select i1 %i.my, i64 256, i64 768
  br label %.loopexit101.i.i.i.i.i.i.i.i

.loopexit101.i.i.i.i.i.i.i.i:                     ; preds = %bb.cd, %.lr.ph.i.i.i.i.i.i.i.i.a, %bb.cg, %.lr.ph129.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i
  %.sroa.12.2.i.i.i.i.i.i.i.i = phi i64 [ 256, %.lr.ph129.i.i.i.i.i.i.i.i ], [ 512, %bb.cg ], [ 256, %.lr.ph.i.i.i.i.i.i.i.i.a ], [ %.mux97.le.i.i.i.i.i.i.i.i, %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i ], [ %.mux.le.i.i.i.i.i.i.i.i, %.loopexit110.split.loop.exit116.i.i.i.i.i.i.i.i ], [ 768, %bb.cd ]
  %i.nc = or disjoint i64 %.sroa.12.2.i.i.i.i.i.i.i.i, 1
  br label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.a:                         ; preds = %.preheader105.i.i.i.i.i.i.i.i, %bb.ce
  %.sroa.03.3121.i.i.i.i.i.i.i.i = phi ptr [ %7, %bb.ce ], [ %i.mi, %.preheader105.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.3120.i.i.i.i.i.i.i.i = phi i64 [ %6, %bb.ce ], [ %i.mj, %.preheader105.i.i.i.i.i.i.i.i ]
  %.sroa.033.4119.i.i.i.i.i.i.i.i = phi i32 [ %8, %bb.ce ], [ 0, %.preheader105.i.i.i.i.i.i.i.i ]
  %i.nd = load i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i.i, align 1, !alias.scope !6926, !noalias !6933, !noundef !6
  %i.ne = zext i8 %i.nd to i32
  %i.nf = add nsw i32 %i.ne, -48                  ; 2 uses
  %i.ng = icmp ult i32 %i.nf, 10
  br i1 %i.ng, label %bb.ce, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ce:                                            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.a
  %5 = mul i32 %.sroa.033.4119.i.i.i.i.i.i.i.i, 10
  %6 = add nsw i64 %.sroa.27.3120.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %.sroa.03.3121.i.i.i.i.i.i.i.i, i64 1
  %8 = sub i32 %5, %i.nf                          ; 2 uses
  %.not91.i.i.i.i.i.i.i.i = icmp eq i64 %6, 0
  br i1 %.not91.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.a

bb.cf:                                            ; preds = %bb.bz, %thread-pre-split.i.i.i.i.i.i.i.i
  %i.nh = icmp ult i64 %.sroa.4.1.i.i.i.i.i, 8
  br i1 %i.nh, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader, label %.preheader102.i.i.i.i.i.i.i.i

.lr.ph129.i.i.i.i.i.i.i.i.preheader:              ; preds = %.preheader.i.i.i.i.i.i.i.i, %bb.cf
  %.sroa.03.1128.i.i.i.i.i.i.i.i.ph = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cf ], [ %i.mf, %.preheader.i.i.i.i.i.i.i.i ]
  %.sroa.27.1127.i.i.i.i.i.i.i.i.ph = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cf ], [ %i.mg, %.preheader.i.i.i.i.i.i.i.i ]
  br label %.lr.ph129.i.i.i.i.i.i.i.i

.preheader102.i.i.i.i.i.i.i.i:                    ; preds = %bb.cf, %bb.ca
  %.sroa.27.0.ph.i.i.i.i.i.i.i.i = phi i64 [ %.sroa.4.1.i.i.i.i.i, %bb.cf ], [ %i.mg, %bb.ca ] ; 2 uses
  %.sroa.03.0.ph.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.0.1.i.i.i.i.i, %bb.cf ], [ %i.mf, %bb.ca ]
  %.not92.i.i.i.i.i.i.i.i938 = icmp eq i64 %.sroa.27.0.ph.i.i.i.i.i.i.i.i, 0
  br i1 %.not92.i.i.i.i.i.i.i.i938, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph942

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %bb.ca
  %.not93125.i.i.i.i.i.i.i.i = icmp eq i64 %i.mg, 0
  br i1 %.not93125.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i.preheader

.lr.ph942:                                        ; preds = %.preheader102.i.i.i.i.i.i.i.i, %bb.cc
  %.sroa.03.0.i.i.i.i.i.i.i.i941 = phi ptr [ %i.ml, %bb.cc ], [ %.sroa.03.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.27.0.i.i.i.i.i.i.i.i940 = phi i64 [ %i.mm, %bb.cc ], [ %.sroa.27.0.ph.i.i.i.i.i.i.i.i, %.preheader102.i.i.i.i.i.i.i.i ]
  %.sroa.033.0.i.i.i.i.i.i.i.i939 = phi i32 [ %i.mn, %bb.cc ], [ 0, %.preheader102.i.i.i.i.i.i.i.i ]
  %i.ni = call { i32, i1 } @llvm.smul.with.overflow.i32(i32 %.sroa.033.0.i.i.i.i.i.i.i.i939, i32 10) ; 2 uses
  %i.nj = extractvalue { i32, i1 } %i.ni, 1
  %i.nk = load i8, ptr %.sroa.03.0.i.i.i.i.i.i.i.i941, align 1, !alias.scope !6926, !noalias !6933, !noundef !6
  %i.nl = zext i8 %i.nk to i32
  %i.nm = add nsw i32 %i.nl, -48                  ; 2 uses
  %i.nn = icmp ugt i32 %i.nm, 9                   ; 2 uses
  %brmerge96.i.i.i.i.i.i.i.i = select i1 %i.nn, i1 true, i1 %i.nj
  br i1 %brmerge96.i.i.i.i.i.i.i.i, label %.loopexit104.split.loop.exit122.i.i.i.i.i.i.i.i, label %bb.cg

bb.cg:                                            ; preds = %.lr.ph942
  %i.no = extractvalue { i32, i1 } %i.ni, 0
  %i.np = call { i32, i1 } @llvm.sadd.with.overflow.i32(i32 %i.no, i32 %i.nm) ; 2 uses
  %i.nq = extractvalue { i32, i1 } %i.np, 1
  br i1 %i.nq, label %.loopexit101.i.i.i.i.i.i.i.i, label %bb.cc

.lr.ph129.i.i.i.i.i.i.i.i:                        ; preds = %.lr.ph129.i.i.i.i.i.i.i.i.preheader, %bb.ch
  %.sroa.03.1128.i.i.i.i.i.i.i.i = phi ptr [ %i.nx, %bb.ch ], [ %.sroa.03.1128.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.sroa.27.1127.i.i.i.i.i.i.i.i = phi i64 [ %i.nw, %bb.ch ], [ %.sroa.27.1127.i.i.i.i.i.i.i.i.ph, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %.sroa.033.1126.i.i.i.i.i.i.i.i = phi i32 [ %i.ny, %bb.ch ], [ 0, %.lr.ph129.i.i.i.i.i.i.i.i.preheader ]
  %i.nr = load i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, align 1, !alias.scope !6926, !noalias !6933, !noundef !6
  %i.ns = zext i8 %i.nr to i32
  %i.nt = add nsw i32 %i.ns, -48                  ; 2 uses
  %i.nu = icmp ult i32 %i.nt, 10
  br i1 %i.nu, label %bb.ch, label %.loopexit101.i.i.i.i.i.i.i.i

bb.ch:                                            ; preds = %.lr.ph129.i.i.i.i.i.i.i.i
  %i.nv = mul i32 %.sroa.033.1126.i.i.i.i.i.i.i.i, 10
  %i.nw = add nsw i64 %.sroa.27.1127.i.i.i.i.i.i.i.i, -1 ; 2 uses
  %i.nx = getelementptr inbounds nuw i8, ptr %.sroa.03.1128.i.i.i.i.i.i.i.i, i64 1
  %i.ny = add i32 %i.nt, %i.nv                    ; 2 uses
  %.not93.i.i.i.i.i.i.i.i = icmp eq i64 %i.nw, 0
  br i1 %.not93.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph129.i.i.i.i.i.i.i.i

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i: ; preds = %.loopexit101.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i = phi i64 [ %i.ms, %.loopexit.i.i.i.i.i.i.i.i ], [ %i.nc, %.loopexit101.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.nz = trunc i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i to i1
  br i1 %i.nz, label %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i, label %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit"

_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i: ; preds = %bb.bz, %bb.bz, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i = phi i64 [ %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i ], [ 257, %bb.bz ], [ 257, %bb.bz ]
  %.sroa.03.0.insert.insert.i.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i2.i.i.i.i.i, 8
  %.sroa.415.0.extract.trunc.i.i.i.i.i.i = trunc i64 %.sroa.03.0.insert.insert.i.i.i.i.i.i.i to i8 ; 2 uses
  %i.oa = icmp ult i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, 5
  call void @llvm.assume(i1 %i.oa), !noalias !6852
  store i8 %.sroa.415.0.extract.trunc.i.i.i.i.i.i, ptr %i.jm, align 1, !alias.scope !6865, !noalias !6937
  br label %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"

"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf35793715db690d9E.exit": ; preds = %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.i.i.i.i.i
  %.sroa.617.0.extract.shift.i.i.i.i.i.i = lshr i64 %.sroa.12.0.insert.insert.i.i.i.i.i.i.i.i, 32
  %.sroa.617.0.extract.trunc.i.i.i.i.i.i = trunc nuw i64 %.sroa.617.0.extract.shift.i.i.i.i.i.i to i32
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i

bb.ci:                                            ; preds = %"_ZN106_$LT$core..iter..adapters..GenericShunt$LT$I$C$R$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$9size_hint17h383208343ca4e4c2E.exit.i.i.i.i.i.i.i.i.i.i"
  %i.ob = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.c, align 8, !noalias !6833 ; 2 uses
  %i.oc = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.oc, label %.body298, label %bb.cj

bb.cj:                                            ; preds = %bb.ci
  %.val7.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6833, !nonnull !6, !noundef !6
  %i.od = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val7.i.i.i.i.i.i.i.i, i64 noundef %i.od, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6833
  br label %.body298

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i": ; preds = %bb.bm, %"_ZN4core3str4iter22SplitInternal$LT$P$GT$7get_end17h5b25cc8c060053d3E.exit.i.i.i.i.i", %_ZN4core3ops8function5FnMut8call_mut17ha5c257e1a5640fcdE.exit.thread.i.i.i.i.i
  %.sroa.0.0.copyload10.pre.i.i.i = load i64, ptr %i.c, align 8, !noalias !6938 ; 4 uses
  %.sroa.7.0.copyload12.pre.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !6938 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6817
  %i.oe = load i8, ptr %i.e, align 1, !range !6939, !noalias !6807, !noundef !6 ; 2 uses
  %.not.not.i.i.i = icmp eq i8 %i.oe, 5
  br i1 %.not.not.i.i.i, label %bb.cm, label %bb.ck

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i": ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h830ecf98bda3b183E.exit.i.i.i.i.i.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6817
  %i.of = load i8, ptr %i.e, align 1, !range !6939, !noalias !6807, !noundef !6 ; 2 uses
  %.not.not39.i.i.i = icmp eq i8 %i.of, 5
  br i1 %.not.not39.i.i.i, label %.thread586, label %.thread42.i.i.i

.thread42.i.i.i:                                  ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.7329.8.insert.ext331 = zext nneg i8 %i.of to i64
  %i.og = inttoptr i64 %.sroa.7329.8.insert.ext331 to ptr
  br label %bb.cl

"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i": ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6833
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !6817
  %i.oh = load i8, ptr %i.e, align 1, !range !6939, !noalias !6807, !noundef !6 ; 2 uses
  %.not.not21.i.i.i = icmp eq i8 %i.oh, 5
  br i1 %.not.not21.i.i.i, label %.thread586, label %.thread.i.i.i

.thread.i.i.i:                                    ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i"
  %.sroa.7329.8.insert.ext = zext nneg i8 %i.oh to i64
  %i.oi = inttoptr i64 %.sroa.7329.8.insert.ext to ptr
  br label %.thread579

bb.ck:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  %.sroa.7329.8.insert.ext335 = zext nneg i8 %i.oe to i64
  %i.oj = inttoptr i64 %.sroa.7329.8.insert.ext335 to ptr ; 2 uses
  %i.ok = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, 0
  br i1 %i.ok, label %.thread579, label %bb.cl

bb.cl:                                            ; preds = %bb.ck, %.thread42.i.i.i
  %.sroa.7329.0 = phi ptr [ %i.oj, %bb.ck ], [ %i.og, %.thread42.i.i.i ]
  %.sroa.7.0.copyload124046.i.i.i = phi ptr [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.ck ], [ %i.ix, %.thread42.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload104145.i.i.i = phi i64 [ %.sroa.0.0.copyload10.pre.i.i.i, %bb.ck ], [ 4, %.thread42.i.i.i ]
  %i.ol = shl nuw i64 %.sroa.0.0.copyload104145.i.i.i, 2
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload124046.i.i.i) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload124046.i.i.i, i64 noundef %i.ol, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6807
  br label %.thread579

.thread579:                                       ; preds = %.thread.i.i.i, %bb.ck, %bb.cl
  %.sroa.7329.1.ph = phi ptr [ %.sroa.7329.0, %bb.cl ], [ %i.oj, %bb.ck ], [ %i.oi, %.thread.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6807
  br label %.loopexit622

.thread586:                                       ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i", %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i"
  %.sroa.13.0.ph = phi i64 [ 1, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.7329.1.ph585 = phi ptr [ %i.ix, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ inttoptr (i64 4 to ptr), %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  %.sroa.0328.1.ph = phi i64 [ 4, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread35.i.i.i" ], [ 0, %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.thread.i.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6807
  br label %bb.cn

bb.cm:                                            ; preds = %"_ZN136_$LT$core..result..Result$LT$V$C$E$GT$$u20$as$u20$core..iter..traits..collect..FromIterator$LT$core..result..Result$LT$A$C$E$GT$$GT$$GT$9from_iter28_$u7b$$u7b$closure$u7d$$u7d$17h654e3c8c892e7bbdE.exit.i.i.i"
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6807
  %i.om = icmp eq i64 %.sroa.0.0.copyload10.pre.i.i.i, -9223372036854775808
  br i1 %i.om, label %.loopexit622, label %._crit_edge762, !prof !2532

._crit_edge762:                                   ; preds = %bb.cm
  %.pre = load i64, ptr %i.ap, align 8, !alias.scope !6940, !noalias !6943
  br label %bb.cn

.loopexit622:                                     ; preds = %bb.cm, %.thread579
  %.sroa.7329.1583 = phi ptr [ %.sroa.7329.1.ph, %.thread579 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %bb.cm ]
  %i.on = ptrtoint ptr %.sroa.7329.1583 to i64
  %.sroa.7329.8.extract.trunc = trunc i64 %i.on to i8
  %i.oo = invoke fastcc noundef nonnull ptr @"_ZN6anyhow5error72_$LT$impl$u20$core..convert..From$LT$E$GT$$u20$for$u20$anyhow..Error$GT$4from17h035e5d8170740611E"(i8 noundef range(i8 0, 5) %.sroa.7329.8.extract.trunc)
          to label %.split unwind label %.loopexit.split-lp ; 2 uses

.split:                                           ; preds = %.loopexit622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !6945)
  %.val4.i303 = load ptr, ptr %i.ao, align 8, !alias.scope !6945, !nonnull !6, !noundef !6 ; 2 uses
  %.val5.i = load i64, ptr %i.ap, align 8, !alias.scope !6945, !noundef !6 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !6948)
  %i.op = icmp eq i64 %.val5.i, 0
  br i1 %i.op, label %"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h936d1e48899e76e2E.exit.i", label %.lr.ph.i.i.i304

bb.cn:                                            ; preds = %._crit_edge762, %.thread586
  %i.oq = phi i64 [ %i.ax, %.thread586 ], [ %.pre, %._crit_edge762 ] ; 3 uses
  %.sroa.0328.1592 = phi i64 [ %.sroa.0328.1.ph, %.thread586 ], [ %.sroa.0.0.copyload10.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.7329.1591 = phi ptr [ %.sroa.7329.1.ph585, %.thread586 ], [ %.sroa.7.0.copyload12.pre.i.i.i, %._crit_edge762 ] ; 3 uses
  %.sroa.13.0590 = phi i64 [ %.sroa.13.0.ph, %.thread586 ], [ %i.jl, %._crit_edge762 ]
  call void @llvm.experimental.noalias.scope.decl(metadata !6940)
  %i.or = load i64, ptr %i.p, align 8, !range !165, !alias.scope !6940, !noalias !6943, !noundef !6
  %i.os = icmp eq i64 %i.oq, %i.or
  br i1 %i.os, label %bb.co, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit"

bb.co:                                            ; preds = %bb.cn
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h517e963947e5db70E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.p, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @228)
          to label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17h25633f54cb56ee63E.exit" unwind label %bb.cp, !noalias !6943

bb.cp:                                            ; preds = %bb.co
  %i.ot = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ou = icmp eq i64 %.sroa.0328.1592, 0
  br i1 %i.ou, label %.body298, label %bb.cq

bb.cq:                                            ; preds = %bb.cp
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7329.1591) ]
  %i.ov = shl nuw i64 %.sroa.0328.1592, 2
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7329.1591, i64 noundef %i.ov, i64 noundef range(i64 1, -9223372036854775807) 4) #47, !noalias !6951
end_hunk_4
begin_hunk_5_@_ZN5alloc3str17join_generic_copy17hcc4f640f05044638E:bb.a

bb.j:                                             ; preds = %bb.i
  %.val83 = load ptr, ptr %i.u, align 8, !nonnull !6, !noundef !6
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val83, i64 noundef %.val, i64 noundef range(i64 1, -9223372036854775807) 1) #47
  br label %"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit"

bb.k:                                             ; preds = %bb.f, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.q, %bb.f ] ; 2 uses
  store i64 %i.k, ptr %i.c, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  store ptr %.sroa.10.0.i, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  store i64 0, ptr %i.v, align 8
  %.val84 = load ptr, ptr %1, align 8, !nonnull !6, !align !44, !noundef !6
  %i.w = getelementptr i8, ptr %1, i64 8
  %.val85 = load i64, ptr %i.w, align 8, !noundef !6 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10872)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10875)
  %i.x = icmp ugt i64 %.val85, %i.k
  br i1 %i.x, label %bb.l, label %bb.m, !prof !238

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c, i64 noundef 0, i64 noundef %.val85, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.i

.noexc:                                           ; preds = %bb.l
  %.pre.i.i = load i64, ptr %i.v, align 8, !alias.scope !10878
  %.pre = load ptr, ptr %i.u, align 8, !alias.scope !10878
  br label %bb.m

bb.m:                                             ; preds = %.noexc, %bb.k
  %i.y = phi ptr [ %.sroa.10.0.i, %bb.k ], [ %.pre, %.noexc ] ; 2 uses
  %i.z = phi i64 [ 0, %bb.k ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.aa = icmp sgt i64 %i.z, -1
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.z
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ab, ptr nonnull readonly align 1 %.val84, i64 %.val85, i1 false), !noalias !10878
  %i.ac = add i64 %i.z, %.val85                   ; 3 uses
  %i.ad = icmp sgt i64 %i.ac, -1
  tail call void @llvm.assume(i1 %i.ad)
  %i.ae = sub nsw i64 %i.k, %i.ac                 ; 2 uses
  %i.af = icmp eq i64 %2, 1
  br i1 %i.af, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h399cc5d541c532c4E.exit90.thread", label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.m
  %.sroa.05.028 = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %i.y, i64 %i.ac
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94"
  %.sroa.05.032 = phi ptr [ %.sroa.05.0, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94" ], [ %.sroa.05.028, %.lr.ph.preheader ] ; 3 uses
  %.sroa.08.231 = phi ptr [ %i.al, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94" ], [ %i.ag, %.lr.ph.preheader ] ; 2 uses
  %.sroa.28.230 = phi i64 [ %i.am, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94" ], [ %i.ae, %.lr.ph.preheader ] ; 2 uses
  %.pn29 = phi ptr [ %.sroa.05.032, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94" ], [ %1, %.lr.ph.preheader ]
  %.val86 = load ptr, ptr %.sroa.05.032, align 8, !nonnull !6, !align !44, !noundef !6
  %i.ah = getelementptr i8, ptr %.pn29, i64 24
  %.val87 = load i64, ptr %i.ah, align 8, !noundef !6 ; 4 uses
  %.not81 = icmp eq i64 %.sroa.28.230, 0
  br i1 %.not81, label %bb.n, label %bb.o, !prof !238

"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h399cc5d541c532c4E.exit90.thread": ; preds = %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94", %bb.m
  %.sroa.28.2.lcssa = phi i64 [ %i.ae, %bb.m ], [ %i.am, %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94" ]
  %i.ai = sub i64 %i.k, %.sroa.28.2.lcssa
  store i64 %i.ai, ptr %i.v, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.e

bb.n:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  br label %.invoke

bb.o:                                             ; preds = %.lr.ph
  %i.aj = add i64 %.sroa.28.230, -1               ; 2 uses
  store i8 0, ptr %.sroa.08.231, align 1, !alias.scope !10879
  %.not82 = icmp ugt i64 %.val87, %i.aj
  br i1 %.not82, label %bb.p, label %"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94", !prof !238

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  br label %.invoke

.invoke:                                          ; preds = %bb.n, %bb.p
  %.sink.sroa.phi = phi ptr [ %.sink.sroa.gep, %bb.n ], [ %.sink.sroa.gep6, %bb.p ]
  %.sink.sroa.phi7 = phi ptr [ %.sink.sroa.gep8, %bb.n ], [ %.sink.sroa.gep9, %bb.p ]
  %.sink.sroa.phi10 = phi ptr [ %.sink.sroa.gep11, %bb.n ], [ %.sink.sroa.gep12, %bb.p ]
  %.sink.sroa.phi13 = phi ptr [ %.sink.sroa.gep14, %bb.n ], [ %.sink.sroa.gep15, %bb.p ]
  %.sink = phi ptr [ %i.b, %bb.n ], [ %i.a, %bb.p ] ; 2 uses
  store ptr @302, ptr %.sink, align 8
  store i64 1, ptr %.sink.sroa.phi, align 8
  store ptr null, ptr %.sink.sroa.phi7, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sink.sroa.phi10, align 8
  store i64 0, ptr %.sink.sroa.phi13, align 8
  invoke void @_ZN4core9panicking9panic_fmt17h92c8e5abe71dd8d1E(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %.sink, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @438) #46
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core5slice29_$LT$impl$u20$$u5b$T$u5d$$GT$15copy_from_slice17h51eef61198972962E.exit94": ; preds = %bb.o
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.08.231, i64 1 ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 %.val87
  %i.am = sub nuw i64 %i.aj, %.val87              ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ak, ptr nonnull readonly align 1 %.val86, i64 %.val87, i1 false), !alias.scope !10883
  %.sroa.05.0 = getelementptr inbounds nuw i8, ptr %.sroa.05.032, i64 16 ; 2 uses
  %i.an = icmp eq ptr %.sroa.05.0, %i.d
  br i1 %i.an, label %"_ZN91_$LT$core..slice..iter..Iter$LT$T$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h399cc5d541c532c4E.exit90.thread", label %.lr.ph

"_ZN4core3ptr46drop_in_place$LT$alloc..vec..Vec$LT$u8$GT$$GT$17h741b5a0cffaf7c2aE.exit": ; preds = %bb.j, %bb.i
  resume { ptr, i32 } %i.s
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3str21_$LT$impl$u20$str$GT$7replace17h7d0841879e301d78E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, i32 noundef range(i32 8213, 65375) %3, ptr noalias noundef nonnull readonly align 1 captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 3 uses
  %i.b = alloca [24 x i8], align 8                ; 13 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.c = icmp slt i64 %2, 0
  br i1 %i.c, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !27

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %2, 0
  br i1 %i.d, label %.lr.ph.split.i.lr.ph, label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #47, !noalias !10887
  %i.e = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #47, !noalias !10887 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  br i1 %i.f, label %bb.c, label %.lr.ph.split.i.lr.ph

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @440) #46
  unreachable

bb.d:                                             ; preds = %.loopexit, %.loopexit.split-lp, %bb.f
  %.pn = phi { ptr, i32 } [ %i.h, %bb.f ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10892)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !10892 ; 2 uses
  %i.g = icmp eq i64 %.val.i, 0
  br i1 %i.g, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %.val1.i = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10892, !nonnull !6, !noundef !6
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #47, !noalias !10892
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit"

bb.f:                                             ; preds = %bb.m
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.lr.ph.split.i.lr.ph:                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, %bb.b
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.e, %bb.b ] ; 2 uses
  store i64 %2, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 5 uses
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.514.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  store i64 0, ptr %.sroa.514.0..sroa_idx, align 8
  %i.i = lshr i32 %3, 12
  %i.j = shl nuw i32 %3, 16
  %i.k = and i32 %i.j, 4128768
  %i.l = shl nuw nsw i32 %3, 2
  %.sroa.7.0.insert.ext.i = and i32 %i.l, 16128
  %.sroa.7.0.insert.shift.i = or disjoint i32 %i.i, %.sroa.7.0.insert.ext.i
  %i.m = or disjoint i32 %.sroa.7.0.insert.shift.i, %i.k
  %.sroa.0.0.insert.insert.i = or disjoint i32 %i.m, 8421600 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %.sroa.558.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 3 uses
  store i32 %.sroa.0.0.insert.insert.i, ptr %.sroa.558.0..sroa_idx, align 8
  %i.n = lshr i32 %.sroa.0.0.insert.insert.i, 16
  %i.o = trunc nuw i32 %i.n to i8                 ; 2 uses
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.q, %.lr.ph.split.i.lr.ph
  %i.p = phi ptr [ %.sroa.10.0.i, %.lr.ph.split.i.lr.ph ], [ %i.bq, %bb.q ] ; 2 uses
  %i.q = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.bu, %bb.q ] ; 6 uses
  %.sroa.08.096 = phi i64 [ 0, %.lr.ph.split.i.lr.ph ], [ %i.ae, %bb.q ] ; 5 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %.lr.ph.split.i
  %i.r = phi i64 [ %.sroa.08.096, %.lr.ph.split.i ], [ %i.ae, %bb.i ] ; 4 uses
  %i.s = sub nuw nsw i64 %2, %i.r                 ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 %i.r ; 2 uses
  %i.u = icmp ult i64 %i.s, 16
  br i1 %i.u, label %.preheader.i.i, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i

.preheader.i.i:                                   ; preds = %bb.g
  %.not.i.i = icmp eq i64 %2, %i.r
  br i1 %.not.i.i, label %.critedge24, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %bb.h
  %.sroa.01.05.i.i = phi i64 [ %i.y, %bb.h ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.01.05.i.i
  %i.w = load i8, ptr %i.v, align 1, !alias.scope !10895, !noalias !10898, !noundef !6
  %i.x = icmp eq i8 %i.w, %i.o
  br i1 %i.x, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.y = add nuw i64 %.sroa.01.05.i.i, 1          ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.y, %i.s
  br i1 %exitcond.not.i.i, label %.critedge24, label %.lr.ph.i.i

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i: ; preds = %bb.g
  %i.z = invoke { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17h7e0cc2bb9b2425e0E(i8 noundef %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.t, i64 noundef %i.s)
          to label %.noexc unwind label %.loopexit ; 2 uses

.noexc:                                           ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %i.aa = extractvalue { i64, i64 } %i.z, 0
  %i.ab = extractvalue { i64, i64 } %i.z, 1
  %i.ac = trunc nuw i64 %i.aa to i1
  br i1 %i.ac, label %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i, label %.critedge24

_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i: ; preds = %.lr.ph.i.i, %.noexc
  %.sroa.4.0.i27.i = phi i64 [ %i.ab, %.noexc ], [ %.sroa.01.05.i.i, %.lr.ph.i.i ]
  %i.ad = add nuw i64 %i.r, 1
  %i.ae = add i64 %i.ad, %.sroa.4.0.i27.i         ; 5 uses
  %.not20.i = icmp ult i64 %i.ae, 3
  %.not21.i = icmp ugt i64 %i.ae, %2              ; 2 uses
  %or.cond.i = or i1 %.not20.i, %.not21.i
  br i1 %or.cond.i, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.j, %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  br i1 %.not21.i, label %.critedge24, label %bb.g

bb.j:                                             ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.thread24.i
  %i.af = add nsw i64 %i.ae, -3                   ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 %i.af ; 2 uses
  %i.ah = load i16, ptr %i.ag, align 1
  %i.ai = load i16, ptr %.sroa.558.0..sroa_idx, align 1
  %i.aj = xor i16 %i.ah, %i.ai
  %i.ak = getelementptr i8, ptr %i.ag, i64 2
  %i.al = getelementptr i8, ptr %.sroa.558.0..sroa_idx, i64 2
  %i.am = load i8, ptr %i.ak, align 1
  %i.an = load i8, ptr %i.al, align 1
  %i.ao = zext i8 %i.am to i16
  %i.ap = zext i8 %i.an to i16
  %i.aq = xor i16 %i.ao, %i.ap
  %i.ar = or i16 %i.aj, %i.aq
  %i.as = icmp ne i16 %i.ar, 0
  %i.at = zext i1 %i.as to i32
  %i.au = icmp eq i32 %i.at, 0
  br i1 %i.au, label %bb.k, label %bb.i

.loopexit:                                        ; preds = %_ZN4core5slice6memchr6memchr17h42eb1bd28cc17905E.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %bb.l, %bb.p
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.k:                                             ; preds = %bb.j
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10902)
  %gepdiff = sub nuw nsw i64 %i.af, %.sroa.08.096 ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10905)
  %i.aw = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10908, !noundef !6 ; 2 uses
  %i.ax = sub i64 %i.aw, %i.q
  %i.ay = icmp ugt i64 %gepdiff, %i.ax
  br i1 %i.ay, label %bb.l, label %bb.o, !prof !238

bb.l:                                             ; preds = %bb.k
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff, i64 noundef 1, i64 noundef 1)
          to label %.noexc29 unwind label %.loopexit.split-lp

.noexc29:                                         ; preds = %bb.l
  %.pre.i.i = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10911
  %.pre = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10911
  %.pre118 = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10912
  br label %bb.o

.critedge24:                                      ; preds = %bb.i, %.preheader.i.i, %.noexc, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10919)
  %gepdiff71 = sub nuw nsw i64 %2, %.sroa.08.096  ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10922)
  %i.az = load i64, ptr %i.b, align 8, !range !165, !alias.scope !10925, !noundef !6
  %i.ba = sub i64 %i.az, %i.q
  %i.bb = icmp ugt i64 %gepdiff71, %i.ba
  br i1 %i.bb, label %bb.m, label %bb.n, !prof !238

bb.m:                                             ; preds = %.critedge24
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.q, i64 noundef %gepdiff71, i64 noundef 1, i64 noundef 1)
          to label %.noexc31 unwind label %bb.f

.noexc31:                                         ; preds = %bb.m
  %.pre.i.i30 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10928
  %.pre120 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10928
  br label %bb.n

bb.n:                                             ; preds = %.noexc31, %.critedge24
  %i.bc = phi ptr [ %i.p, %.critedge24 ], [ %.pre120, %.noexc31 ]
  %i.bd = phi i64 [ %i.q, %.critedge24 ], [ %.pre.i.i30, %.noexc31 ] ; 3 uses
  %i.be = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.08.096
  %i.bf = icmp sgt i64 %i.bd, -1
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bc, i64 %i.bd
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bg, ptr nonnull readonly align 1 %i.be, i64 %gepdiff71, i1 false), !noalias !10928
  %i.bh = add nuw i64 %i.bd, %gepdiff71
  store i64 %i.bh, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.o:                                             ; preds = %.noexc29, %bb.k
  %i.bi = phi ptr [ %i.p, %bb.k ], [ %.pre, %.noexc29 ] ; 2 uses
  %i.bj = phi i64 [ %i.aw, %bb.k ], [ %.pre118, %.noexc29 ]
  %i.bk = phi i64 [ %i.q, %bb.k ], [ %.pre.i.i, %.noexc29 ] ; 3 uses
  %i.bl = icmp sgt i64 %i.bk, -1
  tail call void @llvm.assume(i1 %i.bl)
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 %i.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.bm, ptr nonnull readonly align 1 %i.av, i64 %gepdiff, i1 false), !noalias !10911
  %i.bn = add nuw i64 %i.bk, %gepdiff             ; 4 uses
  store i64 %i.bn, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10911
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10929)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10930)
  %i.bo = sub i64 %i.bj, %i.bn
  %i.bp = icmp ult i64 %i.bo, 3
  br i1 %i.bp, label %bb.p, label %bb.q, !prof !238

bb.p:                                             ; preds = %bb.o
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.bn, i64 noundef 3, i64 noundef 1, i64 noundef 1)
          to label %.noexc34 unwind label %.loopexit.split-lp

.noexc34:                                         ; preds = %bb.p
  %.pre.i.i33 = load i64, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10931
  %.pre119 = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !10931
  br label %bb.q

bb.q:                                             ; preds = %.noexc34, %bb.o
  %i.bq = phi ptr [ %i.bi, %bb.o ], [ %.pre119, %.noexc34 ] ; 2 uses
  %i.br = phi i64 [ %i.bn, %bb.o ], [ %.pre.i.i33, %.noexc34 ] ; 3 uses
  %i.bs = icmp sgt i64 %i.br, -1
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bq, i64 %i.br
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %i.bt, ptr noundef nonnull readonly align 1 dereferenceable(3) %4, i64 3, i1 false), !noalias !10931
  %i.bu = add nuw i64 %i.br, 3                    ; 2 uses
  store i64 %i.bu, ptr %.sroa.514.0..sroa_idx, align 8, !alias.scope !10931
  br label %.lr.ph.split.i

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17hc9d9ef159760e033E.exit": ; preds = %bb.e, %bb.d
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6resize17h3e8ac0e446ecdc5fE"(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !6 ; 10 uses
  %i.c = icmp ult i64 %i.b, 384307168202282326
  tail call void @llvm.assume(i1 %i.c)
  %.not = icmp ugt i64 %1, %i.b
  br i1 %.not, label %bb.b, label %bb.i

bb.b:                                             ; preds = %bb.a
  %i.d = sub nuw i64 %1, %i.b                     ; 6 uses
  %.sroa.0.0.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10932)
  %i.e = load i64, ptr %0, align 8, !range !165, !alias.scope !10935, !noalias !10938, !noundef !6
  %i.f = sub nsw i64 %i.e, %i.b
  %i.g = icmp ugt i64 %i.d, %i.f
  br i1 %i.g, label %bb.c, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i", !prof !238

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h55eb09a37fd96b73E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.b, i64 noundef %i.d, i64 noundef 8, i64 noundef 24)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" unwind label %bb.d, !noalias !10938

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i": ; preds = %bb.c
  %.pre.i = load i64, ptr %i.a, align 8, !alias.scope !10932, !noalias !10938
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"

bb.d:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.g

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i", %bb.b
  %i.i = phi i64 [ %.pre.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit_crit_edge.i" ], [ %i.b, %bb.b ] ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !10932, !noalias !10938, !nonnull !6, !noundef !6
  %i.l = icmp ult i64 %i.i, 384307168202282326
  tail call void @llvm.assume(i1 %i.l)
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %i.k, i64 %i.i ; 4 uses
  %i.n = icmp ugt i64 %i.d, 1
  br i1 %i.n, label %.lr.ph.i, label %._crit_edge.thread.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17h07f2cf7c984b98f2E.exit.i"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0.copyload) ]
  %i.o = shl i64 %.sroa.9.0.copyload, 2           ; 5 uses
  %i.p = icmp ugt i64 %.sroa.9.0.copyload, 4611686018427387903
  %i.q = icmp ugt i64 %i.o, 9223372036854775804
  %or.cond.i.i.i.i.i.i = or i1 %i.p, %i.q
  br i1 %or.cond.i.i.i.i.i.i, label %.split.us.i, label %.lr.ph.split.i, !prof !27
end_hunk_5
