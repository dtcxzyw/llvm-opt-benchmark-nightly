Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.03?download=true
inline.NumInlined: 3264
inline.NumDeleted: 1494
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumUnrolled: 50
begin_hunk_0_@"_ZN4anki8notetype8schema111_112_$LT$impl$u20$serde_core..de..Deserialize$u20$for$u20$anki..notetype..schema11..FieldRequirementKindSchema11$GT$11deserialize17h216de9e15d3d1829E":bb.a

bb.i:                                             ; preds = %bb.b
  %i.s = invoke noundef nonnull align 8 ptr @"_ZN66_$LT$serde_json..error..Error$u20$as$u20$serde_core..de..Error$GT$12invalid_type17hc6915df4a5a18deeE"(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c, ptr noundef nonnull align 1 @11, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @12)
          to label %.critedge.i unwind label %bb.h, !noalias !5584

.critedge.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !5584
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.s, ptr %i.t, align 8, !alias.scope !5581, !noalias !5582
  store i8 1, ptr %0, align 8, !alias.scope !5581, !noalias !5582
  call fastcc void @"_ZN4core3ptr45drop_in_place$LT$serde_json..value..Value$GT$17h2a481ac39e06688dE"(ptr noalias noundef align 8 dereferenceable(32) %i.d), !noalias !5584
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !5584
  br label %"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$16deserialize_enum17h01201cbe081b5b90E.exit"

bb.j:                                             ; preds = %bb.h
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !5581
  unreachable

.thread.i:                                        ; preds = %bb.h
  resume { ptr, i32 } %i.r

"_ZN10serde_json5value2de83_$LT$impl$u20$serde_core..de..Deserializer$u20$for$u20$serde_json..value..Value$GT$16deserialize_enum17h01201cbe081b5b90E.exit": ; preds = %bb.f, %bb.g, %.critedge.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @"_ZN4anki8notetype8schema111_99_$LT$impl$u20$serde_core..ser..Serialize$u20$for$u20$anki..notetype..schema11..NotetypeSchema11$GT$9serialize17hf03b72690d85a00fE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(280) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 23 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5592)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !5592, !noalias !5593, !nonnull !7, !align !11, !noundef !7
  tail call void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$17extend_from_slice17h10977ceb909cc7a8E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @7, i64 noundef 1), !noalias !5594
  store i8 0, ptr %i.b, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  store i8 1, ptr %.sroa.4.0..sroa_idx, align 1
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %.sroa.5.0..sroa_idx, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.d = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9a4161d6dd4f5d43E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @20, i64 noundef 2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c) ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.b, label %bb.u

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.f = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hce199f0843e3ad62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @21, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e) ; 2 uses
  %.not81 = icmp eq ptr %i.f, null
  br i1 %.not81, label %bb.c, label %bb.u

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 274
  %i.h = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h5a81e3447b89995bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @22, i64 noundef 4, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.g) ; 2 uses
  %.not82 = icmp eq ptr %i.h, null
  br i1 %.not82, label %bb.d, label %bb.u

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.j = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hc3ecb0e77337929bE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @23, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.i) ; 2 uses
  %.not84 = icmp eq ptr %i.j, null
  br i1 %.not84, label %bb.e, label %bb.u

bb.e:                                             ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.l = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h30e9065f0c56ea62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @24, i64 noundef 3, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.k) ; 2 uses
  %.not86 = icmp eq ptr %i.l, null
  br i1 %.not86, label %bb.f, label %bb.u

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 272
  %i.n = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h9316aafcfbb6eb61E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @25, i64 noundef 5, ptr noalias noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(2) %i.m) ; 2 uses
  %.not88 = icmp eq ptr %i.n, null
  br i1 %.not88, label %bb.g, label %bb.u

bb.g:                                             ; preds = %bb.f
  %i.o = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h37d2231c4dc64fd7E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @26, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %0) ; 2 uses
  %.not90 = icmp eq ptr %i.o, null
  br i1 %.not90, label %bb.h, label %bb.u

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.q = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h64b73c1a899e4347E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @27, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) ; 2 uses
  %.not92 = icmp eq ptr %i.q, null
  br i1 %.not92, label %bb.i, label %bb.u

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.s = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h2af54579eb0f4983E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @28, i64 noundef 4, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r) ; 2 uses
  %.not94 = icmp eq ptr %i.s, null
  br i1 %.not94, label %bb.j, label %bb.u

bb.j:                                             ; preds = %bb.i
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.u = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hce199f0843e3ad62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @29, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t) ; 2 uses
  %.not96 = icmp eq ptr %i.u, null
  br i1 %.not96, label %bb.k, label %bb.u

bb.k:                                             ; preds = %bb.j
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 128
  %i.w = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hce199f0843e3ad62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @30, i64 noundef 8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.v) ; 2 uses
  %.not98 = icmp eq ptr %i.w, null
  br i1 %.not98, label %bb.l, label %bb.u

bb.l:                                             ; preds = %bb.k
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.y = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hce199f0843e3ad62E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @31, i64 noundef 9, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.x) ; 2 uses
  %.not100 = icmp eq ptr %i.y, null
  br i1 %.not100, label %bb.m, label %bb.u

bb.m:                                             ; preds = %bb.l
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 275
  %i.aa = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h1db9aeca348d98e8E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @32, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %i.z) ; 2 uses
  %.not102 = icmp eq ptr %i.aa, null
  br i1 %.not102, label %bb.n, label %bb.u

bb.n:                                             ; preds = %bb.m
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.ac = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h8a8887e59d127105E(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @33, i64 noundef 3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ab) ; 2 uses
  %.not104 = icmp eq ptr %i.ac, null
  br i1 %.not104, label %bb.o, label %bb.u

