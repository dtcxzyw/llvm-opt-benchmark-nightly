Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/anki-rs/original/anki-0407df152365de94.anki.49bf70e6e198d769-cgu.15?download=true
inline.NumInlined: 4530
inline.NumDeleted: 1604
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 8
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN52_$LT$Q$u20$as$u20$hashbrown..Equivalent$LT$K$GT$$GT$10equivalent17hffb2cb5ff127fa0aE":bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6
  %bcmp.i.i.i = tail call i32 @bcmp(ptr nonnull readonly align 1 %.val, ptr nonnull readonly align 1 %.val2, i64 %.val1), !alias.scope !14582
  %i.e = icmp eq i32 %bcmp.i.i.i, 0
  br label %"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h332e005ec59083afE.exit"

"_ZN62_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$GT$2eq17h332e005ec59083afE.exit": ; preds = %bb.a, %bb.b
  %.sroa.0.0.i.i.i = phi i1 [ %i.e, %bb.b ], [ false, %bb.a ]
  ret i1 %.sroa.0.0.i.i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN52_$LT$T$u20$as$u20$anki..search..builder..Negated$GT$7negated17h1ed778649abbb110E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !45, !noundef !6
  %i.c = icmp eq i64 %i.b, -9223372036854775780
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 72, i64 noundef 8) #52
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !14585
  %i.f = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !14585 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit", !prof !24

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #51
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit": ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8
  store i64 -9223372036854775780, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @"_ZN52_$LT$T$u20$as$u20$anki..search..builder..Negated$GT$7negated17hdcad9537b184fa5fE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([72 x i8]) align 8 captures(none) dereferenceable(72) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !45, !noundef !6
  %i.c = icmp eq i64 %i.b, -9223372036854775780
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !6, !noundef !6 ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %i.e, i64 72, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 72, i64 noundef 8) #52
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.a, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  tail call void @_RNvCsiGVaDesi5rv_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #52, !noalias !14588
  %i.f = tail call noundef align 8 dereferenceable_or_null(72) ptr @_RNvCsiGVaDesi5rv_7___rustc12___rust_alloc(i64 noundef 72, i64 noundef range(i64 1, -9223372036854775807) 8) #52, !noalias !14588 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.d, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit", !prof !24

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h0917805e100cbd4bE(i64 noundef 8, i64 noundef 72) #50
          to label %.noexc unwind label %bb.e

.noexc:                                           ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr47drop_in_place$LT$anki..search..parser..Node$GT$17h210129451299b904E"(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) #51
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h6ca8ea5ab49097b2E() #53
  unreachable

bb.g:                                             ; preds = %bb.e
  resume { ptr, i32 } %i.h

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit": ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(72) %1, i64 72, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.j, align 8
  store i64 -9223372036854775780, ptr %0, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h3843ddb2ea38cf4bE.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN52_$LT$char$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17hb872c913c7d4b976E"(i32 noundef range(i32 0, 1114112) %0, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 12 uses
  %i.b = alloca [104 x i8], align 8               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [4 x i8], align 4                 ; 18 uses
  %i.e = icmp samesign ult i32 %0, 128
  br i1 %i.e, label %bb.s, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store i32 0, ptr %i.d, align 4
  %i.f = icmp samesign ult i32 %0, 2048
  %i.g = trunc i32 %0 to i8
  %i.h = and i8 %i.g, 63
  %i.i = or disjoint i8 %i.h, -128                ; 4 uses
  %i.j = lshr i32 %0, 6
  %i.k = trunc i32 %i.j to i8                     ; 2 uses
  %i.l = and i8 %i.k, 63
  %i.m = or disjoint i8 %i.l, -128                ; 2 uses
  %i.n = lshr i32 %0, 12
  %i.o = trunc i32 %i.n to i8                     ; 2 uses
  %i.p = and i8 %i.o, 63
  %i.q = or disjoint i8 %i.p, -128
  %i.r = lshr i32 %0, 18
  %i.s = trunc nuw nsw i32 %i.r to i8
  %i.t = or disjoint i8 %i.s, -16
  br i1 %i.f, label %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.u = icmp samesign ult i32 %0, 65536
  br i1 %i.u, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.v = or disjoint i8 %i.o, -32
  br label %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit

