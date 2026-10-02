Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nickel-rs/original/nickel_lang_parser-e220ddae5243a2c1.nickel_lang_parser.a68346a9921300d1-cgu.0?download=true
inline.NumInlined: 76566
inline.NumDeleted: 6766
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 11
loop-unroll.NumUnrolled: 22
begin_hunk_0_@"_ZN102_$LT$core..iter..adapters..map..Map$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hf761b86b0029b98cE":bb.a
  store ptr %i.aw, ptr %i.cn, align 8, !noalias !565
  store i8 0, ptr %i.u, align 8, !noalias !565
  br label %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit"

"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit": ; preds = %bb.an, %bb.ak
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hab4b90f7e34641d4E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.v, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.u)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.v, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !565
  call fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hec97c87a4e2a1bc3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.p, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.o, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @129, i64 noundef 1)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.p, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !565
  %.sroa.0.0.copyload = load i8, ptr %i.o, align 8 ; 2 uses
  %.sroa.454.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %.sroa.454.0.copyload = load i64, ptr %.sroa.454.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx55 = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx55, align 8
  %.sroa.7.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx56, align 8 ; 3 uses
  switch i8 %.sroa.0.0.copyload, label %bb.at [
    i8 15, label %bb.as
    i8 0, label %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge"
  ]

.body.thread47:                                   ; preds = %bb.am, %bb.al, %bb.ah
  %lpad.thr_comm45 = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

bb.al:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !571
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !571
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.t, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !565
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17hec97c87a4e2a1bc3E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.s, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @216, i64 noundef 2)
          to label %bb.am unwind label %.body.thread47

bb.am:                                            ; preds = %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.s, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !565
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !565
  invoke fastcc void @"_ZN6pretty23DocBuilder$LT$D$C$A$GT$6append17h492e83be354c7b20E"(ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.r, ptr noalias noundef align 8 captures(address) dereferenceable(32) %i.q, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ca)
          to label %bb.an unwind label %.body.thread47

bb.an:                                            ; preds = %bb.am
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull align 8 dereferenceable(32) %i.r, i64 32, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !565
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.u, ptr noundef nonnull align 8 dereferenceable(32) %i.q, i64 32, i1 false)
  br label %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit"

.body.thread:                                     ; preds = %bb.ai, %.body.thread47
  %eh.lpad-body44 = phi { ptr, i32 } [ %lpad.thr_comm45, %.body.thread47 ], [ %i.cl, %bb.ai ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.o) #53
          to label %common.resume unwind label %bb.ao

bb.ao:                                            ; preds = %bb.ar, %.thread33, %bb.ap, %.body.thread, %bb.q
  %i.co = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !560, !inline_history !524
  unreachable

bb.ap:                                            ; preds = %bb.ab
  %i.cp = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.x) #53
          to label %.thread33 unwind label %bb.ao

.thread33:                                        ; preds = %bb.ac, %bb.ap, %bb.w, %.thread37
  %.pn30.i32 = phi { ptr, i32 } [ %i.bx, %bb.w ], [ %lpad.thr_comm, %.thread37 ], [ %i.ce, %bb.ac ], [ %i.cp, %bb.ap ]
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.ac) #53
          to label %common.resume unwind label %bb.ao, !noalias !560, !inline_history !524

bb.aq:                                            ; preds = %bb.s, %bb.ar
  %i.cq = phi { ptr, i32 } [ %i.cr, %bb.ar ], [ %i.bs, %bb.s ]
  call fastcc void @"_ZN4core3ptr67drop_in_place$LT$nickel_lang_parser..ast..record..FieldMetadata$GT$17hd008e3141067cdbcE"(ptr noalias noundef align 8 dereferenceable(200) %i.af) #53, !noalias !565, !inline_history !524
  call fastcc void @"_ZN4core3ptr56drop_in_place$LT$nickel_lang_parser..ast..Annotation$GT$17hd5a011e7b9efacffE"(ptr noalias noundef align 8 dereferenceable(120) %i.ae) #53, !noalias !565, !inline_history !524
  br label %common.resume

bb.ar:                                            ; preds = %bb.p
  %i.cr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr89drop_in_place$LT$pretty..DocBuilder$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$GT$17hd042ef62d824be5dE"(ptr noalias noundef align 8 dereferenceable(32) %i.o) #53
          to label %bb.aq unwind label %bb.ao

bb.as:                                            ; preds = %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit"
  %i.cs = inttoptr i64 %.sroa.454.0.copyload to ptr ; 2 uses
  %.pr.i = load i8, ptr %i.cs, align 8, !noalias !574
  %i.ct = icmp eq i8 %.pr.i, 0
  br i1 %i.ct, label %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge", label %bb.ax

"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge": ; preds = %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit", %bb.as
  %i.cu = getelementptr inbounds nuw i8, ptr %i.o, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, ptr noundef nonnull align 1 dereferenceable(7) %i.cu, i64 7, i1 false)
  br label %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$4nest17h8b677de303d053ceE.exit"

bb.at:                                            ; preds = %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !575
  %i.cv = call noundef align 8 dereferenceable_or_null(24) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 24, i64 noundef 8) #54, !noalias !575 ; 3 uses
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %bb.au, label %"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i", !prof !20

bb.au:                                            ; preds = %bb.at
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 24) #52
          to label %.noexc.i.i.i unwind label %bb.av, !noalias !576

.noexc.i.i.i:                                     ; preds = %bb.au
  unreachable

bb.av:                                            ; preds = %bb.au
  %i.cx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$pretty..Doc$LT$pretty..BoxDoc$GT$$GT$17h55c17926cb1cc05eE"(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %i.o) #53
          to label %common.resume unwind label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.cy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #55, !noalias !576
  unreachable

"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i": ; preds = %bb.at
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cv, ptr noundef nonnull align 8 dereferenceable(24) %i.o, i64 24, i1 false)
  br label %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$4nest17h8b677de303d053ceE.exit"

bb.ax:                                            ; preds = %bb.as
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  br label %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$4nest17h8b677de303d053ceE.exit"

"_ZN6pretty23DocBuilder$LT$D$C$A$GT$4nest17h8b677de303d053ceE.exit": ; preds = %"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i", %bb.ax, %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge"
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge" ], [ %i.cv, %"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i" ], [ %i.cs, %bb.ax ]
  %.sroa.512.0 = phi i64 [ %.sroa.454.0.copyload, %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge" ], [ 2, %"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i" ], [ 2, %bb.ax ]
  %.sroa.0.0 = phi i8 [ %.sroa.0.0.copyload, %"_ZN18nickel_lang_parser3ast6pretty146_$LT$impl$u20$pretty..Pretty$LT$nickel_lang_parser..ast..pretty..Allocator$GT$$u20$for$u20$$RF$nickel_lang_parser..ast..pattern..RecordPattern$GT$6pretty28_$u7b$$u7b$closure$u7d$$u7d$17h66e46cf1a9b9e9b6E.exit._crit_edge" ], [ 4, %"_ZN83_$LT$nickel_lang_parser..ast..pretty..Allocator$u20$as$u20$pretty..DocAllocator$GT$5alloc17h22b5985bbc453c6fE.exit.i.i" ], [ 4, %bb.ax ]
  store i8 %.sroa.0.0, ptr %0, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.5, i64 7, i1 false)
  %.sroa.512.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.512.0, ptr %.sroa.512.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %.sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  br label %bb.az

bb.ay:                                            ; preds = %bb.a
  store i8 16, ptr %0, align 8
  br label %bb.az

