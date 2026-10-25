Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33046
inline.NumDeleted: 15305
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 86
loop-unroll.NumUnrolled: 156
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h76a1eab95653f9caE":bb.a
"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit.i.i": ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.b, ptr noundef nonnull align 8 dereferenceable(64) %i.a, i64 64, i1 false)
  %i.k = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17heeb6afacebb2cb20E(ptr noalias noundef align 8 dereferenceable(64) %i.b) ; 2 uses
  %.not.i.i = icmp eq ptr %i.k, null
  br i1 %.not.i.i, label %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i.i", label %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit.thread"

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit.thread": ; preds = %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit.i.i", %bb.a
  %.sroa.0.0.i.i.ph = phi ptr [ %i.c, %bb.a ], [ %i.k, %"_ZN4core3ptr321drop_in_place$LT$core..option..Option$LT$core..iter..adapters..map..Map$LT$core..iter..adapters..take..Take$LT$nickel_lang_vector..vector..Iter$LT$nickel_lang_core..eval..value..NickelValue$C$32_usize$GT$$GT$$C$nickel_lang_core..eval..value..ArrayData..iter_with_pending_contracts..$u7b$$u7b$closure$u7d$$u7d$$GT$$GT$$GT$17h69bc26eb9594eae6E.exit.i.i" ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1053
  br label %bb.e

"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit": ; preds = %"_ZN4core3ptr91drop_in_place$LT$core..option..Option$LT$nickel_lang_core..eval..value..NickelValue$GT$$GT$17h926155e26836363aE.exit.i.i", %bb.b, %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h1eba41816ba7fc28E.exit.i.i"
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.m = call fastcc noundef ptr @_ZN4core4iter8adapters7flatten17and_then_or_clear17heeb6afacebb2cb20E(ptr noalias noundef align 8 dereferenceable(64) %i.l) ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1053
  %.not = icmp eq ptr %i.m, null
  br i1 %.not, label %bb.i, label %bb.e

bb.e:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit.thread", %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit"
  %.sroa.0.0.i.i7 = phi ptr [ %.sroa.0.0.i.i.ph, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit.thread" ], [ %i.m, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit" ]
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 152
  %.val = load ptr, ptr %i.n, align 8, !nonnull !44, !align !57, !noundef !44
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 160
  %.val3 = load ptr, ptr %i.o, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %.val.i = load ptr, ptr %.val3, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.p = getelementptr i8, ptr %.val3, i64 8
  %.val2.i = load ptr, ptr %i.p, align 8          ; 4 uses
  %.val.i.i.i = load i64, ptr %.val.i, align 8, !noundef !44 ; 2 uses
  %i.q = icmp ne i64 %.val.i.i.i, 0
  call void @llvm.assume(i1 %i.q)
  %i.r = add i64 %.val.i.i.i, 1                   ; 2 uses
  store i64 %i.r, ptr %.val.i, align 8
  %i.s = icmp eq i64 %i.r, 0
  br i1 %i.s, label %bb.f, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i, !prof !49

bb.f:                                             ; preds = %bb.e
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i: ; preds = %bb.e
  %.not.i.i4 = icmp eq ptr %.val2.i, null
  br i1 %.not.i.i4, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h64c31acfdb95df0dE.exit", label %bb.g

bb.g:                                             ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i
  %.val.i2.i.i = load i64, ptr %.val2.i, align 8, !noundef !44 ; 2 uses
  %i.t = icmp ne i64 %.val.i2.i.i, 0
  call void @llvm.assume(i1 %i.t)
  %i.u = add i64 %.val.i2.i.i, 1                  ; 2 uses
  store i64 %i.u, ptr %.val2.i, align 8
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.h, label %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h64c31acfdb95df0dE.exit", !prof !49

bb.h:                                             ; preds = %bb.g
  call void @llvm.trap()
  unreachable

"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h64c31acfdb95df0dE.exit": ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17hd85dfdadf503b487E.exit.i.i, %bb.g
  %i.w = call fastcc noundef nonnull ptr @"_ZN101_$LT$nickel_lang_core..eval..value..NickelValue$u20$as$u20$nickel_lang_core..closurize..Closurize$GT$18closurize_as_btype17hb7e104f375c8bfa4E"(ptr noundef nonnull %.sroa.0.0.i.i7, ptr noalias noundef nonnull align 1 %.val, ptr noundef nonnull %.val.i, ptr noundef %.val2.i, i64 noundef 0, ptr undef)
  br label %bb.i

bb.i:                                             ; preds = %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit", %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h64c31acfdb95df0dE.exit"
  %.sroa.0.0 = phi ptr [ %i.w, %"_ZN16nickel_lang_core4eval9operation69_$LT$impl$u20$nickel_lang_core..eval..VirtualMachine$LT$R$C$C$GT$$GT$8eval_op228_$u7b$$u7b$closure$u7d$$u7d$17h64c31acfdb95df0dE.exit" ], [ null, %"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf20acbd68a958011E.exit" ]
  ret ptr %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8313a272978178ceE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.2.i = alloca [12 x i8], align 4          ; 4 uses
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  %i.c = alloca [20 x i8], align 4                ; 5 uses
  %i.d = load ptr, ptr %1, align 8, !alias.scope !1096, !nonnull !44, !noundef !44 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !1096, !nonnull !44, !noundef !44
  %i.g = icmp eq ptr %i.d, %i.f
  br i1 %i.g, label %bb.l, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  store ptr %i.h, ptr %1, align 8, !alias.scope !1096
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %.val = load i32, ptr %i.i, align 4             ; 2 uses
  %i.j = getelementptr i8, ptr %i.d, i64 8
  %.val3 = load ptr, ptr %i.j, align 8            ; 8 uses
  %i.k = getelementptr i8, ptr %i.d, i64 16
  %.val4 = load i64, ptr %i.k, align 8, !noundef !44 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.l = icmp eq i64 %.val4, 1
  br i1 %i.l, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1097
  %i.m = load ptr, ptr %.val3, align 8, !noalias !1097, !nonnull !44, !align !50, !noundef !44
  call void @_ZN18nickel_lang_parser3ast6record8FieldDef13root_as_ident17h7d071a75761f1b95E(ptr noalias noundef nonnull sret([20 x i8]) align 4 captures(address) dereferenceable(20) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(280) %i.m), !noalias !1097
  %i.n = load i32, ptr %i.c, align 4, !range !72, !noalias !1097, !noundef !44 ; 2 uses
  %.not.i = icmp eq i32 %i.n, 3
  br i1 %.not.i, label %bb.e, label %bb.d, !prof !49

bb.d:                                             ; preds = %bb.c
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.i, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.0..sroa_idx.i, i64 12, i1 false), !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1097
  %i.o = icmp eq i32 %i.n, 2
  br i1 %i.o, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i, label %bb.f