bb.e:                                             ; preds = %bb.c
  %i.w = getelementptr inbounds nuw i8, ptr %i.d, i64 3
  store i8 %i.i, ptr %i.w, align 1, !alias.scope !14615
  br label %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit

_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit: ; preds = %bb.d, %bb.e
  %i.x = phi i8 [ %i.v, %bb.d ], [ %i.t, %bb.e ]  ; 6 uses
  %.sink15 = phi i8 [ %i.m, %bb.d ], [ %i.q, %bb.e ]
  %.sink = phi i8 [ %i.i, %bb.d ], [ %i.m, %bb.e ]
  %.sroa.0.05.i = phi i64 [ 3, %bb.d ], [ 4, %bb.e ] ; 11 uses
  store i8 %i.x, ptr %i.d, align 4, !alias.scope !14615
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %.sink15, ptr %i.y, align 1, !alias.scope !14615
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 2
  store i8 %.sink, ptr %i.z, align 2, !alias.scope !14615
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14616)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14617)
  %i.aa = icmp ult i64 %.sroa.0.05.i, %2
  br i1 %i.aa, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i", label %bb.f

_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit.thread: ; preds = %bb.b
  %i.ab = or disjoint i8 %i.k, -64                ; 2 uses
  store i8 %i.ab, ptr %i.d, align 4, !alias.scope !14615
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  store i8 %i.i, ptr %i.ac, align 1, !alias.scope !14615
  %i.ad = icmp ugt i64 %2, 2
  br i1 %i.ad, label %.thread.i.i, label %bb.f

bb.f:                                             ; preds = %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit.thread, %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit
  %.sroa.0.05.i4 = phi i64 [ 2, %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit.thread ], [ %.sroa.0.05.i, %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit ]
  %.not.i = icmp eq i64 %.sroa.0.05.i4, %2
  br i1 %.not.i, label %bb.r, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i": ; preds = %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14618)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14619)
  %i.ae = add nsw i64 %.sroa.0.05.i, -1
  %i.af = add nsw i64 %.sroa.0.05.i, -1           ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.af
  %i.ah = load i8, ptr %i.ag, align 1, !alias.scope !14620, !noalias !14621, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i = icmp eq i8 %i.ah, %i.x
  br i1 %.not.i.not.i.i.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1", label %bb.g

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1": ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i"
  %i.ai = add nsw i64 %.sroa.0.05.i, -2           ; 2 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ai
  %i.ak = load i8, ptr %i.aj, align 1, !alias.scope !14620, !noalias !14621, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i.1 = icmp eq i8 %i.ak, %i.x
  br i1 %.not.i.not.i.i.i.1, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2", label %bb.g

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2": ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1"
  %i.al = add nsw i64 %.sroa.0.05.i, -3           ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.al
  %i.an = load i8, ptr %i.am, align 1, !alias.scope !14620, !noalias !14621, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i.2 = icmp eq i8 %i.an, %i.x
  br i1 %.not.i.not.i.i.i.2, label %.preheader110.split.i.i.2, label %bb.g

.preheader110.split.i.i.2:                        ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2"
  %.not.i6.i.2 = icmp eq i64 %i.al, 0
  br i1 %.not.i6.i.2, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i, label %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3"

"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3": ; preds = %.preheader110.split.i.i.2
  %i.ao = add nsw i64 %.sroa.0.05.i, -4           ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 %i.ao
  %i.aq = load i8, ptr %i.ap, align 1, !alias.scope !14620, !noalias !14621, !noundef !6 ; 2 uses
  %.not.i.not.i.i.i.3 = icmp eq i8 %i.aq, %i.x
  br i1 %.not.i.not.i.i.i.3, label %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i, label %bb.g

bb.g:                                             ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1", %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i"
  %.lcssa45 = phi i64 [ %i.af, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i" ], [ %i.ai, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1" ], [ %i.al, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2" ], [ %i.ao, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3" ]
  %.lcssa43 = phi i8 [ %i.ah, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i" ], [ %i.ak, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.1" ], [ %i.an, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.2" ], [ %i.aq, %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3" ]
  %i.ar = add nuw nsw i64 %.sroa.0.05.i, 15
  %i.as = icmp ult i64 %2, %i.ar
  br i1 %i.as, label %.lr.ph.split.us.i.i.i, label %bb.h

