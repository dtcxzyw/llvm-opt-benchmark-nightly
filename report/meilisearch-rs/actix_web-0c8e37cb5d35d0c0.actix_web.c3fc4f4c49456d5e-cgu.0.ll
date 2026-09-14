Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/meilisearch-rs/original/actix_web-0c8e37cb5d35d0c0.actix_web.c3fc4f4c49456d5e-cgu.0?download=true
inline.NumInlined: 5794
inline.NumDeleted: 2637
loop-unroll.NumCompletelyUnrolled: 28
loop-unroll.NumRuntimeUnrolled: 9
loop-unroll.NumUnrolled: 46
begin_hunk_0_@"_ZN64_$LT$actix_web..info..PeerAddr$u20$as$u20$core..fmt..Display$GT$3fmt17h0cdc790dc8bf504bE":bb.a

; Function Attrs: nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17hcc994245d6d415f3E"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25
  %i.e = tail call noundef zeroext i1 @"_ZN40_$LT$str$u20$as$u20$core..fmt..Debug$GT$3fmt17h310aa922679ce93dE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) %i.b, i64 noundef %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.e
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN64_$LT$time..error..format..Format$u20$as$u20$core..fmt..Debug$GT$3fmt17h42f375d3f8839863E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i64, ptr %0, align 8, !range !44, !noundef !25
  switch i64 %i.d, label %default.unreachable1 [
    i64 0, label %bb.b
    i64 1, label %bb.c
    i64 2, label %bb.d
    i64 3, label %bb.e
  ]

default.unreachable1:                             ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @420, i64 noundef 27)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.c, align 8
  %i.g = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @421, i64 noundef 16, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @393)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.f

bb.d:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.b, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @423, i64 noundef 14, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @422)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.f

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.j, ptr %i.a, align 8
  %i.k = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @424, i64 noundef 5, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.e, %bb.b ], [ %i.g, %bb.c ], [ %i.i, %bb.d ], [ %i.k, %bb.e ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN65_$LT$smallvec..CollectionAllocErr$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc177da6e787fcb9E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = load i64, ptr %0, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.c = call noundef zeroext i1 @_ZN4core3fmt9Formatter26debug_struct_field1_finish17h8a12e96a3fe33b10E(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @438, i64 noundef 8, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @439, i64 noundef 6, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @437)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @436, i64 noundef 16)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.0.0.in = phi i1 [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN66_$LT$actix_web..error..PathError$u20$as$u20$core..fmt..Display$GT$3fmt17h418436c28ef8d1e6E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hed23aa1e5c255ef6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8456
  store ptr @441, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8456
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define void @"_ZN66_$LT$http..uri..Uri$u20$as$u20$actix_web..extract..FromRequest$GT$12from_request17heb170caf842753d0E"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([88 x i8]) align 8 captures(none) dereferenceable(88) %0, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %1, ptr noalias nofree noundef readnone align 8 captures(none) dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !25, !noundef !25
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  tail call fastcc void @"_ZN53_$LT$http..uri..Uri$u20$as$u20$core..clone..Clone$GT$5clone17h2d46620382b3562bE"(ptr noalias noundef align 8 captures(address) dereferenceable(88) %0, ptr noundef nonnull align 8 %i.d)
  ret void
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN67_$LT$actix_web..error..error..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17h5a9ed29b6dd5abefE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [16 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  store ptr %i.b, ptr %i.c, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr @"_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h0839a4128ff0c040E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8459
  store ptr @3, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.c, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6725e799828082f6E"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address, read_provenance) %.8.val, i64 %.16.val) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8469
  %i.c = mul i64 %.16.val, 24                     ; 3 uses
  %or.cond.i.i.i.i = icmp ugt i64 %.16.val, 384307168202282325
  br i1 %or.cond.i.i.i.i, label %bb.c, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i: ; preds = %bb.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i", label %bb.b

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  %i.e = icmp eq i64 %.16.val, 0
  tail call void @llvm.assume(i1 %i.e)
  store i64 0, ptr %i.b, align 8, !noalias !8469
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.f, align 8, !noalias !8469
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit"

bb.b:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8470
  %i.h = tail call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.c, i64 noundef range(i64 1, 9) 8) #46, !noalias !8470 ; 3 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.c, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i"

bb.c:                                             ; preds = %bb.b, %bb.a
  %.sroa.4.0.ph.i.i = phi i64 [ 8, %bb.b ], [ 0, %bb.a ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i, i64 %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52, !noalias !8469
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i": ; preds = %bb.b
  store i64 %.16.val, ptr %i.b, align 8, !noalias !8469
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.h, ptr %i.j, align 8, !noalias !8469
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.8.val, i64 %.16.val
  %1 = icmp eq i64 %.16.val, 0
  br i1 %1, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit", label %.lr.ph.i

.lr.ph.i:                                         ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i", %bb.e
  %.sroa.012.023.i = phi ptr [ %i.p, %bb.e ], [ %.8.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ] ; 3 uses
  %.sroa.7.022.i = phi i64 [ %i.o, %bb.e ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ] ; 3 uses
  %.sroa.10.021.i = phi i64 [ %i.m, %bb.e ], [ %.16.val, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ]
  %i.m = add nsw i64 %.sroa.10.021.i, -1          ; 2 uses
  %i.n = icmp eq ptr %.sroa.012.023.i, %i.l
  br i1 %i.n, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit", label %bb.d

bb.d:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8469
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.012.023.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @574)
          to label %bb.e unwind label %bb.f, !noalias !8471

bb.e:                                             ; preds = %bb.d
  %i.o = add nuw nsw i64 %.sroa.7.022.i, 1
  %i.p = getelementptr inbounds nuw i8, ptr %.sroa.012.023.i, i64 24
  %i.q = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.sroa.7.022.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.q, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !8471
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8469
  %i.r = icmp eq i64 %i.m, 0
  br i1 %i.r, label %"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit", label %.lr.ph.i

bb.f:                                             ; preds = %bb.d
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.022.i, ptr %i.k, align 8, !alias.scope !8472, !noalias !8469
  call fastcc void @"_ZN4core3ptr65drop_in_place$LT$alloc..vec..Vec$LT$alloc..string..String$GT$$GT$17h47588ffae37f2c10E"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !8471
  resume { ptr, i32 } %lpad.loopexit.i

"_ZN87_$LT$T$u20$as$u20$alloc..slice..$LT$impl$u20$$u5b$T$u5d$$GT$..to_vec_in..ConvertVec$GT$6to_vec17hfeefaf057c853eb4E.exit": ; preds = %.lr.ph.i, %bb.e, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i"
  %2 = phi ptr [ %i.g, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i" ], [ %i.k, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i" ], [ %i.k, %bb.e ], [ %i.k, %.lr.ph.i ]
  store i64 %.16.val, ptr %2, align 8, !noalias !8469
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false), !noalias !8473
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8469
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN67_$LT$h2..frame..stream_id..StreamId$u20$as$u20$core..fmt..Debug$GT$3fmt17h2037b75f29ffd6a2E"(ptr noalias noundef readonly align 4 captures(address, read_provenance) dereferenceable(4) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %0, ptr %i.a, align 8
  %i.b = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @448, i64 noundef 8, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @447)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.b
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_http..error..PayloadError$u20$as$u20$core..fmt..Debug$GT$3fmt17hfc840813367d09e2E"(ptr noundef nonnull align 8 %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = load i8, ptr %0, align 8, !range !45, !noundef !25 ; 3 uses
  %i.e = icmp ne i8 %i.d, 9
  tail call void @llvm.assume(i1 %i.e)
  %i.f = add nsw i8 %i.d, -5
  %i.g = icmp samesign ugt i8 %i.d, 4
  %narrow = select i1 %i.g, i8 %i.f, i8 4
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
    i8 3, label %bb.f
    i8 4, label %bb.g
    i8 5, label %bb.h
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.h, ptr %i.c, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @450, i64 noundef 10, ptr noundef nonnull align 1 %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @449)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.i

bb.d:                                             ; preds = %bb.a
  %i.j = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @451, i64 noundef 17)
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  %i.k = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @392, i64 noundef 8)
  br label %bb.i

bb.f:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @452, i64 noundef 13)
  br label %bb.i

bb.g:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %0, ptr %i.b, align 8
  %i.m = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @454, i64 noundef 12, ptr noundef nonnull align 1 %i.b, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @453)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.i

bb.h:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.n, ptr %i.a, align 8
  %i.o = call noundef zeroext i1 @_ZN4core3fmt9Formatter25debug_tuple_field1_finish17h8f1f32fd9454ecadE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @344, i64 noundef 2, ptr noundef nonnull align 1 %i.a, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @343)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.in = phi i1 [ %i.i, %bb.c ], [ %i.j, %bb.d ], [ %i.k, %bb.e ], [ %i.l, %bb.f ], [ %i.m, %bb.g ], [ %i.o, %bb.h ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_web..http..header..Writer$u20$as$u20$core..fmt..Write$GT$9write_fmt17hb47854597fd7dd40E"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #3 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @51, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %1)
  ret i1 %i.a
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN68_$LT$actix_web..http..header..Writer$u20$as$u20$core..fmt..Write$GT$9write_str17h9da0ff31629f717bE"(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noalias noundef nonnull readonly align 1 captures(none) %1, i64 noundef %2) unnamed_addr #3 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8477)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 4 uses
  %i.c = load i64, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478, !noundef !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8477, !noalias !8478, !noundef !25
  %i.f = sub i64 %i.e, %i.c
  %.not.i = icmp ugt i64 %2, %i.f
  br i1 %.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = tail call noundef zeroext i1 @_ZN5bytes9bytes_mut8BytesMut13reserve_inner17h73e0ed6d42572173E(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, i64 noundef %2, i1 noundef zeroext true), !noalias !8478 ; 0 uses
  %.pre.i = load i64, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.h = phi i64 [ %i.c, %bb.a ], [ %.pre.i, %bb.b ]
  %i.i = load ptr, ptr %0, align 8, !alias.scope !8477, !noalias !8478, !nonnull !25, !noundef !25
  %i.j = getelementptr inbounds nuw i8, ptr %i.i, i64 %i.h
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.j, ptr nonnull readonly align 1 %1, i64 %2, i1 false)
  %i.k = load i64, ptr %i.d, align 8, !alias.scope !8477, !noalias !8478, !noundef !25
  %i.l = load i64, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478, !noundef !25 ; 2 uses
  %i.m = sub i64 %i.k, %i.l                       ; 2 uses
  %i.n = icmp ugt i64 %2, %i.m
  br i1 %i.n, label %bb.d, label %_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit, !prof !33

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8479
  store i64 %2, ptr %i.a, align 8, !noalias !8479
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.o, align 8, !noalias !8479
  call void @_ZN5bytes13panic_advance17hadc1578990b3691cE(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a) #52, !noalias !8478
  unreachable