bb.e:                                             ; preds = %bb.c
  call void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @907) #75, !noalias !1097
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.a, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.2.i, i64 12, i1 false), !noalias !1097
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i: ; preds = %bb.f, %bb.d
  %.sroa.0.0.ph.i = phi i32 [ 0, %bb.d ], [ 1, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1097
  call fastcc void @_ZN16nickel_lang_core6pretty12ident_quoted17he2c890ac8425eb17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.val), !noalias !1097
  br label %bb.h

bb.g:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1097
  call fastcc void @_ZN16nickel_lang_core6pretty12ident_quoted17he2c890ac8425eb17E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, i32 noundef %.val), !noalias !1097
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  %i.p = mul i64 %.val4, 200                      ; 3 uses
  %or.cond.i.i.i.i.i.i.i.i = icmp ugt i64 %.val4, 46116860184273879
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.i, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, !prof !73

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha07c1c35a0d2264fE.exit.i.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i
  %.sroa.0.068.i = phi i32 [ %.sroa.0.0.ph.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i ], [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ]
  %i.r = phi i64 [ 200, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.thread.i ], [ %i.p, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ] ; 2 uses
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !1098
  %i.s = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.r, i64 noundef range(i64 1, 9) 8) #66, !noalias !1098 ; 2 uses
  %i.t = icmp eq ptr %i.s, null
  br i1 %i.t, label %bb.i, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha07c1c35a0d2264fE.exit.i.i.i.i.i.i.i"

bb.i:                                             ; preds = %bb.h, %bb.g
  %i.u = phi i64 [ %i.r, %bb.h ], [ %i.p, %bb.g ]
  %.sroa.4.0.ph.i.i.i.i.i.i = phi i64 [ 8, %bb.h ], [ 0, %bb.g ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i, i64 %i.u, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @1283) #75
          to label %.noexc.i unwind label %bb.j, !noalias !1097

