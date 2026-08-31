Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/insta-020b41739abf7dee.insta.f5a96bf8015bdfbc-cgu.0?download=true
inline.NumInlined: 7723
inline.NumDeleted: 3104
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 123
loop-unroll.NumUnrolled: 145
begin_hunk_0_@_ZN5insta8snapshot8Snapshot13matches_fully17h91b29bf7e00380adE:bb.a
  %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel.v, i64 152
  %.val16.i.i = load ptr, ptr %.sroa.01.0.i.sroa.sel89.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18411, !noalias !18426, !nonnull !15, !noundef !15
  %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v = select i1 %.not.i6152166189, ptr %i.au, ptr %i.d
  %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel.v, i64 152
  %.val.i.i = load ptr, ptr %.sroa.0.0.i.sroa.sel51.v.sroa.sel.v.sroa.sel, align 8, !alias.scope !18426, !noalias !18411, !nonnull !15, !noundef !15
  %bcmp.i.i40.i.i = call i32 @bcmp(ptr nonnull readonly align 1 %.val.i.i, ptr nonnull readonly align 1 %.val16.i.i, i64 %.val15.i.i), !alias.scope !18441
  %i.bu = icmp eq i32 %bcmp.i.i40.i.i, 0          ; 2 uses
  br i1 %.not2.i150168185, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", label %bb.ad

"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit": ; preds = %bb.ac, %bb.ab, %.split45.i.i, %bb.aa, %bb.z, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i", %bb.x, %bb.w, %bb.v, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i", %bb.t, %bb.s, %bb.r, %.split.i.i, %bb.p, %bb.o, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i", %bb.m, %bb.l, %bb.k
  %.not.i6152166192 = phi i1 [ %.not.i6152166189, %.split45.i.i ], [ %.not.i6152166191, %bb.l ], [ %.not.i6152166189, %bb.x ], [ %.not.i6152166189, %bb.z ], [ %.not.i6152166189, %bb.v ], [ %.not.i6152166189, %bb.r ], [ %.not.i6152166189, %bb.o ], [ %.not.i6152166190, %bb.k ], [ %.not.i6152166189, %bb.aa ], [ %.not.i6152166189, %bb.w ], [ %.not.i6152166189, %bb.s ], [ %.not.i6152166189, %bb.p ], [ %.not.i6152166189, %bb.ab ], [ %.not.i6152166190, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %.not.i6152166189, %bb.ac ], [ %.not.i6152166189, %.split.i.i ], [ %.not.i6152166189, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ %.not.i6152166190, %bb.m ], [ %.not.i6152166189, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ %.not.i6152166189, %bb.t ] ; 2 uses
  %.not2.i150168186 = phi i1 [ %.not2.i150168185, %.split45.i.i ], [ %.not2.i150168188, %bb.l ], [ %.not2.i150168185, %bb.x ], [ %.not2.i150168185, %bb.z ], [ %.not2.i150168185, %bb.v ], [ %.not2.i150168185, %bb.r ], [ %.not2.i150168185, %bb.o ], [ %.not2.i150168187, %bb.k ], [ %.not2.i150168185, %bb.aa ], [ %.not2.i150168185, %bb.w ], [ %.not2.i150168185, %bb.s ], [ %.not2.i150168185, %bb.p ], [ %.not2.i150168185, %bb.ab ], [ %.not2.i150168187, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ %.not2.i150168185, %bb.ac ], [ %.not2.i150168185, %.split.i.i ], [ %.not2.i150168185, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ %.not2.i150168187, %bb.m ], [ %.not2.i150168185, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ %.not2.i150168185, %bb.t ]
  %.sroa.0.0.shrunk.i.i = phi i1 [ false, %.split45.i.i ], [ false, %bb.l ], [ false, %bb.x ], [ false, %bb.z ], [ false, %bb.v ], [ false, %bb.r ], [ false, %bb.o ], [ false, %bb.k ], [ false, %bb.aa ], [ false, %bb.w ], [ false, %bb.s ], [ false, %bb.p ], [ %.mux.i.i, %bb.ab ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit.i.i" ], [ false, %bb.ac ], [ false, %.split.i.i ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit33.i.i" ], [ false, %bb.m ], [ false, %"_ZN5alloc3vec10partial_eq117_$LT$impl$u20$core..cmp..PartialEq$LT$alloc..vec..Vec$LT$U$C$A2$GT$$GT$$u20$for$u20$alloc..vec..Vec$LT$T$C$A1$GT$$GT$2eq17h2be83c5df940c3d1E.exit37.i.i" ], [ false, %bb.t ] ; 2 uses
  br i1 %.not2.i150168186, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", label %bb.ad