bb.o:                                             ; preds = %bb.n
  %i.ad = getelementptr inbounds nuw i8, ptr %0, i64 268 ; 2 uses
  %i.ae = call noundef zeroext i1 @_ZN4anki5serde10is_default17h6c2ccfb5b5a0d44cE(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad)
  br i1 %i.ae, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.af = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17h049175d240aaa3abE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @34, i64 noundef 17, ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(4) %i.ad) ; 2 uses
  %.not106 = icmp eq ptr %i.af, null
  br i1 %.not106, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p, %bb.o
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ah = call noundef zeroext i1 @_ZN4anki5serde10is_default17h3a8efe31562e9e68E(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag)
  br i1 %i.ah, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ai = call noundef align 8 ptr @_ZN10serde_core3ser12SerializeMap15serialize_entry17hfdb37b45a20c47acE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @35, i64 noundef 10, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag) ; 2 uses
  %.not108 = icmp eq ptr %i.ai, null
  br i1 %.not108, label %bb.s, label %bb.u

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ak = call noundef align 8 ptr @_ZN10serde_core3ser10Serializer11collect_map17h0c858bf9b52a175aE(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.aj) ; 2 uses
  %.not110 = icmp eq ptr %i.ak, null
  br i1 %.not110, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %i.b, i64 16, i1 false)
  call fastcc void @"_ZN88_$LT$serde_json..ser..Compound$LT$W$C$F$GT$$u20$as$u20$serde_core..ser..SerializeMap$GT$3end17h3d4573986ab19537E"(ptr noalias noundef readonly align 8 captures(address) dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.u

bb.u:                                             ; preds = %bb.a, %bb.b, %bb.c, %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.p, %bb.r, %bb.s, %bb.t
  %.sroa.0.0 = phi ptr [ null, %bb.t ], [ %i.ak, %bb.s ], [ %i.ac, %bb.n ], [ %i.d, %bb.a ], [ %i.f, %bb.b ], [ %i.h, %bb.c ], [ %i.j, %bb.d ], [ %i.l, %bb.e ], [ %i.n, %bb.f ], [ %i.o, %bb.g ], [ %i.q, %bb.h ], [ %i.s, %bb.i ], [ %i.u, %bb.j ], [ %i.w, %bb.k ], [ %i.y, %bb.l ], [ %i.aa, %bb.m ], [ %i.ai, %bb.r ], [ %i.af, %bb.p ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN4anki9scheduler4fsrs6params16reviews_for_fsrs17hd982fb077fd38d2dE(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1, i64 noundef %2, i1 noundef zeroext %3, i64 noundef %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.037 = alloca [48 x i8], align 8          ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 4 uses
  %i.d = alloca [48 x i8], align 8                ; 2 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [32 x i8], align 8                ; 6 uses
  %i.h = alloca [48 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 14 uses
  %i.j = alloca [24 x i8], align 8                ; 9 uses
  %i.k = alloca [24 x i8], align 8                ; 11 uses
  %i.l = alloca [48 x i8], align 8                ; 7 uses
  %i.m = alloca [24 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 4 uses
  %i.o = alloca [40 x i8], align 8                ; 4 uses
  %i.p = alloca [8 x i8], align 8                 ; 2 uses
  store i64 %2, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 5 uses
  %i.r = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.t = load i64, ptr %i.s, align 8, !noundef !7 ; 6 uses
  %i.u = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %i.t
  %i.v = ptrtoint ptr %i.r to i64
  br label %.outer.outer

.outer.outer.loopexit:                            ; preds = %bb.i, %bb.k
  %.sroa.512.0.ph.ph.ph = phi i64 [ %.sroa.512.2, %bb.i ], [ %i.aj, %bb.k ]
  %.sroa.010.0.ph.ph.ph = phi i64 [ %.sroa.010.2, %bb.i ], [ 1, %bb.k ]
  br label %.outer.outer

.outer.outer:                                     ; preds = %.outer.outer.loopexit, %bb.a
  %.sroa.5.0.ph.ph = phi ptr [ %i.u, %bb.a ], [ %i.aa, %.outer.outer.loopexit ]
  %.sroa.820.0.ph.ph = phi i64 [ undef, %bb.a ], [ %i.aj, %.outer.outer.loopexit ] ; 8 uses
  %.not58.ph = phi i1 [ true, %bb.a ], [ false, %.outer.outer.loopexit ]
  %.ph = phi i1 [ false, %bb.a ], [ true, %.outer.outer.loopexit ]
  %.sroa.512.0.ph.ph = phi i64 [ undef, %bb.a ], [ %.sroa.512.0.ph.ph.ph, %.outer.outer.loopexit ]
  %.sroa.010.0.ph.ph = phi i64 [ 0, %bb.a ], [ %.sroa.010.0.ph.ph.ph, %.outer.outer.loopexit ]
  %.sroa.0.0.ph.ph = phi i8 [ 0, %bb.a ], [ 1, %.outer.outer.loopexit ] ; 2 uses
  br label %.outer

.outer:                                           ; preds = %.outer.outer, %bb.n
  %.sroa.5.0.ph = phi ptr [ %i.aa, %bb.n ], [ %.sroa.5.0.ph.ph, %.outer.outer ]
  %.not58 = phi i1 [ true, %bb.n ], [ %.not58.ph, %.outer.outer ] ; 2 uses
  %i.w = phi i1 [ false, %bb.n ], [ %.ph, %.outer.outer ]
  %.sroa.512.0.ph = phi i64 [ %.sroa.512.7, %bb.n ], [ %.sroa.512.0.ph.ph, %.outer.outer ] ; 5 uses
  %.sroa.010.0.ph = phi i64 [ %.sroa.010.7, %bb.n ], [ %.sroa.010.0.ph.ph, %.outer.outer ] ; 5 uses
  br label %bb.b

bb.b:                                             ; preds = %.outer, %bb.e
  %.sroa.5.0 = phi ptr [ %i.aa, %bb.e ], [ %.sroa.5.0.ph, %.outer ] ; 7 uses
  %i.x = icmp eq ptr %i.r, %.sroa.5.0
  br i1 %i.x, label %.thread102, label %bb.d

"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h4f1eb1f3a991f311E.exit.i": ; preds = %bb.bj, %bb.c
  %.sroa.040.1.lpad-body = phi i8 [ %.sroa.040.1, %bb.c ], [ %.sroa.040.2, %bb.bj ]
  %eh.lpad-body81 = phi { ptr, i32 } [ %i.z, %bb.c ], [ %i.fb, %bb.bj ] ; 2 uses
  %i.y = trunc nuw i8 %.sroa.040.1.lpad-body to i1
  br i1 %i.y, label %.thread, label %common.resume

bb.c:                                             ; preds = %.invoke, %bb.bk, %bb.ag, %bb.ac, %bb.ah, %bb.af, %bb.ad, %bb.ab
  %.sroa.040.1 = phi i8 [ %.sroa.040.2, %bb.bk ], [ 1, %bb.ah ], [ 1, %.invoke ], [ 1, %bb.ad ], [ 1, %bb.ac ], [ 1, %bb.ab ], [ 1, %bb.ag ], [ 1, %bb.af ]
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h4f1eb1f3a991f311E.exit.i"

bb.d:                                             ; preds = %bb.b
  %i.aa = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -40 ; 5 uses
  %i.ab = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -3
  %i.ac = load i8, ptr %i.ab, align 1, !range !12, !noundef !7 ; 4 uses
  %i.ad = icmp eq i8 %i.ac, 3
  br i1 %i.ad, label %bb.e, label %bb.f

.thread102:                                       ; preds = %bb.n, %bb.b, %bb.o
  %.sroa.015.0.ph174 = phi i1 [ %i.w, %bb.b ], [ true, %bb.o ], [ true, %bb.n ] ; 2 uses
  %.sroa.512.1 = phi i64 [ %.sroa.512.0.ph, %bb.b ], [ %.sroa.512.6, %bb.o ], [ %.sroa.512.7, %bb.n ]
  %.sroa.010.1 = phi i64 [ %.sroa.010.0.ph, %bb.b ], [ %.sroa.010.6, %bb.o ], [ %.sroa.010.7, %bb.n ]
  %.sroa.0.1 = phi i8 [ %.sroa.0.0.ph.ph, %bb.b ], [ 1, %bb.o ], [ %.sroa.0.0.ph.ph, %bb.n ] ; 3 uses
  br i1 %3, label %bb.t, label %bb.s

bb.e:                                             ; preds = %bb.d
  %i.ae = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -12
  %i.af = load i32, ptr %i.ae, align 4, !noundef !7
  %i.ag = icmp eq i32 %i.af, 0
  br i1 %i.ag, label %bb.b, label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.ah = ptrtoint ptr %i.aa to i64
  %i.ai = sub nuw i64 %i.ah, %i.v
  %i.aj = udiv exact i64 %i.ai, 40                ; 5 uses
  %i.ak = load i64, ptr %i.aa, align 8, !noundef !7
  %i.al = icmp sgt i64 %i.ak, %4                  ; 3 uses
  %i.am = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -4
  %i.an = load i8, ptr %i.am, align 4, !noundef !7
  %i.ao = icmp ne i8 %i.an, 0                     ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -20
  %i.aq = load i32, ptr %i.ap, align 4, !noundef !7 ; 2 uses
  %i.ar = icmp sgt i32 %i.aq, 0
  br i1 %i.ar, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  br i1 %i.ao, label %bb.j, label %.critedge

bb.h:                                             ; preds = %bb.f
  br i1 %i.ao, label %bb.l, label %.critedge

bb.i:                                             ; preds = %bb.l, %bb.j
  %.sroa.512.2 = phi i64 [ %.sroa.512.0.ph, %bb.j ], [ %spec.select, %bb.l ] ; 2 uses
  %.sroa.010.2 = phi i64 [ %.sroa.010.0.ph, %bb.j ], [ %spec.select66, %bb.l ] ; 2 uses
  %i.as = icmp eq i8 %i.ac, 0
  %or.cond2 = and i1 %i.as, %i.ao
  br i1 %or.cond2, label %.outer.outer.loopexit, label %.critedge

bb.j:                                             ; preds = %bb.g
  %i.at = icmp slt i32 %i.aq, -86399
  %or.cond = and i1 %i.al, %i.at
  br i1 %or.cond, label %bb.k, label %bb.i

bb.k:                                             ; preds = %bb.j
  switch i8 %i.ac, label %bb.n [
    i8 0, label %.outer.outer.loopexit
    i8 4, label %bb.m
  ]

bb.l:                                             ; preds = %bb.h
  %spec.select = select i1 %i.al, i64 %i.aj, i64 %.sroa.512.0.ph
  %spec.select66 = select i1 %i.al, i64 1, i64 %.sroa.010.0.ph
  br label %bb.i

.critedge:                                        ; preds = %bb.h, %bb.g, %bb.i
  %.sroa.512.3 = phi i64 [ %.sroa.512.2, %bb.i ], [ %.sroa.512.0.ph, %bb.h ], [ %.sroa.512.0.ph, %bb.g ] ; 2 uses
  %.sroa.010.3 = phi i64 [ %.sroa.010.2, %bb.i ], [ %.sroa.010.0.ph, %bb.h ], [ %.sroa.010.0.ph, %bb.g ] ; 2 uses
  %i.au = icmp eq i8 %i.ac, 4
  br i1 %i.au, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.k, %.critedge
  %.sroa.512.6 = phi i64 [ %.sroa.512.3, %.critedge ], [ %i.aj, %bb.k ] ; 3 uses
  %.sroa.010.6 = phi i64 [ %.sroa.010.3, %.critedge ], [ 1, %bb.k ] ; 3 uses
  %i.av = getelementptr inbounds i8, ptr %.sroa.5.0, i64 -12
  %i.aw = load i32, ptr %i.av, align 4, !noundef !7
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %bb.o, label %bb.n

bb.n:                                             ; preds = %.critedge, %bb.k, %bb.m
  %.sroa.512.7 = phi i64 [ %.sroa.512.6, %bb.m ], [ %.sroa.512.3, %.critedge ], [ %i.aj, %bb.k ] ; 2 uses
  %.sroa.010.7 = phi i64 [ %.sroa.010.6, %bb.m ], [ %.sroa.010.3, %.critedge ], [ 1, %bb.k ] ; 2 uses
  br i1 %.not58, label %.outer, label %.thread102

bb.o:                                             ; preds = %bb.m
  br i1 %.not58, label %bb.p, label %.thread102

bb.p:                                             ; preds = %bb.o
  %i.ay = icmp ne i64 %.sroa.010.6, 1
  %brmerge = or i1 %i.ay, %3
  br i1 %brmerge, label %.thread210, label %.thread213

.thread210:                                       ; preds = %bb.p, %bb.ae, %bb.t, %bb.z
  store i64 -9223372036854775808, ptr %0, align 8
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h4a00a27e48712022E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$anki..revlog..RevlogEntry$GT$$GT$17hc5ecab00a88ddd35E.exit" unwind label %bb.q

bb.q:                                             ; preds = %.thread210
  %i.az = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656731625c11b30E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %common.resume unwind label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.ba = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

common.resume:                                    ; preds = %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h4f1eb1f3a991f311E.exit.i", %.thread, %bb.bo, %bb.q
  %common.resume.op = phi { ptr, i32 } [ %i.fe, %bb.bo ], [ %i.az, %bb.q ], [ %.pn.pn.pn101, %.thread ], [ %eh.lpad-body81, %"_ZN4core3ptr54drop_in_place$LT$alloc..raw_vec..RawVec$LT$u32$GT$$GT$17h4f1eb1f3a991f311E.exit.i" ]
  resume { ptr, i32 } %common.resume.op

"_ZN4core3ptr69drop_in_place$LT$alloc..vec..Vec$LT$anki..revlog..RevlogEntry$GT$$GT$17hc5ecab00a88ddd35E.exit": ; preds = %.thread210
  tail call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h2656731625c11b30E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.bm

bb.s:                                             ; preds = %.thread102
  br i1 %.sroa.015.0.ph174, label %bb.u, label %bb.ae

bb.t:                                             ; preds = %.thread102
  br i1 %.sroa.015.0.ph174, label %bb.y, label %.thread210

bb.u:                                             ; preds = %bb.s
  %i.bb = icmp ult i64 %.sroa.820.0.ph.ph, %i.t
  br i1 %i.bb, label %bb.v, label %.invoke

bb.v:                                             ; preds = %bb.u
  %i.bc = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %.sroa.820.0.ph.ph
  %i.bd = load i64, ptr %i.bc, align 8, !noundef !7
  %i.be = icmp slt i64 %i.bd, %4
  br i1 %i.be, label %bb.x, label %bb.aa

bb.w:                                             ; preds = %bb.aq, %.thread119
  unreachable

bb.x:                                             ; preds = %bb.v
  %i.bf = icmp ult i64 %i.t, 230584300921369396
  tail call void @llvm.assume(i1 %i.bf)
  %i.bg = add nsw i64 %i.t, -1
  %i.bh = icmp ult i64 %.sroa.820.0.ph.ph, %i.bg
  br i1 %i.bh, label %bb.ae, label %bb.aa

bb.y:                                             ; preds = %bb.t
  %i.bi = icmp ult i64 %.sroa.820.0.ph.ph, %i.t
  br i1 %i.bi, label %bb.z, label %.invoke

bb.z:                                             ; preds = %bb.y
  %i.bj = getelementptr inbounds nuw [40 x i8], ptr %i.r, i64 %.sroa.820.0.ph.ph
  %i.bk = load i64, ptr %i.bj, align 8, !noundef !7
  %i.bl = icmp slt i64 %i.bk, %4
  br i1 %i.bl, label %.thread210, label %bb.aa

.invoke:                                          ; preds = %bb.y, %bb.u
  %i.bm = phi ptr [ @691, %bb.u ], [ @692, %bb.y ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.sroa.820.0.ph.ph, i64 noundef %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm) #33
          to label %.cont unwind label %bb.c

.cont:                                            ; preds = %.invoke
  unreachable

bb.aa:                                            ; preds = %bb.z, %bb.x, %bb.v
  %.not59 = icmp eq i64 %.sroa.820.0.ph.ph, 0
  br i1 %.not59, label %bb.ad, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h5f2113bcfb8ce1adE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.o, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.820.0.ph.ph)
          to label %bb.ac unwind label %bb.c

bb.ac:                                            ; preds = %bb.ab
  invoke void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492555f9eee115acE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.o)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit" unwind label %bb.c

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit": ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.ad

bb.ad:                                            ; preds = %.thread213, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit67", %bb.aa, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit"
  %.sroa.0.3112 = phi i8 [ %.sroa.0.3.ph218, %.thread213 ], [ %.sroa.0.3.ph218, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit67" ], [ %.sroa.0.1, %bb.aa ], [ %.sroa.0.1, %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit" ]
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$6retain17ha6e52fb44de12868E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.ah unwind label %bb.c

bb.ae:                                            ; preds = %bb.x, %bb.s
  %.sroa.0.3.ph = phi i8 [ 0, %bb.x ], [ %.sroa.0.1, %bb.s ]
  %i.bn = trunc nuw i64 %.sroa.010.1 to i1
  br i1 %i.bn, label %.thread213, label %.thread210

.thread213:                                       ; preds = %bb.p, %bb.ae
  %.sroa.0.3.ph218 = phi i8 [ %.sroa.0.3.ph, %bb.ae ], [ 0, %bb.p ] ; 2 uses
  %.sroa.512.1198209217 = phi i64 [ %.sroa.512.1, %bb.ae ], [ %.sroa.512.6, %bb.p ] ; 2 uses
  %.not58.a = icmp eq i64 %.sroa.512.1198209217, 0
  br i1 %.not58.a, label %bb.ad, label %bb.af

bb.af:                                            ; preds = %.thread213
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @"_ZN5alloc3vec16Vec$LT$T$C$A$GT$5drain17h5f2113bcfb8ce1adE"(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(24) %1, i64 noundef %.sroa.512.1198209217)
          to label %bb.ag unwind label %bb.c

bb.ag:                                            ; preds = %bb.af
  invoke void @"_ZN79_$LT$alloc..vec..drain..Drain$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h492555f9eee115acE"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.n)
          to label %"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit67" unwind label %bb.c

"_ZN4core3ptr78drop_in_place$LT$alloc..vec..drain..Drain$LT$anki..revlog..RevlogEntry$GT$$GT$17h2b1df94c5d9a6011E.exit67": ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.ad

bb.ah:                                            ; preds = %bb.ad
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  %i.bo = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bp = load i64, ptr %i.s, align 8, !noundef !7
  %i.bq = getelementptr inbounds nuw [40 x i8], ptr %i.bo, i64 %i.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !5606)
  store i32 1, ptr %i.l, align 8, !alias.scope !5607, !noalias !5606
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 4
  store i32 0, ptr %i.br, align 4, !alias.scope !5607, !noalias !5606
  %i.bs = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.bo, ptr %i.bs, align 8, !alias.scope !5608
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.bq, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !5608
  %.sroa.587.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr null, ptr %.sroa.587.0..sroa_idx, align 8, !alias.scope !5608
  %.sroa.688.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  store ptr %i.p, ptr %.sroa.688.0..sroa_idx, align 8, !alias.scope !5608
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17h915ca8871204f549E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.ai unwind label %bb.c

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  br i1 %3, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.bt = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.bu = load i64, ptr %i.s, align 8, !noundef !7
  %i.bv = getelementptr inbounds nuw [40 x i8], ptr %i.bt, i64 %i.bu
  %i.bw = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.bx = load ptr, ptr %i.bw, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.by = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.bz = load i64, ptr %i.by, align 8, !noundef !7
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %i.bz
  invoke void @"_ZN111_$LT$core..iter..adapters..zip..Zip$LT$A$C$B$GT$$u20$as$u20$core..iter..adapters..zip..ZipImpl$LT$A$C$B$GT$$GT$3new17h4cf0e579f8649c5fE"(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.c, ptr noundef nonnull %i.bt, ptr noundef nonnull %i.bv, ptr noundef nonnull %i.bx, ptr noundef nonnull %i.ca)
          to label %_ZN4core4iter6traits8iterator8Iterator3zip17h73003df1f37eade9E.exit unwind label %bb.am

bb.ak:                                            ; preds = %bb.ai
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.cb = load i64, ptr %i.s, align 8, !noundef !7 ; 3 uses
  %i.cc = icmp ult i64 %i.cb, 230584300921369396
  call void @llvm.assume(i1 %i.cc)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$15try_allocate_in17h29de420d60325245E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.cb, i1 noundef zeroext false, i64 noundef 8, i64 noundef 32)
          to label %.noexc unwind label %bb.am