.noexc.i:                                         ; preds = %bb.i
  unreachable

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha07c1c35a0d2264fE.exit.i.i.i.i.i.i.i": ; preds = %bb.h, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i
  %.sroa.0.069.i = phi i32 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.sroa.0.068.i, %bb.h ]
  %.sroa.10.0.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %i.s, %bb.h ] ; 6 uses
  %.sroa.4.0.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i ], [ %.val4, %bb.h ] ; 2 uses
  %i.v = icmp samesign ule i64 %.val4, %.sroa.4.0.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.v)
  %i.w = icmp eq i64 %.val4, 0
  br i1 %i.w, label %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit", label %.preheader.i.i.i.i.i.i.i.preheader

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha07c1c35a0d2264fE.exit.i.i.i.i.i.i.i"
  %xtraiter = and i64 %.val4, 3                   ; 3 uses
  %i.x = icmp ult i64 %.val4, 4
  br i1 %i.x, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter = and i64 %.val4, -4
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %i.y = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ak, %.preheader.i.i.i.i.i.i.i ] ; 6 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.3, %.preheader.i.i.i.i.i.i.i ]
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.y
  %.val21.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.z, align 8, !noalias !1099, !nonnull !44, !align !50, !noundef !44
  %i.aa = getelementptr inbounds nuw [200 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.y ; 2 uses
  store i64 19, ptr %i.aa, align 8, !noalias !1100
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1100
  %i.ab = or disjoint i64 %i.y, 1                 ; 2 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.ab
  %.val21.i.i.i.i.i.i.i.i.i.i.1 = load ptr, ptr %i.ac, align 8, !noalias !1099, !nonnull !44, !align !50, !noundef !44
  %i.ad = getelementptr inbounds nuw [200 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.ab ; 2 uses
  store i64 19, ptr %i.ad, align 8, !noalias !1100
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i.1, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.1, align 8, !noalias !1100
  %i.ae = or disjoint i64 %i.y, 2                 ; 2 uses
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.ae
  %.val21.i.i.i.i.i.i.i.i.i.i.2 = load ptr, ptr %i.af, align 8, !noalias !1099, !nonnull !44, !align !50, !noundef !44
  %i.ag = getelementptr inbounds nuw [200 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.ae ; 2 uses
  store i64 19, ptr %i.ag, align 8, !noalias !1100
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2 = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i.2, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.2, align 8, !noalias !1100
  %i.ah = or disjoint i64 %i.y, 3                 ; 2 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.ah
  %.val21.i.i.i.i.i.i.i.i.i.i.3 = load ptr, ptr %i.ai, align 8, !noalias !1099, !nonnull !44, !align !50, !noundef !44
  %i.aj = getelementptr inbounds nuw [200 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.ah ; 2 uses
  store i64 19, ptr %i.aj, align 8, !noalias !1100
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i.3, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.3, align 8, !noalias !1100
  %i.ak = add nuw nsw i64 %i.y, 4                 ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit.loopexit.unr-lcssa", label %.preheader.i.i.i.i.i.i.i

bb.j:                                             ; preds = %bb.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !1101)
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %.val.i.i.i = load i64, ptr %i.b, align 8, !range !74, !alias.scope !1103, !noalias !1097, !noundef !44 ; 2 uses
  %i.am = icmp eq i64 %.val.i.i.i, 0
  br i1 %i.am, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i", label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i.i.i = load ptr, ptr %i.an, align 8, !alias.scope !1103, !noalias !1097, !nonnull !44, !noundef !44
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i, i64 noundef %.val.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !1104
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17h24b598f56fd0df8eE.exit.i": ; preds = %bb.k, %bb.j
  resume { ptr, i32 } %i.al

"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit.loopexit.unr-lcssa": ; preds = %.preheader.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit", label %.preheader.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.epil.preheader:          ; preds = %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit.loopexit.unr-lcssa", %.preheader.i.i.i.i.i.i.i.preheader
  %.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader ], [ %i.ak, %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit.loopexit.unr-lcssa" ]
  %lcmp.mod11 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod11)
  br label %.preheader.i.i.i.i.i.i.i.epil

.preheader.i.i.i.i.i.i.i.epil:                    ; preds = %.preheader.i.i.i.i.i.i.i.epil, %.preheader.i.i.i.i.i.i.i.epil.preheader
  %i.ao = phi i64 [ %i.ar, %.preheader.i.i.i.i.i.i.i.epil ], [ %.epil.init, %.preheader.i.i.i.i.i.i.i.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.preheader.i.i.i.i.i.i.i.epil ], [ 0, %.preheader.i.i.i.i.i.i.i.epil.preheader ]
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %.val3, i64 %i.ao
  %.val21.i.i.i.i.i.i.i.i.i.i.epil = load ptr, ptr %i.ap, align 8, !noalias !1099, !nonnull !44, !align !50, !noundef !44
  %i.aq = getelementptr inbounds nuw [200 x i8], ptr %.sroa.10.0.i.i.i.i.i.i, i64 %i.ao ; 2 uses
  store i64 19, ptr %i.aq, align 8, !noalias !1100
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil = getelementptr inbounds nuw i8, ptr %i.aq, i64 8
  store ptr %.val21.i.i.i.i.i.i.i.i.i.i.epil, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i.i.i.i.epil, align 8, !noalias !1100
  %i.ar = add nuw nsw i64 %i.ao, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit", label %.preheader.i.i.i.i.i.i.i.epil, !llvm.loop !1095

"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit": ; preds = %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit.loopexit.unr-lcssa", %.preheader.i.i.i.i.i.i.i.epil, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$7reserve17ha07c1c35a0d2264fE.exit.i.i.i.i.i.i.i"
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 52
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.8.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %i.a, i64 12, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1097
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.2.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.4.0.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %.sroa.10.0.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.val4, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i32 %.sroa.0.069.i, ptr %.sroa.7.0..sroa_idx, align 8
  br label %bb.m

bb.l:                                             ; preds = %bb.a
  store i64 -9223372036854775808, ptr %0, align 8
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %"_ZN3nls12field_walker6Record16completion_items28_$u7b$$u7b$closure$u7d$$u7d$17hd7d9220b4f0259d9E.exit"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h8b370152447221c6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(464) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(64) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 10 uses
  %i.e = alloca [24 x i8], align 8                ; 11 uses
  %i.f = alloca [80 x i8], align 8                ; 14 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 10 uses
  %i.i = alloca [80 x i8], align 8                ; 18 uses
  %i.j = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1307)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1308)
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !alias.scope !1309, !noundef !44 ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit.thread", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1310)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.p = load i16, ptr %i.o, align 8, !alias.scope !1311, !noundef !44 ; 2 uses
  %.not13.i.i.i = icmp eq i16 %i.p, 0
  %.promoted.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !1311 ; 2 uses
  br i1 %.not13.i.i.i, label %.lr.ph.i.i.i, label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he29d082cd893e4bbE.exit.i"

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %.promoted15.i.i.i = load ptr, ptr %i.q, align 8, !alias.scope !1311
  br label %bb.c