_ZN5bytes9bytes_mut8BytesMut17extend_from_slice17hd54414edbc4203a3E.exit: ; preds = %bb.c
  %i.p = add i64 %i.l, %2
  store i64 %i.p, ptr %i.b, align 8, !alias.scope !8477, !noalias !8478
  ret i1 false
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @"_ZN68_$LT$actix_web..redirect..Redirect$u20$as$u20$core..clone..Clone$GT$5clone17h5b67a468e17ededaE"(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8508)
  %i.a = load i64, ptr %1, align 8, !range !30, !alias.scope !8508, !noalias !8509, !noundef !25
  %.not.i = icmp eq i64 %i.a, -9223372036854775808
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !8508, !noalias !8509, !nonnull !25, !noundef !25 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !8508, !noalias !8509, !noundef !25 ; 7 uses
  br i1 %.not.i, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit", label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = icmp slt i64 %i.e, 0
  br i1 %i.f, label %bb.d, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.b
  %i.g = icmp eq i64 %i.e, 0
  br i1 %i.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i", label %bb.c

bb.c:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8510
  %i.h = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.e, i64 noundef range(i64 1, 9) 1) #46, !noalias !8510 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.d, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 1, %bb.c ], [ 0, %bb.b ]
  tail call void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52, !noalias !8511
  unreachable

"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i": ; preds = %bb.c, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.h, %bb.c ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 1 %i.c, i64 %i.e, i1 false), !noalias !8512
  br label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit"

"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit": ; preds = %bb.a, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i"
  %.sroa.6.0 = phi ptr [ %.sroa.10.0.i.i.i.i, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ %i.c, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %i.e, %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i" ], [ -9223372036854775808, %bb.a ] ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !8513)
  %i.k = load i64, ptr %i.j, align 8, !range !30, !alias.scope !8513, !noalias !8514, !noundef !25
  %.not.i2 = icmp eq i64 %i.k, -9223372036854775808
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !8513, !noalias !8514, !nonnull !25, !noundef !25 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load i64, ptr %i.n, align 8, !alias.scope !8513, !noalias !8514, !noundef !25 ; 7 uses
  br i1 %.not.i2, label %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit9", label %bb.e

bb.e:                                             ; preds = %"_ZN66_$LT$alloc..borrow..Cow$LT$B$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h028d2eceb4074855E.exit"
  %i.p = icmp slt i64 %i.o, 0
  br i1 %i.p, label %bb.g, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3: ; preds = %bb.e
  %i.q = icmp eq i64 %i.o, 0
  br i1 %i.q, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4", label %bb.f

bb.f:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i3
  tail call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8515
  %i.r = tail call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.o, i64 noundef range(i64 1, 9) 1) #46, !noalias !8515 ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.g, label %"_ZN5alloc3str56_$LT$impl$u20$alloc..borrow..ToOwned$u20$for$u20$str$GT$8to_owned17h8b458a9baecda28aE.exit.i4"

bb.g:                                             ; preds = %bb.f, %bb.e
  %.sroa.4.0.ph.i.i.i.i8 = phi i64 [ 1, %bb.f ], [ 0, %bb.e ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i8, i64 %i.o, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.g
  unreachable
end_hunk_0
begin_hunk_1_@"_ZN74_$LT$actix_router..resource..ResourceDef$u20$as$u20$core..clone..Clone$GT$5clone17h65ef958b0b70786eE":bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.n, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @483)
  %.sroa.0.0.copyload = load i64, ptr %i.i, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %.sroa.7.0.copyload = load i64, ptr %.sroa.7.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sroa.7.0 = phi i64 [ %.sroa.7.0.copyload, %bb.b ], [ undef, %bb.a ]
  %.sroa.6.0 = phi ptr [ %.sroa.6.0.copyload, %bb.b ], [ undef, %bb.a ] ; 3 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.0.copyload, %bb.b ], [ -9223372036854775808, %bb.a ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.p = load i64, ptr %1, align 8, !range !38, !noundef !25
  %i.q = trunc nuw i64 %i.p to i1
  br i1 %i.q, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val4 = load ptr, ptr %i.r, align 8, !nonnull !25, !noundef !25
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val5 = load i64, ptr %i.s, align 8, !noundef !25
  invoke fastcc void @"_ZN67_$LT$alloc..vec..Vec$LT$T$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17h6725e799828082f6E"(ptr noalias noundef align 8 captures(address) dereferenceable(24) %i.g, ptr nonnull %.val4, i64 %.val5)
          to label %bb.aj unwind label %bb.h

bb.e:                                             ; preds = %bb.c
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @530)
          to label %bb.i unwind label %bb.h

bb.f:                                             ; preds = %.body, %bb.h
  %.pn.pn = phi { ptr, i32 } [ %.pn, %.body ], [ %i.u, %bb.h ]
  switch i64 %.sroa.0.0, label %bb.g [
    i64 -9223372036854775808, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit"
    i64 0, label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit"
  ]

bb.g:                                             ; preds = %bb.f
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.0) ]
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.6.0, i64 noundef %.sroa.0.0, i64 noundef range(i64 1, -9223372036854775807) 1) #46, !noalias !8912
  br label %"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit"

bb.h:                                             ; preds = %bb.d, %bb.e
  %i.u = landingpad { ptr, i32 }
          cleanup
  br label %bb.f

bb.i:                                             ; preds = %bb.e
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.v, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false)
  store i64 0, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.j

bb.j:                                             ; preds = %bb.aj, %bb.i
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 146
  %i.x = load i8, ptr %i.w, align 2, !range !31, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.experimental.noalias.scope.decl(metadata !8913)
  call void @llvm.experimental.noalias.scope.decl(metadata !8914)
  %i.z = load i64, ptr %i.y, align 8, !range !42, !alias.scope !8914, !noalias !8913, !noundef !25
  switch i64 %i.z, label %default.unreachable [
    i64 0, label %bb.k
    i64 1, label %bb.l
    i64 2, label %bb.m
  ]

default.unreachable:                              ; preds = %bb.j
  unreachable

bb.k:                                             ; preds = %bb.j
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @528)
          to label %.noexc unwind label %bb.ak

.noexc:                                           ; preds = %bb.k
  store i64 0, ptr %i.j, align 8, !alias.scope !8913, !noalias !8914
  br label %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"

bb.l:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !8915
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ad = invoke { ptr, ptr } @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h09377082faf3c0e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ac)
          to label %.noexc8 unwind label %bb.ak   ; 2 uses

.noexc8:                                          ; preds = %bb.l
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.af = load ptr, ptr %i.ae, align 8, !alias.scope !8914, !noalias !8913, !nonnull !25, !noundef !25 ; 2 uses
  %i.ag = atomicrmw add ptr %i.af, i64 1 monotonic, align 8, !noalias !8913
  %i.ah = icmp slt i64 %i.ag, 0
  br i1 %i.ah, label %bb.q, label %bb.n

bb.m:                                             ; preds = %bb.j
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !8915
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.aj = invoke { ptr, ptr } @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h09377082faf3c0e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ai)
          to label %.noexc9 unwind label %bb.ak   ; 2 uses

.noexc9:                                          ; preds = %bb.m
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.al = load ptr, ptr %i.ak, align 8, !alias.scope !8914, !noalias !8913, !nonnull !25, !noundef !25 ; 2 uses
  %i.am = atomicrmw add ptr %i.al, i64 1 monotonic, align 8, !noalias !8913
  %i.an = icmp slt i64 %i.am, 0
  br i1 %i.an, label %bb.ah, label %bb.u

bb.n:                                             ; preds = %.noexc8
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.ap = extractvalue { ptr, ptr } %i.ad, 1
  %i.aq = extractvalue { ptr, ptr } %i.ad, 0
  %i.ar = load i64, ptr %i.ao, align 8, !alias.scope !8914, !noalias !8913, !noundef !25
  store ptr %i.aq, ptr %i.f, align 8, !noalias !8915
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.ap, ptr %i.as, align 8, !noalias !8915
  %i.at = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store ptr %i.af, ptr %i.at, align 8, !noalias !8915
  %i.au = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  store i64 %i.ar, ptr %i.au, align 8, !noalias !8915
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val.i = load ptr, ptr %i.av, align 8, !alias.scope !8914, !noalias !8913, !nonnull !25, !noundef !25
  %i.aw = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val6.i = load i64, ptr %i.aw, align 8, !alias.scope !8914, !noalias !8913, !noundef !25 ; 5 uses
  %i.ax = shl i64 %.val6.i, 4                     ; 5 uses
  %i.ay = icmp ugt i64 %.val6.i, 1152921504606846975
  %i.az = icmp ugt i64 %i.ax, 9223372036854775800
  %or.cond.i.i.i.i.i.i = or i1 %i.ay, %i.az
  br i1 %or.cond.i.i.i.i.i.i, label %bb.p, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i: ; preds = %bb.n
  %i.ba = icmp eq i64 %i.ax, 0
  br i1 %i.ba, label %bb.s, label %bb.o

bb.o:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8916
  %i.bb = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.ax, i64 noundef range(i64 1, 9) 8) #46, !noalias !8916 ; 2 uses
  %i.bc = icmp eq ptr %i.bb, null
  br i1 %i.bc, label %bb.p, label %bb.s

