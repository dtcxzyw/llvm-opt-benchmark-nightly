Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nls-21108e55ddbceac4.nls.aaf5fb48c83e0b2-cgu.0?download=true
inline.NumInlined: 33049
inline.NumDeleted: 15304
loop-unroll.NumCompletelyUnrolled: 63
loop-unroll.NumRuntimeUnrolled: 88
loop-unroll.NumUnrolled: 158
begin_hunk_0_@"_ZN87_$LT$$RF$nickel_lang_parser..ast..Ast$u20$as$u20$nickel_lang_core..typecheck..Check$GT$5check28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hef4e9dc07bb9b0f4E":bb.a

bb.z:                                             ; preds = %bb.o
  %.sroa.22.0..sroa_idx25 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx25, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.aa:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx24 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx24, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ab:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx23 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx23, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ac:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx22 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx22, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ad:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx21, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ae:                                            ; preds = %bb.o
  %i.ae = getelementptr inbounds nuw i8, ptr %i.aa, i64 224
  %.sroa.22.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.22, i64 7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(16) %.sroa.22.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.ae, i64 16, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.af:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx20, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

bb.ag:                                            ; preds = %bb.o
  %.sroa.22.0..sroa_idx19 = getelementptr inbounds nuw i8, ptr %i.aa, i64 217
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22.0..sroa_idx19, i64 23, i1 false)
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split": ; preds = %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag
  %.sroa.24.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.aa, i64 240
  %.sroa.24.0.copyload36 = load ptr, ptr %.sroa.24.0..sroa_idx35, align 8, !alias.scope !111130
  br label %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"

"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit": ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split", %bb.o
  %.sroa.24.0 = phi ptr [ undef, %bb.o ], [ %.sroa.24.0.copyload36, %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit.sink.split" ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.aa, i64 200
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.067, ptr noundef nonnull align 8 dereferenceable(16) %i.af, i64 16, i1 false)
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !44, !align !50, !noundef !44 ; 2 uses
  %.val = load ptr, ptr %i.ah, align 8, !nonnull !44, !noundef !44 ; 3 uses
  %i.ai = getelementptr i8, ptr %i.ah, i64 8
  %.val1 = load ptr, ptr %i.ai, align 8           ; 4 uses
  %.val.i.i = load i64, ptr %.val, align 8, !noundef !44 ; 2 uses
  %i.aj = icmp ne i64 %.val.i.i, 0
  call void @llvm.assume(i1 %i.aj)
  %i.ak = add i64 %.val.i.i, 1                    ; 2 uses
  store i64 %i.ak, ptr %.val, align 8
  %i.al = icmp eq i64 %i.ak, 0
  br i1 %i.al, label %bb.ah, label %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i, !prof !49

bb.ah:                                            ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"
  call void @llvm.trap()
  unreachable

_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i: ; preds = %"_ZN68_$LT$nickel_lang_parser..ast..Node$u20$as$u20$core..clone..Clone$GT$5clone17h31d3f9a1732a0f67E.exit"
  %.not.i = icmp eq ptr %.val1, null
  br i1 %.not.i, label %bb.ak, label %bb.ai

bb.ai:                                            ; preds = %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i
  %.val.i2.i = load i64, ptr %.val1, align 8, !noundef !44 ; 2 uses
  %i.am = icmp ne i64 %.val.i2.i, 0
  call void @llvm.assume(i1 %i.am)
  %i.an = add i64 %.val.i2.i, 1                   ; 2 uses
  store i64 %i.an, ptr %.val1, align 8
  %i.ao = icmp eq i64 %i.an, 0
  br i1 %i.ao, label %bb.aj, label %bb.ak, !prof !49

bb.aj:                                            ; preds = %bb.ai
  call void @llvm.trap()
  unreachable