.noexc:                                           ; preds = %bb.ak
  %i.cd = load i64, ptr %i.b, align 8, !range !15, !noundef !7
  %i.ce = trunc nuw i64 %i.cd to i1
  %i.cf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !range !9, !noundef !7 ; 3 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.ce, label %bb.al, label %bb.az, !prof !16

bb.al:                                            ; preds = %.noexc
  %i.ci = load i64, ptr %i.ch, align 8
  invoke void @_ZN5alloc7raw_vec12handle_error17hf75f86448ab551dfE(i64 noundef %i.cg, i64 %i.ci) #33
          to label %.noexc68 unwind label %bb.am

.noexc68:                                         ; preds = %bb.al
  unreachable

.body:                                            ; preds = %bb.bg, %bb.bb, %bb.au, %bb.am, %.thread122, %bb.ax
  %.pn.pn = phi { ptr, i32 } [ %.pn125, %.thread122 ], [ %lpad.thr_comm.split-lp, %bb.bb ], [ %i.cj, %bb.am ], [ %i.cv, %bb.ax ], [ %i.ct, %bb.au ], [ %i.ev, %bb.bg ]
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$u32$GT$$GT$17h4122196ad32e793fE"(ptr noalias noundef align 8 dereferenceable(24) %i.m) #31
          to label %.thread unwind label %bb.ay