bb.p:                                             ; preds = %bb.o, %bb.n
  %.sroa.4.0.ph.i.i.i.i = phi i64 [ 8, %bb.o ], [ 0, %bb.n ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i, i64 %i.ax, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc.i unwind label %bb.r, !noalias !8913

.noexc.i:                                         ; preds = %bb.p
  unreachable

bb.q:                                             ; preds = %.noexc8
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.p
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h05f33f16ff7a2efdE"(ptr noalias noundef align 8 dereferenceable(32) %i.f) #53
          to label %.body unwind label %bb.t, !noalias !8913

bb.s:                                             ; preds = %bb.o, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i
  %.sroa.10.0.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %i.bb, %bb.o ] ; 2 uses
  %.sroa.4.0.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i ], [ %.val6.i, %bb.o ] ; 2 uses
  %i.be = icmp samesign ule i64 %.val6.i, %.sroa.4.0.i.i.i.i
  call void @llvm.assume(i1 %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i, ptr nonnull readonly align 8 %.val.i, i64 %i.ax, i1 false), !noalias !8917
  %i.bf = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.bf, ptr noundef nonnull align 8 dereferenceable(32) %i.f, i64 32, i1 false), !noalias !8914
  %i.bg = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  store i64 %.sroa.4.0.i.i.i.i, ptr %i.bg, align 8, !alias.scope !8913, !noalias !8914
  %.sroa.4.0..sroa_idx13.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  store ptr %.sroa.10.0.i.i.i.i, ptr %.sroa.4.0..sroa_idx13.i, align 8, !alias.scope !8913, !noalias !8914
  %.sroa.5.0..sroa_idx14.i = getelementptr inbounds nuw i8, ptr %i.j, i64 56
  store i64 %.val6.i, ptr %.sroa.5.0..sroa_idx14.i, align 8, !alias.scope !8913, !noalias !8914
  store i64 1, ptr %i.j, align 8, !alias.scope !8913, !noalias !8914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !8915
  br label %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"

bb.t:                                             ; preds = %.body.i, %bb.r
  %i.bh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8913
  unreachable

bb.u:                                             ; preds = %.noexc9
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bj = extractvalue { ptr, ptr } %i.aj, 1
  %i.bk = extractvalue { ptr, ptr } %i.aj, 0
  %i.bl = load i64, ptr %i.bi, align 8, !alias.scope !8914, !noalias !8913, !noundef !25
  store ptr %i.bk, ptr %i.e, align 8, !noalias !8915
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.bj, ptr %.sroa.4.0..sroa_idx.i, align 8, !noalias !8915
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.al, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !8915
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i64 %i.bl, ptr %.sroa.6.0..sroa_idx.i, align 8, !noalias !8915
  %i.bm = getelementptr inbounds nuw i8, ptr %1, i64 80
  %.val7.i = load ptr, ptr %i.bm, align 8, !alias.scope !8914, !noalias !8913, !nonnull !25, !noundef !25 ; 2 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.val8.i = load i64, ptr %i.bn, align 8, !alias.scope !8914, !noalias !8913, !noundef !25 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8918)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !8919
  %i.bo = mul i64 %.val8.i, 56                    ; 3 uses
  %or.cond.i.i.i.i.i9.i = icmp ugt i64 %.val8.i, 164703072086692425
  br i1 %or.cond.i.i.i.i.i9.i, label %bb.w, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i: ; preds = %bb.u
  %i.bp = icmp eq i64 %i.bo, 0
  br i1 %i.bp, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i", label %bb.v

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i
  %i.bq = icmp eq i64 %.val8.i, 0
  call void @llvm.assume(i1 %i.bq)
  store i64 0, ptr %i.d, align 8, !noalias !8919
  %i.br = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.br, align 8, !noalias !8919
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  br label %.loopexit.i

bb.v:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i10.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8920
  %i.bt = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.bo, i64 noundef range(i64 1, 9) 8) #46, !noalias !8920 ; 3 uses
  %i.bu = icmp eq ptr %i.bt, null
  br i1 %i.bu, label %bb.w, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i"

bb.w:                                             ; preds = %bb.v, %bb.u
  %.sroa.4.0.ph.i.i.i11.i = phi i64 [ 8, %bb.v ], [ 0, %bb.u ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i11.i, i64 %i.bo, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc12.i unwind label %bb.ai, !noalias !8913

.noexc12.i:                                       ; preds = %bb.w
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i": ; preds = %bb.v
  store i64 %.val8.i, ptr %i.d, align 8, !noalias !8919
  %2 = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.bt, ptr %2, align 8, !noalias !8919
  %3 = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 4 uses
  %4 = getelementptr inbounds nuw [56 x i8], ptr %.val7.i, i64 %.val8.i
  %5 = icmp eq i64 %.val8.i, 0
  br i1 %5, label %.loopexit.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i"
  %i.bv = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bw = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.bx = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.by = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  br label %bb.x

bb.x:                                             ; preds = %bb.ae, %.lr.ph.i.i.i
  %.sroa.012.026.i.i.i = phi ptr [ %.val7.i, %.lr.ph.i.i.i ], [ %i.cb, %bb.ae ] ; 7 uses
  %.sroa.7.025.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i ], [ %i.cc, %bb.ae ] ; 3 uses
  %.sroa.10.024.i.i.i = phi i64 [ %.val8.i, %.lr.ph.i.i.i ], [ %i.bz, %bb.ae ]
  %i.bz = add nsw i64 %.sroa.10.024.i.i.i, -1     ; 2 uses
  %i.ca = icmp eq ptr %.sroa.012.026.i.i.i, %4
  br i1 %i.ca, label %.loopexit.i, label %bb.y

.loopexit.i.i.i:                                  ; preds = %bb.y
  %lpad.loopexit.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.ag

bb.y:                                             ; preds = %bb.x
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.i, i64 56
  %i.cc = add nuw nsw i64 %.sroa.7.025.i.i.i, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !8919
  call void @llvm.experimental.noalias.scope.decl(metadata !8921)
  call void @llvm.experimental.noalias.scope.decl(metadata !8922)
  call void @llvm.experimental.noalias.scope.decl(metadata !8923)
  call void @llvm.experimental.noalias.scope.decl(metadata !8924)
  %i.cd = invoke { ptr, ptr } @"_ZN73_$LT$regex_automata..meta..regex..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h09377082faf3c0e5E"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %.sroa.012.026.i.i.i)
          to label %.noexc.i.i.i unwind label %.loopexit.i.i.i, !noalias !8925 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.y
  %i.ce = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.i, i64 16
  %i.cf = load ptr, ptr %i.ce, align 8, !alias.scope !8926, !noalias !8927, !nonnull !25, !noundef !25 ; 2 uses
  %i.cg = atomicrmw add ptr %i.cf, i64 1 monotonic, align 8, !noalias !8927
  %i.ch = icmp slt i64 %i.cg, 0
  br i1 %i.ch, label %bb.z, label %"_ZN66_$LT$regex..regex..string..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h02a4c0f896e815e9E.exit.i.i.i.i"

bb.z:                                             ; preds = %.noexc.i.i.i
  call void @llvm.trap()
  unreachable

"_ZN66_$LT$regex..regex..string..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h02a4c0f896e815e9E.exit.i.i.i.i": ; preds = %.noexc.i.i.i
  %i.ci = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.i, i64 24
  %i.cj = extractvalue { ptr, ptr } %i.cd, 1
  %i.ck = extractvalue { ptr, ptr } %i.cd, 0
  %i.cl = load i64, ptr %i.ci, align 8, !alias.scope !8926, !noalias !8927, !noundef !25
  store ptr %i.ck, ptr %i.c, align 8, !alias.scope !8928, !noalias !8929
  store ptr %i.cj, ptr %i.bv, align 8, !alias.scope !8928, !noalias !8929
  store ptr %i.cf, ptr %i.bw, align 8, !alias.scope !8928, !noalias !8929
  store i64 %i.cl, ptr %i.bx, align 8, !alias.scope !8928, !noalias !8929
  %i.cm = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.i, i64 40
  %.val.i.i.i.i = load ptr, ptr %i.cm, align 8, !alias.scope !8930, !noalias !8931, !nonnull !25, !noundef !25
  %i.cn = getelementptr inbounds nuw i8, ptr %.sroa.012.026.i.i.i, i64 48
  %.val1.i.i.i.i = load i64, ptr %i.cn, align 8, !alias.scope !8930, !noalias !8931, !noundef !25 ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8932)
  call void @llvm.experimental.noalias.scope.decl(metadata !8933)
  %i.co = shl i64 %.val1.i.i.i.i, 4               ; 5 uses
  %i.cp = icmp ugt i64 %.val1.i.i.i.i, 1152921504606846975
  %i.cq = icmp ugt i64 %i.co, 9223372036854775800
  %or.cond.i.i.i.i.i.i.i.i.i = or i1 %i.cp, %i.cq
  br i1 %or.cond.i.i.i.i.i.i.i.i.i, label %bb.ab, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i: ; preds = %"_ZN66_$LT$regex..regex..string..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h02a4c0f896e815e9E.exit.i.i.i.i"
  %i.cr = icmp eq i64 %i.co, 0
  br i1 %i.cr, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8934
  %i.cs = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.co, i64 noundef range(i64 1, 9) 8) #46, !noalias !8934 ; 2 uses
  %i.ct = icmp eq ptr %i.cs, null
  br i1 %i.ct, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa, %"_ZN66_$LT$regex..regex..string..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h02a4c0f896e815e9E.exit.i.i.i.i"
  %.sroa.4.0.ph.i.i.i.i.i.i.i = phi i64 [ 8, %bb.aa ], [ 0, %"_ZN66_$LT$regex..regex..string..Regex$u20$as$u20$core..clone..Clone$GT$5clone17h02a4c0f896e815e9E.exit.i.i.i.i" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i, i64 %i.co, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc.i.i.i.i unwind label %bb.ac, !noalias !8931

.noexc.i.i.i.i:                                   ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.ab
  %i.cu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr48drop_in_place$LT$regex..regex..string..Regex$GT$17h05f33f16ff7a2efdE"(ptr noalias noundef nonnull align 8 dereferenceable(56) %i.c) #53
          to label %bb.ag unwind label %bb.ad, !noalias !8925

bb.ad:                                            ; preds = %bb.ac
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8925
  unreachable

bb.ae:                                            ; preds = %bb.aa, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %i.cs, %bb.aa ] ; 2 uses
  %.sroa.4.0.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i ], [ %.val1.i.i.i.i, %bb.aa ] ; 2 uses
  %i.cw = icmp samesign ule i64 %.val1.i.i.i.i, %.sroa.4.0.i.i.i.i.i.i.i
  call void @llvm.assume(i1 %i.cw)
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 %.sroa.10.0.i.i.i.i.i.i.i, ptr nonnull readonly align 8 %.val.i.i.i.i, i64 %i.co, i1 false), !noalias !8935
  store i64 %.sroa.4.0.i.i.i.i.i.i.i, ptr %i.by, align 8, !alias.scope !8936, !noalias !8937
  store ptr %.sroa.10.0.i.i.i.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8936, !noalias !8937
  store i64 %.val1.i.i.i.i, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i, align 8, !alias.scope !8936, !noalias !8937
  %i.cx = getelementptr inbounds nuw [56 x i8], ptr %i.bt, i64 %.sroa.7.025.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.cx, ptr noundef nonnull align 8 dereferenceable(56) %i.c, i64 56, i1 false), !noalias !8925
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !8919
  %i.cy = icmp eq i64 %i.bz, 0
  br i1 %i.cy, label %.loopexit.i, label %bb.x