bb.ak:                                            ; preds = %bb.ai, %_ZN5alloc2rc10RcInnerPtr10inc_strong17h842366df0617adc0E.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.c, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.067, i64 16, i1 false)
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i8 %i.ac, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(23) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(23) %.sroa.22, i64 23, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store ptr %.sroa.24.0, ptr %.sroa.6.0..sroa_idx, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store ptr %.val, ptr %i.ap, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store ptr %.val1, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.067)
  invoke fastcc void @"_ZN18nickel_lang_parser11environment24Environment$LT$K$C$V$GT$6insert17h85b78232d67d8c73E"(ptr noalias noundef align 8 dereferenceable(16) %i.y, i32 noundef %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(64) %i.c)
          to label %bb.al unwind label %bb.e

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.ar = load i64, ptr %2, align 8, !range !51, !alias.scope !111131, !noundef !44
  %i.as = icmp samesign ult i64 %i.ar, 18
  br i1 %i.as, label %bb.am, label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit2"

bb.am:                                            ; preds = %bb.al
  call fastcc void @"_ZN4core3ptr293drop_in_place$LT$nickel_lang_parser..typ..TypeF$LT$alloc..boxed..Box$LT$nickel_lang_core..typecheck..UnifType$GT$$C$nickel_lang_core..typecheck..UnifRecordRows$C$nickel_lang_core..typecheck..UnifEnumRows$C$$LP$$RF$nickel_lang_parser..ast..Ast$C$nickel_lang_core..typecheck..TermEnv$RP$$GT$$GT$17h76e8e3b9f382d025E"(ptr noalias noundef nonnull align 8 dereferenceable(96) %2), !inline_history !2
  br label %"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit2"

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit2": ; preds = %bb.al, %bb.am
  ret void

bb.an:                                            ; preds = %bb.f
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

"_ZN4core3ptr58drop_in_place$LT$nickel_lang_core..typecheck..UnifType$GT$17h51ad385c05ddc317E.exit": ; preds = %bb.e, %bb.f
  resume { ptr, i32 } %i.i
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h560af0ff83b5d4b3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp slt i64 %2, 0
  br i1 %i.a, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.b = icmp eq i64 %2, 0
  br i1 %i.b, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !111136
  %i.c = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %2, i64 noundef range(i64 1, 9) 1) #66, !noalias !111136 ; 2 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 1, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2390) #75
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %.sroa.10.0.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i ], [ %i.c, %bb.b ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i, ptr nonnull align 1 %1, i64 %2, i1 false)
  store i64 %2, ptr %0, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %2, ptr %.sroa.6.0..sroa_idx, align 8
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h78063e4b197921b3E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %.sroa.9 = alloca [31 x i8], align 1            ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  %i.f = shl i64 %2, 5                            ; 4 uses
  %i.g = icmp ugt i64 %2, 576460752303423487
  %i.h = icmp ugt i64 %i.f, 9223372036854775800
  %or.cond.i.i.i = or i1 %i.g, %i.h
  br i1 %or.cond.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i, !prof !69

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i: ; preds = %bb.a
  %i.i = icmp eq i64 %i.f, 0
  br i1 %i.i, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  %i.j = icmp eq i64 %2, 0
  tail call void @llvm.assume(i1 %i.j)
  store i64 0, ptr %i.e, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %.thread

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #66, !noalias !111155
  %i.m = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.f, i64 noundef range(i64 1, 9) 8) #66, !noalias !111155 ; 3 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i, i64 %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2389) #75
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit": ; preds = %bb.b
  store i64 %2, ptr %i.e, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.m, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 3 uses
  %i.q = getelementptr inbounds nuw [32 x i8], ptr %1, i64 %2
  %3 = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.9.8..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.9, i64 7 ; 3 uses
  br label %bb.d