.thread.i.i:                                      ; preds = %_ZN4core4char7methods15encode_utf8_raw17he6e1f62f8e2b2356E.exit.thread
  %i.at = insertelement <1 x i8> poison, i8 %i.i, i64 0
  %i.au = icmp ult i64 %2, 17
  br i1 %i.au, label %.lr.ph.split.us.i.i.i, label %.thread106.i.i

bb.h:                                             ; preds = %bb.g
  %i.av = insertelement <1 x i8> poison, i8 %.lcssa43, i64 0
  br label %.thread106.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.thread.i.i, %bb.g
  %.sroa.0.05.i36 = phi i64 [ 2, %.thread.i.i ], [ %.sroa.0.05.i, %bb.g ] ; 4 uses
  %bcmp.i.i.us23.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %1, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i36), !alias.scope !14622, !noalias !14623
  %i.aw = icmp eq i32 %bcmp.i.i.us23.i.i.i, 0
  br i1 %i.aw, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit", label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader": ; preds = %.lr.ph.split.us.i.i.i
  %i.ax = add i64 %2, -1                          ; 2 uses
  %.not28.i.i.i38 = icmp ugt i64 %.sroa.0.05.i36, %i.ax
  br i1 %.not28.i.i.i38, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit", label %.split.us.i.i.i

.split.us.i.i.i:                                  ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader", %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i"
  %i.ay = phi i64 [ %i.bb, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i" ], [ %i.ax, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader" ]
  %.pn.i.i39 = phi ptr [ %i.az, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i" ], [ %1, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader" ]
  %i.az = getelementptr inbounds nuw i8, ptr %.pn.i.i39, i64 1 ; 2 uses
  %bcmp.i.i.us.i.i.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.az, ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, i64 range(i64 2, 5) %.sroa.0.05.i36), !alias.scope !14622, !noalias !14623
  %i.ba = icmp eq i32 %bcmp.i.i.us.i.i.i, 0
  br i1 %i.ba, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit", label %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i"

"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i": ; preds = %.split.us.i.i.i
  %i.bb = add i64 %i.ay, -1                       ; 2 uses
  %.not28.i.i.i = icmp ugt i64 %.sroa.0.05.i36, %i.bb
  br i1 %.not28.i.i.i, label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit", label %.split.us.i.i.i

.thread106.i.i:                                   ; preds = %.thread.i.i, %bb.h
  %.sink34 = phi i8 [ %i.x, %bb.h ], [ %i.ab, %.thread.i.i ]
  %i.bc = phi i64 [ %i.ae, %bb.h ], [ 1, %.thread.i.i ] ; 2 uses
  %.sroa.0.05.i38 = phi i64 [ %.sroa.0.05.i, %bb.h ], [ 2, %.thread.i.i ] ; 2 uses
  %i.bd = phi <1 x i8> [ %i.av, %bb.h ], [ %i.at, %.thread.i.i ]
  %storemerge105108.i.i = phi i64 [ %.lcssa45, %bb.h ], [ 1, %.thread.i.i ] ; 6 uses
  %i.be = insertelement <1 x i8> poison, i8 %.sink34, i64 0
  %i.bf = shufflevector <1 x i8> %i.be, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bg = shufflevector <1 x i8> %i.bd, <1 x i8> poison, <16 x i32> zeroinitializer ; 6 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.d, i64 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14622
  store ptr %1, ptr %i.a, align 8, !noalias !14622
  %i.bi = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %2, ptr %i.bi, align 8, !noalias !14622
  %i.bj = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.bh, ptr %i.bj, align 8, !noalias !14622
  %i.bk = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %i.bc, ptr %i.bk, align 8, !noalias !14622
  %i.bl = add nuw nsw i64 %.sroa.0.05.i38, 63     ; 2 uses
  %.not124.i.i = icmp ult i64 %i.bl, %2
  br i1 %.not124.i.i, label %.lr.ph.i9.i, label %.preheader.i7.i