bb.am:                                            ; preds = %bb.av, %bb.al, %bb.ak, %bb.aj, %_ZN4core4iter6traits8iterator8Iterator3zip17h73003df1f37eade9E.exit
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %.body

_ZN4core4iter6traits8iterator8Iterator3zip17h73003df1f37eade9E.exit: ; preds = %bb.aj
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.d, ptr noundef nonnull align 8 dereferenceable(48) %i.c, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  invoke void @"_ZN111_$LT$alloc..vec..Vec$LT$T$GT$$u20$as$u20$alloc..vec..spec_from_iter_nested..SpecFromIterNested$LT$T$C$I$GT$$GT$9from_iter17hec7339fc00cb8881E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.d)
          to label %bb.an unwind label %bb.am

end_hunk_0
begin_hunk_1_@"_ZN89_$LT$chrono..format..formatting..DelayedFormat$LT$I$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17h038586a5caeb314cE":bb.a
  invoke void @"_ZN70_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h06a2762e5e8eee94E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit" unwind label %bb.ey

bb.ey:                                            ; preds = %bb.ex
  %i.aql = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
          to label %common.resume unwind label %bb.ez

bb.ez:                                            ; preds = %bb.ey
  %i.aqm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h155aa8008e550a6bE.exit": ; preds = %bb.ex, %.loopexit
  %.sroa.0.0 = phi i1 [ true, %.loopexit ], [ %i.aqk, %bb.ex ]
  call void @"_ZN77_$LT$alloc..raw_vec..RawVec$LT$T$C$A$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17hd53fd36962195c26E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ba)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ba)
  ret i1 %.sroa.0.0