bb.d:                                             ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit", %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
  %.sroa.016.043 = phi ptr [ %1, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit" ], [ %i.t, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 11 uses
  %.sroa.7.041 = phi i64 [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit" ], [ %i.u, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ] ; 3 uses
  %.sroa.10.040 = phi i64 [ %2, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit" ], [ %i.r, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  %i.r = add nsw i64 %.sroa.10.040, -1            ; 2 uses
  %i.s = icmp eq ptr %.sroa.016.043, %i.q
  br i1 %i.s, label %.thread, label %bb.e

.thread:                                          ; preds = %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit", %bb.d, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread"
  %4 = phi ptr [ %i.l, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17hf24663954ed2e8caE.exit.thread" ], [ %i.p, %bb.d ], [ %i.p, %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit" ]
  store i64 %2, ptr %4, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  ret void

bb.e:                                             ; preds = %bb.d
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 32
  %i.u = add nuw nsw i64 %.sroa.7.041, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9)
  call void @llvm.experimental.noalias.scope.decl(metadata !111156)
  call void @llvm.experimental.noalias.scope.decl(metadata !111157)
  %i.v = load i8, ptr %.sroa.016.043, align 8, !range !101, !alias.scope !111157, !noalias !111156, !noundef !44 ; 2 uses
  switch i8 %i.v, label %default.unreachable [
    i8 0, label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"
    i8 1, label %bb.f
    i8 2, label %bb.g
    i8 3, label %bb.h
    i8 4, label %bb.i
    i8 5, label %bb.j
  ]

default.unreachable:                              ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx21 = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx21, i64 31, i1 false), !alias.scope !111158
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.g:                                             ; preds = %bb.e
  %.sroa.9.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9.0..sroa_idx20, i64 31, i1 false), !alias.scope !111158
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.h:                                             ; preds = %bb.e
  %i.w = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !111158
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.w, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @1532)
          to label %.noexc unwind label %.loopexit, !inline_history !20

.noexc:                                           ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !111157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !111158
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !111158
  %i.x = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 24
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 16
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !111159, !noalias !111160, !nonnull !44, !noundef !44
  %i.aa = load i64, ptr %i.x, align 8, !alias.scope !111159, !noalias !111160, !noundef !44
  invoke fastcc void @"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h78063e4b197921b3E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.z, i64 noundef %i.aa)
          to label %.noexc12 unwind label %.loopexit, !inline_history !20

.noexc12:                                         ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !111157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !111158
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

bb.j:                                             ; preds = %bb.e
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !111161
  call void @llvm.experimental.noalias.scope.decl(metadata !111162)
  call void @llvm.experimental.noalias.scope.decl(metadata !111163)
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 24
  %i.ac = load i64, ptr %i.ab, align 8, !alias.scope !111163, !noalias !111162, !noundef !44
  %i.ad = icmp eq i64 %i.ac, 0
  br i1 %i.ad, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  store ptr null, ptr %i.a, align 8, !alias.scope !111162, !noalias !111163
  store i64 0, ptr %3, align 8, !alias.scope !111162, !noalias !111163
  br label %.noexc13

bb.l:                                             ; preds = %bb.j
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !111163, !noalias !111162, !noundef !44 ; 2 uses
  %.not.i = icmp eq ptr %i.af, null
  br i1 %.not.i, label %bb.n, label %bb.m, !prof !49

bb.m:                                             ; preds = %bb.l
  %i.ag = getelementptr inbounds nuw i8, ptr %.sroa.016.043, i64 16
  %i.ah = load i64, ptr %i.ag, align 8, !alias.scope !111163, !noalias !111162, !noundef !44
  invoke fastcc void @"_ZN96_$LT$alloc..collections..btree..map..BTreeMap$LT$K$C$V$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone13clone_subtree17h49b65e0d3bcf2d45E"(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.af, i64 noundef %i.ah)
          to label %.noexc13 unwind label %.loopexit, !inline_history !35

bb.n:                                             ; preds = %bb.l
  invoke void @_ZN4core6option13unwrap_failed17h13b3e6f702cb1c04E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2462) #75
          to label %.noexc15 unwind label %.loopexit.split-lp, !inline_history !35

.noexc15:                                         ; preds = %bb.n
  unreachable

.noexc13:                                         ; preds = %bb.k, %bb.m
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !111164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !111161
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(24) %.sroa.9.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !111157
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit"