bb.az:                                            ; preds = %bb.ay, %"_ZN6pretty23DocBuilder$LT$D$C$A$GT$4nest17h8b677de303d053ceE.exit"
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN103_$LT$nickel_lang_parser..ast..pattern..OrPattern$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h6dfd2d26f4b19a64E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !19, !align !24, !noundef !19 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.e = load i64, ptr %i.d, align 8, !noundef !19
  %i.f = getelementptr inbounds nuw [64 x i8], ptr %i.c, i64 %i.e
  store ptr %i.c, ptr %i.a, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %2, ptr %i.h, align 8
  %i.i = call fastcc { ptr, i64 } @_ZN18nickel_lang_parser3ast5alloc8AstAlloc10alloc_many17h7444edf56336b6f5E(ptr noundef nonnull align 8 %2, ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.j, ptr %i.l, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %i.k, ptr %i.m, align 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN105_$LT$hashbrown..set..HashSet$LT$T$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$T$GT$$GT$6extend17ha407871d10fa64a8E"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !613)
  %.sroa.010.0.copyload.i = load ptr, ptr %1, align 8, !alias.scope !613, !noalias !614, !nonnull !19, !noundef !19 ; 4 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.2.0.copyload.i = load i64, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !613, !noalias !614 ; 4 uses
  %.sroa.311.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.311.0.copyload.i = load i64, ptr %.sroa.311.0..sroa_idx.i, align 8, !alias.scope !613, !noalias !614 ; 4 uses
  %.val3.i.i.i.i = load <16 x i8>, ptr %.sroa.010.0.copyload.i, align 16, !noalias !615
  %i.a = icmp eq i64 %.sroa.2.0.copyload.i, 0     ; 4 uses
  br i1 %i.a, label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h711149770dabd2c6E.exit", label %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i

_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i: ; preds = %bb.a
  %i.b = icmp slt i64 %.sroa.2.0.copyload.i, 4611686018427387900
  tail call void @llvm.assume(i1 %i.b)
  %i.c = shl i64 %.sroa.2.0.copyload.i, 2
  %i.d = and i64 %i.c, -16                        ; 2 uses
  %2 = add i64 %i.d, 16                           ; 2 uses
  %i.e = add nsw i64 %.sroa.2.0.copyload.i, 17
  %i.f = add i64 %i.e, %2                         ; 3 uses
  %3 = icmp uge i64 %i.f, %2
  tail call void @llvm.assume(i1 %3)
  %4 = icmp ult i64 %i.f, 9223372036854775793
  tail call void @llvm.assume(i1 %4)
  %i.g = sub nuw nsw i64 -16, %i.d
  %i.h = getelementptr inbounds i8, ptr %.sroa.010.0.copyload.i, i64 %i.g
  br label %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h711149770dabd2c6E.exit"

"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h711149770dabd2c6E.exit": ; preds = %bb.a, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i
  %.sroa.5.sroa.0.0.i.i.i.i.i = phi i64 [ %i.f, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 5 uses
  %.sroa.5.sroa.4.0.i.i.i.i.i = phi ptr [ %i.h, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ undef, %bb.a ] ; 4 uses
  %.sroa.0.0.i.i.i.i.i = phi i64 [ 16, %_ZN9hashbrown3raw11TableLayout20calculate_layout_for17hb76643e6316511fcE.exit.i.i.i.i.i ], [ 0, %bb.a ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.sroa.010.0.copyload.i, i64 16
  %i.j = icmp sgt <16 x i8> %.val3.i.i.i.i, splat (i8 -1)
  %i.k = bitcast <16 x i1> %i.j to i16
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.m = load i64, ptr %i.l, align 8, !alias.scope !616, !noalias !617, !noundef !19
  %i.n = icmp eq i64 %i.m, 0
  %i.o = add i64 %.sroa.311.0.copyload.i, 1
  %i.p = lshr i64 %i.o, 1
  %.sroa.0.0.i = select i1 %i.n, i64 %.sroa.311.0.copyload.i, i64 %i.p ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !618, !noalias !619, !noundef !19
  %i.s = icmp ugt i64 %.sroa.0.0.i, %i.r
  br i1 %i.s, label %bb.b, label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i", !prof !20

bb.b:                                             ; preds = %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h711149770dabd2c6E.exit"
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.u = invoke { i64, i64 } @"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$14reserve_rehash17h7f4e452eaa6315bbE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i64 noundef %.sroa.0.0.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.t, i1 noundef zeroext true)
          to label %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i" unwind label %bb.e, !noalias !617 ; 0 uses

"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i": ; preds = %bb.b, %"_ZN111_$LT$std..collections..hash..set..HashSet$LT$T$C$S$GT$$u20$as$u20$core..iter..traits..collect..IntoIterator$GT$9into_iter17h711149770dabd2c6E.exit"
  %i.v = icmp eq i64 %.sroa.311.0.copyload.i, 0
  br i1 %i.v, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i._crit_edge", label %.lr.ph

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i": ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.w = add i64 %i.aa, -1                        ; 2 uses
  %i.x = add i16 %.lcssa.i.i.i.i.i.i.i.i, -1
  %i.y = and i16 %i.x, %.lcssa.i.i.i.i.i.i.i.i
  %i.z = icmp eq i64 %i.w, 0
  br i1 %i.z, label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i._crit_edge", label %.lr.ph

.lr.ph:                                           ; preds = %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i", %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i"
  %i.aa = phi i64 [ %i.w, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i" ], [ %.sroa.311.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i" ]
  %i.ab = phi i16 [ %i.y, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i" ], [ %i.k, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i" ] ; 2 uses
  %.lcssa812.i.i.i.i.i.i13 = phi ptr [ %.lcssa811.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i" ], [ %.sroa.010.0.copyload.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i" ] ; 2 uses
  %.lcssa15.i.i.i.i.i.i12 = phi ptr [ %.lcssa14.i.i.i.i.i.i, %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i" ], [ %i.i, %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i" ] ; 2 uses
  %.not13.i.i.i.i.i.i.i.i = icmp eq i16 %i.ab, 0
  br i1 %.not13.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph, %.lr.ph.i.i.i.i.i.i.i.i
  %i.ac = phi ptr [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa15.i.i.i.i.i.i12, %.lr.ph ] ; 2 uses
  %i.ad = phi ptr [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ], [ %.lcssa812.i.i.i.i.i.i13, %.lr.ph ]
  %.val11.i.i.i.i.i.i.i.i = load <16 x i8>, ptr %i.ac, align 16, !noalias !620
  %i.ae = icmp sgt <16 x i8> %.val11.i.i.i.i.i.i.i.i, splat (i8 -1)
  %i.af = getelementptr inbounds i8, ptr %i.ad, i64 -64 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 16 ; 2 uses
  %.cast.i.i.i.i.i.i.i.i = bitcast <16 x i1> %i.ae to i16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq i16 %.cast.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i, label %._crit_edge20.i.i.i.i.i.i.i.i

bb.c:                                             ; preds = %._crit_edge20.i.i.i.i.i.i.i.i
  %i.ah = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ai = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i.i.i.i.i = or i1 %i.a, %i.ai
  br i1 %or.cond.i.i.i.i.i, label %.body.i, label %.body.sink.split.i

._crit_edge20.i.i.i.i.i.i.i.i:                    ; preds = %.lr.ph.i.i.i.i.i.i.i.i, %.lr.ph
  %.lcssa14.i.i.i.i.i.i = phi ptr [ %.lcssa15.i.i.i.i.i.i12, %.lr.ph ], [ %i.ag, %.lr.ph.i.i.i.i.i.i.i.i ]
  %.lcssa811.i.i.i.i.i.i = phi ptr [ %.lcssa812.i.i.i.i.i.i13, %.lr.ph ], [ %i.af, %.lr.ph.i.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi i16 [ %i.ab, %.lr.ph ], [ %.cast.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.aj = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.lcssa.i.i.i.i.i.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = sub nsw i64 0, %i.ak
  %i.am = getelementptr inbounds [4 x i8], ptr %.lcssa811.i.i.i.i.i.i, i64 %i.al
  %i.an = getelementptr inbounds i8, ptr %i.am, i64 -4
  %i.ao = load i32, ptr %i.an, align 4, !noalias !621, !noundef !19
  invoke fastcc void @"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$6insert17h209d631a6b786bcfE"(ptr noalias noundef nonnull align 8 dereferenceable(48) %0, i32 noundef %i.ao)
          to label %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i" unwind label %bb.c

"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i._crit_edge": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i", %"_ZN9hashbrown3raw21RawTable$LT$T$C$A$GT$7reserve17hdb621ce873a694beE.exit.i"
  %i.ap = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond7.i.i.i.i.i = or i1 %i.a, %i.ap
  br i1 %or.cond7.i.i.i.i.i, label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hbe980ddb29f59950E.exit", label %bb.d

bb.d:                                             ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i._crit_edge"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i) #54, !noalias !622
  br label %"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hbe980ddb29f59950E.exit"

.body.sink.split.i:                               ; preds = %bb.e, %bb.c
  %eh.lpad-body27.ph.i = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.ah, %bb.c ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.sroa.4.0.i.i.i.i.i) ]
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.5.sroa.4.0.i.i.i.i.i, i64 noundef %.sroa.5.sroa.0.0.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) %.sroa.0.0.i.i.i.i.i) #54, !noalias !617
  br label %.body.i

.body.i:                                          ; preds = %bb.e, %.body.sink.split.i, %bb.c
  %eh.lpad-body27.i = phi { ptr, i32 } [ %i.aq, %bb.e ], [ %i.ah, %bb.c ], [ %eh.lpad-body27.ph.i, %.body.sink.split.i ]
  resume { ptr, i32 } %eh.lpad-body27.i

bb.e:                                             ; preds = %bb.b
  %i.aq = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ar = icmp eq i64 %.sroa.5.sroa.0.0.i.i.i.i.i, 0
  %or.cond.i = or i1 %i.a, %i.ar
  br i1 %or.cond.i, label %.body.i, label %.body.sink.split.i

"_ZN121_$LT$hashbrown..map..HashMap$LT$K$C$V$C$S$C$A$GT$$u20$as$u20$core..iter..traits..collect..Extend$LT$$LP$K$C$V$RP$$GT$$GT$6extend17hbe980ddb29f59950E.exit": ; preds = %"_ZN96_$LT$hashbrown..set..IntoIter$LT$K$C$A$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4fold28_$u7b$$u7b$closure$u7d$$u7d$17h01fb2ffb8592ad29E.exit.i.i.i.i.i.i._crit_edge", %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN105_$LT$nickel_lang_parser..ast..pattern..EnumPattern$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h887af737ed665be8E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([104 x i8]) align 8 captures(none) dereferenceable(104) initializes((0, 100)) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1, ptr noundef nonnull align 8 %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [64 x i8], align 8                ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.03.0.copyload = load i32, ptr %i.c, align 8 ; 2 uses
  %.not = icmp eq i32 %.sroa.03.0.copyload, 3
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.sroa.55.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(60) %.sroa.55.0..sroa_idx, i64 60, i1 false)
  store i32 %.sroa.03.0.copyload, ptr %i.a, align 8
  call void @"_ZN101_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17h34c2264bbd2661c5E"(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(64) %i.a, ptr noundef nonnull align 8 %2), !inline_history !623
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.sroa.0.0.copyload = load i32, ptr %i.b, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.0.0 = phi i32 [ %.sroa.0.0.copyload, %bb.b ], [ 3, %bb.a ]
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 80
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %i.f, ptr noundef nonnull align 8 dereferenceable(20) %i.e, i64 20, i1 false)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sroa.0.0, ptr %i.g, align 8
  %.sroa.5.0..sroa_idx2 = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(60) %.sroa.5.0..sroa_idx2, ptr noundef nonnull align 4 dereferenceable(60) %i.d, i64 60, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, i64 16, i1 false)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN106_$LT$core..iter..adapters..chain..Chain$LT$A$C$B$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h6812fdb8306a3666E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(160) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.10.i3.i.i.i.i.i.i.sroa.4.i = alloca [24 x i8], align 8 ; 5 uses
  %i.a = alloca [24 x i8], align 8                ; 8 uses
  %.sroa.24.i = alloca [24 x i8], align 8         ; 8 uses
  %.sroa.10 = alloca [24 x i8], align 8           ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !730)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.24.i)
  %i.b = load i64, ptr %1, align 8, !range !33, !alias.scope !730, !noalias !731, !noundef !19 ; 2 uses
  %.not.i = icmp eq i64 %i.b, 2
  br i1 %.not.i, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h8abd122b28b5d672E.exit.thread, label %bb.b