.preheader.i7.i:                                  ; preds = %bb.l, %.thread106.i.i
  %.sroa.015.0.lcssa.i.i = phi i8 [ 0, %.thread106.i.i ], [ %.sroa.015.2.3.i.i, %bb.l ] ; 2 uses
  %.sroa.07.0.lcssa.i.i = phi i64 [ 0, %.thread106.i.i ], [ %i.dd, %bb.l ] ; 2 uses
  %i.bm = add nuw nsw i64 %.sroa.0.05.i38, 15     ; 2 uses
  %i.bn = add i64 %.sroa.07.0.lcssa.i.i, %i.bm
  %i.bo = icmp uge i64 %i.bn, %2
  %i.bp = trunc nuw i8 %.sroa.015.0.lcssa.i.i to i1 ; 2 uses
  %or.cond3119.i.i = select i1 %i.bo, i1 true, i1 %i.bp
  br i1 %or.cond3119.i.i, label %._crit_edge.i8.i, label %.lr.ph121.i.i

.lr.ph.i9.i:                                      ; preds = %.thread106.i.i, %bb.l
  %.sroa.07.0117.i.i = phi i64 [ %i.dd, %bb.l ], [ 0, %.thread106.i.i ] ; 6 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.07.0117.i.i ; 5 uses
  %.val3.i.i.i = load <16 x i8>, ptr %i.bq, align 1, !alias.scope !14624, !noalias !14625
  %i.br = getelementptr inbounds nuw i8, ptr %i.bq, i64 %storemerge105108.i.i
  %.val.i.i.i = load <16 x i8>, ptr %i.br, align 1, !alias.scope !14624, !noalias !14625
  %i.bs = icmp eq <16 x i8> %.val3.i.i.i, %i.bf
  %i.bt = icmp eq <16 x i8> %.val.i.i.i, %i.bg
  %narrow.i.i.i = select <16 x i1> %i.bs, <16 x i1> %i.bt, <16 x i1> zeroinitializer
  %i.bu = bitcast <16 x i1> %narrow.i.i.i to i16  ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %.val3.i.1.i.i = load <16 x i8>, ptr %i.bv, align 1, !alias.scope !14624, !noalias !14625
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 %storemerge105108.i.i
  %.val.i.1.i.i = load <16 x i8>, ptr %i.bw, align 1, !alias.scope !14624, !noalias !14625
  %i.bx = icmp eq <16 x i8> %.val3.i.1.i.i, %i.bf
  %i.by = icmp eq <16 x i8> %.val.i.1.i.i, %i.bg
  %narrow.i.1.i.i = select <16 x i1> %i.bx, <16 x i1> %i.by, <16 x i1> zeroinitializer
  %i.bz = bitcast <16 x i1> %narrow.i.1.i.i to i16 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.bq, i64 32 ; 2 uses
  %.val3.i.2.i.i = load <16 x i8>, ptr %i.ca, align 1, !alias.scope !14624, !noalias !14625
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 %storemerge105108.i.i
  %.val.i.2.i.i = load <16 x i8>, ptr %i.cb, align 1, !alias.scope !14624, !noalias !14625
  %i.cc = icmp eq <16 x i8> %.val3.i.2.i.i, %i.bf
  %i.cd = icmp eq <16 x i8> %.val.i.2.i.i, %i.bg
  %narrow.i.2.i.i = select <16 x i1> %i.cc, <16 x i1> %i.cd, <16 x i1> zeroinitializer
  %i.ce = bitcast <16 x i1> %narrow.i.2.i.i to i16 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bq, i64 48 ; 2 uses
  %.val3.i.3.i.i = load <16 x i8>, ptr %i.cf, align 1, !alias.scope !14624, !noalias !14625
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %storemerge105108.i.i
  %.val.i.3.i.i = load <16 x i8>, ptr %i.cg, align 1, !alias.scope !14624, !noalias !14625
  %i.ch = icmp eq <16 x i8> %.val3.i.3.i.i, %i.bf
  %i.ci = icmp eq <16 x i8> %.val.i.3.i.i, %i.bg
  %narrow.i.3.i.i = select <16 x i1> %i.ch, <16 x i1> %i.ci, <16 x i1> zeroinitializer
  %i.cj = bitcast <16 x i1> %narrow.i.3.i.i to i16 ; 2 uses
  %i.ck = icmp eq i16 %i.bu, 0
  br i1 %i.ck, label %.preheader109.1.i.i, label %bb.m