bb.fa:                                            ; preds = %.body
  %i.aqn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN8bitflags6traits5Flags10intersects17h936ca0671ee3150bE(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, i8 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1, !noundef !7
  %i.a = and i8 %.val, %1
  %i.b = icmp ne i8 %i.a, 0
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_ZN8bitflags6traits5Flags10iter_names17he9e9ce10d083b652E(ptr dead_on_unwind noalias noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %1) unnamed_addr #0 {
bb.a:
  tail call void @"_ZN8bitflags4iter18IterNames$LT$B$GT$3new17h3dc2488e5d78554fE"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %1)
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define hidden noundef i8 @_ZN8bitflags6traits5Flags5empty17h2064359e9a071416E() unnamed_addr #3 {
bb.a:
  ret i8 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN8bitflags6traits5Flags6insert17h95925a5252ea8974E(ptr noalias nofree noundef align 1 captures(none) dereferenceable(1) %0, i8 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1, !noundef !7
  %i.a = or i8 %.val, %1
  store i8 %i.a, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden void @_ZN8bitflags6traits5Flags6remove17hd762a703042e755dE(ptr noalias nofree noundef align 1 captures(none) dereferenceable(1) %0, i8 noundef %1) unnamed_addr #6 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1, !noundef !7
  %i.a = xor i8 %1, -1
  %i.b = and i8 %.val, %i.a
  store i8 %i.b, ptr %0, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN8bitflags6traits5Flags8contains17h85be09f237203051E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0, i8 noundef %1) unnamed_addr #8 personality ptr @rust_eh_personality {
bb.a:
  %.val = load i8, ptr %0, align 1, !noundef !7
  %i.a = and i8 %.val, %1
  %i.b = icmp eq i8 %i.a, %1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden noundef zeroext i1 @_ZN8bitflags6traits5Flags8is_empty17h76a342dc53f3b611E(ptr noalias noundef readonly align 1 captures(none) dereferenceable(1) %0) unnamed_addr #8 {
bb.a:
  %.val = load i8, ptr %0, align 1, !noundef !7
  %i.a = icmp eq i8 %.val, 0
  ret i1 %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { i1, i8 } @_ZN8bitflags6traits5Flags9from_name17h2c241d9a1a277bceE(ptr noalias noundef nonnull readonly align 1 captures(none) %0, i64 noundef %1) unnamed_addr #8 {
bb.a:
  %cond = icmp eq i64 %1, 11
  br i1 %cond, label %bb.b, label %.loopexit