_ZN4core4iter8adapters5chain17and_then_or_clear17h8abd122b28b5d672E.exit.thread: ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.24.i)
  br label %bb.y

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !732)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !733)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 104 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !range !34, !alias.scope !734, !noalias !735, !noundef !19 ; 3 uses
  %.not.i.i.i.i = icmp eq i64 %i.d, -9223372036854775807
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !736)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !737)
  store i64 -9223372036854775808, ptr %i.c, align 8, !alias.scope !738, !noalias !739
  %.not.i.i.i.i.i.i = icmp eq i64 %i.d, -9223372036854775808
  br i1 %.not.i.i.i.i.i.i, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store i64 -9223372036854775807, ptr %i.c, align 8, !alias.scope !734, !noalias !735
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.sroa.5.0..sroa_idx2.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.sroa.9.16.copyload.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx2.i.i.i.i.i.i, align 8, !alias.scope !740, !noalias !735
  %.sroa.11.16..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.e = load i64, ptr %.sroa.11.16..sroa.5.0..sroa_idx2.i.i.sroa_idx.i.i.i.i, align 8, !alias.scope !740, !noalias !735
  tail call void @llvm.experimental.noalias.scope.decl(metadata !741)
  br label %bb.x

bb.f:                                             ; preds = %bb.d, %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !742)
  %i.f = trunc nuw i64 %i.b to i1
  br i1 %i.f, label %bb.g, label %_ZN4core4iter8adapters5chain17and_then_or_clear17h8abd122b28b5d672E.exit

bb.g:                                             ; preds = %bb.f
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !743)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 4 uses
  %.promoted.i.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !745, !noalias !746 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.l = load ptr, ptr %i.g, align 8, !alias.scope !745, !noalias !746
  %.fr.i.i.i.i.i.i = freeze ptr %i.l
  %.not.i2.i.i.i.i.i.i.i = icmp eq ptr %.fr.i.i.i.i.i.i, null
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.45.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.p = load ptr, ptr %i.m, align 8, !alias.scope !745, !noalias !746, !nonnull !19
  %.promoted88.i.i.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !745, !noalias !746 ; 4 uses
  %.promoted89.i.i.i.i.i.i.i = load ptr, ptr %i.j, align 8, !alias.scope !745, !noalias !746 ; 6 uses
  %.promoted90.i.i.i.i.i.i.i = load i64, ptr %i.k, align 8, !alias.scope !745, !noalias !746 ; 3 uses
  br i1 %.not.i2.i.i.i.i.i.i.i, label %.split.us.i.i.i.i.i.i, label %.split.preheader.i.i.i.i.i.i

.split.preheader.i.i.i.i.i.i:                     ; preds = %bb.g
  %.promoted92.i.i.i.i.i.i.i = load ptr, ptr %i.n, align 8, !alias.scope !745, !noalias !746
  br label %.split.i.i.i.i.i.i

.split.us.i.i.i.i.i.i:                            ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %.not.i.i.us.i.i.i.i.i.i = icmp eq ptr %.promoted.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.us.i.i.i.i.i.i, label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h901f58ab45e0b42eE.exit.i.us.i.i.i.i.i.i", label %bb.h

bb.h:                                             ; preds = %.split.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !749)
  %i.q = icmp eq ptr %.promoted89.i.i.i.i.i.i.i, %.promoted88.i.i.i.i.i.i.i
  br i1 %i.q, label %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.i.i.us.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.i.i.us.i.i.i.i.i.i: ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %.promoted89.i.i.i.i.i.i.i, i64 56 ; 2 uses
  store ptr %i.r, ptr %i.j, align 8, !alias.scope !750, !noalias !751
  %.sroa.0.0.copyload8.i.i.us.i.i.i.i.i.i = load i32, ptr %.promoted89.i.i.i.i.i.i.i, align 8, !noalias !752 ; 2 uses
  %.not6.i.i.us.i.i.i.i.i.i = icmp eq i32 %.sroa.0.0.copyload8.i.i.us.i.i.i.i.i.i, 4
  br i1 %.not6.i.i.us.i.i.i.i.i.i, label %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i, label %.split4.us.i.i.i.i.i.i

_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i: ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.i.i.us.i.i.i.i.i.i, %bb.h
  %i.s = phi ptr [ %i.r, %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.i.i.us.i.i.i.i.i.i ], [ %.promoted89.i.i.i.i.i.i.i, %bb.h ] ; 3 uses
  %i.t = ptrtoint ptr %.promoted88.i.i.i.i.i.i.i to i64
  %i.u = ptrtoint ptr %i.s to i64
  %i.v = sub nuw i64 %i.t, %i.u
  %i.w = udiv exact i64 %i.v, 56
  tail call void @llvm.experimental.noalias.scope.decl(metadata !753)
  %i.x = icmp eq ptr %.promoted88.i.i.i.i.i.i.i, %i.s
  br i1 %i.x, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i.i.i.i.us.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i:                ; preds = %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i.us.i.i.i.i.i.i = phi i64 [ %i.z, %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i" ], [ 0, %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i ] ; 2 uses
  %i.y = getelementptr inbounds nuw [56 x i8], ptr %i.s, i64 %.sroa.0.07.i.i.i.i.i.i.us.i.i.i.i.i.i ; 3 uses
  %i.z = add nuw i64 %.sroa.0.07.i.i.i.i.i.i.us.i.i.i.i.i.i, 1 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !754)
  %i.aa = load i32, ptr %i.y, align 8, !range !28, !alias.scope !755, !noalias !756, !noundef !19
  %i.ab = icmp eq i32 %i.aa, 3
  br i1 %i.ab, label %bb.i, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i"

bb.i:                                             ; preds = %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !757)
  %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = load i64, ptr %i.ac, align 8, !alias.scope !758, !noalias !756 ; 2 uses
  %i.ad = icmp eq i64 %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, 0
  br i1 %i.ad, label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i", label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ae = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i = load ptr, ptr %i.ae, align 8, !alias.scope !758, !noalias !756, !nonnull !19, !noundef !19
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i.us.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #54, !noalias !759
  br label %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i"

"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i": ; preds = %bb.j, %bb.i, %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i
  %i.af = icmp eq i64 %i.z, %i.w
  br i1 %i.af, label %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i.i.i.i.us.i.i.i.i.i.i", label %.lr.ph.i.i.i.i.i.i.us.i.i.i.i.i.i

"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i.i.i.i.us.i.i.i.i.i.i": ; preds = %"_ZN4core3ptr93drop_in_place$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$17h5f08c58e7a279702E.exit.i.i.i.i.i.i.us.i.i.i.i.i.i", %_ZN4core3ops8function6FnOnce9call_once17hfbf0ba09905e269cE.exit.thread.i.i.us.i.i.i.i.i.i
  %i.ag = icmp eq i64 %.promoted90.i.i.i.i.i.i.i, 0
  br i1 %i.ag, label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hec6b1df309537b39E.exit.thread66.i.us.i.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i.i.i.i.us.i.i.i.i.i.i"
  %i.ah = mul nuw i64 %.promoted90.i.i.i.i.i.i.i, 56
  tail call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.promoted.i.i.i.i.i.i.i, i64 noundef %i.ah, i64 noundef range(i64 1, -9223372036854775807) 8) #54, !noalias !756
  br label %_ZN4core4iter8adapters7flatten17and_then_or_clear17hec6b1df309537b39E.exit.thread66.i.us.i.i.i.i.i.i

_ZN4core4iter8adapters7flatten17and_then_or_clear17hec6b1df309537b39E.exit.thread66.i.us.i.i.i.i.i.i: ; preds = %bb.k, %"_ZN4core3ptr103drop_in_place$LT$$u5b$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$u5d$$GT$17ha004d298f9143e19E.exit.i.i.i.i.i.us.i.i.i.i.i.i"
  store ptr null, ptr %i.h, align 8, !alias.scope !760, !noalias !761
  br label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h901f58ab45e0b42eE.exit.i.us.i.i.i.i.i.i"