.preheader109.1.i.i:                              ; preds = %bb.m, %.lr.ph.i9.i
  %.sroa.015.2.i.i = phi i8 [ 0, %.lr.ph.i9.i ], [ %i.di, %bb.m ] ; 3 uses
  %i.cl = icmp eq i16 %i.bz, 0
  br i1 %i.cl, label %.preheader109.2.i.i, label %bb.i

bb.i:                                             ; preds = %.preheader109.1.i.i
  %i.cm = or disjoint i64 %.sroa.07.0117.i.i, 16
  %i.cn = trunc nuw i8 %.sroa.015.2.i.i to i1
  %i.co = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cm, i16 noundef %i.bz, i1 noundef zeroext %i.cn)
  %i.cp = zext i1 %i.co to i8
  %i.cq = or i8 %.sroa.015.2.i.i, %i.cp
  br label %.preheader109.2.i.i

.preheader109.2.i.i:                              ; preds = %bb.i, %.preheader109.1.i.i
  %.sroa.015.2.1.i.i = phi i8 [ %.sroa.015.2.i.i, %.preheader109.1.i.i ], [ %i.cq, %bb.i ] ; 3 uses
  %i.cr = icmp eq i16 %i.ce, 0
  br i1 %i.cr, label %.preheader109.3.i.i, label %bb.j

bb.j:                                             ; preds = %.preheader109.2.i.i
  %i.cs = or disjoint i64 %.sroa.07.0117.i.i, 32
  %i.ct = trunc nuw i8 %.sroa.015.2.1.i.i to i1
  %i.cu = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cs, i16 noundef %i.ce, i1 noundef zeroext %i.ct)
  %i.cv = zext i1 %i.cu to i8
  %i.cw = or i8 %.sroa.015.2.1.i.i, %i.cv
  br label %.preheader109.3.i.i

.preheader109.3.i.i:                              ; preds = %bb.j, %.preheader109.2.i.i
  %.sroa.015.2.2.i.i = phi i8 [ %.sroa.015.2.1.i.i, %.preheader109.2.i.i ], [ %i.cw, %bb.j ] ; 3 uses
  %i.cx = icmp eq i16 %i.cj, 0
  br i1 %i.cx, label %bb.l, label %bb.k

bb.k:                                             ; preds = %.preheader109.3.i.i
  %i.cy = or disjoint i64 %.sroa.07.0117.i.i, 48
  %i.cz = trunc nuw i8 %.sroa.015.2.2.i.i to i1
  %i.da = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.cy, i16 noundef %i.cj, i1 noundef zeroext %i.cz)
  %i.db = zext i1 %i.da to i8
  %i.dc = or i8 %.sroa.015.2.2.i.i, %i.db
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %.preheader109.3.i.i
  %.sroa.015.2.3.i.i = phi i8 [ %.sroa.015.2.2.i.i, %.preheader109.3.i.i ], [ %i.dc, %bb.k ] ; 2 uses
  %i.dd = add i64 %.sroa.07.0117.i.i, 64          ; 3 uses
  %i.de = add i64 %i.dd, %i.bl
  %i.df = icmp uge i64 %i.de, %2
  %i.dg = trunc nuw i8 %.sroa.015.2.3.i.i to i1
  %or.cond.i.i = select i1 %i.df, i1 true, i1 %i.dg
  br i1 %or.cond.i.i, label %.preheader.i7.i, label %.lr.ph.i9.i

bb.m:                                             ; preds = %.lr.ph.i9.i
  %i.dh = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.0117.i.i, i16 noundef %i.bu, i1 noundef zeroext false)
  %i.di = zext i1 %i.dh to i8
  br label %.preheader109.1.i.i