bb.ad:                                            ; preds = %.split196, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit"
  %.sroa.0.0.shrunk.i.i199 = phi i1 [ %i.bu, %.split196 ], [ %.sroa.0.0.shrunk.i.i, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ]
  %.not.i6152166192197 = phi i1 [ %.not.i6152166189, %.split196 ], [ %.not.i6152166192, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ]
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(176) %i.c)
          to label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10" unwind label %bb.h

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10": ; preds = %.split196, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit", %bb.ad
  %.sroa.0.0.shrunk.i.i200 = phi i1 [ %i.bu, %.split196 ], [ %.sroa.0.0.shrunk.i.i, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ], [ %.sroa.0.0.shrunk.i.i199, %bb.ad ]
  %.not.i6152166192198 = phi i1 [ %.not.i6152166189, %.split196 ], [ %.not.i6152166192, %"_ZN103_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..cmp..PartialEq$LT$alloc..borrow..Cow$LT$C$GT$$GT$$GT$2eq17hfc7f3983fba9b936E.exit" ], [ %.not.i6152166192197, %bb.ad ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.not.i6152166192198, label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11", label %bb.ae

bb.ae:                                            ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10"
  call fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef nonnull readonly align 16 dereferenceable(176) %i.d)
  br label %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11"

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit11": ; preds = %"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit10", %bb.ae
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.f

bb.af:                                            ; preds = %bb.g
  %i.bv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

"_ZN4core3ptr72drop_in_place$LT$alloc..borrow..Cow$LT$insta..snapshot..MetaData$GT$$GT$17h7afd021e2a4ad92aE.exit": ; preds = %bb.h, %bb.g
  resume { ptr, i32 } %i.u
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18save_with_metadata17h11e7974a9e7efef8E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(16) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef readonly align 1 captures(address, read_provenance) %3, i64 %4, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 9 uses
  %i.b = alloca [8 x i8], align 4                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [176 x i8], align 16              ; 9 uses
  %.sroa.5 = alloca [136 x i8], align 8           ; 5 uses
  %.sroa.719 = alloca [24 x i8], align 8          ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 12 uses
  %i.i = tail call { ptr, i64 } @_ZN3std4path4Path6parent17h3c6e49002294403cE(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2) ; 2 uses
  %i.j = extractvalue { ptr, i64 } %i.i, 0        ; 2 uses
  %.not = icmp eq ptr %i.j, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, i64 } %i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !18445
  store i32 511, ptr %i.b, align 4, !noalias !18445
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 4
  store i8 1, ptr %i.l, align 4, !noalias !18445
  %i.m = call noundef ptr @_ZN3std2fs10DirBuilder7_create17h70f652d231a39496E(ptr noalias noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(8) %i.b, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.j, i64 noundef %i.k) ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !18445
  %.not17 = icmp eq ptr %i.m, null
  br i1 %.not17, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.h, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.not18 = icmp eq ptr %3, null                  ; 2 uses
  %. = select i1 %.not18, i64 %2, i64 %4
  %.28 = select i1 %.not18, ptr %1, ptr %3
  invoke void @_ZN3std2fs14read_to_string5inner17h9de4c5ac53797604E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.28, i64 noundef %.)
          to label %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit unwind label %.thread33.a

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.m, ptr %i.c, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.n = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.e, label %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29", !prof !49