"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h901f58ab45e0b42eE.exit.i.us.i.i.i.i.i.i": ; preds = %_ZN4core4iter8adapters7flatten17and_then_or_clear17hec6b1df309537b39E.exit.thread66.i.us.i.i.i.i.i.i, %.split.us.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !762)
  br label %"_ZN107_$LT$core..iter..adapters..fuse..Fuse$LT$I$GT$$u20$as$u20$core..iter..adapters..fuse..FuseImpl$LT$I$GT$$GT$4next17h46a9e6580e025270E.exit.thread.i.i.i.i.i.i.i"

.split.i.i.i.i.i.i:                               ; preds = %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i", %.split.preheader.i.i.i.i.i.i
  %i.ai = phi ptr [ %i.bf, %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i" ], [ %.promoted92.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ] ; 7 uses
  %.sroa.037.0.copyload3891.i.i.i.i.i.i.i = phi i64 [ %.sroa.037.0.copyload38.i.i.i.i.i.i.i, %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i" ], [ %.promoted90.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ] ; 2 uses
  %i.aj = phi ptr [ %i.bk, %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i" ], [ %.promoted89.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ] ; 5 uses
  %i.ak = phi ptr [ %i.cn, %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i" ], [ %.promoted88.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ] ; 3 uses
  %i.al = phi ptr [ %i.bk, %"_ZN4core3ptr160drop_in_place$LT$core..option..Option$LT$alloc..vec..into_iter..IntoIter$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$$GT$17h6b69dc18e31e098fE.exit.i.i.i.i.i.i.i" ], [ %.promoted.i.i.i.i.i.i.i, %.split.preheader.i.i.i.i.i.i ] ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !747)
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %i.al, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr121drop_in_place$LT$core..option..Option$LT$nickel_lang_parser..ast..StringChunk$LT$nickel_lang_parser..ast..Ast$GT$$GT$$GT$17h901f58ab45e0b42eE.exit.i.i.i.i.i.i.i", label %bb.l

bb.l:                                             ; preds = %.split.i.i.i.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !748)
end_hunk_0
begin_hunk_1_@"_ZN113_$LT$nickel_lang_parser..ast..pattern..ConstantPatternData$u20$as$u20$nickel_lang_parser..ast..alloc..CloneTo$GT$8clone_to17hea6b7c13c91c06c7E":bb.a
bb.l:                                             ; preds = %bb.k
  tail call void @_ZN7bumpalo3oom17hfadade8e21f84824E() #52, !noalias !1045
  unreachable

_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E.exit: ; preds = %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i", %bb.k
  %.sroa.0.0.i.i = phi ptr [ %i.aj, %"_ZN7bumpalo13Bump$LT$_$GT$21try_alloc_layout_fast17h12dcb9d07e2240f3E.exit.i" ], [ %i.ak, %bb.k ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.0.0.i.i, ptr nonnull readonly align 1 %i.w, i64 %i.y, i1 false)
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.0.0.i.i, ptr %i.al, align 8
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.y, ptr %i.am, align 8
  store i8 2, ptr %0, align 8
  br label %bb.n

bb.m:                                             ; preds = %bb.a
  store i8 3, ptr %0, align 8
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %_ZN18nickel_lang_parser3ast5alloc8AstAlloc9alloc_str17hef326a4729a58373E.exit, %_ZN18nickel_lang_parser3ast5alloc8AstAlloc12alloc_number17haf6aac779ca33b59E.exit, %bb.b
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN114_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..ast..pattern..bindings..Bindings$GT$8bindings17h657db411e12a3486E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 4 to ptr), ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %i.f, align 8
  invoke void @"_ZN120_$LT$nickel_lang_parser..ast..pattern..Pattern$u20$as$u20$nickel_lang_parser..ast..pattern..bindings..InjectBindings$GT$15inject_bindings17hbd06e303b946a82aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %1, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(200) null)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          cleanup
  call fastcc void @"_ZN4core3ptr98drop_in_place$LT$alloc..vec..Vec$LT$nickel_lang_parser..ast..pattern..bindings..PatBinding$GT$$GT$17h91ee608189232753E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53
  resume { ptr, i32 } %i.g

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h600218c3a211f99fE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1086)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1087)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1088)
  %.8.val.fr.i.i = freeze i64 %.val1              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1089)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1090)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1091, !noalias !1092, !nonnull !19, !noundef !19 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1091, !noalias !1092, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = shl i64 %.8.val.fr.i.i, 1                ; 6 uses
  %i.m = icmp slt i64 %.8.val.fr.i.i, 0
  %i.n = icmp ugt i64 %i.l, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp samesign ult i64 %.8.val.fr.i.i, 4611686018427387904 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i, !prof !39

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %1, align 8, !alias.scope !1091, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  br label %.split.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i, 0
  br i1 %.not54.i.i.i.i.i.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i: ; preds = %.lr.ph.i.split.i.i
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1095, !noalias !1096
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i": ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %1, align 8, !alias.scope !1091, !noalias !1092
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1093
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1097
  store i64 0, ptr %i.b, align 8, !alias.scope !1094, !noalias !1098
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1094, !noalias !1098
  tail call void @llvm.assume(i1 %i.p)
  br label %._crit_edge.invoke.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.s = phi i64 [ %i.bm, %bb.s ], [ %.pre.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.t = phi ptr [ %i.u, %bb.s ], [ %i.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !alias.scope !1091, !noalias !1092
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1099 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.v, align 8, !noalias !1099 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1093
  call void @llvm.experimental.noalias.scope.decl(metadata !1094)
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1100
  %i.w = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 2) #54, !noalias !1100 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"

.split.i.i:                                       ; preds = %bb.b, %.lr.ph.i.split.us.i.i
  %.us-phi26.i.i = phi i64 [ 0, %.lr.ph.i.split.us.i.i ], [ 2, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi26.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1101
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.8.val.fr.i.i, %bb.b ] ; 2 uses
  %i.y = icmp samesign ule i64 %.8.val.fr.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1097
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !1094, !noalias !1098
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1094, !noalias !1098
  store i64 %.8.val.fr.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1093
  call void @llvm.assume(i1 %i.p)
  %i.z = getelementptr [2 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 %.8.val.fr.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 -2
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 2, !noalias !1093
  br label %bb.e

.loopexit27.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1093 ; 2 uses
  %i.aa = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1093, !nonnull !19, !noundef !19
  %i.ab = shl nuw i64 %.val22.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1093
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i"

._crit_edge.invoke.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %bb.m, %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i"
  %i.ac = phi i64 [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ -1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.ax, %bb.m ], [ %i.aj, %bb.e ]
  %i.ad = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %bb.m ], [ 450984, %bb.e ]
  %i.ae = phi ptr [ @4377, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ @4377, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ @4378, %bb.m ], [ @4319, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #52
          to label %._crit_edge.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !1093

._crit_edge.cont.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"
  %i.af = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ag = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ]
  %storemerge55.i.i.i.i.i.i.i.i = phi i64 [ %.8.val.fr.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 172
  %i.aj = add i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 450984
  br i1 %i.ak, label %bb.f, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @4318, i64 %i.aj
  %i.am = load i16, ptr %i.al, align 2, !noalias !1093, !noundef !19 ; 3 uses
  %or.cond.not.i.i.i.i.i.i.i.i = icmp slt i16 %i.am, 0
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.h, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1093 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN18nickel_lang_parser7grammar18__parse__FixedType9__accepts17haf8ff3c974b770f2E.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ao = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1093
  br label %_ZN18nickel_lang_parser7grammar18__parse__FixedType9__accepts17haf8ff3c974b770f2E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1093
  %i.ap = xor i16 %i.am, -1
  invoke fastcc void @_ZN18nickel_lang_parser7grammar18__parse__FixedType17__simulate_reduce17haa6ecf85f701de3bE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.ap)
          to label %bb.i unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1093

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8, !range !35, !noalias !1093, !noundef !19
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1093
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.j, align 8, !noalias !1093, !noundef !19 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !noalias !1093, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1093
  %i.au = sub i64 %storemerge55.i.i.i.i.i.i.i.i, %i.as ; 3 uses
  %i.av = icmp ugt i64 %i.as, %storemerge55.i.i.i.i.i.i.i.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1093
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi i64 [ %storemerge55.i.i.i.i.i.i.i.i, %bb.k ], [ %i.au, %bb.l ] ; 6 uses
  %i.ax = add i64 %i.au, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !noalias !1093, !noundef !19
  %i.bb = call noundef i16 @_ZN18nickel_lang_parser7grammar18__parse__FixedType6__goto17hf3b92446af23096fE(i16 noundef %i.ba, i64 noundef %i.at) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1102)
  %i.bc = load i64, ptr %i.b, align 8, !range !38, !alias.scope !1102, !noalias !1103, !noundef !19
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @4379)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1093

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.pre78.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1102, !noalias !1103
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i", %bb.n
  %i.be = phi ptr [ %.pre78.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.aw
  store i16 %i.bb, ptr %i.bf, align 2, !noalias !1104
  %i.bg = add nsw i64 %i.aw, 1                    ; 3 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1093
  %i.bh = icmp slt i64 %i.aw, 4611686018427387903
  call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.invoke.i.i.i.i.i.i.i.i, label %bb.e

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i.i

_ZN18nickel_lang_parser7grammar18__parse__FixedType9__accepts17haf8ff3c974b770f2E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.loopexit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1093
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN18nickel_lang_parser7grammar18__parse__FixedType9__accepts17haf8ff3c974b770f2E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.bi = icmp slt i64 %.val7.i.i.i, 0
  br i1 %i.bi, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bj = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1105
  %i.bk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1105 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1106
  unreachable

bb.s:                                             ; preds = %_ZN18nickel_lang_parser7grammar18__parse__FixedType9__accepts17haf8ff3c974b770f2E.exit.i.i.i.i.i.i.i
  %i.bm = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !1095, !noalias !1096
  %i.bn = icmp eq ptr %i.u, %i.h
  br i1 %i.bn, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !1107
  %i.bo = add i64 %i.s, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !1095, !noalias !1096
  store i64 %.val7.i.i.i, ptr %0, align 8, !alias.scope !1086, !noalias !1087
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1086, !noalias !1087
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1086, !noalias !1087
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17he84af0ea1b4830f9E.exit

"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i": ; preds = %bb.s, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1086, !noalias !1087
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17he84af0ea1b4830f9E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17he84af0ea1b4830f9E.exit: ; preds = %bb.t, %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h74d95baa69e9664eE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1148)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  %.8.val.fr.i.i = freeze i64 %.val1              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1151)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1152)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1153, !noalias !1154, !nonnull !19, !noundef !19 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1153, !noalias !1154, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = shl i64 %.8.val.fr.i.i, 1                ; 6 uses
  %i.m = icmp slt i64 %.8.val.fr.i.i, 0
  %i.n = icmp ugt i64 %i.l, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp samesign ult i64 %.8.val.fr.i.i, 4611686018427387904 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i, !prof !39

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %1, align 8, !alias.scope !1153, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  br label %.split.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i, 0
  br i1 %.not54.i.i.i.i.i.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i: ; preds = %.lr.ph.i.split.i.i
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1157, !noalias !1158
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i": ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %1, align 8, !alias.scope !1153, !noalias !1154
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1155
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1159
  store i64 0, ptr %i.b, align 8, !alias.scope !1156, !noalias !1160
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1156, !noalias !1160
  tail call void @llvm.assume(i1 %i.p)
  br label %._crit_edge.invoke.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.s = phi i64 [ %i.bm, %bb.s ], [ %.pre.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.t = phi ptr [ %i.u, %bb.s ], [ %i.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !alias.scope !1153, !noalias !1154
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1161 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.v, align 8, !noalias !1161 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1155
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1162
  %i.w = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 2) #54, !noalias !1162 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"

.split.i.i:                                       ; preds = %bb.b, %.lr.ph.i.split.us.i.i
  %.us-phi26.i.i = phi i64 [ 0, %.lr.ph.i.split.us.i.i ], [ 2, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi26.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1163
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.8.val.fr.i.i, %bb.b ] ; 2 uses
  %i.y = icmp samesign ule i64 %.8.val.fr.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1159
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !1156, !noalias !1160
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1156, !noalias !1160
  store i64 %.8.val.fr.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1155
  call void @llvm.assume(i1 %i.p)
  %i.z = getelementptr [2 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 %.8.val.fr.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 -2
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 2, !noalias !1155
  br label %bb.e

.loopexit27.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1155 ; 2 uses
  %i.aa = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1155, !nonnull !19, !noundef !19
  %i.ab = shl nuw i64 %.val22.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1155
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i"

._crit_edge.invoke.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %bb.m, %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i"
  %i.ac = phi i64 [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ -1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.ax, %bb.m ], [ %i.aj, %bb.e ]
  %i.ad = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %bb.m ], [ 451672, %bb.e ]
  %i.ae = phi ptr [ @10158, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ @10158, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ @10159, %bb.m ], [ @10100, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #52
          to label %._crit_edge.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !1155

._crit_edge.cont.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"
  %i.af = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ag = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ]
  %storemerge55.i.i.i.i.i.i.i.i = phi i64 [ %.8.val.fr.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 172
  %i.aj = add i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 451672
  br i1 %i.ak, label %bb.f, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @10099, i64 %i.aj
  %i.am = load i16, ptr %i.al, align 2, !noalias !1155, !noundef !19 ; 3 uses
  %or.cond.not.i.i.i.i.i.i.i.i = icmp slt i16 %i.am, 0
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.h, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1155 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__accepts17hb9b13b335acafb46E.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ao = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1155
  br label %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__accepts17hb9b13b335acafb46E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1155
  %i.ap = xor i16 %i.am, -1
  invoke fastcc void @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment17__simulate_reduce17h13a65c07e69cdb68E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.ap)
          to label %bb.i unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1155

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8, !range !35, !noalias !1155, !noundef !19
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1155
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.j, align 8, !noalias !1155, !noundef !19 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !noalias !1155, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1155
  %i.au = sub i64 %storemerge55.i.i.i.i.i.i.i.i, %i.as ; 3 uses
  %i.av = icmp ugt i64 %i.as, %storemerge55.i.i.i.i.i.i.i.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1155
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi i64 [ %storemerge55.i.i.i.i.i.i.i.i, %bb.k ], [ %i.au, %bb.l ] ; 6 uses
  %i.ax = add i64 %i.au, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !noalias !1155, !noundef !19
  %i.bb = call noundef i16 @_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment6__goto17hc2a2a24f934b82d8E(i16 noundef %i.ba, i64 noundef %i.at) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1164)
  %i.bc = load i64, ptr %i.b, align 8, !range !38, !alias.scope !1164, !noalias !1165, !noundef !19
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10160)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1155

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.pre78.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1164, !noalias !1165
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i", %bb.n
  %i.be = phi ptr [ %.pre78.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.aw
  store i16 %i.bb, ptr %i.bf, align 2, !noalias !1166
  %i.bg = add nsw i64 %i.aw, 1                    ; 3 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1155
  %i.bh = icmp slt i64 %i.aw, 4611686018427387903
  call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.invoke.i.i.i.i.i.i.i.i, label %bb.e

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i.i

_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__accepts17hb9b13b335acafb46E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.loopexit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1155
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__accepts17hb9b13b335acafb46E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.bi = icmp slt i64 %.val7.i.i.i, 0
  br i1 %i.bi, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bj = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1167
  %i.bk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1167 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1168
  unreachable

bb.s:                                             ; preds = %_ZN18nickel_lang_parser7grammar27__parse__CliFieldAssignment9__accepts17hb9b13b335acafb46E.exit.i.i.i.i.i.i.i
  %i.bm = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !1157, !noalias !1158
  %i.bn = icmp eq ptr %i.u, %i.h
  br i1 %i.bn, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !1169
  %i.bo = add i64 %i.s, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !1157, !noalias !1158
  store i64 %.val7.i.i.i, ptr %0, align 8, !alias.scope !1148, !noalias !1149
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1148, !noalias !1149
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1148, !noalias !1149
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hef87dd182daab1c6E.exit

"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i": ; preds = %bb.s, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1148, !noalias !1149
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hef87dd182daab1c6E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17hef87dd182daab1c6E.exit: ; preds = %bb.t, %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17h7848a110ddd9936cE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1210)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1211)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1212)
  %.8.val.fr.i.i = freeze i64 %.val1              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1213)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1214)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1215, !noalias !1216, !nonnull !19, !noundef !19 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1215, !noalias !1216, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = shl i64 %.8.val.fr.i.i, 1                ; 6 uses
  %i.m = icmp slt i64 %.8.val.fr.i.i, 0
  %i.n = icmp ugt i64 %i.l, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp samesign ult i64 %.8.val.fr.i.i, 4611686018427387904 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i, !prof !39

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %1, align 8, !alias.scope !1215, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  br label %.split.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i, 0
  br i1 %.not54.i.i.i.i.i.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i: ; preds = %.lr.ph.i.split.i.i
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1219, !noalias !1220
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i": ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %1, align 8, !alias.scope !1215, !noalias !1216
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1217
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1221
  store i64 0, ptr %i.b, align 8, !alias.scope !1218, !noalias !1222
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1218, !noalias !1222
  tail call void @llvm.assume(i1 %i.p)
  br label %._crit_edge.invoke.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.s = phi i64 [ %i.bm, %bb.s ], [ %.pre.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.t = phi ptr [ %i.u, %bb.s ], [ %i.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !alias.scope !1215, !noalias !1216
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1223 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.v, align 8, !noalias !1223 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1217
  call void @llvm.experimental.noalias.scope.decl(metadata !1218)
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1224
  %i.w = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 2) #54, !noalias !1224 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"

.split.i.i:                                       ; preds = %bb.b, %.lr.ph.i.split.us.i.i
  %.us-phi26.i.i = phi i64 [ 0, %.lr.ph.i.split.us.i.i ], [ 2, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi26.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1225
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.8.val.fr.i.i, %bb.b ] ; 2 uses
  %i.y = icmp samesign ule i64 %.8.val.fr.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1221
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !1218, !noalias !1222
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1218, !noalias !1222
  store i64 %.8.val.fr.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1217
  call void @llvm.assume(i1 %i.p)
  %i.z = getelementptr [2 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 %.8.val.fr.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 -2
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 2, !noalias !1217
  br label %bb.e

.loopexit27.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1217 ; 2 uses
  %i.aa = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1217, !nonnull !19, !noundef !19
  %i.ab = shl nuw i64 %.val22.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1217
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i"

._crit_edge.invoke.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %bb.m, %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i"
  %i.ac = phi i64 [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ -1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.ax, %bb.m ], [ %i.aj, %bb.e ]
  %i.ad = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %bb.m ], [ 450984, %bb.e ]
  %i.ae = phi ptr [ @2450, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ @2450, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ @2451, %bb.m ], [ @2390, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #52
          to label %._crit_edge.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !1217

._crit_edge.cont.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"
  %i.af = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ag = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ]
  %storemerge55.i.i.i.i.i.i.i.i = phi i64 [ %.8.val.fr.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 172
  %i.aj = add i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 450984
  br i1 %i.ak, label %bb.f, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @2389, i64 %i.aj
  %i.am = load i16, ptr %i.al, align 2, !noalias !1217, !noundef !19 ; 3 uses
  %or.cond.not.i.i.i.i.i.i.i.i = icmp slt i16 %i.am, 0
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.h, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1217 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN18nickel_lang_parser7grammar13__parse__Term9__accepts17h44bbeba2e2d20ee7E.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ao = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1217
  br label %_ZN18nickel_lang_parser7grammar13__parse__Term9__accepts17h44bbeba2e2d20ee7E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1217
  %i.ap = xor i16 %i.am, -1
  invoke fastcc void @_ZN18nickel_lang_parser7grammar13__parse__Term17__simulate_reduce17hc7ee5e971e582798E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.ap)
          to label %bb.i unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1217

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8, !range !35, !noalias !1217, !noundef !19
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1217
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.j, align 8, !noalias !1217, !noundef !19 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !noalias !1217, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1217
  %i.au = sub i64 %storemerge55.i.i.i.i.i.i.i.i, %i.as ; 3 uses
  %i.av = icmp ugt i64 %i.as, %storemerge55.i.i.i.i.i.i.i.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1217
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi i64 [ %storemerge55.i.i.i.i.i.i.i.i, %bb.k ], [ %i.au, %bb.l ] ; 6 uses
  %i.ax = add i64 %i.au, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !noalias !1217, !noundef !19
  %i.bb = call noundef i16 @_ZN18nickel_lang_parser7grammar13__parse__Term6__goto17hcd6bc49cfc3d92dcE(i16 noundef %i.ba, i64 noundef %i.at) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  %i.bc = load i64, ptr %i.b, align 8, !range !38, !alias.scope !1226, !noalias !1227, !noundef !19
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @2452)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1217

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.pre78.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1226, !noalias !1227
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i", %bb.n
  %i.be = phi ptr [ %.pre78.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.aw
  store i16 %i.bb, ptr %i.bf, align 2, !noalias !1228
  %i.bg = add nsw i64 %i.aw, 1                    ; 3 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1217
  %i.bh = icmp slt i64 %i.aw, 4611686018427387903
  call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.invoke.i.i.i.i.i.i.i.i, label %bb.e

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i.i

_ZN18nickel_lang_parser7grammar13__parse__Term9__accepts17h44bbeba2e2d20ee7E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.loopexit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1217
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN18nickel_lang_parser7grammar13__parse__Term9__accepts17h44bbeba2e2d20ee7E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.bi = icmp slt i64 %.val7.i.i.i, 0
  br i1 %i.bi, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bj = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1229
  %i.bk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1229 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1230
  unreachable

bb.s:                                             ; preds = %_ZN18nickel_lang_parser7grammar13__parse__Term9__accepts17h44bbeba2e2d20ee7E.exit.i.i.i.i.i.i.i
  %i.bm = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !1219, !noalias !1220
  %i.bn = icmp eq ptr %i.u, %i.h
  br i1 %i.bn, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !1231
  %i.bo = add i64 %i.s, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !1219, !noalias !1220
  store i64 %.val7.i.i.i, ptr %0, align 8, !alias.scope !1210, !noalias !1211
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1210, !noalias !1211
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1210, !noalias !1211
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hd71a1320eab66501E.exit

"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i": ; preds = %bb.s, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1210, !noalias !1211
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hd71a1320eab66501E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17hd71a1320eab66501E.exit: ; preds = %bb.t, %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17hd83f65ddf364bc20E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1272)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1273)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1274)
  %.8.val.fr.i.i = freeze i64 %.val1              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1275)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1276)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1277, !noalias !1278, !nonnull !19, !noundef !19 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1277, !noalias !1278, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = shl i64 %.8.val.fr.i.i, 1                ; 6 uses
  %i.m = icmp slt i64 %.8.val.fr.i.i, 0
  %i.n = icmp ugt i64 %i.l, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp samesign ult i64 %.8.val.fr.i.i, 4611686018427387904 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i, !prof !39

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %1, align 8, !alias.scope !1277, !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  br label %.split.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i, 0
  br i1 %.not54.i.i.i.i.i.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i: ; preds = %.lr.ph.i.split.i.i
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1281, !noalias !1282
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i": ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %1, align 8, !alias.scope !1277, !noalias !1278
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1279
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1283
  store i64 0, ptr %i.b, align 8, !alias.scope !1280, !noalias !1284
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1280, !noalias !1284
  tail call void @llvm.assume(i1 %i.p)
  br label %._crit_edge.invoke.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.s = phi i64 [ %i.bm, %bb.s ], [ %.pre.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.t = phi ptr [ %i.u, %bb.s ], [ %i.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !alias.scope !1277, !noalias !1278
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1285 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.v, align 8, !noalias !1285 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1279
  call void @llvm.experimental.noalias.scope.decl(metadata !1280)
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1286
  %i.w = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 2) #54, !noalias !1286 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"

.split.i.i:                                       ; preds = %bb.b, %.lr.ph.i.split.us.i.i
  %.us-phi26.i.i = phi i64 [ 0, %.lr.ph.i.split.us.i.i ], [ 2, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi26.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1287
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.8.val.fr.i.i, %bb.b ] ; 2 uses
  %i.y = icmp samesign ule i64 %.8.val.fr.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1283
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !1280, !noalias !1284
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1280, !noalias !1284
  store i64 %.8.val.fr.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1279
  call void @llvm.assume(i1 %i.p)
  %i.z = getelementptr [2 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 %.8.val.fr.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 -2
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 2, !noalias !1279
  br label %bb.e

.loopexit27.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1279 ; 2 uses
  %i.aa = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1279, !nonnull !19, !noundef !19
  %i.ab = shl nuw i64 %.val22.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1279
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i"

._crit_edge.invoke.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %bb.m, %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i"
  %i.ac = phi i64 [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ -1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.ax, %bb.m ], [ %i.aj, %bb.e ]
  %i.ad = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %bb.m ], [ 455456, %bb.e ]
  %i.ae = phi ptr [ @6304, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ @6304, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ @6305, %bb.m ], [ @6246, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #52
          to label %._crit_edge.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !1279

._crit_edge.cont.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"
  %i.af = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ag = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ]
  %storemerge55.i.i.i.i.i.i.i.i = phi i64 [ %.8.val.fr.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 172
  %i.aj = add i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 455456
  br i1 %i.ak, label %bb.f, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @6245, i64 %i.aj
  %i.am = load i16, ptr %i.al, align 2, !noalias !1279, !noundef !19 ; 3 uses
  %or.cond.not.i.i.i.i.i.i.i.i = icmp slt i16 %i.am, 0
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.h, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1279 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm9__accepts17h0dd7084c7ff90030E.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ao = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1279
  br label %_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm9__accepts17h0dd7084c7ff90030E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1279
  %i.ap = xor i16 %i.am, -1
  invoke fastcc void @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm17__simulate_reduce17he686277ea261a000E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.ap)
          to label %bb.i unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1279

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8, !range !35, !noalias !1279, !noundef !19
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1279
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.j, align 8, !noalias !1279, !noundef !19 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !noalias !1279, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1279
  %i.au = sub i64 %storemerge55.i.i.i.i.i.i.i.i, %i.as ; 3 uses
  %i.av = icmp ugt i64 %i.as, %storemerge55.i.i.i.i.i.i.i.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1279
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi i64 [ %storemerge55.i.i.i.i.i.i.i.i, %bb.k ], [ %i.au, %bb.l ] ; 6 uses
  %i.ax = add i64 %i.au, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !noalias !1279, !noundef !19
  %i.bb = call noundef i16 @_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm6__goto17h3ab52c3ef4e42773E(i16 noundef %i.ba, i64 noundef %i.at) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1288)
  %i.bc = load i64, ptr %i.b, align 8, !range !38, !alias.scope !1288, !noalias !1289, !noundef !19
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @6306)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1279

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.pre78.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1288, !noalias !1289
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i", %bb.n
  %i.be = phi ptr [ %.pre78.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.aw
  store i16 %i.bb, ptr %i.bf, align 2, !noalias !1290
  %i.bg = add nsw i64 %i.aw, 1                    ; 3 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1279
  %i.bh = icmp slt i64 %i.aw, 4611686018427387903
  call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.invoke.i.i.i.i.i.i.i.i, label %bb.e

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i.i

_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm9__accepts17h0dd7084c7ff90030E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.loopexit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1279
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm9__accepts17h0dd7084c7ff90030E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.bi = icmp slt i64 %.val7.i.i.i, 0
  br i1 %i.bi, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bj = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1291
  %i.bk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1291 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1292
  unreachable

bb.s:                                             ; preds = %_ZN18nickel_lang_parser7grammar21__parse__ExtendedTerm9__accepts17h0dd7084c7ff90030E.exit.i.i.i.i.i.i.i
  %i.bm = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !1281, !noalias !1282
  %i.bn = icmp eq ptr %i.u, %i.h
  br i1 %i.bn, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !1293
  %i.bo = add i64 %i.s, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !1281, !noalias !1282
  store i64 %.val7.i.i.i, ptr %0, align 8, !alias.scope !1272, !noalias !1273
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1272, !noalias !1273
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1272, !noalias !1273
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hd33293f281a37fffE.exit

"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i": ; preds = %bb.s, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1272, !noalias !1273
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17hd33293f281a37fffE.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17hd33293f281a37fffE.exit: ; preds = %bb.t, %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN115_$LT$core..iter..adapters..filter_map..FilterMap$LT$I$C$F$GT$$u20$as$u20$core..iter..traits..iterator..Iterator$GT$4next17he132386cbda866c2E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(40) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val = load ptr, ptr %i.c, align 8             ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val1 = load i64, ptr %i.d, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1334)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1335)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1336)
  %.8.val.fr.i.i = freeze i64 %.val1              ; 9 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1337)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1338)
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.g = load ptr, ptr %1, align 8, !alias.scope !1339, !noalias !1340, !nonnull !19, !noundef !19 ; 4 uses
  %i.h = load ptr, ptr %i.f, align 8, !alias.scope !1339, !noalias !1340, !nonnull !19, !noundef !19 ; 2 uses
  %i.i = icmp eq ptr %i.g, %i.h
  br i1 %i.i, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 4 uses
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = shl i64 %.8.val.fr.i.i, 1                ; 6 uses
  %i.m = icmp slt i64 %.8.val.fr.i.i, 0
  %i.n = icmp ugt i64 %i.l, 9223372036854775806
  %or.cond.i.i.i.i.i.i.i.i.i.i.i.i = or i1 %i.m, %i.n
  %i.o = icmp eq i64 %i.l, 0
  %i.p = icmp samesign ult i64 %.8.val.fr.i.i, 4611686018427387904 ; 2 uses
  br i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.split.us.i.i, label %.lr.ph.i.split.i.i, !prof !39