.loopexit:                                        ; preds = %bb.a, %bb.c, %bb.d
  %.sroa.4.0 = phi i8 [ %.val, %bb.d ], [ undef, %bb.c ], [ undef, %bb.a ]
  %.sroa.0.0 = phi i1 [ true, %bb.d ], [ false, %bb.c ], [ false, %bb.a ]
  %i.a = insertvalue { i1, i8 } poison, i1 %.sroa.0.0, 0
  %i.b = insertvalue { i1, i8 } %i.a, i8 %.sroa.4.0, 1
  ret { i1, i8 } %i.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 1
  %i.d = xor i64 7955998438884339534, %i.c
  %i.e = getelementptr i8, ptr %0, i64 3
  %i.f = load i64, ptr %i.e, align 1
  %i.g = xor i64 7453010356280126831, %i.f
  %i.h = or i64 %i.d, %i.g
  %i.i = icmp ne i64 %i.h, 0
  %i.j = zext i1 %i.i to i32
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %0, align 1
  %i.m = xor i64 8028866385779258451, %i.l
  %i.n = getelementptr i8, ptr %0, i64 3
  %i.o = load i64, ptr %i.n, align 1
  %i.p = xor i64 8315186905985806441, %i.o
  %i.q = or i64 %i.m, %i.p
  %i.r = icmp ne i64 %i.q, 0
  %i.s = zext i1 %i.r to i32
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.03.0.ptr9.lcssa = phi ptr [ @1067, %bb.b ], [ getelementptr inbounds nuw (i8, ptr @1067, i64 24), %bb.c ]
  %i.u = getelementptr inbounds nuw i8, ptr %.sroa.03.0.ptr9.lcssa, i64 16
  %.val = load i8, ptr %i.u, align 1, !noundef !7
  br label %.loopexit
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN8indexmap3map4core25IndexMapCore$LT$K$C$V$GT$11insert_full17h5877b8cdef2b46b5E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([216 x i8]) align 8 captures(none) dereferenceable(216) %0, ptr noalias noundef align 8 dereferenceable(56) %1, i64 noundef %2, ptr noalias noundef nonnull align 1 %3, i64 noundef %4, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(208) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [232 x i8], align 8               ; 8 uses
  %i.b = alloca [208 x i8], align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 7 uses
  %i.f = load i64, ptr %i.e, align 8, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %i.i = load i64, ptr %i.h, align 8, !alias.scope !8807, !noalias !8808, !noundef !7
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i", !prof !16

bb.b:                                             ; preds = %bb.a
  %i.k = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h9c2d07455947b27dE"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.g, i64 noundef 1, ptr noundef nonnull align 8 %i.d, i64 noundef %i.f, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i" unwind label %bb.w ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i": ; preds = %bb.b, %bb.a
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !8809, !noalias !8808, !nonnull !7, !noundef !7 ; 8 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val7.i = load i64, ptr %i.l, align 8, !alias.scope !8809, !noalias !8808, !noundef !7 ; 4 uses
  %i.m = lshr i64 %2, 57
  %i.n = trunc nuw nsw i64 %i.m to i8             ; 3 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <16 x i8> poison, i8 %i.n, i64 0
  %.sroa.0.15.vec.insert.i.i.i = shufflevector <16 x i8> %.sroa.0.0.vec.insert.i.i.i, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.c