"_ZN63_$LT$serde_json..value..Value$u20$as$u20$core..clone..Clone$GT$5clone17h627f2ce74479242dE.exit": ; preds = %.noexc13, %.noexc12, %.noexc, %bb.g, %bb.f, %bb.e
  %i.ai = getelementptr inbounds nuw [32 x i8], ptr %i.m, i64 %.sroa.7.041 ; 2 uses
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ai, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(31) %.sroa.427.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(31) %.sroa.9, i64 31, i1 false)
  store i8 %i.v, ptr %i.ai, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  %i.aj = icmp eq i64 %i.r, 0
  br i1 %i.aj, label %.thread, label %bb.d

bb.o:                                             ; preds = %bb.p
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #76
  unreachable

.loopexit:                                        ; preds = %bb.m, %bb.i, %bb.h
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

.loopexit.split-lp:                               ; preds = %bb.n
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  store i64 %.sroa.7.041, ptr %i.p, align 8, !alias.scope !111165
  invoke fastcc void @"_ZN4core3ptr68drop_in_place$LT$alloc..vec..Vec$LT$serde_json..value..Value$GT$$GT$17h3f4d8d20b7cf5ab3E"(ptr noalias noundef align 8 dereferenceable(24) %i.e) #77
          to label %bb.q unwind label %bb.o

bb.q:                                             ; preds = %bb.p
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN87_$LT$nickel_lang_core..eval..value..TagOutOfBoundsError$u20$as$u20$core..fmt..Debug$GT$3fmt17h376faa8316e6f36fE"(ptr noalias nonnull readonly align 1 captures(none) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @2393, i64 noundef 19)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @"_ZN87_$LT$nickel_lang_parser..ast..record..FieldMetadata$u20$as$u20$core..cmp..PartialEq$GT$2eq17h1216aa4dccdd911fE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %1) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.b = load i8, ptr %i.a, align 8, !range !45, !noundef !44
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.d = load i8, ptr %i.c, align 8, !range !45, !noundef !44
  %i.e = icmp eq i8 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 193
  %i.g = load i8, ptr %i.f, align 1, !range !45, !noundef !44
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 193
  %i.i = load i8, ptr %i.h, align 1, !range !45, !noundef !44
  %i.j = icmp eq i8 %i.g, %i.i
  br i1 %i.j, label %bb.c, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.l = load ptr, ptr %i.k, align 8, !align !57, !noundef !44 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.not = icmp eq ptr %i.l, null
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 176
  %i.o = load ptr, ptr %i.n, align 8, !align !57, !noundef !44 ; 2 uses
  %i.p = icmp eq ptr %i.o, null                   ; 2 uses
  br i1 %.not, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  br i1 %i.p, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread", label %bb.f

bb.e:                                             ; preds = %bb.c
  br i1 %i.p, label %bb.g, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.f:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 184
  %i.r = load i64, ptr %i.m, align 8, !noundef !44 ; 2 uses
  %i.s = load i64, ptr %i.q, align 8, !noundef !44
  %.not5 = icmp eq i64 %i.r, %i.s
  br i1 %.not5, label %.split, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

.split:                                           ; preds = %bb.f
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.l, ptr nonnull %i.o, i64 %i.r)
  %i.t = icmp eq i32 %bcmp, 0
  br i1 %i.t, label %bb.g, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.g:                                             ; preds = %.split, %bb.e
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111178)
  %i.u = load i64, ptr %0, align 8, !range !95, !alias.scope !111177, !noalias !111178, !noundef !44
  %.not.i = icmp eq i64 %i.u, 18
  %i.v = load i64, ptr %1, align 8, !range !95, !alias.scope !111178, !noalias !111177, !noundef !44
  %i.w = icmp eq i64 %i.v, 18                     ; 2 uses
  br i1 %.not.i, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  br i1 %i.w, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread", label %.split9

bb.i:                                             ; preds = %bb.g
  br i1 %i.w, label %bb.j, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