.lr.ph.i.split.us.i.i:                            ; preds = %.lr.ph.i.i.i
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.q, ptr %1, align 8, !alias.scope !1339, !noalias !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  br label %.split.i.i

.lr.ph.i.split.i.i:                               ; preds = %.lr.ph.i.i.i
  %.not54.i.i.i.i.i.i.i.i = icmp eq i64 %.8.val.fr.i.i, 0
  br i1 %.not54.i.i.i.i.i.i.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i: ; preds = %.lr.ph.i.split.i.i
  %.pre.i.i.i = load i64, ptr %i.e, align 8, !alias.scope !1343, !noalias !1344
  br label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i": ; preds = %.lr.ph.i.split.i.i
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.r, ptr %1, align 8, !alias.scope !1339, !noalias !1340
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1341
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 inttoptr (i64 2 to ptr), ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1345
  store i64 0, ptr %i.b, align 8, !alias.scope !1342, !noalias !1346
  store ptr inttoptr (i64 2 to ptr), ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1342, !noalias !1346
  tail call void @llvm.assume(i1 %i.p)
  br label %._crit_edge.invoke.i.i.i.i.i.i.i.i

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i
  %i.s = phi i64 [ %i.bm, %bb.s ], [ %.pre.i.i.i, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.t = phi ptr [ %i.u, %bb.s ], [ %i.g, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.preheader.i.i ] ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 16 ; 3 uses
  store ptr %i.u, ptr %1, align 8, !alias.scope !1339, !noalias !1340
  %.val6.i.i.i = load ptr, ptr %i.t, align 8, !noalias !1347 ; 2 uses
  %i.v = getelementptr i8, ptr %i.t, i64 8
  %.val7.i.i.i = load i64, ptr %i.v, align 8, !noalias !1347 ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1341
  call void @llvm.experimental.noalias.scope.decl(metadata !1342)
  br i1 %i.o, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i", label %bb.b

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1348
  %i.w = call noundef align 2 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.l, i64 noundef range(i64 1, 9) 2) #54, !noalias !1348 ; 2 uses
  %i.x = icmp eq ptr %i.w, null
  br i1 %i.x, label %.split.i.i, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"