._crit_edge.i8.i:                                 ; preds = %bb.n, %.preheader.i7.i
  %.sroa.015.3.lcssa.i.i = phi i8 [ %.sroa.015.0.lcssa.i.i, %.preheader.i7.i ], [ %.sroa.015.4.i.i, %bb.n ] ; 2 uses
  %.lcssa.i.i = phi i1 [ %i.bp, %.preheader.i7.i ], [ %i.ea, %bb.n ]
  %i.dj = sub nuw i64 %2, %i.bc
  %i.dk = add i64 %i.dj, -16                      ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %1, i64 %i.dk ; 2 uses
  %.val3.i65.i.i = load <16 x i8>, ptr %i.dl, align 1, !alias.scope !14624, !noalias !14626
  %i.dm = getelementptr inbounds nuw i8, ptr %i.dl, i64 %storemerge105108.i.i
  %.val.i66.i.i = load <16 x i8>, ptr %i.dm, align 1, !alias.scope !14624, !noalias !14626
  %i.dn = icmp eq <16 x i8> %.val3.i65.i.i, %i.bf
  %i.do = icmp eq <16 x i8> %.val.i66.i.i, %i.bg
  %narrow.i67.i.i = select <16 x i1> %i.dn, <16 x i1> %i.do, <16 x i1> zeroinitializer
  %i.dp = bitcast <16 x i1> %narrow.i67.i.i to i16 ; 2 uses
  %i.dq = icmp eq i16 %i.dp, 0
  br i1 %i.dq, label %bb.p, label %bb.q

.lr.ph121.i.i:                                    ; preds = %.preheader.i7.i, %bb.n
  %.sroa.07.1120.i.i = phi i64 [ %i.dx, %bb.n ], [ %.sroa.07.0.lcssa.i.i, %.preheader.i7.i ] ; 3 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.07.1120.i.i ; 2 uses
  %.val3.i68.i.i = load <16 x i8>, ptr %i.dr, align 1, !alias.scope !14624, !noalias !14627
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 %storemerge105108.i.i
  %.val.i69.i.i = load <16 x i8>, ptr %i.ds, align 1, !alias.scope !14624, !noalias !14627
  %i.dt = icmp eq <16 x i8> %.val3.i68.i.i, %i.bf
  %i.du = icmp eq <16 x i8> %.val.i69.i.i, %i.bg
  %narrow.i70.i.i = select <16 x i1> %i.dt, <16 x i1> %i.du, <16 x i1> zeroinitializer
  %i.dv = bitcast <16 x i1> %narrow.i70.i.i to i16 ; 2 uses
  %i.dw = icmp eq i16 %i.dv, 0
  br i1 %i.dw, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.o, %.lr.ph121.i.i
  %.sroa.015.4.i.i = phi i8 [ 0, %.lr.ph121.i.i ], [ %i.ec, %bb.o ] ; 2 uses
  %i.dx = add i64 %.sroa.07.1120.i.i, 16          ; 2 uses
  %i.dy = add i64 %i.dx, %i.bm
  %i.dz = icmp uge i64 %i.dy, %2
  %i.ea = trunc nuw i8 %.sroa.015.4.i.i to i1     ; 2 uses
  %or.cond3.i.i = or i1 %i.dz, %i.ea
  br i1 %or.cond3.i.i, label %._crit_edge.i8.i, label %.lr.ph121.i.i

bb.o:                                             ; preds = %.lr.ph121.i.i
  %i.eb = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %.sroa.07.1120.i.i, i16 noundef %i.dv, i1 noundef zeroext false)
  %i.ec = zext i1 %i.eb to i8
  br label %bb.n