._crit_edge.i.i.i:                                ; preds = %bb.c
  store ptr %i.v, ptr %i.q, align 8, !alias.scope !1311
  store ptr %i.u, ptr %i.n, align 8, !alias.scope !1311
  br label %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he29d082cd893e4bbE.exit.i"

bb.c:                                             ; preds = %bb.c, %.lr.ph.i.i.i
  %i.r = phi ptr [ %.promoted15.i.i.i, %.lr.ph.i.i.i ], [ %i.v, %bb.c ] ; 2 uses
  %i.s = phi ptr [ %.promoted.i.i.i, %.lr.ph.i.i.i ], [ %i.u, %bb.c ]
  %.val11.i.i.i = load <16 x i8>, ptr %i.r, align 16, !noalias !1312
  %i.t = icmp sgt <16 x i8> %.val11.i.i.i, splat (i8 -1)
  %i.u = getelementptr inbounds i8, ptr %i.s, i64 -1408 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  %.cast.i.i.i = bitcast <16 x i1> %i.t to i16    ; 2 uses
  %.not.i.i.i = icmp eq i16 %.cast.i.i.i, 0
  br i1 %.not.i.i.i, label %bb.c, label %._crit_edge.i.i.i

"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he29d082cd893e4bbE.exit.i": ; preds = %bb.b, %._crit_edge.i.i.i
  %i.w = phi ptr [ %i.u, %._crit_edge.i.i.i ], [ %.promoted.i.i.i, %bb.b ]
  %.lcssa.i.i.i = phi i16 [ %.cast.i.i.i, %._crit_edge.i.i.i ], [ %i.p, %bb.b ] ; 3 uses
  %i.x = add i16 %.lcssa.i.i.i, -1
  %i.y = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i, i1 true)
  %i.z = zext nneg i16 %i.y to i64
  %i.aa = and i16 %i.x, %.lcssa.i.i.i
  store i16 %i.aa, ptr %i.o, align 8, !alias.scope !1311
  %i.ab = sub nsw i64 0, %i.z
  %i.ac = getelementptr inbounds [88 x i8], ptr %i.w, i64 %i.ab ; 8 uses
  %i.ad = add i64 %i.l, -1
  store i64 %i.ad, ptr %i.k, align 8, !alias.scope !1309
  %i.ae = getelementptr inbounds i8, ptr %i.ac, i64 -88
  %.sroa.0.0.copyload1.i = load i64, ptr %i.ae, align 8, !noalias !1313 ; 3 uses
  %.sroa.6.0..sroa_idx2.i = getelementptr inbounds i8, ptr %i.ac, i64 -80
  %.sroa.6.sroa.0.0.copyload.i = load ptr, ptr %.sroa.6.0..sroa_idx2.i, align 8, !noalias !1313 ; 2 uses
  %.not.i = icmp eq i64 %.sroa.0.0.copyload1.i, -9223372036854775808
  br i1 %.not.i, label %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit.thread", label %bb.d