.split.i.i:                                       ; preds = %bb.b, %.lr.ph.i.split.us.i.i
  %.us-phi26.i.i = phi i64 [ 0, %.lr.ph.i.split.us.i.i ], [ 2, %bb.b ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.us-phi26.i.i, i64 %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1349
  unreachable

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i": ; preds = %bb.b, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 2 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %i.w, %bb.b ] ; 4 uses
  %.sroa.4.0.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.8.val.fr.i.i, %bb.b ] ; 2 uses
  %i.y = icmp samesign ule i64 %.8.val.fr.i.i, %.sroa.4.0.i.i.i.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.y)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 2 %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 2 %.val, i64 %i.l, i1 false), !noalias !1345
  store i64 %.sroa.4.0.i.i.i.i.i.i.i.i.i.i, ptr %i.b, align 8, !alias.scope !1342, !noalias !1346
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1342, !noalias !1346
  store i64 %.8.val.fr.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1341
  call void @llvm.assume(i1 %i.p)
  %i.z = getelementptr [2 x i8], ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, i64 %.8.val.fr.i.i
  %.phi.trans.insert.i.i.i.i.i.i.i.i = getelementptr i8, ptr %i.z, i64 -2
  %.pre.i.i.i.i.i.i.i.i = load i16, ptr %.phi.trans.insert.i.i.i.i.i.i.i.i, align 2, !noalias !1341
  br label %bb.e