bb.e:                                             ; preds = %bb.d
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.e
  unreachable

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c) #55
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

common.resume:                                    ; preds = %bb.aa, %bb.ab, %bb.ag, %.thread, %bb.aj, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.as, %bb.ag ], [ %i.an, %bb.ab ], [ %i.an, %bb.aa ], [ %.pn2629, %.thread ], [ %.pn2629, %bb.aj ]
  resume { ptr, i32 } %common.resume.op

"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29": ; preds = %bb.d
  store ptr %i.m, ptr %i.n, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  store ptr %i.n, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.r, align 8
  br label %bb.h

bb.h:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", %bb.ai, %"_ZN5alloc5boxed12Box$LT$T$GT$3new17h9423201f992db769E.exit29"
  ret void

.thread33.a:                                      ; preds = %bb.c, %bb.z
  %i.s = landingpad { ptr, i32 }
          cleanup
  br label %.thread

_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit: ; preds = %bb.c
  %i.t = load i64, ptr %i.g, align 8, !range !310, !noundef !15 ; 7 uses
  %i.u = icmp eq i64 %i.t, -9223372036854775808
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  br i1 %i.u, label %bb.z, label %bb.i

bb.i:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  %.sroa.7.0.copyload = load ptr, ptr %i.v, align 8 ; 7 uses
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %.sroa.11.0.copyload = load i64, ptr %.sroa.11.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.719)
  call void @llvm.experimental.noalias.scope.decl(metadata !18448)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 64
  %i.x = load i32, ptr %i.w, align 16, !range !6999, !alias.scope !18448, !noalias !18451, !noundef !15
  %.not.i = icmp eq i32 %i.x, 0
  br i1 %.not.i, label %.thread37, label %bb.j

.thread37:                                        ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %.thread41

bb.j:                                             ; preds = %bb.i
  invoke fastcc void @"_ZN64_$LT$insta..snapshot..MetaData$u20$as$u20$core..clone..Clone$GT$5clone17hd54e3f735c5063b6E"(ptr noalias noundef align 16 captures(address) dereferenceable(176) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %5)
          to label %bb.n unwind label %bb.m

bb.k:                                             ; preds = %bb.q, %bb.m
  %.pn = phi { ptr, i32 } [ %i.z, %bb.m ], [ %i.ae, %bb.q ] ; 2 uses
  %i.y = icmp eq i64 %i.t, 0
  br i1 %i.y, label %.thread, label %bb.l

bb.l:                                             ; preds = %bb.k
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18453
  br label %.thread

bb.m:                                             ; preds = %bb.j, %bb.r
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.k

bb.n:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i32 0, ptr %i.aa, align 16, !noalias !18456
  %.sroa.013.0.copyload14 = load ptr, ptr %i.a, align 16, !noalias !18448
  %.sroa.5.0..sroa_idx15 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx15, i64 136, i1 false), !noalias !18448
  %.sroa.516.0..sroa_idx17 = getelementptr inbounds nuw i8, ptr %i.a, i64 144
  %.sroa.516.0.copyload18 = load i64, ptr %.sroa.516.0..sroa_idx17, align 16, !noalias !18448 ; 2 uses
  %.sroa.719.0..sroa_idx20 = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx20, i64 24, i1 false), !noalias !18448
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not19 = icmp eq i64 %.sroa.516.0.copyload18, -9223372036854775807
  br i1 %.not19, label %.thread41, label %bb.o

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.013.0.copyload14, ptr %i.f, align 16
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.5, i64 136, i1 false)
  %.sroa.516.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 144
  store i64 %.sroa.516.0.copyload18, ptr %.sroa.516.0..sroa_idx, align 16
  %.sroa.719.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 152
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.719, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.e, ptr %.232.val, i64 %.240.val, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %i.f)
          to label %bb.r unwind label %bb.q