bb.af:                                            ; preds = %bb.ag
  %i.cz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !8925
  unreachable

bb.ag:                                            ; preds = %bb.ac, %.loopexit.i.i.i
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.cu, %bb.ac ], [ %lpad.loopexit.i.i.i, %.loopexit.i.i.i ]
  store i64 %.sroa.7.025.i.i.i, ptr %3, align 8, !alias.scope !8938, !noalias !8919
  invoke fastcc void @"_ZN4core3ptr112drop_in_place$LT$alloc..vec..Vec$LT$$LP$regex..regex..string..Regex$C$alloc..vec..Vec$LT$$RF$str$GT$$RP$$GT$$GT$17hedc7087df11e599fE"(ptr noalias noundef align 8 dereferenceable(24) %i.d) #53
          to label %.body.i unwind label %bb.af, !noalias !8925

bb.ah:                                            ; preds = %.noexc9
  call void @llvm.trap()
  unreachable

bb.ai:                                            ; preds = %bb.w
  %i.da = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ai, %bb.ag
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.da, %bb.ai ], [ %eh.lpad-body.i.i.i, %bb.ag ]
  invoke fastcc void @"_ZN4core3ptr54drop_in_place$LT$actix_router..regex_set..RegexSet$GT$17hd5191da32c5008f3E"(ptr noalias noundef align 8 dereferenceable(32) %i.e) #53
          to label %.body unwind label %bb.t, !noalias !8913

.loopexit.i:                                      ; preds = %bb.ae, %bb.x, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i"
  %6 = phi ptr [ %i.bs, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i" ], [ %3, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i" ], [ %3, %bb.x ], [ %3, %bb.ae ]
  store i64 %.val8.i, ptr %6, align 8, !noalias !8919
  %i.db = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.db, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false), !noalias !8914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !8919
  %i.dc = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dc, ptr noundef nonnull align 8 dereferenceable(32) %i.e, i64 32, i1 false), !noalias !8914
  store i64 2, ptr %i.j, align 8, !alias.scope !8913, !noalias !8914
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !8915
  br label %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"

bb.aj:                                            ; preds = %bb.d
  %i.dd = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.dd, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false)
  store i64 1, ptr %i.k, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.j

.body:                                            ; preds = %bb.ak, %.body.i, %bb.r, %.body11
  %.pn = phi { ptr, i32 } [ %eh.lpad-body12, %.body11 ], [ %i.de, %bb.ak ], [ %i.bd, %bb.r ], [ %eh.lpad-body.i, %.body.i ]
  call fastcc void @"_ZN4core3ptr52drop_in_place$LT$actix_router..pattern..Patterns$GT$17h0b3b9373b9c38742E"(ptr noalias noundef align 8 dereferenceable(32) %i.k) #53
  br label %bb.f

bb.ak:                                            ; preds = %bb.m, %bb.l, %bb.k
  %i.de = landingpad { ptr, i32 }
          cleanup
  br label %.body

"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit": ; preds = %.loopexit.i, %bb.s, %.noexc
  %i.df = getelementptr inbounds nuw i8, ptr %1, i64 104
  %.val6 = load ptr, ptr %i.df, align 8, !nonnull !25, !noundef !25 ; 2 uses
  %i.dg = getelementptr inbounds nuw i8, ptr %1, i64 112
  %.val7 = load i64, ptr %i.dg, align 8, !noundef !25 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !8939)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !8940
  %i.dh = shl i64 %.val7, 5                       ; 4 uses
  %i.di = icmp ugt i64 %.val7, 576460752303423487
  %i.dj = icmp ugt i64 %i.dh, 9223372036854775800
  %or.cond.i.i.i.i.i = or i1 %i.di, %i.dj
  br i1 %or.cond.i.i.i.i.i, label %bb.am, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i: ; preds = %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"
  %i.dk = icmp eq i64 %i.dh, 0
  br i1 %i.dk, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i", label %bb.al

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  %i.dl = icmp eq i64 %.val7, 0
  call void @llvm.assume(i1 %i.dl)
  store i64 0, ptr %i.b, align 8, !noalias !8940
  %i.dm = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.dm, align 8, !noalias !8940
  %i.dn = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %.loopexit

bb.al:                                            ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !8941
  %i.do = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.dh, i64 noundef range(i64 1, 9) 8) #46, !noalias !8941 ; 3 uses
  %i.dp = icmp eq ptr %i.do, null
  br i1 %i.dp, label %bb.am, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"

bb.am:                                            ; preds = %bb.al, %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit"
  %.sroa.4.0.ph.i.i.i = phi i64 [ 8, %bb.al ], [ 0, %"_ZN74_$LT$actix_router..resource..PatternType$u20$as$u20$core..clone..Clone$GT$5clone17ha5eb9cd5a35f0c69E.exit" ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i, i64 %i.dh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc10 unwind label %bb.ar

.noexc10:                                         ; preds = %bb.am
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i": ; preds = %bb.al
  store i64 %.val7, ptr %i.b, align 8, !noalias !8940
  %i.dq = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.do, ptr %i.dq, align 8, !noalias !8940
  %i.dr = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 4 uses
  %i.ds = getelementptr inbounds nuw [32 x i8], ptr %.val6, i64 %.val7
  %7 = icmp eq i64 %.val7, 0
  br i1 %7, label %.loopexit, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i"
  %8 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.an

bb.an:                                            ; preds = %bb.ap, %.lr.ph.i.i
  %.sroa.013.024.i.i = phi ptr [ %.val6, %.lr.ph.i.i ], [ %i.dy, %bb.ap ] ; 4 uses
  %.sroa.7.023.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.dx, %bb.ap ] ; 3 uses
  %.sroa.10.022.i.i = phi i64 [ %.val7, %.lr.ph.i.i ], [ %i.dt, %bb.ap ]
  %i.dt = add nsw i64 %.sroa.10.022.i.i, -1       ; 2 uses
  %i.du = icmp eq ptr %.sroa.013.024.i.i, %i.ds
  br i1 %i.du, label %.loopexit, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8940
  call void @llvm.experimental.noalias.scope.decl(metadata !8942)
  call void @llvm.experimental.noalias.scope.decl(metadata !8943)
  %i.dv = load i64, ptr %.sroa.013.024.i.i, align 8, !range !38, !alias.scope !8944, !noalias !8945, !noundef !25
  %i.dw = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i.i, i64 8
  invoke void @"_ZN60_$LT$alloc..string..String$u20$as$u20$core..clone..Clone$GT$5clone17h123bb51dd192bfa5E"(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %8, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dw, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @540)
          to label %bb.ap unwind label %bb.aq, !noalias !8946

bb.ap:                                            ; preds = %bb.ao
  %i.dx = add nuw nsw i64 %.sroa.7.023.i.i, 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.sroa.013.024.i.i, i64 32
  store i64 %i.dv, ptr %i.a, align 8, !alias.scope !8942, !noalias !8947
  %i.dz = getelementptr inbounds nuw [32 x i8], ptr %i.do, i64 %.sroa.7.023.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.dz, ptr noundef nonnull align 8 dereferenceable(32) %i.a, i64 32, i1 false), !noalias !8946
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8940
  %i.ea = icmp eq i64 %i.dt, 0
  br i1 %i.ea, label %.loopexit, label %bb.an

bb.aq:                                            ; preds = %bb.ao
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.023.i.i, ptr %i.dr, align 8, !alias.scope !8948, !noalias !8940
  call fastcc void @"_ZN4core3ptr82drop_in_place$LT$alloc..vec..Vec$LT$actix_router..resource..PatternSegment$GT$$GT$17h562065b0683ec90cE"(ptr noalias noundef align 8 dereferenceable(24) %i.b) #53, !noalias !8946
  br label %.body11

bb.ar:                                            ; preds = %bb.am
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body11

.body11:                                          ; preds = %bb.aq, %bb.ar
  %eh.lpad-body12 = phi { ptr, i32 } [ %i.eb, %bb.ar ], [ %lpad.loopexit.i.i, %bb.aq ]
  invoke fastcc void @"_ZN4core3ptr56drop_in_place$LT$actix_router..resource..PatternType$GT$17h453da341afb3e084E"(ptr noalias noundef align 8 dereferenceable(64) %i.j) #53
          to label %.body unwind label %bb.as

.loopexit:                                        ; preds = %bb.ap, %bb.an, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i"
  %9 = phi ptr [ %i.dn, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i" ], [ %i.dr, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i" ], [ %i.dr, %bb.an ], [ %i.dr, %bb.ap ]
  store i64 %.val7, ptr %9, align 8, !noalias !8940
  %i.ec = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ec, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !8940
  %i.ed = getelementptr inbounds nuw i8, ptr %0, i64 144
  store i16 %i.m, ptr %i.ed, align 8
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i64 %.sroa.0.0, ptr %i.ee, align 8
  %.sroa.6.0..sroa_idx14 = getelementptr inbounds nuw i8, ptr %0, i64 128
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx14, align 8
  %.sroa.7.0..sroa_idx16 = getelementptr inbounds nuw i8, ptr %0, i64 136
  store i64 %.sroa.7.0, ptr %.sroa.7.0..sroa_idx16, align 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i64 32, i1 false)
  %i.ef = getelementptr inbounds nuw i8, ptr %0, i64 146
  store i8 %i.x, ptr %i.ef, align 2
  %i.eg = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.eg, ptr noundef nonnull align 8 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  ret void