.loopexit27.i.i.i.i.i.i.i.i:                      ; preds = %bb.o, %bb.h
  %lpad.loopexit.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i.i.i.i.i.i.i:               ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i
  %lpad.phi.i.i.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i.i.i.i.i, %.loopexit27.i.i.i.i.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i.i.i.i.i, %.loopexit.split-lp.i.i.i.i.i.i.i.i ]
  %.val22.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1341 ; 2 uses
  %i.aa = icmp eq i64 %.val22.i.i.i.i.i.i.i.i, 0
  br i1 %i.aa, label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i", label %bb.d

bb.d:                                             ; preds = %bb.c
  %.val23.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1341, !nonnull !19, !noundef !19
  %i.ab = shl nuw i64 %.val22.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val23.i.i.i.i.i.i.i.i, i64 noundef %i.ab, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1341
  br label %"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i"

._crit_edge.invoke.i.i.i.i.i.i.i.i:               ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %bb.m, %bb.e, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i"
  %i.ac = phi i64 [ -1, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ -1, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.ax, %bb.m ], [ %i.aj, %bb.e ]
  %i.ad = phi i64 [ 0, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ 0, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ %i.aw, %bb.m ], [ 451156, %bb.e ]
  %i.ae = phi ptr [ @8231, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.us.i.i" ], [ @8231, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ], [ @8232, %bb.m ], [ @8173, %bb.e ]
  invoke void @_ZN4core9panicking18panic_bounds_check17hbc09f5d79f1a5789E(i64 noundef %i.ac, i64 noundef %i.ad, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ae) #52
          to label %._crit_edge.cont.i.i.i.i.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i.i.i.i.i, !noalias !1341

._crit_edge.cont.i.i.i.i.i.i.i.i:                 ; preds = %._crit_edge.invoke.i.i.i.i.i.i.i.i
  unreachable

bb.e:                                             ; preds = %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i", %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i"
  %i.af = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.be, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ag = phi i16 [ %.pre.i.i.i.i.i.i.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bb, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ]
  %storemerge55.i.i.i.i.i.i.i.i = phi i64 [ %.8.val.fr.i.i, %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17h0bcf3f9102627a93E.exit.i.i.i.i.i.i.i.i" ], [ %i.bg, %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i" ] ; 3 uses
  %i.ah = sext i16 %i.ag to i64
  %i.ai = mul nsw i64 %i.ah, 172
  %i.aj = add i64 %i.ai, %i.s                     ; 3 uses
  %i.ak = icmp ult i64 %i.aj, 451156
  br i1 %i.ak, label %bb.f, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = getelementptr inbounds nuw [2 x i8], ptr @8172, i64 %i.aj
  %i.am = load i16, ptr %i.al, align 2, !noalias !1341, !noundef !19 ; 3 uses
  %or.cond.not.i.i.i.i.i.i.i.i = icmp slt i16 %i.am, 0
  br i1 %or.cond.not.i.i.i.i.i.i.i.i, label %bb.h, label %.loopexit.i.i.i.i.i.i.i.i

.loopexit.i.i.i.i.i.i.i.i:                        ; preds = %bb.f, %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.b, align 8, !noalias !1341 ; 2 uses
  %i.an = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.an, label %_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath9__accepts17hfb377ff66b232ec5E.exit.i.i.i.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %.loopexit.i.i.i.i.i.i.i.i
  %i.ao = shl nuw i64 %.val.i.i.i.i.i.i.i.i, 1
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.af, i64 noundef %i.ao, i64 noundef range(i64 1, -9223372036854775807) 2) #54, !noalias !1341
  br label %_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath9__accepts17hfb377ff66b232ec5E.exit.i.i.i.i.i.i.i