.thread41:                                        ; preds = %bb.n, %.thread37
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719)
  br label %.then

bb.p:                                             ; preds = %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.719)
  %.not20 = icmp eq i64 %.sroa.05.0.copyload, -9223372036854775808
  %6 = inttoptr i64 %.sroa.9.0.copyload to ptr    ; 3 uses
  br i1 %.not20, label %.then, label %.cont

.then:                                            ; preds = %bb.p, %.thread41
  %i.ab = phi ptr [ %i.h, %.thread41 ], [ %6, %bb.p ] ; 3 uses
  %.sroa.gep253 = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %.then.val8 = load ptr, ptr %.sroa.gep253, align 8, !nonnull !15, !noundef !15
  %.sroa.gep57 = getelementptr inbounds nuw i8, ptr %i.ab, i64 16
  %.then.val = load i64, ptr %.sroa.gep57, align 8, !noundef !15
  br label %.cont

.cont:                                            ; preds = %bb.p, %.then
  %i.ac = phi ptr [ %.then.val8, %.then ], [ %6, %bb.p ] ; 2 uses
  %.sroa.05.04958 = phi i64 [ -9223372036854775808, %.then ], [ %.sroa.05.0.copyload, %bb.p ] ; 4 uses
  %7 = phi ptr [ %i.ab, %.then ], [ %6, %bb.p ]   ; 4 uses
  %i.ad = phi i64 [ %.then.val, %.then ], [ %.sroa.15.0.copyload, %bb.p ]
  %.not.i44 = icmp eq i64 %.sroa.11.0.copyload, %i.ad
  br i1 %.not.i44, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit", label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

bb.q:                                             ; preds = %bb.o
  %i.ae = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f) #55
          to label %bb.k unwind label %bb.y

bb.r:                                             ; preds = %bb.o
  %.sroa.05.0.copyload = load i64, ptr %i.e, align 8 ; 2 uses
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.9.0.copyload = load i64, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.15.0.copyload = load i64, ptr %.sroa.15.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke fastcc void @"_ZN4core3ptr46drop_in_place$LT$insta..snapshot..MetaData$GT$17hf036f84f41d73756E"(ptr noalias noundef align 16 dereferenceable(176) %i.f)
          to label %bb.p unwind label %bb.m

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit": ; preds = %.cont
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ac) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  %bcmp.i = call i32 @bcmp(ptr nonnull readonly %.sroa.7.0.copyload, ptr nonnull readonly %i.ac, i64 %.sroa.11.0.copyload)
  %i.af = icmp eq i32 %bcmp.i, 0
  br i1 %i.af, label %bb.t, label %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"

"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread": ; preds = %.cont, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  switch i64 %.sroa.05.04958, label %bb.s [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  ]

bb.s:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %7) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %.sroa.05.04958, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18457
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"

bb.t:                                             ; preds = %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit"
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.ag, align 8
  store ptr null, ptr %0, align 8
  switch i64 %.sroa.05.04958, label %bb.u [
    i64 -9223372036854775808, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
    i64 0, label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  ]

bb.u:                                             ; preds = %bb.t
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %7) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %7, i64 noundef %.sroa.05.04958, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18460
  br label %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45": ; preds = %bb.s, %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread", %"_ZN77_$LT$alloc..string..String$u20$as$u20$core..cmp..PartialEq$LT$$RF$str$GT$$GT$2eq17h5e5f3ec0c5cf38a3E.exit.thread"
  %i.ah = icmp eq i64 %i.t, 0
  br i1 %i.ah, label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit", label %bb.v

bb.v:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45"
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.0.copyload) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18463
  br label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"

"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46": ; preds = %bb.u, %bb.t, %bb.t
  %i.ai = icmp eq i64 %i.t, 0
  br i1 %i.ai, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", label %bb.w