bb.as:                                            ; preds = %.body11
  %i.eh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable

"_ZN4core3ptr70drop_in_place$LT$core..option..Option$LT$alloc..string..String$GT$$GT$17h6193e72745deafaeE.exit": ; preds = %bb.g, %bb.f, %bb.f
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN74_$LT$actix_web..error..QueryPayloadError$u20$as$u20$core..fmt..Display$GT$3fmt17h09ad30c2ad58ea8dE"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #0 {
_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %0, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.c, ptr %i.b, align 8
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17hed23aa1e5c255ef6E", ptr %.sroa.42.0..sroa_idx, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val = load ptr, ptr %1, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8951
  store ptr @532, ptr %i.a, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 1, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 1, ptr %.sroa.8.0..sroa_idx, align 8
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.10.0..sroa_idx, align 8
  %i.e = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret i1 %i.e
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN75_$LT$actix_web..error..UrlGenerationError$u20$as$u20$core..fmt..Display$GT$3fmt17h5498b02f41a031cbE"(ptr noalias noundef readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !range !64, !noundef !25 ; 2 uses
  %i.b = add nsw i8 %i.a, -10
  %i.c = icmp samesign ugt i8 %i.a, 9
  %narrow = select i1 %i.c, i8 %i.b, i8 2
  switch i8 %narrow, label %bb.b [
    i8 0, label %bb.c
    i8 1, label %bb.d
    i8 2, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.d, align 8
  %.val2 = load ptr, ptr %1, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %.val3, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !invariant.load !25, !noalias !8956, !nonnull !25
  %i.g = tail call noundef zeroext i1 %i.f(ptr noundef nonnull align 1 %.val2, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @533, i64 noundef 18), !noalias !8956, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.d:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.h, align 8
  %.val = load ptr, ptr %1, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val1, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !25, !noalias !8957, !nonnull !25
  %i.k = tail call noundef zeroext i1 %i.j(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @534, i64 noundef 30), !noalias !8957, !inline_history !0
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

bb.e:                                             ; preds = %bb.a
  %i.l = tail call noundef zeroext i1 @"_ZN62_$LT$url..parser..ParseError$u20$as$u20$core..fmt..Display$GT$3fmt17h74c00c0d4d08455fE"(ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) dereferenceable(1) %0, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.d, %bb.c, %bb.e
  %.sroa.0.0.in = phi i1 [ %i.l, %bb.e ], [ %i.k, %bb.d ], [ %i.g, %bb.c ]
  ret i1 %.sroa.0.0.in
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal noundef zeroext i1 @"_ZN76_$LT$actix_web..http..header..allow..Allow$u20$as$u20$core..fmt..Display$GT$3fmt17hd949e27e709123abE"(ptr noalias noundef readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !25, !noundef !25 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load i64, ptr %i.c, align 8, !noundef !25 ; 2 uses
  %.idx.i = mul nuw nsw i64 %i.d, 24
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 %.idx.i
  %i.f = icmp eq i64 %i.d, 0
  br i1 %i.f, label %.preheader, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.h = tail call noundef zeroext i1 @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.h, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %.preheader

.preheader:                                       ; preds = %bb.b, %bb.a
  %.sroa.04.0.i.ph = phi ptr [ %i.g, %bb.b ], [ %i.b, %bb.a ]
  br label %bb.c

bb.c:                                             ; preds = %.preheader, %bb.e
  %.sroa.04.0.i = phi ptr [ %i.j, %bb.e ], [ %.sroa.04.0.i.ph, %.preheader ] ; 3 uses
  %.not.i.not.not = icmp ne ptr %.sroa.04.0.i, %i.e ; 4 uses
  br i1 %.not.i.not.not, label %bb.d, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef zeroext i1 @_ZN4core3fmt9Formatter9write_str17haacafd99ed76659fE(ptr noalias noundef nonnull align 8 dereferenceable(24) %1, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @69, i64 noundef 2)
  br i1 %i.i, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.04.0.i, i64 24
  %i.k = tail call noundef zeroext i1 @"_ZN59_$LT$http..method..Method$u20$as$u20$core..fmt..Display$GT$3fmt17h35ae265a0a765c9aE"(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %.sroa.04.0.i, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.k, label %_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit, label %bb.c

_ZN10actix_http6header5utils19fmt_comma_delimited17hba7a284498ceb7a6E.exit: ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.sroa.0.2.i = phi i1 [ true, %bb.b ], [ %.not.i.not.not, %bb.e ], [ %.not.i.not.not, %bb.d ], [ %.not.i.not.not, %bb.c ]
  ret i1 %.sroa.0.2.i
}

; Function Attrs: nonlazybind uwtable
define noundef zeroext i1 @"_ZN76_$LT$actix_web..http..header..range..Range$u20$as$u20$core..fmt..Display$GT$3fmt17h090f1cf63694a6b3E"(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) %0, ptr noalias noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = load i64, ptr %0, align 8, !range !30, !noundef !25
  %.not = icmp eq i64 %i.e, -9223372036854775808
  br i1 %.not, label %.split, label %_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit

_ZN4core3fmt9Formatter9write_fmt17h45449738a32a15a2E.exit: ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %0, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %i.f, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.d, ptr %i.b, align 8
  %.sroa.47.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d322999ca7ebd42E", ptr %.sroa.47.0..sroa_idx, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.g, align 8
  %.sroa.411.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr @"_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h0d322999ca7ebd42E", ptr %.sroa.411.0..sroa_idx, align 8
  %.val14 = load ptr, ptr %1, align 8, !nonnull !25, !noundef !25
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val15 = load ptr, ptr %i.h, align 8, !nonnull !25, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !8963
  store ptr @538, ptr %i.a, align 8
  %.sroa.524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 2, ptr %.sroa.524.0..sroa_idx, align 8
  %.sroa.725.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.725.0..sroa_idx, align 8
  %.sroa.826.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 2, ptr %.sroa.826.0..sroa_idx, align 8
  %.sroa.1027.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr null, ptr %.sroa.1027.0..sroa_idx, align 8
  %i.i = call noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %.val14, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val15, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.a), !noalias !8963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !8963
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %.loopexit

.split:                                           ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val13 = load ptr, ptr %i.j, align 8
  %.val = load ptr, ptr %1, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %.val13, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !invariant.load !25, !noalias !8964, !nonnull !25
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 1 %.val, ptr noalias noundef nonnull readonly align 1 captures(address, read_provenance) @535, i64 noundef 6), !noalias !8964, !inline_history !0
  br i1 %i.m, label %.loopexit, label %.peel.begin

.peel.begin:                                      ; preds = %.split
end_hunk_1
begin_hunk_2_@_ZN9actix_web7service14ServiceRequest18add_data_container17h757798cb5c39ad60E:bb.a
  %i.aa = add i64 %i.z, 1
  store i64 %i.aa, ptr %.sroa.01.0.i, align 8, !alias.scope !14291
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.k:                                             ; preds = %bb.i
  unreachable

"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit": ; preds = %bb.d, %bb.e, %bb.l, %bb.m
  %eh.lpad-body5 = phi { ptr, i32 } [ %i.ab, %bb.l ], [ %i.ab, %bb.m ], [ %i.r, %bb.e ], [ %i.r, %bb.d ]
  resume { ptr, i32 } %eh.lpad-body5

bb.l:                                             ; preds = %bb.i
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ac = load i64, ptr %1, align 8, !noalias !14295, !noundef !25
  %i.ad = add i64 %i.ac, -1                       ; 2 uses
  store i64 %i.ad, ptr %1, align 8, !noalias !14295
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %bb.m, label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit"