bb.d:                                             ; preds = %"_ZN99_$LT$hashbrown..raw..RawIntoIter$LT$T$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he29d082cd893e4bbE.exit.i"
  %i.af = getelementptr inbounds i8, ptr %i.ac, i64 -64
  %.sroa.031.0.copyload = load i64, ptr %i.af, align 8, !noalias !1314 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds i8, ptr %i.ac, i64 -56
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !1314 ; 3 uses
  %.sroa.532.0..sroa_idx = getelementptr inbounds i8, ptr %i.ac, i64 -48
  %.sroa.532.0.copyload = load i64, ptr %.sroa.532.0..sroa_idx, align 8, !noalias !1314
  %.sroa.6.0..sroa_idx = getelementptr inbounds i8, ptr %i.ac, i64 -40
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !noalias !1314 ; 4 uses
  %.sroa.733.0..sroa_idx = getelementptr inbounds i8, ptr %i.ac, i64 -32
  %.sroa.733.0.copyload = load ptr, ptr %.sroa.733.0..sroa_idx, align 8, !noalias !1314 ; 8 uses
  %.sroa.834.0..sroa_idx = getelementptr inbounds i8, ptr %i.ac, i64 -24
  %.sroa.834.0.copyload = load i64, ptr %.sroa.834.0..sroa_idx, align 8, !noalias !1314 ; 6 uses
  %i.ag = icmp eq i64 %.sroa.0.0.copyload1.i, 0
  br i1 %i.ag, label %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.sroa.0.0.copyload.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.sroa.0.0.copyload.i, i64 noundef %.sroa.0.0.copyload1.i, i64 noundef range(i64 1, -9223372036854775807) 1) #66, !noalias !1315
  br label %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit"

"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit": ; preds = %bb.d, %bb.e
  %.not = icmp eq i64 %.sroa.031.0.copyload, -9223372036854775808
  br i1 %.not, label %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit.thread", label %bb.f

bb.f:                                             ; preds = %"_ZN111_$LT$std..collections..hash..map..IntoValues$LT$K$C$V$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h39f76e6143b0a154E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.733.0.copyload) ]
  %.idx = mul nuw nsw i64 %.sroa.834.0.copyload, 200
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.733.0.copyload, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1316
  store i64 2, ptr %i.i, align 8, !alias.scope !1317, !noalias !1318
  %.sroa.4.0..sroa_idx131.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4132.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 32 ; 2 uses
  store i64 2, ptr %.sroa.4132.0..sroa_idx.i.i, align 8, !alias.scope !1317, !noalias !1318
  %.sroa.5133.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %.sroa.5134.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  store ptr %.sroa.733.0.copyload, ptr %.sroa.5134.0..sroa_idx.i.i, align 8, !alias.scope !1317, !noalias !1318
  %.sroa.6.0..sroa_idx135.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 72
  store ptr %i.ah, ptr %.sroa.6.0..sroa_idx135.i.i, align 8, !alias.scope !1317, !noalias !1318
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1319)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1321
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1321
  %.sink.i.sroa.gep.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sink.i.sroa.gep190.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sink.i.sroa.gep192.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sink.i.sroa.gep193.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sink.i.sroa.gep195.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sink.i.sroa.gep196.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sink.i.sroa.gep198.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sink.i.sroa.gep199.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  invoke fastcc void @"_ZN114_$LT$core..iter..adapters..flatten..FlatMap$LT$I$C$U$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hb2092015e58a61eeE"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.i)
          to label %.noexc.i.i unwind label %bb.aj, !noalias !1322

.noexc.i.i:                                       ; preds = %bb.f
  %i.ai = load i64, ptr %i.g, align 8, !range !70, !noalias !1321, !noundef !44 ; 4 uses
  %.not.i.i.i.i.i.i = icmp eq i64 %i.ai, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %.thread338.i.i, label %bb.g

bb.g:                                             ; preds = %.noexc.i.i
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
end_hunk_0