bb.w:                                             ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46"
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.7.0.copyload, i64 noundef %i.t, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18466
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52": ; preds = %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit46", %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.experimental.noalias.scope.decl(metadata !18469)
  %.val.i53 = load i64, ptr %i.h, align 8, !alias.scope !18469 ; 2 uses
  %i.aj = icmp eq i64 %.val.i53, 0
  br i1 %i.aj, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55", label %bb.x

bb.x:                                             ; preds = %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52"
  %i.ak = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i54 = load ptr, ptr %i.ak, align 8, !alias.scope !18469, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i54, i64 noundef %.val.i53, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18469
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

bb.y:                                             ; preds = %bb.q
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.z:                                             ; preds = %_ZN3std2fs14read_to_string17hdc7438cdf36fc9e8E.exit
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %i.v)
          to label %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit" unwind label %.thread33.a

"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit": ; preds = %bb.z, %"_ZN4core3ptr68drop_in_place$LT$alloc..borrow..Cow$LT$alloc..string..String$GT$$GT$17h9e85097e2bf94435E.exit45", %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %.sroa.023.0.copyload = load i64, ptr %i.h, align 8 ; 4 uses
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.sroa.524.0.copyload = load ptr, ptr %.sroa.524.0..sroa_idx, align 8, !nonnull !15, !noundef !15 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  %i.am = invoke noundef ptr @_ZN3std2fs5write5inner17ha8f0a95daa2fc383E(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %1, i64 noundef %2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %.sroa.524.0.copyload, i64 noundef %.sroa.6.0.copyload)
          to label %bb.ac unwind label %bb.aa, !noalias !18472 ; 3 uses

bb.aa:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.an = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ao = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.ao, label %common.resume, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.023.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18475
  br label %common.resume

bb.ac:                                            ; preds = %"_ZN4core3ptr94drop_in_place$LT$core..result..Result$LT$alloc..string..String$C$std..io..error..Error$GT$$GT$17h07a20bfe7f67392eE.exit"
  %i.ap = icmp eq i64 %.sroa.023.0.copyload, 0
  br i1 %i.ap, label %_ZN3std2fs5write17h20164edb742951e2E.exit, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.524.0.copyload, i64 noundef %.sroa.023.0.copyload, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18478
  br label %_ZN3std2fs5write17h20164edb742951e2E.exit

_ZN3std2fs5write17h20164edb742951e2E.exit:        ; preds = %bb.ad, %bb.ac
  %.not25 = icmp eq ptr %i.am, null
  br i1 %.not25, label %bb.ai, label %bb.ae

bb.ae:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.am, ptr %i.d, align 8
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #51
  %i.aq = call noundef align 8 dereferenceable_or_null(8) ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef 8, i64 noundef range(i64 1, -9223372036854775807) 8) #51 ; 3 uses
  %i.ar = icmp eq ptr %i.aq, null
  br i1 %i.ar, label %bb.af, label %.critedge, !prof !49

bb.af:                                            ; preds = %bb.ae
  invoke void @_ZN5alloc5alloc18handle_alloc_error17h8f86e24af4223f3dE(i64 noundef 8, i64 noundef 8) #54
          to label %.noexc61 unwind label %bb.ag

.noexc61:                                         ; preds = %bb.af
  unreachable

bb.ag:                                            ; preds = %bb.af
  %i.as = landingpad { ptr, i32 }
          cleanup
  invoke void @"_ZN4core3ptr42drop_in_place$LT$std..io..error..Error$GT$17h485fd57239593cb0E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.d) #55
          to label %common.resume unwind label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.at = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #56
  unreachable

bb.ai:                                            ; preds = %_ZN3std2fs5write17h20164edb742951e2E.exit
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.au, align 8
  store ptr null, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.critedge:                                        ; preds = %bb.ae
  store ptr %i.am, ptr %i.aq, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  store ptr %i.aq, ptr %0, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr @663, ptr %i.av, align 8
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55"