bb.c:                                             ; preds = %bb.f, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i"
  %.pn.i.i = phi i64 [ %2, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i" ], [ %i.aq, %bb.f ]
  %.sroa.4.0.i.i = phi i64 [ undef, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i" ], [ %.sroa.4.125.i.i, %bb.f ]
  %.sroa.01.0.i.i = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i" ], [ %.sroa.01.127.i.i, %bb.f ]
  %i.o = phi i64 [ 0, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdcfb823bbd2be2ebE.exit.i" ], [ %i.ap, %bb.f ]
  %.sroa.0.021.i.i = and i64 %.pn.i.i, %.val7.i   ; 4 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.0.021.i.i
  %.sroa.0.0.copyload.i32.i.i = load <16 x i8>, ptr %i.p, align 1, !noalias !8810 ; 3 uses
  %i.q = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, %.sroa.0.15.vec.insert.i.i.i
  %i.r = bitcast <16 x i1> %i.q to i16            ; 2 uses
  %.not37.i.i = icmp eq i16 %i.r, 0
  br i1 %.not37.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.c, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i"
  %.sroa.05.038.i.i = phi i16 [ %i.af, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i" ], [ %i.r, %bb.c ] ; 3 uses
  %i.s = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.05.038.i.i, i1 true)
  %i.t = zext nneg i16 %i.s to i64
  %i.u = add i64 %.sroa.0.021.i.i, %i.t
  %i.v = and i64 %i.u, %.val7.i
  %i.w = sub nsw i64 0, %i.v
  %i.x = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.w
  %i.y = getelementptr inbounds i8, ptr %i.x, i64 -8
  %.val.i.i.i = load i64, ptr %i.y, align 8, !noalias !8811, !noundef !7 ; 6 uses
  %i.z = icmp ult i64 %.val.i.i.i, %i.f
  br i1 %i.z, label %bb.d, label %.invoke

bb.d:                                             ; preds = %.lr.ph.i.i
  %i.aa = getelementptr inbounds nuw [232 x i8], ptr %i.d, i64 %.val.i.i.i ; 2 uses
  %i.ab = getelementptr i8, ptr %i.aa, i64 216
  %.val4.i.i.i.i = load i64, ptr %i.ab, align 8, !noalias !8812, !noundef !7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %4, %.val4.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.i.i", label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i", !prof !50

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.i.i": ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 208
  %.val3.i.i.i.i = load ptr, ptr %i.ac, align 8, !noalias !8812, !nonnull !7, !noundef !7
  %bcmp.i.i.i.i.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %3, ptr nonnull readonly align 1 %.val3.i.i.i.i, i64 %4), !alias.scope !8813, !noalias !8812
  %i.ad = icmp eq i32 %bcmp.i.i.i.i.i.i.i, 0
  br i1 %i.ad, label %bb.i, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i", !prof !51

._crit_edge.i.i:                                  ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i", %bb.c
  %.not12.i.i = icmp eq i64 %.sroa.01.0.i.i, 0
  br i1 %.not12.i.i, label %bb.e, label %.thread.i.i, !prof !18

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.thread.i.i": ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.i.i", %bb.d
  %i.ae = add i16 %.sroa.05.038.i.i, -1
  %i.af = and i16 %i.ae, %.sroa.05.038.i.i        ; 2 uses
  %.not.i.i = icmp eq i16 %i.af, 0
  br i1 %.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.e:                                             ; preds = %._crit_edge.i.i
  %i.ag = icmp slt <16 x i8> %.sroa.0.0.copyload.i32.i.i, zeroinitializer
  %i.ah = bitcast <16 x i1> %i.ag to i16          ; 2 uses
  %.not.i.i.i = icmp eq i16 %i.ah, 0
  br i1 %.not.i.i.i, label %bb.f, label %.thread29.i.i, !prof !16

.thread29.i.i:                                    ; preds = %bb.e
  %i.ai = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.ah, i1 true)
  %i.aj = zext nneg i16 %i.ai to i64
  %i.ak = add i64 %.sroa.0.021.i.i, %i.aj
  %i.al = and i64 %i.ak, %.val7.i
  br label %.thread.i.i

.thread.i.i:                                      ; preds = %.thread29.i.i, %._crit_edge.i.i
  %.sroa.4.126.i.i = phi i64 [ %i.al, %.thread29.i.i ], [ %.sroa.4.0.i.i, %._crit_edge.i.i ] ; 3 uses
  %i.am = icmp eq <16 x i8> %.sroa.0.0.copyload.i32.i.i, splat (i8 -1)
  %i.an = bitcast <16 x i1> %i.am to i16
  %i.ao = icmp eq i16 %i.an, 0
  br i1 %i.ao, label %bb.f, label %bb.g, !prof !16

bb.f:                                             ; preds = %.thread.i.i, %bb.e
  %.sroa.01.127.i.i = phi i64 [ 1, %.thread.i.i ], [ 0, %bb.e ]
  %.sroa.4.125.i.i = phi i64 [ %.sroa.4.126.i.i, %.thread.i.i ], [ undef, %bb.e ]
  %i.ap = add i64 %i.o, 16                        ; 2 uses
  %i.aq = add i64 %i.ap, %.sroa.0.021.i.i
  br label %bb.c

bb.g:                                             ; preds = %.thread.i.i
  %i.ar = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.4.126.i.i
  %i.as = load i8, ptr %i.ar, align 1, !noalias !8808, !noundef !7 ; 2 uses
  %i.at = icmp sgt i8 %i.as, -1
  br i1 %i.at, label %bb.h, label %bb.l, !prof !16

bb.h:                                             ; preds = %bb.g
  %.val62.i.i.i = load <16 x i8>, ptr %.val.i, align 16, !noalias !8808
  %i.au = icmp slt <16 x i8> %.val62.i.i.i, zeroinitializer
  %i.av = bitcast <16 x i1> %i.au to i16          ; 2 uses
  %i.aw = icmp ne i16 %i.av, 0
  tail call void @llvm.assume(i1 %i.aw)
  %i.ax = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %i.av, i1 true)
  %i.ay = zext nneg i16 %i.ax to i64              ; 2 uses
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %.val.i, i64 %i.ay
  %.pre = load i8, ptr %.phi.trans.insert, align 1, !noalias !8814
  br label %bb.l

bb.i:                                             ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$24find_or_find_insert_slot28_$u7b$$u7b$closure$u7d$$u7d$17h720d9982d80b5061E.exit.i.i"
  %i.az = load i64, ptr %i.e, align 8, !noundef !7 ; 2 uses
  %i.ba = icmp ult i64 %.val.i.i.i, %i.az
  br i1 %i.ba, label %bb.j, label %.invoke

bb.j:                                             ; preds = %bb.i
  %i.bb = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.bc = getelementptr inbounds nuw [232 x i8], ptr %i.bb, i64 %.val.i.i.i ; 2 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bd, ptr noundef nonnull align 8 dereferenceable(208) %i.bc, i64 208, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.bc, ptr noundef nonnull align 8 dereferenceable(208) %5, i64 208, i1 false)
  store i64 %.val.i.i.i, ptr %0, align 8
  %i.be = icmp eq i64 %4, 0
  br i1 %i.be, label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit", label %bb.k

bb.k:                                             ; preds = %bb.j
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %3, i64 noundef range(i64 1, 0) %4, i64 noundef 1) #34
  br label %"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit"

.invoke:                                          ; preds = %.lr.ph.i.i, %bb.i
  %i.bf = phi i64 [ %i.az, %bb.i ], [ %i.f, %.lr.ph.i.i ]
  %i.bg = phi ptr [ @1070, %bb.i ], [ @1069, %.lr.ph.i.i ]
  invoke void @_ZN4core9panicking18panic_bounds_check17h91fb439f93b2e326E(i64 noundef %.val.i.i.i, i64 noundef %i.bf, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bg) #33
          to label %.cont unwind label %bb.w

.cont:                                            ; preds = %.invoke
  unreachable

"_ZN4core3ptr49drop_in_place$LT$alloc..boxed..Box$LT$str$GT$$GT$17h625a10d3311e65efE.exit": ; preds = %bb.k, %bb.j, %bb.v
  ret void

bb.l:                                             ; preds = %bb.h, %bb.g
  %i.bh = phi i8 [ %.pre, %bb.h ], [ %i.as, %bb.g ]
  %.sroa.3.0.i.ph.i = phi i64 [ %i.ay, %bb.h ], [ %.sroa.4.126.i.i, %bb.g ] ; 3 uses
  %i.bi = load i64, ptr %i.e, align 8, !noundef !7 ; 3 uses
  %i.bj = icmp ult i64 %i.bi, 39755913951960241
  tail call void @llvm.assume(i1 %i.bj)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8814)
  %i.bk = getelementptr inbounds nuw i8, ptr %.val.i, i64 %.sroa.3.0.i.ph.i
  %i.bl = and i8 %i.bh, 1
  %i.bm = zext nneg i8 %i.bl to i64
  %i.bn = add i64 %.sroa.3.0.i.ph.i, -16
  %i.bo = and i64 %i.bn, %.val7.i
  store i8 %i.n, ptr %i.bk, align 1, !noalias !8814
  %i.bp = getelementptr i8, ptr %.val.i, i64 %i.bo
  %i.bq = getelementptr i8, ptr %i.bp, i64 16
  store i8 %i.n, ptr %i.bq, align 1, !noalias !8814
  %i.br = load <2 x i64>, ptr %i.h, align 8, !alias.scope !8814
  %i.bs = insertelement <2 x i64> <i64 poison, i64 -1>, i64 %i.bm, i64 0
  %i.bt = sub <2 x i64> %i.br, %i.bs
  store <2 x i64> %i.bt, ptr %i.h, align 8, !alias.scope !8814
  %i.bu = sub nsw i64 0, %.sroa.3.0.i.ph.i
  %i.bv = getelementptr inbounds [8 x i8], ptr %.val.i, i64 %i.bu
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 -8
  store i64 %i.bi, ptr %i.bw, align 8, !noalias !8814
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.b, ptr noundef nonnull align 8 dereferenceable(208) %5, i64 208, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8815)
  %i.bx = load i64, ptr %i.e, align 8, !alias.scope !8815, !noalias !8816, !noundef !7 ; 6 uses
  %i.by = icmp ult i64 %i.bx, 39755913951960241
  tail call void @llvm.assume(i1 %i.by)
  %i.bz = load i64, ptr %1, align 8, !range !8, !alias.scope !8815, !noalias !8816, !noundef !7
  %i.ca = icmp eq i64 %i.bx, %i.bz
  br i1 %i.ca, label %bb.m, label %_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i