bb.p:                                             ; preds = %bb.q, %._crit_edge.i8.i
  %.sroa.015.5.i.i = phi i8 [ %.sroa.015.3.lcssa.i.i, %._crit_edge.i8.i ], [ %i.ef, %bb.q ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14622
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit"

bb.q:                                             ; preds = %._crit_edge.i8.i
  %i.ed = call fastcc noundef zeroext i1 @"_ZN4core3str7pattern13simd_contains28_$u7b$$u7b$closure$u7d$$u7d$17h20cc10966381f5f7E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.a, i64 noundef %i.dk, i16 noundef %i.dp, i1 noundef zeroext %.lcssa.i.i)
  %i.ee = zext i1 %i.ed to i8
  %i.ef = or i8 %.sroa.015.3.lcssa.i.i, %i.ee
  br label %bb.p

_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i: ; preds = %"_ZN4core4iter6traits12double_ended19DoubleEndedIterator5rfind5check28_$u7b$$u7b$closure$u7d$$u7d$17h8cf97fd87c52b215E.exit.i.i.i.3", %.preheader110.split.i.i.2
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14628
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14628
  call void @_ZN4core3str7pattern11StrSearcher3new17h06c723456276c09fE(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.d, i64 noundef range(i64 1, 5) %.sroa.0.05.i)
  call fastcc void @"_ZN80_$LT$core..str..pattern..StrSearcher$u20$as$u20$core..str..pattern..Searcher$GT$10next_match17h016e67ebd8b5e350E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef align 8 dereferenceable(104) %i.b)
  %i.eg = load i64, ptr %i.c, align 8, !range !5, !noalias !14628, !noundef !6
  %i.eh = trunc nuw nsw i64 %i.eg to i8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14628
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14628
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit"

bb.r:                                             ; preds = %bb.f
  %bcmp.i = call i32 @bcmp(ptr noundef nonnull readonly align 1 dereferenceable(1) %i.d, ptr noundef nonnull readonly align 1 dereferenceable(1) %1, i64 range(i64 1, 5) %2), !alias.scope !14628
  %i.ei = icmp eq i32 %bcmp.i, 0
  %i.ej = zext i1 %i.ei to i8
  br label %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit"

"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit": ; preds = %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i", %.split.us.i.i.i, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader", %bb.f, %.lr.ph.split.us.i.i.i, %bb.p, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i, %bb.r
  %.sroa.0.0.i = phi i8 [ %i.ej, %bb.r ], [ 1, %.lr.ph.split.us.i.i.i ], [ 0, %bb.f ], [ %i.eh, %_ZN4core3str7pattern13simd_contains17h262b55a152c75fb2E.exit.i ], [ %.sroa.015.5.i.i, %bb.p ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i.preheader" ], [ 1, %.split.us.i.i.i ], [ 0, %"_ZN4core4iter6traits8iterator8Iterator3any5check28_$u7b$$u7b$closure$u7d$$u7d$17h12241ff2f75ff2abE.exit.backedge.us.i.i.i" ]
  %i.ek = trunc nuw i8 %.sroa.0.0.i to i1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit

bb.s:                                             ; preds = %bb.a
  %i.el = trunc nuw nsw i32 %0 to i8              ; 2 uses
  %i.em = icmp ult i64 %2, 16
  br i1 %i.em, label %.preheader.i, label %bb.t

.preheader.i:                                     ; preds = %bb.s
  %.not.i1 = icmp eq i64 %2, 0
  br i1 %.not.i1, label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit, label %.lr.ph.i

bb.t:                                             ; preds = %bb.s
  %i.en = tail call { i64, i64 } @_ZN4core5slice6memchr14memchr_aligned17hb790a94b054306e6E(i8 noundef %i.el, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2)
  %i.eo = extractvalue { i64, i64 } %i.en, 0
  %i.ep = icmp eq i64 %i.eo, 1
  br label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %.sroa.01.05.i = phi i64 [ %i.et, %.lr.ph.i ], [ 0, %.preheader.i ] ; 2 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 %.sroa.01.05.i
  %i.er = load i8, ptr %i.eq, align 1, !alias.scope !14629, !noundef !6
  %i.es = icmp eq i8 %i.er, %i.el                 ; 2 uses
  %i.et = add nuw nsw i64 %.sroa.01.05.i, 1       ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.et, %2
  %or.cond = select i1 %i.es, i1 true, i1 %exitcond.not.i
  br i1 %or.cond, label %_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit, label %.lr.ph.i

_ZN4core5slice6memchr6memchr17hbdd2cad3cbf5d742E.exit: ; preds = %.lr.ph.i, %bb.t, %.preheader.i, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit"
  %.sroa.0.0.in = phi i1 [ %i.ek, %"_ZN55_$LT$$RF$str$u20$as$u20$core..str..pattern..Pattern$GT$15is_contained_in17h1465046165ccd021E.exit" ], [ %i.ep, %bb.t ], [ false, %.preheader.i ], [ %i.es, %.lr.ph.i ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hc2d8f31570e15d01E"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17had3a2440e2c1cb7fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @571, i64 noundef 5)
  ret i1 %i.a
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @"_ZN55_$LT$T$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h13cf3988620cf2cdE"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @573, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #50
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @"_ZN55_$LT$T$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h4ea3a33c2ef92bd9E"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @573, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #50
  unreachable
}

; Function Attrs: cold noreturn nonlazybind uwtable
define hidden noundef { i64, ptr } @"_ZN55_$LT$T$u20$as$u20$std..io..copy..BufferedReaderSpec$GT$7copy_to17h5dd1bccee6db638bE"(ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readnone align 1 captures(none) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @573, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.e, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @575) #50
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h0a8ad21e593d370bE"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 8 dereferenceable(16) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy17stack_buffer_copy17hd5623e397587e8deE(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 dereferenceable(296) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h1308d06a20e47e5bE"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 4 dereferenceable(4) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy17stack_buffer_copy17hc97832d6291bc86bE(ptr noalias noundef nonnull align 4 dereferenceable(4) %1, ptr noalias noundef nonnull align 8 dereferenceable(296) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h7e469ce01396c514E"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy17stack_buffer_copy17h614bc40919c1a361E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(296) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN55_$LT$W$u20$as$u20$std..io..copy..BufferedWriterSpec$GT$9copy_from17h8b9da5c26807d7c1E"(ptr noalias noundef align 8 dereferenceable(296) %0, ptr noalias noundef align 8 dereferenceable(32) %1) unnamed_addr #0 {
bb.a:
  %i.a = tail call { i64, ptr } @_ZN3std2io4copy17stack_buffer_copy17h20242ce001072857E(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 dereferenceable(296) %0)
  ret { i64, ptr } %i.a
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN56_$LT$std..io..Take$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h5b0f941c37b06e3dE"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.c, %bb.a, %bb.f
  %.sroa.4.0 = phi ptr [ %i.i, %bb.f ], [ null, %bb.a ], [ %i.i, %bb.c ]
  %.sroa.0.0 = phi i64 [ 0, %bb.f ], [ 0, %bb.a ], [ 1, %bb.c ]
  %i.e = insertvalue { i64, ptr } poison, i64 %.sroa.0.0, 0
  %i.f = insertvalue { i64, ptr } %i.e, ptr %.sroa.4.0, 1
  ret { i64, ptr } %i.f

bb.c:                                             ; preds = %bb.a
  %.sroa.0.0.i = tail call noundef i64 @llvm.umin.i64(i64 %i.c, i64 %2)
  %.val = load ptr, ptr %0, align 8, !nonnull !6, !align !29, !noundef !6
  %i.g = tail call { i64, ptr } @"_ZN47_$LT$std..fs..File$u20$as$u20$std..io..Read$GT$4read17h21832fa6ba471287E"(ptr noalias noundef nonnull align 4 dereferenceable(4) %.val, ptr noalias noundef nonnull align 1 %1, i64 noundef %.sroa.0.0.i) ; 2 uses
  %i.h = extractvalue { i64, ptr } %i.g, 0
  %i.i = extractvalue { i64, ptr } %i.g, 1        ; 3 uses
  %i.j = ptrtoint ptr %i.i to i64                 ; 2 uses
  %i.k = trunc nuw i64 %i.h to i1
  br i1 %i.k, label %bb.b, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not9 = icmp ult i64 %i.c, %i.j
  br i1 %.not9, label %bb.e, label %bb.f, !prof !14

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr @577, ptr %i.a, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %i.m, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr inttoptr (i64 8 to ptr), ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 0, ptr %i.o, align 8
  call void @_ZN4core9panicking9panic_fmt17h62031895f6e012daE(ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @578) #50
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.p = sub nuw i64 %i.c, %i.j
  store i64 %i.p, ptr %i.b, align 8
  br label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, ptr } @"_ZN56_$LT$std..io..Take$LT$T$GT$$u20$as$u20$std..io..Read$GT$4read17h9d07b93075ec5ff3E"(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 1 %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.c = load i64, ptr %i.b, align 8, !noundef !6 ; 4 uses
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %bb.b, label %bb.c

end_hunk_0