bb.m:                                             ; preds = %bb.l
  invoke void @"_ZN5alloc2rc15Rc$LT$T$C$A$GT$9drop_slow17h165601ac46a6c913E"(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %"_ZN4core3ptr76drop_in_place$LT$alloc..rc..Rc$LT$actix_http..extensions..Extensions$GT$$GT$17hc91fadaf8bf39315E.exit" unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54
  unreachable
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @"_ZN9actix_web8resource8Resource3new28_$u7b$$u7b$closure$u7d$$u7d$28_$u7b$$u7b$closure$u7d$$u7d$17hc95747227be8ef7dE"(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree readnone align 8 captures(none) %2) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = alloca [8 x i8], align 8                 ; 3 uses
  %i.d = alloca [48 x i8], align 8                ; 7 uses
  %i.e = alloca [8 x i8], align 8                 ; 4 uses
  %i.f = alloca [32 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [32 x i8], align 8                ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 13 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 5 uses
  %i.l = alloca [48 x i8], align 8                ; 8 uses
  %i.m = alloca [32 x i8], align 8                ; 9 uses
  %i.n = alloca [24 x i8], align 8                ; 8 uses
  %i.o = alloca [40 x i8], align 8                ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 13 uses
  %.sroa.05.i.i = alloca [64 x i8], align 8       ; 5 uses
  %i.q = alloca [192 x i8], align 8               ; 4 uses
  %i.r = alloca [40 x i8], align 8                ; 6 uses
  %i.s = alloca [40 x i8], align 8                ; 8 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.14.i.i.i.i.i = alloca [7 x i8], align 1  ; 4 uses
  %.sroa.421.i.i.i.i = alloca [7 x i8], align 1   ; 4 uses
  %i.u = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.056 = alloca [88 x i8], align 8          ; 3 uses
  %i.v = alloca [96 x i8], align 8                ; 10 uses
  %i.w = alloca [32 x i8], align 8                ; 9 uses
  %.sroa.053 = alloca [88 x i8], align 8          ; 5 uses
  %i.x = alloca [96 x i8], align 8                ; 15 uses
  %i.y = alloca [104 x i8], align 8               ; 9 uses
  %i.z = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.050 = alloca [88 x i8], align 8          ; 6 uses
  %i.aa = alloca [24 x i8], align 8               ; 9 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 3 uses
  %i.ac = load i8, ptr %i.ab, align 8, !range !39, !noundef !25
  switch i8 %i.ac, label %default.unreachable117 [
    i8 0, label %bb.b
    i8 1, label %bb.ca
    i8 2, label %bb.cb
  ]

default.unreachable117:                           ; preds = %bb.n, %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %i.ad = getelementptr i8, ptr %1, i64 24
  %.val16 = load ptr, ptr %i.ad, align 8, !nonnull !25, !noundef !25
  %i.ae = getelementptr inbounds nuw i8, ptr %.val16, i64 168
  %i.af = load ptr, ptr %i.ae, align 8, !nonnull !25, !noundef !25 ; 4 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16 ; 8 uses
  %i.ah = load i64, ptr %i.ag, align 8, !noundef !25 ; 4 uses
  %i.ai = icmp ult i64 %i.ah, 9223372036854775807
  br i1 %i.ai, label %bb.e, label %bb.c, !prof !29

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4core4cell30panic_already_mutably_borrowed17h29d49366c015d3c2E(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @577) #52
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  %i.aj = landingpad { ptr, i32 }
          cleanup
  br label %.thread84

bb.e:                                             ; preds = %bb.b
  %i.ak = add nuw nsw i64 %i.ah, 1
  store i64 %i.ak, ptr %i.ag, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14468)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14469)
  %i.al = getelementptr inbounds nuw i8, ptr %i.af, i64 48
  %i.am = load i64, ptr %i.al, align 8, !alias.scope !14470, !noalias !14471, !noundef !25
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %.thread, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ao = getelementptr inbounds nuw i8, ptr %i.af, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14472)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !14473)
  %i.ap = getelementptr inbounds nuw i8, ptr %i.af, i64 32
  %i.aq = load i64, ptr %i.ap, align 8, !alias.scope !14474, !noalias !14475, !noundef !25 ; 2 uses
  %i.ar = load ptr, ptr %i.ao, align 8, !alias.scope !14474, !noalias !14475, !nonnull !25, !noundef !25 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.i, %bb.f
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %bb.f ], [ %i.bi, %bb.i ]
  %.pn.i.i.i = phi i64 [ -8779034909212600962, %bb.f ], [ %i.bj, %bb.i ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i, %i.aq ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.as, align 1, !noalias !14476 ; 2 uses
  %i.at = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 67)
  %i.au = bitcast <16 x i1> %i.at to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.au, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.g, %bb.h
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.bh, %bb.h ], [ %i.au, %bb.g ] ; 3 uses
  %i.av = tail call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.aw = zext nneg i16 %i.av to i64
  %i.ax = add i64 %.sroa.01.0.i.i.i.i, %i.aw
  %i.ay = and i64 %i.ax, %i.aq
  %i.az = sub nsw i64 0, %i.ay
  %i.ba = getelementptr inbounds [32 x i8], ptr %i.ar, i64 %i.az ; 3 uses
  %i.bb = getelementptr inbounds i8, ptr %i.ba, i64 -32
  %.val3.i.i.i.i = load i128, ptr %i.bb, align 8, !noalias !14477
  %i.bc = icmp eq i128 %.val3.i.i.i.i, -161944610184406818283420451019201716506
  br i1 %i.bc, label %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h8965e53700a935e8E.exit.i", label %bb.h, !prof !29

._crit_edge.i.i.i:                                ; preds = %bb.h, %bb.g
  %i.bd = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.be = bitcast <16 x i1> %i.bd to i16
  %i.bf = icmp eq i16 %i.be, 0
  br i1 %i.bf, label %bb.i, label %.thread, !prof !33

bb.h:                                             ; preds = %.lr.ph.i.i.i
  %i.bg = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.bh = and i16 %i.bg, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.bh, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.i:                                             ; preds = %._crit_edge.i.i.i
  %i.bi = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.bj = add i64 %.sroa.01.0.i.i.i.i, %i.bi
  br label %bb.g

"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h8965e53700a935e8E.exit.i": ; preds = %.lr.ph.i.i.i
  %i.bk = getelementptr inbounds i8, ptr %i.ba, i64 -16
  %i.bl = load ptr, ptr %i.bk, align 8, !noalias !14468, !nonnull !25, !noundef !25 ; 3 uses
  %i.bm = getelementptr inbounds i8, ptr %i.ba, i64 -8
  %i.bn = load ptr, ptr %i.bm, align 8, !noalias !14468, !nonnull !25, !align !36, !noundef !25
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !14468
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bn, i64 24
  %i.bp = load ptr, ptr %i.bo, align 8, !invariant.load !25, !noalias !14468, !nonnull !25
  invoke void %i.bp(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.u, ptr noundef nonnull align 1 %i.bl)
          to label %.noexc18 unwind label %bb.j, !inline_history !14311

.noexc18:                                         ; preds = %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h8965e53700a935e8E.exit.i"
  %i.bq = load i128, ptr %i.u, align 16, !noalias !14468, !noundef !25
  %i.br = icmp eq i128 %i.bq, -161944610184406818283420451019201716506
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !14468
  br i1 %i.br, label %bb.k, label %.noexc18..thread_crit_edge

.noexc18..thread_crit_edge:                       ; preds = %.noexc18
  %.pre = load i64, ptr %i.ag, align 8
  %i.bs = add i64 %.pre, -1
  br label %.thread

.body:                                            ; preds = %bb.j, %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit.i.i.i"
  %.pn = phi { ptr, i32 } [ %i.cr, %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit.i.i.i" ], [ %i.bv, %bb.j ]
  %i.bt = load i64, ptr %i.ag, align 8, !noundef !25
  %i.bu = add i64 %i.bt, -1
  store i64 %i.bu, ptr %i.ag, align 8
  br label %.thread84

bb.j:                                             ; preds = %bb.m, %"_ZN9hashbrown3map28HashMap$LT$K$C$V$C$S$C$A$GT$9get_inner17h8965e53700a935e8E.exit.i"
  %i.bv = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.k:                                             ; preds = %.noexc18
  call void @llvm.experimental.noalias.scope.decl(metadata !14478)
  %i.bw = getelementptr i8, ptr %i.bl, i64 8
  %.val.i = load ptr, ptr %i.bw, align 8, !alias.scope !14478, !noalias !14479, !nonnull !25, !noundef !25 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.bl, i64 16
  %.val2.i = load i64, ptr %i.bx, align 8, !alias.scope !14478, !noalias !14479, !noundef !25 ; 8 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14480)
  %i.by = mul i64 %.val2.i, 24                    ; 4 uses
  %or.cond.i.i.i.i.i.i.i = icmp ugt i64 %.val2.i, 384307168202282325
  br i1 %or.cond.i.i.i.i.i.i.i, label %bb.m, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i: ; preds = %bb.k
  %i.bz = icmp eq i64 %i.by, 0
  br i1 %i.bz, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i.i", label %bb.l

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i.i": ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  %i.ca = icmp eq i64 %.val2.i, 0
  call void @llvm.assume(i1 %i.ca)
  br label %.loopexit

bb.l:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !14481
  %i.cb = call noundef align 8 ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %i.by, i64 noundef range(i64 1, 9) 8) #46, !noalias !14481 ; 7 uses
  %i.cc = icmp eq ptr %i.cb, null
  br i1 %i.cc, label %bb.m, label %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i"

bb.m:                                             ; preds = %bb.l, %bb.k
  %.sroa.4.0.ph.i.i.i.i.i = phi i64 [ 8, %bb.l ], [ 0, %bb.k ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i, i64 %i.by, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @572) #52
          to label %.noexc19 unwind label %bb.j

.noexc19:                                         ; preds = %bb.m
  unreachable

"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i": ; preds = %bb.l
  %i.cd = getelementptr inbounds nuw [24 x i8], ptr %.val.i, i64 %.val2.i
  %3 = icmp eq i64 %.val2.i, 0
  br i1 %3, label %.loopexit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i", %bb.s
  %.sroa.012.037.i.i.i.i = phi ptr [ %i.cg, %bb.s ], [ %.val.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i" ] ; 8 uses
  %.sroa.7.035.i.i.i.i = phi i64 [ %i.ch, %bb.s ], [ 0, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i" ] ; 4 uses
  %.sroa.10.034.i.i.i.i = phi i64 [ %i.ce, %bb.s ], [ %.val2.i, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i" ]
  %i.ce = add nsw i64 %.sroa.10.034.i.i.i.i, -1   ; 2 uses
  %i.cf = icmp eq ptr %.sroa.012.037.i.i.i.i, %i.cd
  br i1 %i.cf, label %.loopexit, label %bb.n

bb.n:                                             ; preds = %.lr.ph.i.i.i.i
  %i.cg = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 24
  %i.ch = add nuw nsw i64 %.sroa.7.035.i.i.i.i, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !14482)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.14.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !14483)
  call void @llvm.experimental.noalias.scope.decl(metadata !14484)
  %i.ci = load i8, ptr %.sroa.012.037.i.i.i.i, align 8, !range !45, !alias.scope !14485, !noalias !14486, !noundef !25 ; 2 uses
  switch i8 %i.ci, label %default.unreachable117 [
    i8 0, label %bb.s
    i8 1, label %bb.s
    i8 2, label %bb.s
    i8 3, label %bb.s
    i8 4, label %bb.s
    i8 5, label %bb.s
    i8 6, label %bb.s
    i8 7, label %bb.s
    i8 8, label %bb.s
    i8 9, label %bb.o
    i8 10, label %bb.p
  ]

bb.o:                                             ; preds = %bb.n
  %.sroa.14.0..sroa_idx2.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.i.i.i.i.i, ptr noundef nonnull readonly align 1 dereferenceable(7) %.sroa.14.0..sroa_idx2.i.i.i.i.i, i64 7, i1 false), !alias.scope !14487, !noalias !14488
  %.sroa.143.0..sroa_idx4.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 8
  %.sroa.143.0.copyload5.i.i.i.i.i = load ptr, ptr %.sroa.143.0..sroa_idx4.i.i.i.i.i, align 8, !alias.scope !14489, !noalias !14488
  %.sroa.15.0..sroa_idx6.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 16
  %.sroa.15.0.copyload7.i.i.i.i.i = load i64, ptr %.sroa.15.0..sroa_idx6.i.i.i.i.i, align 8, !alias.scope !14489, !noalias !14488
  br label %bb.s