bb.m:                                             ; preds = %bb.l
  %i.cb = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.cc = load i64, ptr %i.cb, align 8, !alias.scope !8815, !noalias !8816, !noundef !7
  %i.cd = load i64, ptr %i.h, align 8, !alias.scope !8815, !noalias !8816, !noundef !7
  %i.ce = add i64 %i.cd, %i.cc
  %.sroa.0.0.i.i.i = tail call noundef i64 @llvm.umin.i64(i64 %i.ce, i64 39755913951960240)
  %i.cf = sub nsw i64 %.sroa.0.0.i.i.i, %i.bx     ; 2 uses
  %i.cg = icmp ugt i64 %i.cf, 1
  br i1 %i.cg, label %bb.n, label %._crit_edge.i.i29

._crit_edge.i.i29:                                ; preds = %.noexc5.i, %bb.m
  %i.ch = phi i64 [ %i.bx, %bb.m ], [ %.pre12.i, %.noexc5.i ]
  invoke void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$13reserve_exact17hf2370b125b17cd75E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.ch, i64 noundef 1, i64 noundef 8, i64 noundef 232)
          to label %._ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit_crit_edge.i unwind label %bb.r, !noalias !8816

._ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit_crit_edge.i: ; preds = %._crit_edge.i.i29
  %.pre.i = load i64, ptr %i.e, align 8, !alias.scope !8817, !noalias !8818
  br label %_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i

bb.n:                                             ; preds = %bb.m
  %i.ci = invoke { i64, i64 } @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$17try_reserve_exact17h6d4d3d12e6154979E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1, i64 noundef %i.bx, i64 noundef %i.cf, i64 noundef 8, i64 noundef 232)
          to label %.noexc5.i unwind label %bb.r, !noalias !8816

.noexc5.i:                                        ; preds = %bb.n
  %i.cj = extractvalue { i64, i64 } %i.ci, 0
  %i.ck = icmp eq i64 %i.cj, -9223372036854775807
  %.pre12.i = load i64, ptr %i.e, align 8, !alias.scope !8815, !noalias !8816 ; 2 uses
  br i1 %i.ck, label %_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i, label %._crit_edge.i.i29

_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i: ; preds = %.noexc5.i, %._ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit_crit_edge.i, %bb.l
  %i.cl = phi i64 [ %.pre.i, %._ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit_crit_edge.i ], [ %.pre12.i, %.noexc5.i ], [ %i.bx, %bb.l ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8819
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(208) %i.a, ptr noundef nonnull align 8 dereferenceable(208) %5, i64 208, i1 false)
  %i.cm = getelementptr inbounds nuw i8, ptr %i.a, i64 224
  store i64 %2, ptr %i.cm, align 8, !noalias !8819
  %i.cn = getelementptr inbounds nuw i8, ptr %i.a, i64 208
  store ptr %3, ptr %i.cn, align 8, !noalias !8819
  %i.co = getelementptr inbounds nuw i8, ptr %i.a, i64 216
  store i64 %4, ptr %i.co, align 8, !noalias !8819
  %i.cp = load i64, ptr %1, align 8, !range !8, !alias.scope !8817, !noalias !8818, !noundef !7
  %i.cq = icmp eq i64 %i.cl, %i.cp
  br i1 %i.cq, label %bb.o, label %bb.v

bb.o:                                             ; preds = %_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h644fce106107b3a8E"(ptr noalias noundef nonnull align 8 dereferenceable(56) %1)
          to label %bb.v unwind label %bb.p, !noalias !8820

bb.p:                                             ; preds = %bb.o
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr99drop_in_place$LT$indexmap..Bucket$LT$alloc..boxed..Box$LT$str$GT$$C$zip..types..ZipFileData$GT$$GT$17h343bd214ecae077dE"(ptr noalias noundef nonnull align 8 dereferenceable(232) %i.a) #31
          to label %.critedge unwind label %bb.q, !noalias !8821

bb.q:                                             ; preds = %bb.p
  %i.cs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !8821
  unreachable

bb.r:                                             ; preds = %bb.n, %._crit_edge.i.i29
  %i.ct = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$zip..types..ZipFileData$GT$17ha3610e895df8fcecE"(ptr noalias noundef nonnull align 8 dereferenceable(208) %i.b) #31
          to label %bb.t unwind label %bb.s, !noalias !8822

bb.s:                                             ; preds = %bb.r
  %i.cu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #32, !noalias !8822
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.cv = icmp eq i64 %4, 0
  br i1 %i.cv, label %.critedge, label %bb.u

bb.u:                                             ; preds = %bb.t
  call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull align 1 %3, i64 noundef range(i64 1, 0) %4, i64 noundef 1) #34
  br label %.critedge

bb.v:                                             ; preds = %bb.o, %_ZN8indexmap3map4core15reserve_entries17h7636815a8d266243E.exit.i
  %i.cw = load ptr, ptr %i.c, align 8, !alias.scope !8817, !noalias !8818, !nonnull !7, !noundef !7
  %i.cx = getelementptr inbounds nuw [232 x i8], ptr %i.cw, i64 %i.cl
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(232) %i.cx, ptr noundef nonnull align 8 dereferenceable(232) %i.a, i64 232, i1 false), !noalias !8821
end_hunk_1