.split9:                                          ; preds = %bb.h
  %i.x = tail call fastcc noundef zeroext i1 @"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(120) %1), !inline_history !111169
  br i1 %i.x, label %bb.j, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.j:                                             ; preds = %.split9, %bb.i
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !111177, !noalias !111178, !nonnull !44, !align !50, !noundef !44
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.ab = load i64, ptr %i.aa, align 8, !alias.scope !111177, !noalias !111178, !noundef !44 ; 3 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ad = load ptr, ptr %i.ac, align 8, !alias.scope !111178, !noalias !111177, !nonnull !44, !align !50, !noundef !44
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.af = load i64, ptr %i.ae, align 8, !alias.scope !111178, !noalias !111177, !noundef !44
  %.not.i6 = icmp eq i64 %i.ab, %i.af
  br i1 %.not.i6, label %.preheader.split, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

.preheader.split:                                 ; preds = %bb.j
  %.not18 = icmp eq i64 %i.ab, 0
  br i1 %.not18, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit", label %.lr.ph

.lr.ph:                                           ; preds = %.preheader.split, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit.thread11"
  %.sroa.01.0.i17 = phi i64 [ %i.bs, %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit.thread11" ], [ 0, %.preheader.split ] ; 3 uses
  %i.ag = getelementptr inbounds nuw [104 x i8], ptr %i.z, i64 %.sroa.01.0.i17 ; 8 uses
  %i.ah = getelementptr inbounds nuw [104 x i8], ptr %i.ad, i64 %.sroa.01.0.i17 ; 8 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111179)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111180)
  %i.ai = tail call fastcc noundef zeroext i1 @"_ZN102_$LT$nickel_lang_parser..typ..TypeF$LT$Ty$C$RRows$C$ERows$C$Te$GT$$u20$as$u20$core..cmp..PartialEq$GT$2eq17hf535323312af4ba7E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ag, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %i.ah), !inline_history !111173
  br i1 %i.ai, label %bb.k, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.k:                                             ; preds = %.lr.ph
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ag, i64 88
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 88
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111181)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !111182)
  %i.al = load i32, ptr %i.aj, align 8, !range !77, !alias.scope !111183, !noalias !111184, !noundef !44 ; 2 uses
  %i.am = load i32, ptr %i.ak, align 8, !range !77, !alias.scope !111184, !noalias !111183, !noundef !44
  %i.an = icmp eq i32 %i.al, %i.am
  br i1 %i.an, label %bb.l, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.l:                                             ; preds = %bb.k
  switch i32 %i.al, label %default.unreachable [
    i32 0, label %bb.m
    i32 1, label %bb.o
    i32 2, label %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit.thread11"
  ]

default.unreachable:                              ; preds = %bb.l
  unreachable

bb.m:                                             ; preds = %bb.l
  %i.ao = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  %i.ap = load i32, ptr %i.ao, align 4, !alias.scope !111183, !noalias !111184, !noundef !44
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
  %i.ar = load i32, ptr %i.aq, align 4, !alias.scope !111184, !noalias !111183, !noundef !44
  %i.as = icmp eq i32 %i.ap, %i.ar
  br i1 %i.as, label %bb.n, label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.n:                                             ; preds = %bb.m
  %i.at = getelementptr inbounds nuw i8, ptr %i.ag, i64 96
  %i.au = load i32, ptr %i.at, align 8, !alias.scope !111183, !noalias !111184, !noundef !44
  %i.av = getelementptr inbounds nuw i8, ptr %i.ah, i64 96
  %i.aw = load i32, ptr %i.av, align 8, !alias.scope !111184, !noalias !111183, !noundef !44
  %i.ax = icmp eq i32 %i.au, %i.aw
  br i1 %i.ax, label %"_ZN75_$LT$nickel_lang_parser..ast..typ..Type$u20$as$u20$core..cmp..PartialEq$GT$2eq17hac0cbf44aca61d78E.exit", label %"_ZN76_$LT$nickel_lang_parser..ast..Annotation$u20$as$u20$core..cmp..PartialEq$GT$2eq17hbc50dc8c5e8f7ad2E.exit.thread"

bb.o:                                             ; preds = %bb.l
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ag, i64 92
  %i.az = load i32, ptr %i.ay, align 4, !alias.scope !111183, !noalias !111184, !noundef !44
  %i.ba = getelementptr inbounds nuw i8, ptr %i.ah, i64 92
end_hunk_0