bb.h:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1341
  %i.ap = xor i16 %i.am, -1
  invoke fastcc void @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath17__simulate_reduce17h624af7bbd3d4a73aE(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.a, i16 noundef %i.ap)
          to label %bb.i unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1341

bb.i:                                             ; preds = %bb.h
  %i.aq = load i64, ptr %i.a, align 8, !range !35, !noalias !1341, !noundef !19
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1341
  br label %.loopexit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.as = load i64, ptr %i.j, align 8, !noalias !1341, !noundef !19 ; 2 uses
  %i.at = load i64, ptr %i.k, align 8, !noalias !1341, !noundef !19
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1341
  %i.au = sub i64 %storemerge55.i.i.i.i.i.i.i.i, %i.as ; 3 uses
  %i.av = icmp ugt i64 %i.as, %storemerge55.i.i.i.i.i.i.i.i
  br i1 %i.av, label %bb.m, label %bb.l

bb.l:                                             ; preds = %bb.k
  store i64 %i.au, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1341
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %i.aw = phi i64 [ %storemerge55.i.i.i.i.i.i.i.i, %bb.k ], [ %i.au, %bb.l ] ; 6 uses
  %i.ax = add i64 %i.au, -1                       ; 3 uses
  %i.ay = icmp ult i64 %i.ax, %i.aw
  br i1 %i.ay, label %bb.n, label %._crit_edge.invoke.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.az = getelementptr inbounds nuw [2 x i8], ptr %i.af, i64 %i.ax
  %i.ba = load i16, ptr %i.az, align 2, !noalias !1341, !noundef !19
  %i.bb = call noundef i16 @_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath6__goto17had467a82013ffceeE(i16 noundef %i.ba, i64 noundef %i.at) ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1350)
  %i.bc = load i64, ptr %i.b, align 8, !range !38, !alias.scope !1350, !noalias !1351, !noundef !19
  %i.bd = icmp eq i64 %i.aw, %i.bc
  br i1 %i.bd, label %bb.o, label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

bb.o:                                             ; preds = %bb.n
  invoke void @"_ZN5alloc7raw_vec19RawVec$LT$T$C$A$GT$8grow_one17h5188dca885b2e5d5E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @8233)
          to label %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" unwind label %.loopexit27.i.i.i.i.i.i.i.i, !noalias !1341

"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i": ; preds = %bb.o
  %.pre78.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1350, !noalias !1351
  br label %"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i"

"_ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit.i.i.i.i.i.i.i.i": ; preds = %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i", %bb.n
  %i.be = phi ptr [ %.pre78.i.i.i.i.i.i.i.i, %"._ZN5alloc3vec16Vec$LT$T$C$A$GT$8push_mut17hbfc96670acae70e4E.exit_crit_edge.i.i.i.i.i.i.i.i" ], [ %i.af, %bb.n ] ; 2 uses
  %i.bf = getelementptr inbounds nuw [2 x i8], ptr %i.be, i64 %i.aw
  store i16 %i.bb, ptr %i.bf, align 2, !noalias !1352
  %i.bg = add nsw i64 %i.aw, 1                    ; 3 uses
  store i64 %i.bg, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i, align 8, !noalias !1341
  %i.bh = icmp slt i64 %i.aw, 4611686018427387903
  call void @llvm.assume(i1 %i.bh)
  %.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.bg, 0
  br i1 %.not.i.i.i.i.i.i.i.i, label %._crit_edge.invoke.i.i.i.i.i.i.i.i, label %bb.e

"_ZN4core3ptr47drop_in_place$LT$alloc..vec..Vec$LT$i16$GT$$GT$17h1479ff570d47356eE.exit.i.i.i.i.i.i.i.i": ; preds = %bb.d, %bb.c
  resume { ptr, i32 } %lpad.phi.i.i.i.i.i.i.i.i

_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath9__accepts17hfb377ff66b232ec5E.exit.i.i.i.i.i.i.i: ; preds = %bb.g, %.loopexit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i = icmp eq i16 %i.am, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1341
  br i1 %.not.i.i.i.i.i.i.i, label %bb.s, label %bb.p

bb.p:                                             ; preds = %_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath9__accepts17hfb377ff66b232ec5E.exit.i.i.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val6.i.i.i) ]
  %i.bi = icmp slt i64 %.val7.i.i.i, 0
  br i1 %i.bi, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !39

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.bj = icmp eq i64 %.val7.i.i.i, 0
  br i1 %i.bj, label %bb.t, label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #54, !noalias !1353
  %i.bk = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val7.i.i.i, i64 noundef range(i64 1, 9) 1) #54, !noalias !1353 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  br i1 %i.bl, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val7.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10556) #52, !noalias !1354
  unreachable

bb.s:                                             ; preds = %_ZN18nickel_lang_parser7grammar24__parse__StaticFieldPath9__accepts17hfb377ff66b232ec5E.exit.i.i.i.i.i.i.i
  %i.bm = add i64 %i.s, 1                         ; 2 uses
  store i64 %i.bm, ptr %i.e, align 8, !alias.scope !1343, !noalias !1344
  %i.bn = icmp eq ptr %i.u, %i.h
  br i1 %i.bn, label %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i", label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val6.i.i.i, i64 %.val7.i.i.i, i1 false), !noalias !1355
  %i.bo = add i64 %i.s, 1
  store i64 %i.bo, ptr %i.e, align 8, !alias.scope !1343, !noalias !1344
  store i64 %.val7.i.i.i, ptr %0, align 8, !alias.scope !1334, !noalias !1335
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1334, !noalias !1335
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %.val7.i.i.i, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1334, !noalias !1335
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h9e87d1c56ab2fc86E.exit

"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i": ; preds = %bb.s, %bb.a
  store i64 -9223372036854775808, ptr %0, align 8, !alias.scope !1334, !noalias !1335
  br label %_ZN4core4iter6traits8iterator8Iterator8find_map17h9e87d1c56ab2fc86E.exit

_ZN4core4iter6traits8iterator8Iterator8find_map17h9e87d1c56ab2fc86E.exit: ; preds = %bb.t, %"_ZN4core3ptr86drop_in_place$LT$core..ops..control_flow..ControlFlow$LT$alloc..string..String$GT$$GT$17h26f2416658cbabc2E.exit.i"
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN115_$LT$core..ops..range..RangeInclusive$LT$usize$GT$$u20$as$u20$core..slice..index..SliceIndex$LT$$u5b$T$u5d$$GT$$GT$9index_mut17h39e0920cdd7b4e10E"(ptr noalias noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef nonnull align 8 %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) unnamed_addr #1 {
bb.a:
  %i.a = load i64, ptr %0, align 8, !noundef !19  ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !noundef !19 ; 3 uses
  %i.d = icmp ult i64 %i.c, %2
  br i1 %i.d, label %bb.b, label %bb.c, !prof !22

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load i8, ptr %i.e, align 8, !range !21, !noundef !19
  %i.g = trunc nuw i8 %i.f to i1
  %i.h = add nuw i64 %i.c, 1                      ; 4 uses
  %. = select i1 %i.g, i64 %i.h, i64 %i.a         ; 4 uses
  %i.i = icmp ult i64 %i.h, %.
  br i1 %i.i, label %bb.c, label %bb.d, !prof !20

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.04.0 = phi i64 [ %i.c, %bb.a ], [ %i.h, %bb.b ]
  %.sroa.0.0 = phi i64 [ %i.a, %bb.a ], [ %., %bb.b ]
  tail call void @_ZN4core5slice5index16slice_index_fail17hfe436548ecebea33E(i64 noundef %.sroa.0.0, i64 noundef %.sroa.04.0, i64 noundef %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %3) #52
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.j = sub nuw i64 %i.h, %.
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.
  %i.l = insertvalue { ptr, i64 } poison, ptr %i.k, 0
  %i.m = insertvalue { ptr, i64 } %i.l, i64 %i.j, 1
  ret { ptr, i64 } %i.m
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @"_ZN11typed_arena14Arena$LT$T$GT$12alloc_extend17h9b8fd9421e77e809E"(ptr noundef nonnull align 8 %0, ptr noundef nonnull %1, ptr noundef nonnull %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = load i64, ptr %0, align 8, !noundef !19
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZN4core4cell22panic_already_borrowed17h1421a3fb924cdd88E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @15) #52
  unreachable

bb.c:                                             ; preds = %bb.u, %bb.e
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %bb.w

bb.d:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 11 uses
  %i.f = ptrtoint ptr %2 to i64
  %i.g = ptrtoint ptr %1 to i64
  %i.h = sub i64 %i.f, %i.g                       ; 6 uses
  %i.i = load i64, ptr %i.e, align 8, !range !38, !noundef !19
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 8 uses
  %i.k = load i64, ptr %i.j, align 8, !noundef !19 ; 7 uses
  %i.l = icmp sgt i64 %i.k, -1
  tail call void @llvm.assume(i1 %i.l)
  %i.m = sub nsw i64 %i.i, %i.k
  %i.n = icmp ugt i64 %i.h, %i.m
  br i1 %i.n, label %bb.e, label %.preheader, !prof !20

.preheader:                                       ; preds = %bb.d
  %.not101104 = icmp eq ptr %1, %2
  br i1 %.not101104, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 5 uses
  %xtraiter = and i64 %i.h, 1
  %i.p = icmp eq i64 %i.h, 1
  br i1 %i.p, label %.epil.preheader, label %.lr.ph.new

end_hunk_1