bb.p:                                             ; preds = %bb.n
  %i.cj = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 8
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cj, align 8, !alias.scope !14485, !noalias !14486, !nonnull !25, !align !35, !noundef !25
  %i.ck = getelementptr inbounds nuw i8, ptr %.sroa.012.037.i.i.i.i, i64 16
  %.val1.i.i.i.i.i.i = load i64, ptr %i.ck, align 8, !alias.scope !14485, !noalias !14486, !noundef !25 ; 6 uses
  %i.cl = icmp slt i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.cl, label %bb.r, label %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i, !prof !26

_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cm = icmp eq i64 %.val1.i.i.i.i.i.i, 0
  br i1 %i.cm, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i", label %bb.q

bb.q:                                             ; preds = %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  call void @_RNvCskdKJRKLKjqM_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #46, !noalias !14490
  %i.cn = call noundef ptr @_RNvCskdKJRKLKjqM_7___rustc12___rust_alloc(i64 noundef %.val1.i.i.i.i.i.i, i64 noundef range(i64 1, 9) 1) #46, !noalias !14490 ; 2 uses
  %i.co = icmp eq ptr %i.cn, null
  br i1 %i.co, label %bb.r, label %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i"

bb.r:                                             ; preds = %bb.q, %bb.p
  %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.q ], [ 0, %bb.p ]
  invoke void @_ZN5alloc7raw_vec12handle_error17h5794e6eba25188a7E(i64 noundef %.sroa.4.0.ph.i.i.i.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @573) #52
          to label %.noexc.i.i.i.i unwind label %bb.t, !noalias !14491

.noexc.i.i.i.i:                                   ; preds = %bb.r
  unreachable

"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i": ; preds = %bb.q, %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i
  %.sroa.10.0.i.i.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 1 to ptr), %_ZN4core5alloc6layout6Layout6repeat17h29edbb865869b355E.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.cn, %bb.q ] ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %.sroa.10.0.i.i.i.i.i.i.i.i.i, ptr nonnull readonly align 1 %.val.i.i.i.i.i.i, i64 %.val1.i.i.i.i.i.i, i1 false), !noalias !14492
  br label %bb.s

bb.s:                                             ; preds = %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i", %bb.o, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n, %bb.n
  %.sroa.15.0.i.i.i.i.i = phi i64 [ %.val1.i.i.i.i.i.i, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i" ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ %.sroa.15.0.copyload7.i.i.i.i.i, %bb.o ], [ undef, %bb.n ]
  %.sroa.143.0.i.i.i.i.i = phi ptr [ %.sroa.10.0.i.i.i.i.i.i.i.i.i, %"_ZN79_$LT$alloc..boxed..Box$LT$$u5b$T$u5d$$C$A$GT$$u20$as$u20$core..clone..Clone$GT$5clone17hf4cbc06358bf32a6E.exit.i.i.i.i.i.i" ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ undef, %bb.n ], [ %.sroa.143.0.copyload5.i.i.i.i.i, %bb.o ], [ undef, %bb.n ]
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.421.i.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.421.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.14.i.i.i.i.i, i64 7, i1 false), !noalias !14491
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.14.i.i.i.i.i)
  %i.cp = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.sroa.7.035.i.i.i.i ; 4 uses
  store i8 %i.ci, ptr %i.cp, align 8, !noalias !14491
  %.sroa.421.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.421.0..sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.421.i.i.i.i, i64 7, i1 false), !noalias !14491
  %.sroa.522.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  store ptr %.sroa.143.0.i.i.i.i.i, ptr %.sroa.522.0..sroa_idx.i.i.i.i, align 8, !noalias !14491
  %.sroa.623.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  store i64 %.sroa.15.0.i.i.i.i.i, ptr %.sroa.623.0..sroa_idx.i.i.i.i, align 8, !noalias !14491
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.421.i.i.i.i)
  %i.cq = icmp eq i64 %i.ce, 0
  br i1 %i.cq, label %.loopexit, label %.lr.ph.i.i.i.i

bb.t:                                             ; preds = %bb.r
  %i.cr = landingpad { ptr, i32 }
          cleanup
  call void @llvm.experimental.noalias.scope.decl(metadata !14493), !noalias !14494
  %i.cs = icmp eq i64 %.sroa.7.035.i.i.i.i, 0
  br i1 %i.cs, label %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.t, %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i"
  %.sroa.0.07.i.i.i.i.i.i = phi i64 [ %i.cu, %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i" ], [ 0, %bb.t ] ; 2 uses
  %i.ct = getelementptr inbounds nuw [24 x i8], ptr %i.cb, i64 %.sroa.0.07.i.i.i.i.i.i ; 3 uses
  %i.cu = add nuw nsw i64 %.sroa.0.07.i.i.i.i.i.i, 1 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14495), !noalias !14494
  call void @llvm.experimental.noalias.scope.decl(metadata !14496), !noalias !14494
  %i.cv = load i8, ptr %i.ct, align 8, !range !45, !alias.scope !14497, !noalias !14498, !noundef !25
  %switch.i.i.i.i.i.i.i.i = icmp samesign ult i8 %i.cv, 10
  br i1 %switch.i.i.i.i.i.i.i.i, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i", label %bb.u

bb.u:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.cw = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.val1.i.i.i.i.i.i.i.i = load i64, ptr %i.cw, align 8, !alias.scope !14497, !noalias !14498, !noundef !25 ; 2 uses
  %i.cx = icmp eq i64 %.val1.i.i.i.i.i.i.i.i, 0
  br i1 %i.cx, label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i", label %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i"

"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i": ; preds = %bb.u
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ct, i64 8
  %.val.i.i.i.i.i.i.i.i = load ptr, ptr %i.cy, align 8, !alias.scope !14497, !noalias !14498, !nonnull !25, !noundef !25
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %.val.i.i.i.i.i.i.i.i, i64 noundef %.val1.i.i.i.i.i.i.i.i, i64 noundef 1) #46, !noalias !14499
  br label %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i"

"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i": ; preds = %"_ZN63_$LT$alloc..alloc..Global$u20$as$u20$core..alloc..Allocator$GT$10deallocate17h1e0b43146c957e5eE.exit.i.i.i.i.i.i.i.i.i.i.i", %bb.u, %.lr.ph.i.i.i.i.i.i
  %i.cz = icmp eq i64 %i.cu, %.sroa.7.035.i.i.i.i
  br i1 %i.cz, label %"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit.i.i.i", label %.lr.ph.i.i.i.i.i.i

"_ZN4core3ptr64drop_in_place$LT$alloc..vec..Vec$LT$http..method..Method$GT$$GT$17he9b893f6cd312eaeE.exit.i.i.i": ; preds = %"_ZN4core3ptr41drop_in_place$LT$http..method..Method$GT$17hd6b68afe6593fa5cE.exit.i.i.i.i.i.i", %bb.t
  call void @_RNvCskdKJRKLKjqM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.cb, i64 noundef %i.by, i64 noundef range(i64 1, -9223372036854775807) 8) #46, !noalias !14498
  br label %.body

.thread:                                          ; preds = %._crit_edge.i.i.i, %.noexc18..thread_crit_edge, %bb.e
  %i.da = phi i64 [ %i.bs, %.noexc18..thread_crit_edge ], [ %i.ah, %bb.e ], [ %i.ah, %._crit_edge.i.i.i ]
  store i64 %i.da, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.053)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.w, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  call void @llvm.experimental.noalias.scope.decl(metadata !14500)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !14500
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i22 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i22, i8 0, i64 16, i1 false), !alias.scope !14501, !noalias !14500
  store i64 1, ptr %i.s, align 8, !alias.scope !14501, !noalias !14500
  %.sroa.42.0..sroa_idx.i.i23 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr @67, ptr %.sroa.42.0..sroa_idx.i.i23, align 8, !alias.scope !14501, !noalias !14500
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i24 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i24, align 8, !alias.scope !14501, !noalias !14500
  %i.db = invoke noundef align 8 ptr @_ZN10actix_http9responses4head17BoxedResponseHead3new17h0df284a7b1d0cdefE(i16 noundef 405)
          to label %bb.bu unwind label %bb.x, !noalias !14502

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i, %bb.s, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i.i", %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i"
  %.sroa.6.0.i.i.i = phi ptr [ inttoptr (i64 8 to ptr), %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.thread.i.i.i.i" ], [ %i.cb, %"_ZN5alloc7raw_vec20RawVecInner$LT$A$GT$16with_capacity_in17h77edd112abb727dbE.exit.i.i.i.i" ], [ %i.cb, %bb.s ], [ %i.cb, %.lr.ph.i.i.i.i ]
  store i64 %.val2.i, ptr %i.aa, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr %.sroa.6.0.i.i.i, ptr %.sroa.4.0..sroa_idx.i, align 8
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 %.val2.i, ptr %.sroa.5.0..sroa_idx.i, align 8
  %i.dc = load i64, ptr %i.ag, align 8, !noundef !25
  %i.dd = add i64 %i.dc, -1
  store i64 %i.dd, ptr %i.ag, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.050)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.z, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x)
  call void @llvm.experimental.noalias.scope.decl(metadata !14503)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !14503
  %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.42.sroa.5.0..sroa.42.0..sroa_idx.sroa_idx.i.i, i8 0, i64 16, i1 false), !alias.scope !14504, !noalias !14503
  store i64 1, ptr %i.t, align 8, !alias.scope !14504, !noalias !14503
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr @67, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !alias.scope !14504, !noalias !14503
  %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.42.sroa.4.0..sroa.42.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !14504, !noalias !14503
  %i.de = invoke noundef align 8 ptr @_ZN10actix_http9responses4head17BoxedResponseHead3new17h0df284a7b1d0cdefE(i16 noundef 405)
          to label %bb.z unwind label %bb.v, !noalias !14505