"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit55": ; preds = %bb.x, %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit52", %.critedge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.thread:                                          ; preds = %bb.k, %bb.l, %.thread33.a
  %.pn2629 = phi { ptr, i32 } [ %i.s, %.thread33.a ], [ %.pn, %bb.l ], [ %.pn, %bb.k ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18481)
  %.val.i63 = load i64, ptr %i.h, align 8, !alias.scope !18481 ; 2 uses
  %i.aw = icmp eq i64 %.val.i63, 0
  br i1 %i.aw, label %common.resume, label %bb.aj

bb.aj:                                            ; preds = %.thread
  %i.ax = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %.val1.i64 = load ptr, ptr %i.ax, align 8, !alias.scope !18481, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i64, i64 noundef %.val.i63, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18481
  br label %common.resume
}

; Function Attrs: cold nonlazybind uwtable
define internal fastcc void @_ZN5insta8snapshot8Snapshot18serialize_snapshot17h4fb6d9490e331864E(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr %.232.val, i64 %.240.val, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(176) %1) unnamed_addr #9 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call fastcc void @_ZN5insta8snapshot8MetaData10as_content17hfe8b43a31fe3ba27E(ptr noalias noundef align 16 captures(address) dereferenceable(64) %i.a, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(176) %1)
  invoke fastcc void @_ZN5insta7content4yaml9to_string17h0ad0e741aa783539E(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a) #55
          to label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit" unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  invoke fastcc void @"_ZN4core3ptr44drop_in_place$LT$insta..content..Content$GT$17hcb4984964b03ed1dE"(ptr noalias noundef align 16 dereferenceable(64) %i.a)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.l, %bb.j, %bb.g, %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !18484)
  %.val.i = load i64, ptr %i.b, align 8, !alias.scope !18484 ; 2 uses
  %i.e = icmp eq i64 %.val.i, 0
  br i1 %i.e, label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit", label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.val1.i = load ptr, ptr %i.f, align 8, !alias.scope !18484, !nonnull !15, !noundef !15
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %.val.i, i64 noundef range(i64 1, -9223372036854775807) 1) #51, !noalias !18484
  br label %"_ZN4core3ptr42drop_in_place$LT$alloc..string..String$GT$17ha696533577fe6bb3E.exit"

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.experimental.noalias.scope.decl(metadata !18487)
  call void @llvm.experimental.noalias.scope.decl(metadata !18490)
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 7 uses
  %i.h = load i64, ptr %i.g, align 8, !alias.scope !18493, !noundef !15 ; 3 uses
  %i.i = load i64, ptr %i.b, align 8, !range !62, !alias.scope !18493, !noundef !15
  %i.j = sub i64 %i.i, %i.h
  %i.k = icmp ult i64 %i.j, 4
  br i1 %i.k, label %bb.g, label %bb.h, !prof !169

bb.g:                                             ; preds = %bb.f
  invoke fastcc void @"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$7reserve21do_reserve_and_handle17h09b40dec5ef9c885E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.h, i64 noundef 4, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.g
  %.pre.i.i = load i64, ptr %i.g, align 8, !alias.scope !18496
  br label %bb.h

bb.h:                                             ; preds = %.noexc, %bb.f
  %i.l = phi i64 [ %i.h, %bb.f ], [ %.pre.i.i, %.noexc ] ; 3 uses
  %i.m = icmp sgt i64 %i.l, -1
  call void @llvm.assume(i1 %i.m)
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !18496, !nonnull !15, !noundef !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 %i.l
  store i32 170732845, ptr %i.p, align 1, !noalias !18496
  %i.q = add nuw i64 %i.l, 4                      ; 4 uses
  store i64 %i.q, ptr %i.g, align 8, !alias.scope !18496
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.232.val) ]
  %i.r = getelementptr inbounds nuw i8, ptr %.232.val, i64 %.240.val ; 4 uses
end_hunk_0