bb.v:                                             ; preds = %.loopexit
  %i.df = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.t) #53
          to label %.body20 unwind label %bb.w, !noalias !14506

bb.w:                                             ; preds = %bb.v
  %i.dg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !14506
  unreachable

bb.x:                                             ; preds = %.thread
  %i.dh = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @"_ZN4core3ptr53drop_in_place$LT$actix_http..body..boxed..BoxBody$GT$17h90d10699e2023d49E"(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.s) #53
          to label %bb.by unwind label %bb.y, !noalias !14507

bb.y:                                             ; preds = %bb.x
  %i.di = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_ZN4core9panicking16panic_in_cleanup17h5eff40bcc4481d72E() #54, !noalias !14507
  unreachable

.body20:                                          ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y)
  invoke fastcc void @"_ZN4core3ptr55drop_in_place$LT$actix_web..service..ServiceRequest$GT$17h301ce962876397cfE"(ptr noalias noundef align 8 dereferenceable(32) %i.z) #53
          to label %bb.bs unwind label %bb.br

bb.z:                                             ; preds = %.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.x, ptr noundef nonnull align 8 dereferenceable(40) %i.t, i64 40, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !14503
  %.sroa.42.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40 ; 2 uses
  store ptr %i.de, ptr %.sroa.42.0..sroa_idx.i, align 8, !alias.scope !14503
  %.sroa.53.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  store i64 0, ptr %.sroa.53.0..sroa_idx.i, align 8, !alias.scope !14503
  %.sroa.64.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %.sroa.64.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(32) @78, i64 32, i1 false)
  %i.dj = getelementptr inbounds nuw i8, ptr %i.x, i64 88 ; 2 uses
  store i8 7, ptr %i.dj, align 8, !alias.scope !14503
  %.sroa.0.0.copyload = load i64, ptr %i.aa, align 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !14508)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.05.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  %i.dk = load i64, ptr %i.x, align 8, !range !44, !alias.scope !14509, !noalias !14510
  %.not2.i.i = icmp eq i64 %i.dk, 3
  br i1 %.not2.i.i, label %.critedge.i, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.dl = invoke noundef align 8 dereferenceable(64) ptr @"_ZN93_$LT$actix_http..responses..head..BoxedResponseHead$u20$as$u20$core..ops..deref..DerefMut$GT$9deref_mut17h1ab7d8a40fd2b6adE"(ptr noalias noundef nonnull align 8 dereferenceable(8) %.sroa.42.0..sroa_idx.i)
          to label %_ZN9actix_web8response7builder19HttpResponseBuilder5inner17h228ba4e10ccd7ac0E.exit.i unwind label %bb.bc, !noalias !14510

_ZN9actix_web8response7builder19HttpResponseBuilder5inner17h228ba4e10ccd7ac0E.exit.i: ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !14511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.p, ptr noundef nonnull align 8 dereferenceable(32) @564, i64 32, i1 false), !noalias !14511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !14511
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !14511
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull align 8 dereferenceable(24) %i.aa, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !14512)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !14513
  store ptr inttoptr (i64 1 to ptr), ptr %i.m, align 8, !alias.scope !14514, !noalias !14513
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx.i.i.i.i, i8 0, i64 16, i1 false), !alias.scope !14514, !noalias !14513
  store ptr inttoptr (i64 1 to ptr), ptr %.sroa.6.0..sroa_idx.i.i.i.i, align 8, !alias.scope !14514, !noalias !14513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !14513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !14513
  store ptr %i.n, ptr %i.k, align 8, !noalias !14513
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr @"_ZN76_$LT$actix_web..http..header..allow..Allow$u20$as$u20$core..fmt..Display$GT$3fmt17hd949e27e709123abE", ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !14513
  store ptr @3, ptr %i.l, align 8, !noalias !14513
  %i.dm = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 1, ptr %i.dm, align 8, !noalias !14513
  %i.dn = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  store ptr null, ptr %i.dn, align 8, !noalias !14513
  %i.do = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.k, ptr %i.do, align 8, !noalias !14513
  %i.dp = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store i64 1, ptr %i.dp, align 8, !noalias !14513
  %i.dq = invoke noundef zeroext i1 @_ZN4core3fmt5write17h80461e1e45e4fdd2E(ptr noundef nonnull align 1 %i.m, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(48) @51, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(48) %i.l)
          to label %bb.ad unwind label %bb.ac, !noalias !14515 ; 0 uses

"_ZN4core3ptr52drop_in_place$LT$actix_web..http..header..Writer$GT$17h8b92bd54e14437bcE.exit.i.i.i": ; preds = %.body.i.i.i, %bb.ab
  %.pn.i.i.i31 = phi { ptr, i32 } [ %i.dt, %bb.ab ], [ %eh.lpad-body.i.i.i, %.body.i.i.i ] ; 2 uses
  call fastcc void @"_ZN4core3ptr58drop_in_place$LT$actix_web..http..header..allow..Allow$GT$17hb4080ab4635dd2b7E"(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.n) #53, !noalias !14515
  call void @llvm.experimental.noalias.scope.decl(metadata !14516)
  call void @llvm.experimental.noalias.scope.decl(metadata !14517)
  %i.dr = load ptr, ptr %i.p, align 8, !alias.scope !14518, !noalias !14511, !noundef !25 ; 2 uses
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.thread62, label %bb.av

bb.ab:                                            ; preds = %bb.ar
  %i.dt = landingpad { ptr, i32 }
          cleanup
  br label %"_ZN4core3ptr52drop_in_place$LT$actix_web..http..header..Writer$GT$17h8b92bd54e14437bcE.exit.i.i.i"

bb.ac:                                            ; preds = %bb.ap, %.noexc18.i.i, %bb.ae, %bb.ad, %_ZN9actix_web8response7builder19HttpResponseBuilder5inner17h228ba4e10ccd7ac0E.exit.i
  %i.du = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i

.body.i.i.i:                                      ; preds = %bb.ak, %bb.aj, %bb.ag, %bb.ac
  %eh.lpad-body.i.i.i = phi { ptr, i32 } [ %i.ey, %bb.aj ], [ %i.ey, %bb.ak ], [ %i.du, %bb.ac ], [ %i.em, %bb.ag ]
  invoke void @"_ZN68_$LT$bytes..bytes_mut..BytesMut$u20$as$u20$core..ops..drop..Drop$GT$4drop17hbef4de1915e8c443E"(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %"_ZN4core3ptr52drop_in_place$LT$actix_web..http..header..Writer$GT$17h8b92bd54e14437bcE.exit.i.i.i" unwind label %bb.au, !noalias !14515

bb.ad:                                            ; preds = %_ZN9actix_web8response7builder19HttpResponseBuilder5inner17h228ba4e10ccd7ac0E.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !14513
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !14513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !14519
  invoke void @_ZN5bytes9bytes_mut8BytesMut5split17hdec65ef5b53cc0f1E(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.j, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %.noexc.i.i.i unwind label %bb.ac, !noalias !14515

.noexc.i.i.i:                                     ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !14520)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !14511
  %i.dv = load ptr, ptr %i.j, align 8, !alias.scope !14520, !noalias !14521, !nonnull !25, !noundef !25 ; 3 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !14520, !noalias !14521, !noundef !25 ; 3 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !alias.scope !14520, !noalias !14521, !noundef !25 ; 3 uses
  %i.ea = ptrtoint ptr %i.dz to i64               ; 2 uses
  %i.eb = and i64 %i.ea, 1
  %.not.i.i.i = icmp eq i64 %i.eb, 0
  br i1 %.not.i.i.i, label %.thread.i.i, label %bb.ae

.thread.i.i:                                      ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !14511
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !14519
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !14513
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !14522
  %.sroa.5.0..sroa_idx35.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store ptr %i.dv, ptr %.sroa.5.0..sroa_idx35.i.i, align 8, !noalias !14523
  %.sroa.726.0..sroa_idx36.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  store i64 %i.dx, ptr %.sroa.726.0..sroa_idx36.i.i, align 8, !noalias !14523
  %.sroa.8.0..sroa_idx37.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 24 ; 2 uses
  store ptr %i.dz, ptr %.sroa.8.0..sroa_idx37.i.i, align 8, !noalias !14523
  store ptr null, ptr %i.i, align 8, !noalias !14522
  br label %bb.am

bb.ae:                                            ; preds = %.noexc.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.ed = load i64, ptr %i.ec, align 8, !alias.scope !14520, !noalias !14521, !noundef !25
  %i.ee = lshr i64 %i.ea, 5                       ; 5 uses
  invoke void @_ZN5bytes9bytes_mut11rebuild_vec17h7930fac3c9cb4245E(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noundef nonnull %i.dv, i64 noundef %i.dx, i64 noundef %i.ed, i64 noundef %i.ee)
          to label %.noexc18.i.i unwind label %bb.ac, !noalias !14524

.noexc18.i.i:                                     ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !14525
  invoke void @"_ZN92_$LT$bytes..bytes..Bytes$u20$as$u20$core..convert..From$LT$alloc..vec..Vec$LT$u8$GT$$GT$$GT$4from17h105911369ca93d58E"(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.f, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.g)
          to label %.noexc19.i.i unwind label %bb.ac, !noalias !14524

.noexc19.i.i:                                     ; preds = %.noexc18.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !14526), !noalias !14527
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !14525
  store i64 %i.ee, ptr %i.e, align 8, !noalias !14528
  %i.ef = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !14526, !noalias !14525, !noundef !25 ; 4 uses
  %.not.i.i16.i.i = icmp ugt i64 %i.ee, %i.eg
  br i1 %.not.i.i16.i.i, label %bb.af, label %bb.ai, !prof !33

bb.af:                                            ; preds = %.noexc19.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14528
  store i64 %i.eg, ptr %i.c, align 8, !noalias !14528
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14528
  store ptr %i.e, ptr %i.b, align 8, !noalias !14528
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @"_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17hfbad01e72c46968eE", ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !noalias !14528
  %i.eh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.eh, align 8, !noalias !14528
end_hunk_2
